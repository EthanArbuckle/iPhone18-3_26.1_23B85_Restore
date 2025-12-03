@interface PGMoodSourceScene
- (unint64_t)_sourceInputCount;
- (void)_combineMoodVectorsWithGraph:(id)graph;
@end

@implementation PGMoodSourceScene

- (void)_combineMoodVectorsWithGraph:(id)graph
{
  v44 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v28 = objc_opt_new();
  v5 = objc_opt_new();
  options = [(PGMoodSource *)self options];
  sceneIdentifiersByMomentNodeIdentifier = [options sceneIdentifiersByMomentNodeIdentifier];

  if (!sceneIdentifiersByMomentNodeIdentifier)
  {
    enrichedMemory = [(PGMoodSource *)self enrichedMemory];

    if (enrichedMemory)
    {
      enrichedMemory2 = [(PGMoodSource *)self enrichedMemory];
      memoryMomentNodes = [enrichedMemory2 memoryMomentNodes];
      [PGMoodUtilities moodSceneIdentifiersByMomentForMomentNodes:memoryMomentNodes];
    }

    else
    {
      enrichedMemory2 = [(PGMoodSource *)self assetCollection];
      memoryMomentNodes = [(PGMoodSource *)self options];
      [PGMoodUtilities moodSceneIdentifiersByMomentForAssetCollection:enrichedMemory2 withGraph:graphCopy moodOptions:memoryMomentNodes];
    }
    sceneIdentifiersByMomentNodeIdentifier = ;

    options2 = [(PGMoodSource *)self options];
    [options2 setSceneIdentifiersByMomentNodeIdentifier:sceneIdentifiersByMomentNodeIdentifier];
  }

  v24 = sceneIdentifiersByMomentNodeIdentifier;
  v25 = graphCopy;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [sceneIdentifiersByMomentNodeIdentifier objectEnumerator];
  v29 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v29)
  {
    v27 = *v39;
    do
    {
      v12 = 0;
      do
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v12;
        v13 = *(*(&v38 + 1) + 8 * v12);
        v14 = objc_opt_new();
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v15 = v13;
        v16 = [v15 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v35;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v35 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v34 + 1) + 8 * i);
              if ([objc_opt_class() shouldUseSceneIdentifier:v20])
              {
                moodIdentifier = [v20 moodIdentifier];
                v22 = [(PGMoodSource *)self _moodVectorForMoodIdentifier:moodIdentifier];

                if (v22)
                {
                  v31[0] = MEMORY[0x277D85DD0];
                  v31[1] = 3221225472;
                  v31[2] = __50__PGMoodSourceScene__combineMoodVectorsWithGraph___block_invoke;
                  v31[3] = &unk_278886530;
                  v32 = v14;
                  v33 = v5;
                  [v22 enumerateWithBlock:v31];
                }
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v17);
        }

        [v14 normalize];
        [v28 addMoodVector:v14];

        v12 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v29);
  }

  [v28 multiplyByWeight:{1.0 / -[PGMoodSourceScene _sourceInputCount](self, "_sourceInputCount")}];
  [(PGMoodSource *)self setPositiveVector:v28];
  [(PGMoodSource *)self setNegativeVector:v5];

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PGMoodSourceScene__combineMoodVectorsWithGraph___block_invoke(uint64_t result, uint64_t a2, double a3)
{
  if (a3 == 1.0)
  {
    return [*(result + 32) addValue:a2 forMood:1.0];
  }

  if (a3 == -1.0)
  {
    return [*(result + 40) setValue:a2 forMood:1.0];
  }

  return result;
}

- (unint64_t)_sourceInputCount
{
  options = [(PGMoodSource *)self options];
  momentIDs = [options momentIDs];
  v5 = [momentIDs count];

  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = PGMoodSourceScene;
    return [(PGMoodSource *)&v7 _sourceInputCount];
  }

  return v5;
}

@end