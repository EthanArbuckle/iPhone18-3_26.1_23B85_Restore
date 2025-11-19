@interface PGGraphNodeCollection
+ (MANodeFilter)filter;
+ (id)nodesInGraph:(id)a3;
+ (id)subsetInCollection:(id)a3;
- (PGGraphNodeCollection)initWithSubsetInGraph:(id)a3 elementIdentifiers:(id)a4;
@end

@implementation PGGraphNodeCollection

- (PGGraphNodeCollection)initWithSubsetInGraph:(id)a3 elementIdentifiers:(id)a4
{
  sub_22F120634(0, &qword_27DAB42B0, off_27887B148);
  swift_unknownObjectRetain();
  sub_22F3E03BC(a3, a4);
  return result;
}

+ (id)subsetInCollection:(id)a3
{
  v4 = a3;
  v5 = [a1 filter];
  v6 = [v5 relation];
  v7 = [a1 nodesRelatedToNodes:v4 withRelation:v6];

  return v7;
}

+ (id)nodesInGraph:(id)a3
{
  v4 = a3;
  v5 = [a1 filter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (MANodeFilter)filter
{
  v2 = [a1 nodeClass];

  return [v2 filter];
}

@end