@interface PGGraphRelationshipEdgeCollection
+ (id)confirmedRelationshipEdgesInGraph:(id)graph;
+ (id)inferredRelationshipEdgesInGraph:(id)graph;
@end

@implementation PGGraphRelationshipEdgeCollection

+ (id)confirmedRelationshipEdgesInGraph:(id)graph
{
  graphCopy = graph;
  v4 = +[PGGraphRelationshipEdge confirmedRelationshipFilter];
  v5 = [(MAEdgeCollection *)PGGraphRelationshipEdgeCollection edgesMatchingFilter:v4 inGraph:graphCopy];

  return v5;
}

+ (id)inferredRelationshipEdgesInGraph:(id)graph
{
  graphCopy = graph;
  v4 = +[PGGraphRelationshipEdge inferredRelationshipFilter];
  v5 = [(MAEdgeCollection *)PGGraphRelationshipEdgeCollection edgesMatchingFilter:v4 inGraph:graphCopy];

  return v5;
}

@end