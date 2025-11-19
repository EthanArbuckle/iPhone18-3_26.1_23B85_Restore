@interface PGGraphPetNodeCollection
+ (id)favoritedPetNodesInGraph:(id)a3;
+ (id)namedPetNodesInGraph:(id)a3;
+ (id)petNodesForLocalIdentifier:(id)a3 inGraph:(id)a4;
+ (id)petNodesForLocalIdentifiers:(id)a3 inGraph:(id)a4;
+ (id)petNodesForSpecies:(unint64_t)a3 inGraph:(id)a4;
- (NSSet)localIdentifiers;
- (NSSet)names;
- (NSSet)uuids;
- (PGGraphMomentNodeCollection)momentNodes;
- (PGGraphPersonNodeCollection)ownerNodes;
@end

@implementation PGGraphPetNodeCollection

- (NSSet)names
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__PGGraphPetNodeCollection_names__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

void __33__PGGraphPetNodeCollection_names__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (NSSet)uuids
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__PGGraphPetNodeCollection_uuids__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"localIdentifier" withBlock:v6];

  return v4;
}

void __33__PGGraphPetNodeCollection_uuids__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:?];
  if ([v2 length])
  {
    [*(a1 + 32) addObject:v2];
  }
}

- (NSSet)localIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PGGraphPetNodeCollection_localIdentifiers__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"localIdentifier" withBlock:v6];

  return v4;
}

void __44__PGGraphPetNodeCollection_localIdentifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (PGGraphPersonNodeCollection)ownerNodes
{
  v3 = +[PGGraphPetNode ownerOfPet];
  v4 = [(MANodeCollection *)PGGraphPersonNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphPetNode momentOfPet];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)favoritedPetNodesInGraph:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[PGGraphPetNode filter];
  v10 = @"favorite";
  v11[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [v4 filterBySettingProperties:v5];

  v7 = [(MANodeCollection *)PGGraphPetNodeCollection nodesMatchingFilter:v6 inGraph:v3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)namedPetNodesInGraph:(id)a3
{
  v3 = a3;
  v4 = +[PGGraphPetNode filterNameNotEmpty];
  v5 = [(MANodeCollection *)PGGraphPetNodeCollection nodesMatchingFilter:v4 inGraph:v3];

  return v5;
}

+ (id)petNodesForSpecies:(unint64_t)a3 inGraph:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = +[PGGraphPetNode filter];
  v14 = @"anml";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [v7 filterBySettingProperties:v9];

  v11 = [a1 nodesMatchingFilter:v10 inGraph:v6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)petNodesForLocalIdentifier:(id)a3 inGraph:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB98];
  v15 = a3;
  v7 = MEMORY[0x277CBEA60];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:&v15 count:1];
  v11 = [v6 setWithArray:{v10, v15, v16}];

  v12 = [a1 petNodesForLocalIdentifiers:v11 inGraph:v8];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)petNodesForLocalIdentifiers:(id)a3 inGraph:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = +[PGGraphPetNode filter];
  v14 = @"localIdentifier";
  v15[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = [v8 filterBySettingProperties:v9];

  v11 = [a1 nodesMatchingFilter:v10 inGraph:v6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end