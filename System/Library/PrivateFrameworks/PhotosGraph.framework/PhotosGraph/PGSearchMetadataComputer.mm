@interface PGSearchMetadataComputer
- (PGSearchMetadataComputer)initWithGraph:(id)a3;
- (id)_mePersonUUID;
- (id)_suggestableLocalizedSceneNames;
- (id)searchMetadataWithOptions:(id)a3;
@end

@implementation PGSearchMetadataComputer

void __53__PGSearchMetadataComputer__blockedMeaningsByMeaning__block_invoke(id *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 localizedName];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__PGSearchMetadataComputer__blockedMeaningsByMeaning__block_invoke_2;
    v19[3] = &unk_2788821F0;
    v6 = v5;
    v20 = v6;
    v21 = a1[4];
    v22 = a1[5];
    [v3 traverseParentMeaningHierarchyUsingBlock:v19];
    if (a1[4])
    {
      v7 = a1[5];
      v8 = [v3 label];
      LODWORD(v7) = [v7 containsObject:v8];

      if (v7)
      {
        [v6 addObject:a1[4]];
      }
    }

    if ([v6 count])
    {
      [a1[6] setObject:v6 forKeyedSubscript:v4];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v3 localizedSynonyms];
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          v13 = 0;
          do
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [a1[6] setObject:v6 forKeyedSubscript:*(*(&v15 + 1) + 8 * v13++)];
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        }

        while (v11);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __53__PGSearchMetadataComputer__blockedMeaningsByMeaning__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 localizedName];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  if (*(a1 + 40))
  {
    v4 = *(a1 + 48);
    v5 = [v6 label];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      [*(a1 + 32) addObject:*(a1 + 40)];
    }
  }
}

- (id)_suggestableLocalizedSceneNames
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = +[PGGraphSceneNode suggestableSceneNames];
  v4 = [PGGraphSceneNodeCollection sceneNodesForSceneNames:v3 inGraph:self->_graph];
  v5 = [v4 localizedSceneNames];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_mePersonUUID
{
  v2 = [(PGGraph *)self->_graph meNode];
  v3 = MEMORY[0x277CD9938];
  v4 = [v2 localIdentifier];
  v5 = [v3 uuidFromLocalIdentifier:v4];

  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)searchMetadataWithOptions:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(PGSearchMetadataComputer *)self _mePersonUUID];
  [v4 setObject:v5 forKeyedSubscript:@"MePersonUUID"];

  v6 = [(PGSearchMetadataComputer *)self _suggestableLocalizedSceneNames];
  [v4 setObject:v6 forKeyedSubscript:@"SceneWhitelist"];

  v7 = [(PGSearchMetadataComputer *)self _blockedMeaningsByMeaning];
  [v4 setObject:v7 forKeyedSubscript:@"BlacklistedMeaningsByMeaning"];

  return v4;
}

- (PGSearchMetadataComputer)initWithGraph:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGSearchMetadataComputer;
  v6 = [(PGSearchMetadataComputer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, a3);
  }

  return v7;
}

@end