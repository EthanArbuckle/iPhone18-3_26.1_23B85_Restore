@interface PGGraphRelationshipEdgeCollection
+ (id)confirmedRelationshipEdgesInGraph:(id)a3;
+ (id)inferredRelationshipEdgesInGraph:(id)a3;
@end

@implementation PGGraphRelationshipEdgeCollection

+ (id)confirmedRelationshipEdgesInGraph:(id)a3
{
  v3 = a3;
  v4 = +[PGGraphRelationshipEdge confirmedRelationshipFilter];
  v5 = [(MAEdgeCollection *)PGGraphRelationshipEdgeCollection edgesMatchingFilter:v4 inGraph:v3];

  return v5;
}

+ (id)inferredRelationshipEdgesInGraph:(id)a3
{
  v3 = a3;
  v4 = +[PGGraphRelationshipEdge inferredRelationshipFilter];
  v5 = [(MAEdgeCollection *)PGGraphRelationshipEdgeCollection edgesMatchingFilter:v4 inGraph:v3];

  return v5;
}

@end