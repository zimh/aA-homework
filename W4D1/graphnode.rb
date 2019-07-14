class GraphNode

    attr_reader :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def neighbors=(nodes)
        @neighbors = nodes
    end

    def inspect
        {"value:" => @value}.inspect
    end

end

def bfs(starting_node, target_value, visited = Set[])
    visited << starting_node
    return starting_node if starting_node.value == target_value
    found = nil
    starting_node.neighbors.each do |node|
        found ||= bfs(node, target_value, visited) if !visited.include?(node)
    end
    return found

end