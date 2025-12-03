@interface PXPhotoKitAssetCollectionShowInAlbumActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)_assetInAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)menuElementsForAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (void)_populateActions:(id)actions withNode:(id)node asset:(id)asset level:(unint64_t)level;
@end

@implementation PXPhotoKitAssetCollectionShowInAlbumActionPerformer

+ (id)menuElementsForAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  inputsCopy = inputs;
  v7 = [self _assetInAssetCollectionReference:reference withInputs:inputsCopy];
  if (objc_opt_respondsToSelector())
  {
    containingAlbum = [inputsCopy containingAlbum];
  }

  else
  {
    containingAlbum = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v10 = [PXPhotoKitCollectionMenuNode rootNodeForAssetCollectionsContainingAsset:v7 excludedAssetCollection:containingAlbum];
  [self _populateActions:array withNode:v10 asset:v7 level:0];

  return array;
}

+ (void)_populateActions:(id)actions withNode:(id)node asset:(id)asset level:(unint64_t)level
{
  v37 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  nodeCopy = node;
  assetCopy = asset;
  [nodeCopy sortChildNodes];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = nodeCopy;
  obj = [nodeCopy childNodes];
  v29 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v29)
  {
    v26 = *v33;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        localizedTitle = [v12 localizedTitle];
        v15 = [@" " px_stringByRepeating:level];
        if ([mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1)
        {
          v16 = [v15 stringByAppendingString:@"\u200F"];
          v17 = [v16 stringByAppendingString:localizedTitle];

          localizedTitle = v16;
        }

        else
        {
          v17 = [v15 stringByAppendingString:localizedTitle];
        }

        v18 = MEMORY[0x1E69DCAB8];
        symbolName = [v12 symbolName];
        v20 = [v18 systemImageNamed:symbolName];

        v21 = MEMORY[0x1E69DC628];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __93__PXPhotoKitAssetCollectionShowInAlbumActionPerformer__populateActions_withNode_asset_level___block_invoke;
        v30[3] = &unk_1E7746010;
        v30[4] = v12;
        v22 = assetCopy;
        v31 = v22;
        v23 = [v21 actionWithTitle:v17 image:v20 identifier:0 handler:v30];
        [actionsCopy addObject:v23];
        [self _populateActions:actionsCopy withNode:v12 asset:v22 level:level + 1];

        ++v11;
      }

      while (v29 != v11);
      v29 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v29);
  }
}

void __93__PXPhotoKitAssetCollectionShowInAlbumActionPerformer__populateActions_withNode_asset_level___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v2 = [*(a1 + 32) collection];
  [v3 px_navigateToCollection:v2 selectedObject:*(a1 + 40) completionHandler:0];
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  inputsCopy = inputs;
  v7 = [self _assetInAssetCollectionReference:reference withInputs:inputsCopy];
  v8 = v7;
  if (!v7 || ([v7 isHidden] & 1) != 0 || (objc_msgSend(v8, "isTrashed") & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      containingAlbum = [inputsCopy containingAlbum];
    }

    else
    {
      containingAlbum = 0;
    }

    v12 = [MEMORY[0x1E6978650] px_fetchContainingCollectionsForAsset:v8 excludedAssetCollection:containingAlbum];
    v9 = [v12 count] > 1;
  }

  return v9;
}

+ (id)_assetInAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  inputsCopy = inputs;
  assetCollection = [reference assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionShowInAlbumActionPerformer.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v15, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionShowInAlbumActionPerformer.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v15}];
  }

LABEL_3:
  if (objc_opt_respondsToSelector())
  {
    people = [inputsCopy people];
  }

  else
  {
    people = 0;
  }

  if ([assetCollection estimatedAssetCount] == 1 && !objc_msgSend(people, "count"))
  {
    assetsFetchResult = [inputsCopy assetsFetchResult];
    firstObject = [assetsFetchResult firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end