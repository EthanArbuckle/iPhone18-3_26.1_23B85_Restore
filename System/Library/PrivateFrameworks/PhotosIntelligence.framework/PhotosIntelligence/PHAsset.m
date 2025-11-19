@interface PHAsset
@end

@implementation PHAsset

void __98__PHAsset_Curation___filterPersonUUIDs_fromPersonUUIDsByAssetUUID_personUUIDByMergeCandidateUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  if ([v6 intersectsSet:*(a1 + 32)])
  {
    v7 = [v6 mutableCopy];
    [v7 intersectSet:*(a1 + 32)];
    if (*(a1 + 40))
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            v15 = [*(a1 + 40) objectForKeyedSubscript:{v14, v20}];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = v14;
            }

            v18 = v17;

            [v8 addObject:v18];
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v8 = v7;
    }

    v19 = [v8 allObjects];
    [*(a1 + 48) setObject:v19 forKeyedSubscript:v5];
  }
}

void __73__PHAsset_Curation__verifiedPersonLocalIdentifiersByAssetUUIDWithAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 _pl_map:&__block_literal_global_2077];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

@end