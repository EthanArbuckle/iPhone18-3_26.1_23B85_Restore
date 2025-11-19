@interface PGMoodSourceAsset
- (id)_plistMoodIdentifiersWithGraph:(id)a3;
@end

@implementation PGMoodSourceAsset

- (id)_plistMoodIdentifiersWithGraph:(id)a3
{
  v43[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(PGMoodSource *)self options];
  v6 = [v5 prefetchedAssets];

  if (!v6)
  {
    v7 = [(PGMoodSource *)self photoLibrary];
    v8 = [v7 librarySpecificFetchOptions];

    v9 = *MEMORY[0x277CD9AD0];
    v43[0] = *MEMORY[0x277CD9B10];
    v43[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    [v8 setFetchPropertySets:v10];

    v11 = +[PGCurationManager defaultAssetSortDescriptors];
    [v8 setSortDescriptors:v11];

    v12 = MEMORY[0x277CD97A8];
    v13 = [(PGMoodSource *)self assetCollection];
    v14 = [v12 fetchAssetsInAssetCollection:v13 options:v8];

    v15 = objc_alloc(MEMORY[0x277D3C790]);
    v16 = [(PGMoodSource *)self photoLibrary];
    v17 = [v15 initWithPhotoLibrary:v16];

    v6 = [MEMORY[0x277CD97A8] clsAllAssetsFromFetchResult:v14 prefetchOptions:25 curationContext:v17];
    v18 = [(PGMoodSource *)self options];
    [v18 setPrefetchedAssets:v6];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = v6;
  v20 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v20)
  {

    v32 = MEMORY[0x277CBEBF8];
    goto LABEL_25;
  }

  v21 = v20;
  v37 = v4;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = *v39;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v39 != v26)
      {
        objc_enumerationMutation(v19);
      }

      v28 = *(*(&v38 + 1) + 8 * i);
      v29 = [v28 clsPeopleCount];
      if (v29)
      {
        ++v24;
        v25 += v29;
        v30 = [v28 clsFaceInformationSummary];
        v31 = [v30 numberOfGoodFaces];

        v22 += v31;
        if (v31)
        {
          ++v23;
        }
      }
    }

    v21 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
  }

  while (v21);

  if (v24 < 3)
  {
    v32 = MEMORY[0x277CBEBF8];
    v4 = v37;
    goto LABEL_25;
  }

  v33 = v23;
  if (v24 * 0.3 < v23)
  {
    if (vcvtd_n_f64_u64(v25, 1uLL) >= v22)
    {
      v34 = @"SomeSmiles";
    }

    else
    {
      v34 = @"ManySmiles";
    }

    v4 = v37;
    goto LABEL_23;
  }

  v4 = v37;
  if (v24 * 0.1 > v33)
  {
    v34 = @"NoSmile";
LABEL_23:
    [v4 addObject:v34];
  }

  v32 = v4;
LABEL_25:

  v35 = *MEMORY[0x277D85DE8];

  return v32;
}

@end