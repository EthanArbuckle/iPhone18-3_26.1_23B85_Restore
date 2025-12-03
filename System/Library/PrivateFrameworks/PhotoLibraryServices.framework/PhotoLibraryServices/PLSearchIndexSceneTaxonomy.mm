@interface PLSearchIndexSceneTaxonomy
- (id)dogSceneIDs;
- (void)enumerateKeywordAndSynonymsForScenes:(id)scenes includeDogScenes:(BOOL)dogScenes usingBlock:(id)block;
@end

@implementation PLSearchIndexSceneTaxonomy

- (void)enumerateKeywordAndSynonymsForScenes:(id)scenes includeDogScenes:(BOOL)dogScenes usingBlock:(id)block
{
  blockCopy = block;
  v9 = MEMORY[0x1E696AD50];
  scenesCopy = scenes;
  v11 = objc_alloc_init(v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__PLSearchIndexSceneTaxonomy_enumerateKeywordAndSynonymsForScenes_includeDogScenes_usingBlock___block_invoke;
  v14[3] = &unk_1E7567C58;
  dogScenesCopy = dogScenes;
  v14[4] = self;
  v15 = v11;
  v16 = blockCopy;
  v12 = blockCopy;
  v13 = v11;
  [scenesCopy enumerateObjectsUsingBlock:v14];
}

void __95__PLSearchIndexSceneTaxonomy_enumerateKeywordAndSynonymsForScenes_includeDogScenes_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 classificationType] & 0xFFFFFFFD) == 0)
  {
    v4 = [v3 sceneIdentifier];
    if ([*(a1 + 32) nodeRefForExtendedSceneClassId:v4])
    {
      if ((PFSceneTaxonomyNodeIsRoot() & 1) == 0)
      {
        if (PFSceneTaxonomyNodeIsIndexed())
        {
          [v3 confidence];
          v6 = v5;
          PFSceneTaxonomyNodeSearchThreshold();
          if (v6 >= v7)
          {
            v8 = [*(a1 + 32) dogSceneIDs];
            if (![v8 containsIndex:v4])
            {

LABEL_11:
              v10 = *(a1 + 40);
              v12 = *(a1 + 48);
              v11 = v3;
              PFSceneTaxonomyNodeTraverseParents();

              goto LABEL_2;
            }

            v9 = *(a1 + 56);

            if (v9)
            {
              goto LABEL_11;
            }
          }
        }
      }
    }
  }

LABEL_2:
}

uint64_t __95__PLSearchIndexSceneTaxonomy_enumerateKeywordAndSynonymsForScenes_includeDogScenes_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (PFSceneTaxonomyNodeIsRoot())
  {
    return 0;
  }

  result = PFSceneTaxonomyNodeIsIndexed();
  if (result)
  {
    v6 = *(a3 + 16);
    if (([*(a1 + 32) containsIndex:v6] & 1) == 0)
    {
      v7 = PFSceneTaxonomyNodeLocalizedLabel();
      v8 = PFSceneTaxonomyNodeLocalizedSynonyms();
      v10 = *(a1 + 48);
      v9 = *(a1 + 56);
      v11 = [MEMORY[0x1E695DFD8] setWithArray:v8];
      (*(v9 + 16))(v9, v10, v7, v11, v6);

      [*(a1 + 32) addIndex:v6];
      return 0;
    }

    return 1;
  }

  return result;
}

- (id)dogSceneIDs
{
  dogSceneIDs = self->_dogSceneIDs;
  if (!dogSceneIDs)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
    [(PLSearchIndexSceneTaxonomy *)self nodeRefForExtendedSceneClassId:493];
    v9 = v4;
    v5 = v4;
    PFSceneTaxonomyNodeTraverseChildren();
    v6 = [v5 copy];
    v7 = self->_dogSceneIDs;
    self->_dogSceneIDs = v6;

    dogSceneIDs = self->_dogSceneIDs;
  }

  return dogSceneIDs;
}

uint64_t __41__PLSearchIndexSceneTaxonomy_dogSceneIDs__block_invoke(uint64_t a1)
{
  if (PFSceneTaxonomyNodeIsIndexed())
  {
    [*(a1 + 32) addIndex:PFSceneTaxonomyNodeExtendedSceneClassId()];
  }

  return 0;
}

@end