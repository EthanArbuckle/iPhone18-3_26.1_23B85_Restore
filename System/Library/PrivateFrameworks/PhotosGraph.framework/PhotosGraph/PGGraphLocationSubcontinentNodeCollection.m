@interface PGGraphLocationSubcontinentNodeCollection
- (PGGraphAddressNodeCollection)addressNodes;
- (PGGraphLocationCountryNodeCollection)countryNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (unint64_t)numberOfMomentNodes;
@end

@implementation PGGraphLocationSubcontinentNodeCollection

- (unint64_t)numberOfMomentNodes
{
  v3 = +[PGGraphLocationSubcontinentNode momentInSubcontinent];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection numberOfNodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationCountryNodeCollection)countryNodes
{
  v3 = +[PGGraphLocationSubcontinentNode countryOfSubcontinent];
  v4 = [(MANodeCollection *)PGGraphLocationCountryNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphLocationSubcontinentNode momentInSubcontinent];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphAddressNodeCollection)addressNodes
{
  v3 = +[PGGraphLocationSubcontinentNode addressOfSubcontinent];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

@end