@interface PUPXPhotoKitAddToSharedCollectionActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
- (id)_addAssetsActionForAssets:(id)a3 assetCollection:(id)a4;
@end

@implementation PUPXPhotoKitAddToSharedCollectionActionPerformer

+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5
{
  v6 = MEMORY[0x1E69DC708];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = PULocalizedString(@"ADD_TO_SHARED_ALBUM_BUTTON_TITLE");
  v10 = [v8 initWithTitle:v9 style:0 target:v7 action:a4];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (_os_feature_enabled_impl())
  {
    v14 = [v10 photoLibrary];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v18 = [v11 photoLibrary];
      v19 = v18;
      if (v18)
      {
        v16 = v18;
      }

      else
      {
        v20 = [v12 photoLibrary];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = [v13 photoLibrary];
        }

        v16 = v22;
      }
    }

    if ([MEMORY[0x1E69C39E8] sharedAlbumsEnabledForPhotoLibrary:v16])
    {
      v24.receiver = a1;
      v24.super_class = &OBJC_METACLASS___PUPXPhotoKitAddToSharedCollectionActionPerformer;
      v17 = objc_msgSendSuper2(&v24, sel_canPerformOnAsset_inAssetCollection_person_socialGroup_, v10, v11, v12, v13);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_addAssetsActionForAssets:(id)a3 assetCollection:(id)a4
{
  v5 = MEMORY[0x1E69C3328];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithAssets:v7 assetCollection:v6];

  [v8 setShouldSortAssetsByCreationDate:1];

  return v8;
}

@end