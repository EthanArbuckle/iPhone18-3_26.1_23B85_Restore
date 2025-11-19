@interface PHAStorytellingClientRequestUtils
+ (id)_assetCollectionForLocalIdentifier:(id)a3 photoLibrary:(id)a4;
+ (id)assetCollectionForLocalIdentifier:(id)a3 options:(id)a4 photoLibrary:(id)a5;
@end

@implementation PHAStorytellingClientRequestUtils

+ (id)_assetCollectionForLocalIdentifier:(id)a3 photoLibrary:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 librarySpecificFetchOptions];
  [v6 setIncludeLocalMemories:1];
  [v6 setFetchLimit:1];
  v7 = MEMORY[0x277CD97B8];
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v7 fetchAssetCollectionsWithLocalIdentifiers:v8 options:v6];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)assetCollectionForLocalIdentifier:(id)a3 options:(id)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 || !v9)
  {
    if (v8)
    {
      v15 = [a1 _assetCollectionForLocalIdentifier:v8 photoLibrary:v10];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v11 = [v9 objectForKeyedSubscript:@"PHPhotosGraphOptionAssetIdentifiers"];
    if (v11)
    {
      v12 = [v10 librarySpecificFetchOptions];
      v13 = [MEMORY[0x277D3B658] assetPropertySetsForCuration];
      [v12 setFetchPropertySets:v13];

      v14 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v11 options:v12];
      v15 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssetFetchResult:v14 title:0];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

@end