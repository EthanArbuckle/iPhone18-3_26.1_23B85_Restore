@interface PHAsset(PXPlacesAdditions)
+ (id)pk_fetchPlacesAssetsInAssetCollection:()PXPlacesAdditions shouldMergeOptionFetchPropertySets:options:;
- (uint64_t)compareTo:()PXPlacesAdditions;
- (uint64_t)pk_isContentEqualTo:()PXPlacesAdditions;
@end

@implementation PHAsset(PXPlacesAdditions)

- (uint64_t)compareTo:()PXPlacesAdditions
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    creationDate = [self creationDate];
    creationDate2 = [v4 creationDate];
    v7 = [creationDate compare:creationDate2];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (uint64_t)pk_isContentEqualTo:()PXPlacesAdditions
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([self hasContentEqualTo:v4])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = v4 == 0;
  }

  return v5;
}

+ (id)pk_fetchPlacesAssetsInAssetCollection:()PXPlacesAdditions shouldMergeOptionFetchPropertySets:options:
{
  v25[1] = *MEMORY[0x1E69E9840];
  firstObject = a3;
  v8 = a5;
  v9 = v8;
  if (firstObject)
  {
    if (v8)
    {
LABEL_3:
      librarySpecificFetchOptions = [v9 copy];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = MEMORY[0x1E6978830];
    photoLibrary = [v8 photoLibrary];
    v13 = [v11 fetchOptionsWithPhotoLibrary:photoLibrary orObject:0];

    [v13 setIncludePlacesSmartAlbum:1];
    v14 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000203 options:v13];
    firstObject = [v14 firstObject];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  photoLibrary2 = [firstObject photoLibrary];
  librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];

  [librarySpecificFetchOptions setSharingFilter:{objc_msgSend(0, "sharingFilter")}];
LABEL_6:
  v16 = [MEMORY[0x1E6978830] px_placesFetchOptionsWith:librarySpecificFetchOptions];

  [v16 setChunkSizeForFetch:5000];
  sortDescriptors = [v16 sortDescriptors];

  if (!sortDescriptors)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"creationDate" ascending:0];
    v25[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [v16 setSortDescriptors:v19];
  }

  v20 = *MEMORY[0x1E6978CE0];
  v24[0] = *MEMORY[0x1E6978C18];
  v24[1] = v20;
  v24[2] = *MEMORY[0x1E6978C08];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  if (a4)
  {
    [v16 addFetchPropertySets:v21];
  }

  else
  {
    [v16 setFetchPropertySets:v21];
  }

  v22 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:firstObject options:v16];

  return v22;
}

@end