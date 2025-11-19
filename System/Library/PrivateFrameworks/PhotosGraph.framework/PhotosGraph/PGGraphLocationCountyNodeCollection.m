@interface PGGraphLocationCountyNodeCollection
- (PGGraphAddressNodeCollection)addressNodes;
- (PGGraphMomentNodeCollection)momentNodes;
@end

@implementation PGGraphLocationCountyNodeCollection

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphLocationCountyNode momentOfCounty];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphAddressNodeCollection)addressNodes
{
  v3 = +[PGGraphLocationCountyNode addressOfCounty];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

@end