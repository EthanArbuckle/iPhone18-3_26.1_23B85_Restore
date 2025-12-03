@interface PXMemoryInfo
+ (id)fastMemoryInfoWithMemory:(id)memory;
+ (id)memoryInfoWithAssetCollection:(id)collection keyAssetFetchResult:(id)result;
+ (id)memoryInfoWithAssetCollection:(id)collection prefetchedPrimaryAsset:(id)asset;
+ (id)memoryInfoWithMemory:(id)memory;
+ (void)_updateTitleForMemoryInfo:(id)info withAssetCollection:(id)collection;
- (BOOL)isFavorite;
- (BOOL)px_canPerformFavoriteAction;
- (BOOL)px_isFavorite;
- (NSString)description;
- (PHAsset)primaryAsset;
- (PHMemory)memory;
- (PXMemoryInfo)memoryInfoWithUpdatedKeyAssetFetchResult:(id)result;
- (double)score;
- (id)px_fetchContainedAssets;
- (unint64_t)category;
@end

@implementation PXMemoryInfo

- (id)px_fetchContainedAssets
{
  assetCollection = [(PXMemoryInfo *)self assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"Containers+PXSelectionAssetContainer.m" lineNumber:40 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v9, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"Containers+PXSelectionAssetContainer.m" lineNumber:40 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v9}];
  }

LABEL_3:
  px_fetchContainedAssets = [assetCollection px_fetchContainedAssets];

  return px_fetchContainedAssets;
}

- (BOOL)px_canPerformFavoriteAction
{
  assetCollection = [(PXMemoryInfo *)self assetCollection];
  if (!assetCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"Containers+PXSelectionAssetContainer.m" lineNumber:36 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v9}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"Containers+PXSelectionAssetContainer.m" lineNumber:36 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v9, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  px_canPerformFavoriteAction = [assetCollection px_canPerformFavoriteAction];

  return px_canPerformFavoriteAction;
}

- (BOOL)px_isFavorite
{
  assetCollection = [(PXMemoryInfo *)self assetCollection];
  if (!assetCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"Containers+PXSelectionAssetContainer.m" lineNumber:32 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v9}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"Containers+PXSelectionAssetContainer.m" lineNumber:32 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v9, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  px_isFavorite = [assetCollection px_isFavorite];

  return px_isFavorite;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  localizedTitle = [(PXMemoryInfo *)self localizedTitle];
  localizedDateText = [(PXMemoryInfo *)self localizedDateText];
  primaryAsset = [(PXMemoryInfo *)self primaryAsset];
  v9 = [v3 stringWithFormat:@"<%@: %p, title: %@, date: %@, primary asset: %@>", v5, self, localizedTitle, localizedDateText, primaryAsset];

  return v9;
}

- (PHAsset)primaryAsset
{
  prefetchedPrimaryAsset = [(PXMemoryInfo *)self prefetchedPrimaryAsset];

  if (prefetchedPrimaryAsset)
  {
    prefetchedPrimaryAsset2 = [(PXMemoryInfo *)self prefetchedPrimaryAsset];
  }

  else
  {
    keyAssetFetchResult = [(PXMemoryInfo *)self keyAssetFetchResult];
    prefetchedPrimaryAsset2 = [keyAssetFetchResult firstObject];
  }

  return prefetchedPrimaryAsset2;
}

- (double)score
{
  memory = [(PXMemoryInfo *)self memory];
  v3 = memory;
  if (memory)
  {
    [memory score];
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
  memory = [(PXMemoryInfo *)self memory];
  v3 = memory;
  if (memory)
  {
    category = [memory category];
  }

  else
  {
    category = 0;
  }

  return category;
}

- (BOOL)isFavorite
{
  memory = [(PXMemoryInfo *)self memory];
  isFavorite = [memory isFavorite];

  return isFavorite;
}

- (PHMemory)memory
{
  assetCollection = [(PXMemoryInfo *)self assetCollection];
  if ([assetCollection assetCollectionType] == 4)
  {
    v3 = assetCollection;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PXMemoryInfo)memoryInfoWithUpdatedKeyAssetFetchResult:(id)result
{
  resultCopy = result;
  v5 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v5 + 2, self->_localizedTitle);
  objc_storeStrong(v5 + 3, self->_assetCollection);
  objc_storeStrong(v5 + 1, self->_localizedDateText);
  v6 = v5[4];
  v5[4] = resultCopy;

  return v5;
}

+ (void)_updateTitleForMemoryInfo:(id)info withAssetCollection:(id)collection
{
  infoCopy = info;
  collectionCopy = collection;
  localizedTitle = [collectionCopy localizedTitle];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v8 = [localizedTitle stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [v8 uppercaseStringWithLocale:currentLocale];
  v11 = infoCopy[2];
  infoCopy[2] = v10;

  assetCollectionType = [collectionCopy assetCollectionType];
  if (assetCollectionType == 3 && !infoCopy[2])
  {
    infoCopy[2] = @"Placeholder";
  }
}

+ (id)memoryInfoWithAssetCollection:(id)collection prefetchedPrimaryAsset:(id)asset
{
  collectionCopy = collection;
  assetCopy = asset;
  v8 = objc_alloc_init(PXMemoryInfo);
  assetCollection = v8->_assetCollection;
  v8->_assetCollection = collectionCopy;
  v10 = collectionCopy;

  prefetchedPrimaryAsset = v8->_prefetchedPrimaryAsset;
  v8->_prefetchedPrimaryAsset = assetCopy;

  [self _updateTitleForMemoryInfo:v8 withAssetCollection:v10];

  return v8;
}

+ (id)memoryInfoWithAssetCollection:(id)collection keyAssetFetchResult:(id)result
{
  collectionCopy = collection;
  resultCopy = result;
  v8 = objc_alloc_init(PXMemoryInfo);
  assetCollection = v8->_assetCollection;
  v8->_assetCollection = collectionCopy;
  v10 = collectionCopy;

  objc_storeStrong(&v8->_keyAssetFetchResult, result);
  firstObject = [resultCopy firstObject];
  [self _updateTitleForMemoryInfo:v8 withAssetCollection:v10];

  return v8;
}

+ (id)memoryInfoWithMemory:(id)memory
{
  v11[1] = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  v4 = [objc_opt_class() fastMemoryInfoWithMemory:memoryCopy];
  v5 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:memoryCopy referenceAsset:0];
  objc_storeStrong(v4 + 4, v5);
  v6 = [v5 count];
  if (memoryCopy && !v6)
  {
    v7 = MEMORY[0x1E69789A8];
    v11[0] = memoryCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v7 setNeedsToRepairKeyCuratedAssetForMemories:v8];
  }

  primaryAsset = [v4 primaryAsset];
  [primaryAsset fetchColorNormalizationData];

  if ([primaryAsset isEligibleForAutoPlayback])
  {
    [primaryAsset fetchPropertySetsIfNeeded];
    [primaryAsset photoIrisProperties];
  }

  return v4;
}

+ (id)fastMemoryInfoWithMemory:(id)memory
{
  memoryCopy = memory;
  v4 = objc_alloc_init(PXMemoryInfo);
  assetCollection = v4->_assetCollection;
  v4->_assetCollection = memoryCopy;
  v6 = memoryCopy;

  localizedTitle = [(PHAssetCollection *)v6 localizedTitle];
  localizedTitle = v4->_localizedTitle;
  v4->_localizedTitle = localizedTitle;

  localizedSubtitle = [(PHAssetCollection *)v6 localizedSubtitle];
  localizedDateText = v4->_localizedDateText;
  v4->_localizedDateText = localizedSubtitle;

  return v4;
}

@end