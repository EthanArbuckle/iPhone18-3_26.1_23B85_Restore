@interface TVAssetGroup
@end

@implementation TVAssetGroup

void __43___TVAssetGroup_setAssetInfo_forKey_queue___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v29 = [WeakRetained[7] objectForKeyedSubscript:*(a1 + 32)];
    if (v29)
    {
      [*(a1 + 40) _removeAssetInfoForKey:*(a1 + 32) removeFile:0];
    }

    v4 = [*(a1 + 48) objectForKey:@"ATVAssetSize"];

    if (v4)
    {
      v5 = [*(a1 + 48) objectForKey:@"ATVAssetSize"];
      v3[6] = v3[6] + [v5 unsignedLongLongValue];
    }

    [v3[7] setObject:*(a1 + 48) forKey:*(a1 + 32)];
    v6 = [*(a1 + 48) objectForKeyedSubscript:@"ATVAssetTags"];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v39;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v38 + 1) + 8 * i);
          v12 = [v3[8] objectForKeyedSubscript:v11];
          if (!v12)
          {
            v12 = [MEMORY[0x277CBEB58] setWithCapacity:1];
            [v3[8] setObject:v12 forKeyedSubscript:v11];
          }

          [v12 addObject:*(a1 + 32)];
        }

        v8 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v8);
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __43___TVAssetGroup_setAssetInfo_forKey_queue___block_invoke_2;
    v35[3] = &unk_279D6F5D0;
    v36 = *(a1 + 48);
    v27 = *(a1 + 32);
    v13 = v27.i64[0];
    v37 = vextq_s8(v27, v27, 8uLL);
    [v3 _updateManifestWithChange:v35];
    if (v3[6] > v3[4])
    {
      v14 = TVMLKitImageLogObject;
      if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CD9A000, v14, OS_LOG_TYPE_DEFAULT, "Current cache size exceeds maximum cache size.  Starting to prune.", buf, 2u);
      }

      v15 = [v3[7] allKeys];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __43___TVAssetGroup_setAssetInfo_forKey_queue___block_invoke_19;
      v34[3] = &unk_279D70948;
      v34[4] = v3;
      v28 = v15;
      [v15 sortedArrayUsingComparator:v34];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = v33 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        while (2)
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v30 + 1) + 8 * j);
            v22 = [v3[7] objectForKeyedSubscript:v21];
            v23 = v22;
            if (v3[4] * 0.95 > v3[6])
            {

              goto LABEL_30;
            }

            v24 = [v22 objectForKey:@"ATVAssetPath"];
            if ([v24 length])
            {
              [*(a1 + 40) _removeAssetInfoForKey:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v30 objects:v44 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_30:

      v25 = TVMLKitImageLogObject;
      if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 40);
        *buf = 138412290;
        v43 = v26;
        _os_log_impl(&dword_26CD9A000, v25, OS_LOG_TYPE_DEFAULT, "Done freeing up cache space. %@", buf, 0xCu);
      }
    }
  }
}

void __43___TVAssetGroup_setAssetInfo_forKey_queue___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) mutableCopy];
  [v7 removeObjectForKey:@"ATVAsset"];
  [v7 removeObjectForKey:@"ATVAssetLastAccessedDate"];
  v2 = [v7 objectForKeyedSubscript:@"ATVAssetTags"];

  if (v2)
  {
    v3 = [v7 objectForKeyedSubscript:@"ATVAssetTags"];
    v4 = [v3 allObjects];
    [v7 setObject:v4 forKeyedSubscript:@"ATVAssetTags"];
  }

  v5 = [v7 copy];
  v6 = [*(a1 + 40) manifest];
  [v6 setObject:v5 forKeyedSubscript:*(a1 + 48)];
}

uint64_t __43___TVAssetGroup_setAssetInfo_forKey_queue___block_invoke_19(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 56);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [v7 valueForKeyPath:@"ATVAssetLastAccessedDate"];

  v9 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v6];

  v10 = [v9 valueForKeyPath:@"ATVAssetLastAccessedDate"];

  v11 = [v8 compare:v10];
  return v11;
}

void __39___TVAssetGroup_assetInfoForKey_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[7] objectForKey:*(a1 + 32)];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    WeakRetained = v6;
  }
}

void __39___TVAssetGroup_assetInfoForKey_queue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeAssetInfoForKey:*(a1 + 32)];
}

void __39___TVAssetGroup_assetInfoForKey_queue___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained[7] objectForKey:*(a1 + 32)];

    WeakRetained = v8;
    if (v3)
    {
      v4 = MEMORY[0x277CBEB38];
      v5 = [v8[7] objectForKey:*(a1 + 32)];
      v6 = [v4 dictionaryWithDictionary:v5];

      v7 = [MEMORY[0x277CBEAA8] date];
      [v6 setObject:v7 forKey:@"ATVAssetLastAccessedDate"];

      [v8[7] setObject:v6 forKey:*(a1 + 32)];
      WeakRetained = v8;
    }
  }
}

void __45___TVAssetGroup_removeAssetInfoForKey_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeAssetInfoForKey:*(a1 + 32)];
}

void __42___TVAssetGroup_removeAllAssetsWithQueue___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[7] allKeys];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 _removeAssetInfoForKey:*(*(&v8 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

void __43___TVAssetGroup_infoForAllAssetsWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[7] copy];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    WeakRetained = v6;
  }
}

void __48___TVAssetGroup_infoForAllAssetsWithTags_queue___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v27;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [WeakRetained[8] objectForKeyedSubscript:*(*(&v26 + 1) + 8 * i)];
          v10 = v9;
          if (!v9)
          {

            v6 = 0;
LABEL_16:

            goto LABEL_18;
          }

          if (v6)
          {
            [v6 intersectSet:v9];
            if (![v6 count])
            {
              goto LABEL_16;
            }
          }

          else
          {
            v6 = [v9 mutableCopy];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_18:

    if ([v6 count])
    {
      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = v6;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * j);
            v18 = [WeakRetained[7] objectForKeyedSubscript:{v17, v22}];
            [v11 setObject:v18 forKeyedSubscript:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v14);
      }

      v19 = [v11 copy];
      v20 = *(*(a1 + 40) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }
  }
}

void __51___TVAssetGroup__removeAssetInfoForKey_removeFile___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manifest];
  [v2 removeObjectForKey:*(a1 + 40)];
}

id __38___TVAssetGroup_updateAssetsFromFiles__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
    v8 = [v7 mutableCopy];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    [v8 setObject:v9 forKeyedSubscript:@"ATVAssetSize"];

    v10 = [MEMORY[0x277CBEAA8] date];
    [v8 setObject:v10 forKeyedSubscript:@"ATVAssetLastAccessedDate"];

    v11 = [v8 objectForKeyedSubscript:@"ATVAssetTags"];

    if (v11)
    {
      v12 = MEMORY[0x277CBEB98];
      v13 = [v8 objectForKeyedSubscript:@"ATVAssetTags"];
      v14 = [v12 setWithArray:v13];
      [v8 setObject:v14 forKeyedSubscript:@"ATVAssetTags"];
    }

    v15 = [v8 copy];
  }

  else
  {
    v18[0] = @"ATVAssetSize";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v19[0] = v8;
    v19[1] = v5;
    v18[1] = @"ATVAssetPath";
    v18[2] = @"ATVAssetLastAccessedDate";
    v16 = [MEMORY[0x277CBEAA8] date];
    v19[2] = v16;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  }

  return v15;
}

void __43___TVAssetGroup__updateManifestWithChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _saveManifest];
    WeakRetained = v2;
  }
}

@end