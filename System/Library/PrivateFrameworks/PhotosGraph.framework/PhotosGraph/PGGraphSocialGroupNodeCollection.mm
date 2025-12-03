@interface PGGraphSocialGroupNodeCollection
+ (id)socialGroupNodeForSocialGroupIdentifier:(int64_t)identifier inGraph:(id)graph;
+ (id)socialGroupNodesForPersistedUUIDs:(id)ds inGraph:(id)graph;
+ (id)userVerifiedSocialGroupNodesInGraph:(id)graph;
- (PGGraphMomentNodeCollection)momentNodes;
- (PGGraphPersonNodeCollection)personNodes;
- (PGGraphPetNodeCollection)petNodes;
- (PGGraphSocialGroupMemberNodeCollection)memberNodes;
- (void)enumerateImportancesUsingBlock:(id)block;
- (void)enumerateSocialGroupIdentifiersUsingBlock:(id)block;
@end

@implementation PGGraphSocialGroupNodeCollection

- (void)enumerateSocialGroupIdentifiersUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__PGGraphSocialGroupNodeCollection_enumerateSocialGroupIdentifiersUsingBlock___block_invoke;
  v6[3] = &unk_2788872A8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateIntegerPropertyValuesForKey:@"id" withBlock:v6];
}

- (void)enumerateImportancesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PGGraphSocialGroupNodeCollection_enumerateImportancesUsingBlock___block_invoke;
  v6[3] = &unk_278888AA8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"importance" withBlock:v6];
}

- (PGGraphPetNodeCollection)petNodes
{
  v3 = [PGGraphPetNodeCollection alloc];
  graph = [(MAElementCollection *)self graph];
  memberNodes = [(PGGraphSocialGroupNodeCollection *)self memberNodes];
  v6 = +[PGGraphPetNode filter];
  v7 = [memberNodes nodesMatchingFilter:v6];
  elementIdentifiers = [v7 elementIdentifiers];
  v9 = [(MAElementCollection *)v3 initWithGraph:graph elementIdentifiers:elementIdentifiers];

  return v9;
}

- (PGGraphPersonNodeCollection)personNodes
{
  v3 = [PGGraphPersonNodeCollection alloc];
  graph = [(MAElementCollection *)self graph];
  memberNodes = [(PGGraphSocialGroupNodeCollection *)self memberNodes];
  v6 = +[PGGraphPersonNode filterIncludingMe];
  v7 = [memberNodes nodesMatchingFilter:v6];
  elementIdentifiers = [v7 elementIdentifiers];
  v9 = [(MAElementCollection *)v3 initWithGraph:graph elementIdentifiers:elementIdentifiers];

  return v9;
}

- (PGGraphSocialGroupMemberNodeCollection)memberNodes
{
  v3 = +[PGGraphSocialGroupNode memberOfSocialGroup];
  v4 = [(MANodeCollection *)PGGraphSocialGroupMemberNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphSocialGroupNode momentOfSocialGroup];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)socialGroupNodesForPersistedUUIDs:(id)ds inGraph:(id)graph
{
  v15[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  dsCopy = ds;
  v8 = +[PGGraphSocialGroupNode filter];
  v14 = @"persistedUUID";
  v15[0] = dsCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = [v8 filterBySettingProperties:v9];

  v11 = [self nodesMatchingFilter:v10 inGraph:graphCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)userVerifiedSocialGroupNodesInGraph:(id)graph
{
  graphCopy = graph;
  v4 = [PGGraphSocialGroupNode filterWithIsUserVerified:1];
  v5 = [(MANodeCollection *)PGGraphSocialGroupNodeCollection nodesMatchingFilter:v4 inGraph:graphCopy];

  return v5;
}

+ (id)socialGroupNodeForSocialGroupIdentifier:(int64_t)identifier inGraph:(id)graph
{
  graphCopy = graph;
  v6 = [PGGraphSocialGroupNode filterWithSocialGroupIdentifier:identifier];
  v7 = [(MANodeCollection *)PGGraphSocialGroupNodeCollection nodesMatchingFilter:v6 inGraph:graphCopy];

  return v7;
}

@end