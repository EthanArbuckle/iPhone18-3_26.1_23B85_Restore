@interface PGGraphLocationContinentNodeCollection
- (PGGraphAddressNodeCollection)addressNodes;
- (PGGraphLocationSubcontinentNodeCollection)subcontinentNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (unint64_t)numberOfMomentNodes;
@end

@implementation PGGraphLocationContinentNodeCollection

- (unint64_t)numberOfMomentNodes
{
  v3 = +[PGGraphLocationContinentNode momentInContinent];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection numberOfNodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationSubcontinentNodeCollection)subcontinentNodes
{
  v3 = +[PGGraphLocationContinentNode subcontinentOfContinent];
  v4 = [(MANodeCollection *)PGGraphLocationSubcontinentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphLocationContinentNode momentInContinent];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphAddressNodeCollection)addressNodes
{
  v3 = +[PGGraphLocationContinentNode addressOfContinent];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

@end