@interface PGFeatureExtractorPhotoLibrarySize
+ (BOOL)preCalculatePhotoLibrarySizeWithPhotoLibrary:(id)a3;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorPhotoLibrarySize

+ (BOOL)preCalculatePhotoLibrarySizeWithPhotoLibrary:(id)a3
{
  v4 = a3;
  [a1 resetPreCalculatedPhotoLibrarySize];
  v5 = [v4 librarySpecificFetchOptions];

  [v5 setWantsIncrementalChangeDetails:0];
  [v5 setShouldPrefetchCount:1];
  [v5 setIsExclusivePredicate:1];
  v6 = [a1 _allAssetsOfType:1 withOptions:v5];
  v7 = [a1 _allAssetsOfType:2 withOptions:v5];
  [a1 setPreCalculatedPhotoLibrarySize:{objc_msgSend(v7, "count") + objc_msgSend(v6, "count")}];

  return 1;
}

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() preCalculatedPhotoLibrarySize];
  if (v5)
  {
    goto LABEL_4;
  }

  if ([objc_opt_class() preCalculatePhotoLibrarySizeWithPhotoLibrary:v4])
  {
    v5 = [objc_opt_class() preCalculatedPhotoLibrarySize];
LABEL_4:
    v6 = objc_alloc(MEMORY[0x277D22C40]);
    *&v7 = v5;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10 = [v6 initWithArray:v9];

    goto LABEL_5;
  }

  v10 = 0;
LABEL_5:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)featureNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"PhotoLibrarySize";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end