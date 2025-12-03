@interface PGGraphNodeCollection
+ (MANodeFilter)filter;
+ (id)nodesInGraph:(id)graph;
+ (id)subsetInCollection:(id)collection;
- (PGGraphNodeCollection)initWithSubsetInGraph:(id)graph elementIdentifiers:(id)identifiers;
@end

@implementation PGGraphNodeCollection

- (PGGraphNodeCollection)initWithSubsetInGraph:(id)graph elementIdentifiers:(id)identifiers
{
  sub_22F120634(0, &qword_27DAB42B0, off_27887B148);
  swift_unknownObjectRetain();
  sub_22F3E03BC(graph, identifiers);
  return result;
}

+ (id)subsetInCollection:(id)collection
{
  collectionCopy = collection;
  filter = [self filter];
  relation = [filter relation];
  v7 = [self nodesRelatedToNodes:collectionCopy withRelation:relation];

  return v7;
}

+ (id)nodesInGraph:(id)graph
{
  graphCopy = graph;
  filter = [self filter];
  v6 = [self nodesMatchingFilter:filter inGraph:graphCopy];

  return v6;
}

+ (MANodeFilter)filter
{
  nodeClass = [self nodeClass];

  return [nodeClass filter];
}

@end