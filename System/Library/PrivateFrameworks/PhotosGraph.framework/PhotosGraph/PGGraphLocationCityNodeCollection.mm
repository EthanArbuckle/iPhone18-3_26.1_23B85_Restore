@interface PGGraphLocationCityNodeCollection
- (PGGraphAddressNodeCollection)addressNodes;
- (PGGraphLocationCountryNodeCollection)countryNodes;
- (PGGraphLocationCountyNodeCollection)countyNodes;
- (PGGraphLocationStateNodeCollection)stateNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (unint64_t)numberOfMomentNodes;
@end

@implementation PGGraphLocationCityNodeCollection

- (unint64_t)numberOfMomentNodes
{
  v3 = +[PGGraphLocationCityNode momentInCity];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection numberOfNodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationCountyNodeCollection)countyNodes
{
  v3 = +[PGGraphLocationCityNode countyOfCity];
  v4 = [(MANodeCollection *)PGGraphLocationCountyNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationStateNodeCollection)stateNodes
{
  v3 = +[PGGraphLocationCityNode stateOfCity];
  v4 = [(MANodeCollection *)PGGraphLocationStateNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLocationCountryNodeCollection)countryNodes
{
  v3 = +[PGGraphLocationCityNode countryOfCity];
  v4 = [(MANodeCollection *)PGGraphLocationCountryNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphLocationCityNode momentInCity];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphAddressNodeCollection)addressNodes
{
  v3 = +[PGGraphLocationCityNode addressOfCity];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

@end