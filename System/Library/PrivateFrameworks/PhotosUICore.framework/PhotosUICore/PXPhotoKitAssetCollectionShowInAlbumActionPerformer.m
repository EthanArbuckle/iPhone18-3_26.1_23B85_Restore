@interface PXPhotoKitAssetCollectionShowInAlbumActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)_assetInAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)menuElementsForAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (void)_populateActions:(id)a3 withNode:(id)a4 asset:(id)a5 level:(unint64_t)a6;
@end

@implementation PXPhotoKitAssetCollectionShowInAlbumActionPerformer

+ (id)menuElementsForAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v6 = a4;
  v7 = [a1 _assetInAssetCollectionReference:a3 withInputs:v6];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 containingAlbum];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [PXPhotoKitCollectionMenuNode rootNodeForAssetCollectionsContainingAsset:v7 excludedAssetCollection:v8];
  [a1 _populateActions:v9 withNode:v10 asset:v7 level:0];

  return v9;
}

+ (void)_populateActions:(id)a3 withNode:(id)a4 asset:(id)a5 level:(unint64_t)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v28 = a5;
  [v10 sortChildNodes];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = v10;
  obj = [v10 childNodes];
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
        v13 = [MEMORY[0x1E69DC668] sharedApplication];
        v14 = [v12 localizedTitle];
        v15 = [@" " px_stringByRepeating:a6];
        if ([v13 userInterfaceLayoutDirection] == 1)
        {
          v16 = [v15 stringByAppendingString:@"\u200F"];
          v17 = [v16 stringByAppendingString:v14];

          v14 = v16;
        }

        else
        {
          v17 = [v15 stringByAppendingString:v14];
        }

        v18 = MEMORY[0x1E69DCAB8];
        v19 = [v12 symbolName];
        v20 = [v18 systemImageNamed:v19];

        v21 = MEMORY[0x1E69DC628];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __93__PXPhotoKitAssetCollectionShowInAlbumActionPerformer__populateActions_withNode_asset_level___block_invoke;
        v30[3] = &unk_1E7746010;
        v30[4] = v12;
        v22 = v28;
        v31 = v22;
        v23 = [v21 actionWithTitle:v17 image:v20 identifier:0 handler:v30];
        [v9 addObject:v23];
        [a1 _populateActions:v9 withNode:v12 asset:v22 level:a6 + 1];

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

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v6 = a4;
  v7 = [a1 _assetInAssetCollectionReference:a3 withInputs:v6];
  v8 = v7;
  if (!v7 || ([v7 isHidden] & 1) != 0 || (objc_msgSend(v8, "isTrashed") & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [v6 containingAlbum];
    }

    else
    {
      v11 = 0;
    }

    v12 = [MEMORY[0x1E6978650] px_fetchContainingCollectionsForAsset:v8 excludedAssetCollection:v11];
    v9 = [v12 count] > 1;
  }

  return v9;
}

+ (id)_assetInAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v7 = a4;
  v8 = [a3 assetCollection];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    v17 = [v8 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionShowInAlbumActionPerformer.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v15, v17}];
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionShowInAlbumActionPerformer.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v15}];
  }

LABEL_3:
  if (objc_opt_respondsToSelector())
  {
    v9 = [v7 people];
  }

  else
  {
    v9 = 0;
  }

  if ([v8 estimatedAssetCount] == 1 && !objc_msgSend(v9, "count"))
  {
    v12 = [v7 assetsFetchResult];
    v10 = [v12 firstObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end