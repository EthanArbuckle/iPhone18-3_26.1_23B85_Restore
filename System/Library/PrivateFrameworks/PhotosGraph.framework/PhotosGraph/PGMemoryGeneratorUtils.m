@interface PGMemoryGeneratorUtils
+ (BOOL)isImportedAsset:(id)a3;
+ (id)_outdoorROITypes;
+ (id)babyAndChildPersonNodesAtHomeOrFrequentLocationInGraph:(id)a3;
+ (id)filterImportedAssets:(id)a3 byOverlapWithRelevantAssets:(id)a4 withGraph:(id)a5;
+ (id)filterImportedAssetsWithoutLocationAndWithoutSceneOrPersonOverlapFromAllAssets:(id)a3 withGraph:(id)a4;
+ (id)momentNodesAtHomeOrWorkOrFrequentLocationInGraph:(id)a3;
+ (id)outdoorROIMomentNodesNotAtHomeOrFrequentLocationInGraph:(id)a3 useMomentFeatureEdges:(BOOL)a4;
+ (id)outdoorROINodesInGraph:(id)a3;
+ (id)personAndPetLocalIdentifiersInAssets:(id)a3;
@end

@implementation PGMemoryGeneratorUtils

+ (BOOL)isImportedAsset:(id)a3
{
  v3 = [a3 importProperties];
  v4 = [v3 importedBy];

  return (v4 < 0x10) & (0xAFF8u >> v4);
}

+ (id)personAndPetLocalIdentifiersInAssets:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) clsPersonAndPetLocalIdentifiers];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filterImportedAssets:(id)a3 byOverlapWithRelevantAssets:(id)a4 withGraph:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc(MEMORY[0x277CBEB58]);
  v39 = v9;
  v12 = [a1 personAndPetLocalIdentifiersInAssets:v9];
  v13 = [v11 initWithSet:v12];

  v36 = v10;
  v14 = [v10 meNode];
  v15 = [v14 localIdentifier];

  if (v15)
  {
    [v13 addObject:v15];
  }

  v35 = v15;
  v38 = v13;
  v16 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:objc_opt_class()];
  v40 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v8;
  v17 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v41 = *v47;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v47 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v46 + 1) + 8 * i);
        v21 = objc_alloc(MEMORY[0x277CBEB98]);
        v22 = [v20 clsPersonAndPetLocalIdentifiers];
        v23 = [v21 initWithArray:v22];

        if ([v23 count] && objc_msgSend(v23, "isSubsetOfSet:", v38))
        {
          [v40 addObject:v20];
        }

        else
        {
          v24 = [v20 clsSimilarityModelVersion];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v25 = v39;
          v26 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v43;
            while (2)
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v43 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                [v16 distanceBetweenItem:v20 andItem:*(*(&v42 + 1) + 8 * j)];
                v31 = v30;
                [v16 distanceThresholdForSimilarity:2 withSimilarityModelVersion:v24];
                if (v31 < v32)
                {
                  [v40 addObject:v20];
                  goto LABEL_21;
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:
        }
      }

      v18 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v18);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)filterImportedAssetsWithoutLocationAndWithoutSceneOrPersonOverlapFromAllAssets:(id)a3 withGraph:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = MEMORY[0x277D3ACD0];
        [v14 locationCoordinate];
        if (([v15 canUseCoordinate:?] & 1) == 0 && objc_msgSend(a1, "isImportedAsset:", v14))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([v8 count] && objc_msgSend(v9, "count"))
  {
    v16 = [v8 count];
    v17 = v16 / [v9 count];
    v18 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v9];
    [v18 minusSet:v8];
    if (v17 >= 0.25 || [v18 count] <= 0xD)
    {
      v20 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v9];
    }

    else
    {
      v19 = [a1 filterImportedAssets:v8 byOverlapWithRelevantAssets:v18 withGraph:v7];
      [v18 unionSet:v19];
      v20 = v18;
    }
  }

  else
  {
    v20 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v9];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)momentNodesAtHomeOrWorkOrFrequentLocationInGraph:(id)a3
{
  v3 = a3;
  v4 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v3];
  v5 = [v4 momentNodes];
  v6 = [(PGGraphNodeCollection *)PGGraphHomeWorkNodeCollection nodesInGraph:v3];

  v7 = [v6 addressNodes];
  v8 = [v7 momentNodes];

  v9 = [v5 collectionByFormingUnionWith:v8];

  return v9;
}

+ (id)_outdoorROITypes
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB58]);
  [v2 addIndex:2];
  [v2 addIndex:3];
  [v2 addIndex:4];
  [v2 addIndex:5];

  return v2;
}

+ (id)outdoorROIMomentNodesNotAtHomeOrFrequentLocationInGraph:(id)a3 useMomentFeatureEdges:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PGGraphNodeCollection *)PGGraphHomeWorkNodeCollection nodesInGraph:v6];
  v8 = [v7 addressNodes];
  v9 = [v8 momentNodes];

  v10 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v6];
  v11 = [v10 momentNodes];
  v12 = [v9 collectionByFormingUnionWith:v11];
  v13 = [a1 outdoorROINodesInGraph:v6];

  if (v4)
  {
    v14 = [v13 featureNodeCollection];
    v15 = [v14 momentNodes];
  }

  else
  {
    v15 = [v13 momentNodes];
  }

  v16 = [v15 collectionBySubtracting:v12];

  return v16;
}

+ (id)outdoorROINodesInGraph:(id)a3
{
  v4 = a3;
  v5 = [a1 _outdoorROITypes];
  v6 = [PGGraphROINodeCollection roiNodesOfTypes:v5 inGraph:v4];

  return v6;
}

+ (id)babyAndChildPersonNodesAtHomeOrFrequentLocationInGraph:(id)a3
{
  v3 = a3;
  v4 = [PGGraphPersonNodeCollection personNodesInAgeCategories:&unk_284485B98 includingMe:0 inGraph:v3];
  if ([v4 count])
  {
    v5 = [v3 meNodeCollection];
    v6 = [v5 homeNodes];
    v7 = [v6 addressNodes];
    v8 = [v7 momentNodes];
    v9 = [v8 personNodes];

    v10 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v3];

    v11 = [v10 momentNodes];
    v12 = [v11 personNodes];

    v13 = [v9 collectionByFormingUnionWith:v12];
    v14 = [v13 collectionByIntersecting:v4];

    v3 = v9;
  }

  else
  {
    v14 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithGraph:v3];
  }

  return v14;
}

@end