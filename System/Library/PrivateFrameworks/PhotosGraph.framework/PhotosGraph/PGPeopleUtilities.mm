@interface PGPeopleUtilities
+ (BOOL)_hasMomentsForPersonLocalIdentifiers:(id)a3 inGraph:(id)a4 photoLibrary:(id)a5 usePersonMoments:(BOOL)a6;
+ (id)_validPersonLocalIdentifiersFromSocialGroups:(id)a3 withPhotoLibrary:(id)a4;
+ (id)validateKeyedSocialGroups:(id)a3 withPhotoLibrary:(id)a4 graph:(id)a5;
+ (id)validateSocialGroups:(id)a3 withPhotoLibrary:(id)a4 graph:(id)a5 usePersonMoments:(BOOL)a6;
+ (unsigned)ageTypeFromAgeCategory:(unint64_t)a3;
@end

@implementation PGPeopleUtilities

+ (unsigned)ageTypeFromAgeCategory:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return word_22F78C1C8[a3 - 1];
  }
}

+ (BOOL)_hasMomentsForPersonLocalIdentifiers:(id)a3 inGraph:(id)a4 photoLibrary:(id)a5 usePersonMoments:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a5;
  v11 = [PGGraphPersonNodeCollection personNodesForArrayOfLocalIdentifiers:a3 inGraph:v9];
  if ([v11 count])
  {
    if (v6)
    {
      v12 = [v11 momentNodes];
      v13 = [v12 localIdentifiers];
    }

    else
    {
      v14 = [v11 asSocialGroupMemberNodeCollection];
      v12 = [v9 socialGroupNodeForMemberNodes:v14];

      v15 = [v12 momentNodes];
      v13 = [v15 localIdentifiers];
    }
  }

  else
  {
    v13 = 0;
  }

  if ([v13 count])
  {
    v16 = [v10 librarySpecificFetchOptions];
    [v16 setShouldPrefetchCount:1];
    [v16 setFetchLimit:1];
    v17 = MEMORY[0x277CD97B8];
    v18 = [v13 allObjects];
    v19 = [v17 fetchAssetCollectionsWithLocalIdentifiers:v18 options:v16];

    v20 = [v19 count] != 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)validateSocialGroups:(id)a3 withPhotoLibrary:(id)a4 graph:(id)a5 usePersonMoments:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 _validPersonLocalIdentifiersFromSocialGroups:v10 withPhotoLibrary:v11];
  if ([v13 count])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __82__PGPeopleUtilities_validateSocialGroups_withPhotoLibrary_graph_usePersonMoments___block_invoke;
    v17[3] = &unk_27887F488;
    v18 = v13;
    v21 = a1;
    v19 = v12;
    v20 = v11;
    v22 = a6;
    v14 = [v10 indexesOfObjectsPassingTest:v17];
    v15 = [v10 objectsAtIndexes:v14];
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

uint64_t __82__PGPeopleUtilities_validateSocialGroups_withPhotoLibrary_graph_usePersonMoments___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(a1 + 32) containsObject:{*(*(&v11 + 1) + 8 * v7), v11}])
        {

          v8 = 0;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = [*(a1 + 56) _hasMomentsForPersonLocalIdentifiers:v3 inGraph:*(a1 + 40) photoLibrary:*(a1 + 48) usePersonMoments:*(a1 + 64)];
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)validateKeyedSocialGroups:(id)a3 withPhotoLibrary:(id)a4 graph:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = [v11 objectEnumerator];
  v13 = [a1 _validPersonLocalIdentifiersFromSocialGroups:v12 withPhotoLibrary:v9];

  if ([v13 count])
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __70__PGPeopleUtilities_validateKeyedSocialGroups_withPhotoLibrary_graph___block_invoke;
    v20[3] = &unk_27887F460;
    v21 = v13;
    v25 = a1;
    v22 = v10;
    v23 = v9;
    v15 = v14;
    v24 = v15;
    [v11 enumerateKeysAndObjectsUsingBlock:v20];
    v16 = v11;
    if ([v15 count])
    {
      v16 = [v11 mutableCopy];
      [v16 removeObjectsForKeys:v15];
    }

    v17 = v16;

    v18 = v17;
  }

  else
  {
    v18 = MEMORY[0x277CBEC10];
    v17 = v11;
  }

  return v18;
}

void __70__PGPeopleUtilities_validateKeyedSocialGroups_withPhotoLibrary_graph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (![*(a1 + 32) containsObject:{*(*(&v14 + 1) + 8 * v12), v14}])
        {

          goto LABEL_12;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (([*(a1 + 64) _hasMomentsForPersonLocalIdentifiers:v8 inGraph:*(a1 + 40) photoLibrary:*(a1 + 48) usePersonMoments:0] & 1) == 0)
  {
LABEL_12:
    [*(a1 + 56) addObject:{v5, v14}];
  }

  objc_autoreleasePoolPop(v7);

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)_validPersonLocalIdentifiersFromSocialGroups:(id)a3 withPhotoLibrary:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addObjectsFromArray:*(*(&v31 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v13 = [v6 librarySpecificFetchOptions];
    v14 = MEMORY[0x277CD9938];
    v15 = [v7 allObjects];
    v16 = [v14 fetchPersonsWithLocalIdentifiers:v15 options:v13];

    v17 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v27 + 1) + 8 * j);
          if ([v23 type] != -1)
          {
            v24 = [v23 localIdentifier];
            [v17 addObject:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v17 = [MEMORY[0x277CBEB98] set];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

@end