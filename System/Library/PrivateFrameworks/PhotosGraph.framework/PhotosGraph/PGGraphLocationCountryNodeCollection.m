@interface PGGraphLocationCountryNodeCollection
- (PGGraphAddressNodeCollection)addressNodes;
- (PGGraphLanguageNodeCollection)languageNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (unint64_t)numberOfMomentNodes;
@end

@implementation PGGraphLocationCountryNodeCollection

- (unint64_t)numberOfMomentNodes
{
  v3 = +[PGGraphLocationCountryNode momentInCountry];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection numberOfNodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphLanguageNodeCollection)languageNodes
{
  v3 = +[PGGraphLocationCountryNode languageOfCountry];
  v4 = [(MANodeCollection *)PGGraphLanguageNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphLocationCountryNode momentInCountry];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphAddressNodeCollection)addressNodes
{
  v3 = +[PGGraphLocationCountryNode addressOfCountry];
  v4 = [(MANodeCollection *)PGGraphAddressNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

@end