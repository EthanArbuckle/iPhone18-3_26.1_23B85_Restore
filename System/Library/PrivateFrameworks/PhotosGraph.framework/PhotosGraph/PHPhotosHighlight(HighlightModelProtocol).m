@interface PHPhotosHighlight(HighlightModelProtocol)
+ (id)fetchParentDayGroupHighlightsForDayHighlights:()HighlightModelProtocol;
- (double)nonDefaultCurationScorePercentageForPhotoLibrary:()HighlightModelProtocol;
@end

@implementation PHPhotosHighlight(HighlightModelProtocol)

- (double)nonDefaultCurationScorePercentageForPhotoLibrary:()HighlightModelProtocol
{
  v4 = a3;
  v5 = [a1 estimatedAssetCount];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 librarySpecificFetchOptions];
    [v7 setShouldPrefetchCount:1];
    [v7 setIncludeGuestAssets:1];
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curationScore != 0.5 && curationScore != 0.0"];
    [v7 setInternalPredicate:v8];

    v9 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:a1 options:v7];
    v10 = [v9 count] / v6;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

+ (id)fetchParentDayGroupHighlightsForDayHighlights:()HighlightModelProtocol
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v6)
  {
    v16 = MEMORY[0x277CBEBF8];
    v8 = v5;
    goto LABEL_13;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v20;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v19 + 1) + 8 * i);
      v12 = [v11 objectID];
      [v4 addObject:v12];

      if (!v8)
      {
        v8 = [v11 photoLibrary];
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v7);

  if (v8)
  {
    v13 = [v8 librarySpecificFetchOptions];
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY childDayGroupPhotosHighlights IN %@", v4];
    [v13 setInternalPredicate:v14];

    v15 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000304 options:v13];
    v16 = [v15 fetchedObjects];

LABEL_13:
    goto LABEL_15;
  }

  v16 = MEMORY[0x277CBEBF8];
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end