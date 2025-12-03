@interface PGMoodSourceAsset
- (id)_plistMoodIdentifiersWithGraph:(id)graph;
@end

@implementation PGMoodSourceAsset

- (id)_plistMoodIdentifiersWithGraph:(id)graph
{
  v43[2] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  options = [(PGMoodSource *)self options];
  prefetchedAssets = [options prefetchedAssets];

  if (!prefetchedAssets)
  {
    photoLibrary = [(PGMoodSource *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v9 = *MEMORY[0x277CD9AD0];
    v43[0] = *MEMORY[0x277CD9B10];
    v43[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    [librarySpecificFetchOptions setFetchPropertySets:v10];

    v11 = +[PGCurationManager defaultAssetSortDescriptors];
    [librarySpecificFetchOptions setSortDescriptors:v11];

    v12 = MEMORY[0x277CD97A8];
    assetCollection = [(PGMoodSource *)self assetCollection];
    v14 = [v12 fetchAssetsInAssetCollection:assetCollection options:librarySpecificFetchOptions];

    v15 = objc_alloc(MEMORY[0x277D3C790]);
    photoLibrary2 = [(PGMoodSource *)self photoLibrary];
    v17 = [v15 initWithPhotoLibrary:photoLibrary2];

    prefetchedAssets = [MEMORY[0x277CD97A8] clsAllAssetsFromFetchResult:v14 prefetchOptions:25 curationContext:v17];
    options2 = [(PGMoodSource *)self options];
    [options2 setPrefetchedAssets:prefetchedAssets];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = prefetchedAssets;
  v20 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v20)
  {

    v32 = MEMORY[0x277CBEBF8];
    goto LABEL_25;
  }

  v21 = v20;
  v37 = array;
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
      clsPeopleCount = [v28 clsPeopleCount];
      if (clsPeopleCount)
      {
        ++v24;
        v25 += clsPeopleCount;
        clsFaceInformationSummary = [v28 clsFaceInformationSummary];
        numberOfGoodFaces = [clsFaceInformationSummary numberOfGoodFaces];

        v22 += numberOfGoodFaces;
        if (numberOfGoodFaces)
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
    array = v37;
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

    array = v37;
    goto LABEL_23;
  }

  array = v37;
  if (v24 * 0.1 > v33)
  {
    v34 = @"NoSmile";
LABEL_23:
    [array addObject:v34];
  }

  v32 = array;
LABEL_25:

  v35 = *MEMORY[0x277D85DE8];

  return v32;
}

@end