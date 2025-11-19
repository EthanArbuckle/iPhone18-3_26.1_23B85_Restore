@interface PGGraphSceneNodeCollection
+ (id)sceneNodesForSceneIdentifiers:(id)a3 inGraph:(id)a4;
+ (id)sceneNodesForSceneName:(id)a3 inGraph:(id)a4;
+ (id)sceneNodesForSceneNames:(id)a3 inGraph:(id)a4;
- (NSSet)localizedSceneNames;
- (NSSet)sceneIdentifiers;
- (NSSet)sceneNames;
- (PGGraphMomentNodeCollection)momentNodes;
- (PGGraphMomentNodeCollection)momentNodesThroughReliableEdges;
- (PGGraphMomentNodeCollection)momentNodesWithDominantSceneAssets;
- (PGGraphMomentNodeCollection)momentNodesWithHighConfidenceAssets;
- (PGGraphMomentNodeCollection)momentNodesWithSearchConfidenceAssets;
- (void)enumerateLocalizedNamesUsingBlock:(id)a3;
- (void)enumerateSceneIdentifiersUsingBlock:(id)a3;
@end

@implementation PGGraphSceneNodeCollection

- (void)enumerateSceneIdentifiersUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__PGGraphSceneNodeCollection_enumerateSceneIdentifiersUsingBlock___block_invoke;
  v6[3] = &unk_278887A18;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateUnsignedLongLongPropertyValuesForKey:@"sceneIdentifier" withBlock:v6];
}

- (void)enumerateLocalizedNamesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__PGGraphSceneNodeCollection_enumerateLocalizedNamesUsingBlock___block_invoke;
  v6[3] = &unk_278887978;
  v7 = v4;
  v5 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"localizedName" withBlock:v6];
}

- (NSSet)sceneIdentifiers
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__PGGraphSceneNodeCollection_sceneIdentifiers__block_invoke;
  v6[3] = &unk_2788849E0;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateUnsignedLongLongPropertyValuesForKey:@"sceneIdentifier" withBlock:v6];

  return v4;
}

void __46__PGGraphSceneNodeCollection_sceneIdentifiers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  [v1 addObject:v2];
}

- (NSSet)localizedSceneNames
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__PGGraphSceneNodeCollection_localizedSceneNames__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"localizedName" withBlock:v6];

  return v4;
}

- (NSSet)sceneNames
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(MANodeCollection *)self labels];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) lowercaseString];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (PGGraphMomentNodeCollection)momentNodesWithDominantSceneAssets
{
  v3 = +[PGGraphSceneNode momentOfSceneWithDominantSceneAssets];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodesWithSearchConfidenceAssets
{
  v3 = +[PGGraphSceneNode momentOfSceneWithSearchConfidenceAssets];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodesWithHighConfidenceAssets
{
  v3 = +[PGGraphSceneNode momentOfSceneWithHighConfidenceAssets];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodesThroughReliableEdges
{
  v3 = +[PGGraphSceneNode momentOfReliableScene];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphSceneNode momentOfScene];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)sceneNodesForSceneIdentifiers:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphSceneNode filterWithSceneIdentifiers:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)sceneNodesForSceneNames:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphSceneNode filterForSceneNames:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)sceneNodesForSceneName:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphSceneNode filterForSceneName:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

@end