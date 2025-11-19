@interface PGGraphSocialGroupNodeCollection
+ (id)socialGroupNodeForSocialGroupIdentifier:(int64_t)a3 inGraph:(id)a4;
+ (id)socialGroupNodesForPersistedUUIDs:(id)a3 inGraph:(id)a4;
+ (id)userVerifiedSocialGroupNodesInGraph:(id)a3;
- (PGGraphMomentNodeCollection)momentNodes;
- (PGGraphPersonNodeCollection)personNodes;
- (PGGraphPetNodeCollection)petNodes;
- (PGGraphSocialGroupMemberNodeCollection)memberNodes;
- (void)enumerateImportancesUsingBlock:(id)a3;
- (void)enumerateSocialGroupIdentifiersUsingBlock:(id)a3;
@end

@implementation PGGraphSocialGroupNodeCollection

- (void)enumerateSocialGroupIdentifiersUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__PGGraphSocialGroupNodeCollection_enumerateSocialGroupIdentifiersUsingBlock___block_invoke;
  v6[3] = &unk_2788872A8;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateIntegerPropertyValuesForKey:@"id" withBlock:v6];
}

- (void)enumerateImportancesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PGGraphSocialGroupNodeCollection_enumerateImportancesUsingBlock___block_invoke;
  v6[3] = &unk_278888AA8;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateDoublePropertyValuesForKey:@"importance" withBlock:v6];
}

- (PGGraphPetNodeCollection)petNodes
{
  v3 = [PGGraphPetNodeCollection alloc];
  v4 = [(MAElementCollection *)self graph];
  v5 = [(PGGraphSocialGroupNodeCollection *)self memberNodes];
  v6 = +[PGGraphPetNode filter];
  v7 = [v5 nodesMatchingFilter:v6];
  v8 = [v7 elementIdentifiers];
  v9 = [(MAElementCollection *)v3 initWithGraph:v4 elementIdentifiers:v8];

  return v9;
}

- (PGGraphPersonNodeCollection)personNodes
{
  v3 = [PGGraphPersonNodeCollection alloc];
  v4 = [(MAElementCollection *)self graph];
  v5 = [(PGGraphSocialGroupNodeCollection *)self memberNodes];
  v6 = +[PGGraphPersonNode filterIncludingMe];
  v7 = [v5 nodesMatchingFilter:v6];
  v8 = [v7 elementIdentifiers];
  v9 = [(MAElementCollection *)v3 initWithGraph:v4 elementIdentifiers:v8];

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

+ (id)socialGroupNodesForPersistedUUIDs:(id)a3 inGraph:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = +[PGGraphSocialGroupNode filter];
  v14 = @"persistedUUID";
  v15[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = [v8 filterBySettingProperties:v9];

  v11 = [a1 nodesMatchingFilter:v10 inGraph:v6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)userVerifiedSocialGroupNodesInGraph:(id)a3
{
  v3 = a3;
  v4 = [PGGraphSocialGroupNode filterWithIsUserVerified:1];
  v5 = [(MANodeCollection *)PGGraphSocialGroupNodeCollection nodesMatchingFilter:v4 inGraph:v3];

  return v5;
}

+ (id)socialGroupNodeForSocialGroupIdentifier:(int64_t)a3 inGraph:(id)a4
{
  v5 = a4;
  v6 = [PGGraphSocialGroupNode filterWithSocialGroupIdentifier:a3];
  v7 = [(MANodeCollection *)PGGraphSocialGroupNodeCollection nodesMatchingFilter:v6 inGraph:v5];

  return v7;
}

@end