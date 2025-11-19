@interface PGGraphHighlightGroupNodeCollection
+ (MARelation)areaFeatureOfHighlightGroup;
+ (MARelation)featureOfHighlightGroup;
+ (MARelation)locationFeatureOfHighlightGroup;
+ (MARelation)momentsOfHighlightGroup;
+ (id)highlightGroupNodesForUUIDs:(id)a3 inGraph:(id)a4;
- (PGGraphFeatureNodeCollection)featuredLocationOrAreaNodes;
- (PGGraphFeatureNodeCollection)tripFeatureNodes;
- (PGGraphHighlightNodeCollection)highlightNodes;
- (PGGraphHighlightTypeNodeCollection)typeNodes;
- (id)momentNodes;
@end

@implementation PGGraphHighlightGroupNodeCollection

- (PGGraphFeatureNodeCollection)featuredLocationOrAreaNodes
{
  v3 = +[PGGraphHighlightGroupNodeCollection locationFeatureOfHighlightGroup];
  v4 = [(MANodeCollection *)PGGraphFeatureNodeCollection nodesRelatedToNodes:self withRelation:v3];

  v5 = +[PGGraphHighlightGroupNodeCollection areaFeatureOfHighlightGroup];
  v6 = [(MANodeCollection *)PGGraphFeatureNodeCollection nodesRelatedToNodes:self withRelation:v5];

  v7 = [v4 collectionByFormingUnionWith:v6];

  return v7;
}

- (PGGraphFeatureNodeCollection)tripFeatureNodes
{
  v3 = +[PGGraphHighlightGroupNodeCollection featureOfHighlightGroup];
  v4 = [(MANodeCollection *)PGGraphFeatureNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphHighlightTypeNodeCollection)typeNodes
{
  v3 = +[PGGraphHasTypeEdge filter];
  v4 = [v3 outRelation];
  v5 = [(MANodeCollection *)PGGraphHighlightTypeNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)momentNodes
{
  v2 = [(PGGraphHighlightGroupNodeCollection *)self highlightNodes];
  v3 = [v2 momentNodes];

  return v3;
}

- (PGGraphHighlightNodeCollection)highlightNodes
{
  v3 = +[PGGraphHighlightGroupNode highlightOfHighlightGroup];
  v4 = [(MANodeCollection *)PGGraphHighlightNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (MARelation)momentsOfHighlightGroup
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphHighlightGroupNode highlightOfHighlightGroup];
  v9[0] = v3;
  v4 = +[PGGraphHighlightNode momentInDayHighlight];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 chain:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (MARelation)areaFeatureOfHighlightGroup
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphTripFeatureEdge filter];
  v4 = [v3 outRelation];
  v11[0] = v4;
  v5 = +[PGGraphAreaNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)locationFeatureOfHighlightGroup
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphTripFeatureEdge filter];
  v4 = [v3 outRelation];
  v11[0] = v4;
  v5 = +[PGGraphNamedLocationNode filter];
  v6 = [v5 relation];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 chain:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MARelation)featureOfHighlightGroup
{
  v2 = +[PGGraphTripFeatureEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)highlightGroupNodesForUUIDs:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphHighlightGroupNode filterWithUUIDs:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

@end