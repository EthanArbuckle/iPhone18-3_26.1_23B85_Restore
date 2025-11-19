@interface PXMemoryInfo
+ (id)fastMemoryInfoWithMemory:(id)a3;
+ (id)memoryInfoWithAssetCollection:(id)a3 keyAssetFetchResult:(id)a4;
+ (id)memoryInfoWithAssetCollection:(id)a3 prefetchedPrimaryAsset:(id)a4;
+ (id)memoryInfoWithMemory:(id)a3;
+ (void)_updateTitleForMemoryInfo:(id)a3 withAssetCollection:(id)a4;
- (BOOL)isFavorite;
- (BOOL)px_canPerformFavoriteAction;
- (BOOL)px_isFavorite;
- (NSString)description;
- (PHAsset)primaryAsset;
- (PHMemory)memory;
- (PXMemoryInfo)memoryInfoWithUpdatedKeyAssetFetchResult:(id)a3;
- (double)score;
- (id)px_fetchContainedAssets;
- (unint64_t)category;
@end

@implementation PXMemoryInfo

- (id)px_fetchContainedAssets
{
  v4 = [(PXMemoryInfo *)self assetCollection];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    v11 = [v4 px_descriptionForAssertionMessage];
    [v7 handleFailureInMethod:a2 object:self file:@"Containers+PXSelectionAssetContainer.m" lineNumber:40 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v9, v11}];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"Containers+PXSelectionAssetContainer.m" lineNumber:40 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v9}];
  }

LABEL_3:
  v5 = [v4 px_fetchContainedAssets];

  return v5;
}

- (BOOL)px_canPerformFavoriteAction
{
  v4 = [(PXMemoryInfo *)self assetCollection];
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"Containers+PXSelectionAssetContainer.m" lineNumber:36 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v9}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    v11 = [v4 px_descriptionForAssertionMessage];
    [v7 handleFailureInMethod:a2 object:self file:@"Containers+PXSelectionAssetContainer.m" lineNumber:36 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v9, v11}];

    goto LABEL_6;
  }

LABEL_3:
  v5 = [v4 px_canPerformFavoriteAction];

  return v5;
}

- (BOOL)px_isFavorite
{
  v4 = [(PXMemoryInfo *)self assetCollection];
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"Containers+PXSelectionAssetContainer.m" lineNumber:32 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v9}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    v11 = [v4 px_descriptionForAssertionMessage];
    [v7 handleFailureInMethod:a2 object:self file:@"Containers+PXSelectionAssetContainer.m" lineNumber:32 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v9, v11}];

    goto LABEL_6;
  }

LABEL_3:
  v5 = [v4 px_isFavorite];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXMemoryInfo *)self localizedTitle];
  v7 = [(PXMemoryInfo *)self localizedDateText];
  v8 = [(PXMemoryInfo *)self primaryAsset];
  v9 = [v3 stringWithFormat:@"<%@: %p, title: %@, date: %@, primary asset: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (PHAsset)primaryAsset
{
  v3 = [(PXMemoryInfo *)self prefetchedPrimaryAsset];

  if (v3)
  {
    v4 = [(PXMemoryInfo *)self prefetchedPrimaryAsset];
  }

  else
  {
    v5 = [(PXMemoryInfo *)self keyAssetFetchResult];
    v4 = [v5 firstObject];
  }

  return v4;
}

- (double)score
{
  v2 = [(PXMemoryInfo *)self memory];
  v3 = v2;
  if (v2)
  {
    [v2 score];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (unint64_t)category
{
  v2 = [(PXMemoryInfo *)self memory];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 category];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isFavorite
{
  v2 = [(PXMemoryInfo *)self memory];
  v3 = [v2 isFavorite];

  return v3;
}

- (PHMemory)memory
{
  v2 = [(PXMemoryInfo *)self assetCollection];
  if ([v2 assetCollectionType] == 4)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PXMemoryInfo)memoryInfoWithUpdatedKeyAssetFetchResult:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v5 + 2, self->_localizedTitle);
  objc_storeStrong(v5 + 3, self->_assetCollection);
  objc_storeStrong(v5 + 1, self->_localizedDateText);
  v6 = v5[4];
  v5[4] = v4;

  return v5;
}

+ (void)_updateTitleForMemoryInfo:(id)a3 withAssetCollection:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = [v5 localizedTitle];
  v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [v8 uppercaseStringWithLocale:v9];
  v11 = v13[2];
  v13[2] = v10;

  v12 = [v5 assetCollectionType];
  if (v12 == 3 && !v13[2])
  {
    v13[2] = @"Placeholder";
  }
}

+ (id)memoryInfoWithAssetCollection:(id)a3 prefetchedPrimaryAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(PXMemoryInfo);
  assetCollection = v8->_assetCollection;
  v8->_assetCollection = v6;
  v10 = v6;

  prefetchedPrimaryAsset = v8->_prefetchedPrimaryAsset;
  v8->_prefetchedPrimaryAsset = v7;

  [a1 _updateTitleForMemoryInfo:v8 withAssetCollection:v10];

  return v8;
}

+ (id)memoryInfoWithAssetCollection:(id)a3 keyAssetFetchResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(PXMemoryInfo);
  assetCollection = v8->_assetCollection;
  v8->_assetCollection = v6;
  v10 = v6;

  objc_storeStrong(&v8->_keyAssetFetchResult, a4);
  v11 = [v7 firstObject];
  [a1 _updateTitleForMemoryInfo:v8 withAssetCollection:v10];

  return v8;
}

+ (id)memoryInfoWithMemory:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_opt_class() fastMemoryInfoWithMemory:v3];
  v5 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v3 referenceAsset:0];
  objc_storeStrong(v4 + 4, v5);
  v6 = [v5 count];
  if (v3 && !v6)
  {
    v7 = MEMORY[0x1E69789A8];
    v11[0] = v3;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v7 setNeedsToRepairKeyCuratedAssetForMemories:v8];
  }

  v9 = [v4 primaryAsset];
  [v9 fetchColorNormalizationData];

  if ([v9 isEligibleForAutoPlayback])
  {
    [v9 fetchPropertySetsIfNeeded];
    [v9 photoIrisProperties];
  }

  return v4;
}

+ (id)fastMemoryInfoWithMemory:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PXMemoryInfo);
  assetCollection = v4->_assetCollection;
  v4->_assetCollection = v3;
  v6 = v3;

  v7 = [(PHAssetCollection *)v6 localizedTitle];
  localizedTitle = v4->_localizedTitle;
  v4->_localizedTitle = v7;

  v9 = [(PHAssetCollection *)v6 localizedSubtitle];
  localizedDateText = v4->_localizedDateText;
  v4->_localizedDateText = v9;

  return v4;
}

@end