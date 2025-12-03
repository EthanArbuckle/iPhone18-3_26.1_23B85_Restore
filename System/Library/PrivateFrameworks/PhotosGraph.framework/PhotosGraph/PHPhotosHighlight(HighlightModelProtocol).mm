@interface PHPhotosHighlight(HighlightModelProtocol)
+ (id)fetchParentDayGroupHighlightsForDayHighlights:()HighlightModelProtocol;
- (double)nonDefaultCurationScorePercentageForPhotoLibrary:()HighlightModelProtocol;
@end

@implementation PHPhotosHighlight(HighlightModelProtocol)

- (double)nonDefaultCurationScorePercentageForPhotoLibrary:()HighlightModelProtocol
{
  v4 = a3;
  estimatedAssetCount = [self estimatedAssetCount];
  if (estimatedAssetCount)
  {
    v6 = estimatedAssetCount;
    librarySpecificFetchOptions = [v4 librarySpecificFetchOptions];
    [librarySpecificFetchOptions setShouldPrefetchCount:1];
    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curationScore != 0.5 && curationScore != 0.0"];
    [librarySpecificFetchOptions setInternalPredicate:v8];

    v9 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:self options:librarySpecificFetchOptions];
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
    fetchedObjects = MEMORY[0x277CBEBF8];
    photoLibrary = v5;
    goto LABEL_13;
  }

  v7 = v6;
  photoLibrary = 0;
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
      objectID = [v11 objectID];
      [v4 addObject:objectID];

      if (!photoLibrary)
      {
        photoLibrary = [v11 photoLibrary];
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v7);

  if (photoLibrary)
  {
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY childDayGroupPhotosHighlights IN %@", v4];
    [librarySpecificFetchOptions setInternalPredicate:v14];

    v15 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000304 options:librarySpecificFetchOptions];
    fetchedObjects = [v15 fetchedObjects];

LABEL_13:
    goto LABEL_15;
  }

  fetchedObjects = MEMORY[0x277CBEBF8];
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];

  return fetchedObjects;
}

@end