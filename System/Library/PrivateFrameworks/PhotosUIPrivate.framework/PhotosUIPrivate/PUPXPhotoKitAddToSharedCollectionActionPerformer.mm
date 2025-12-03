@interface PUPXPhotoKitAddToSharedCollectionActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
- (id)_addAssetsActionForAssets:(id)assets assetCollection:(id)collection;
@end

@implementation PUPXPhotoKitAddToSharedCollectionActionPerformer

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  v6 = MEMORY[0x1E69DC708];
  targetCopy = target;
  v8 = [v6 alloc];
  v9 = PULocalizedString(@"ADD_TO_SHARED_ALBUM_BUTTON_TITLE");
  v10 = [v8 initWithTitle:v9 style:0 target:targetCopy action:action];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  collectionCopy = collection;
  personCopy = person;
  groupCopy = group;
  if (_os_feature_enabled_impl())
  {
    photoLibrary = [assetCopy photoLibrary];
    v15 = photoLibrary;
    if (photoLibrary)
    {
      v16 = photoLibrary;
    }

    else
    {
      photoLibrary2 = [collectionCopy photoLibrary];
      v19 = photoLibrary2;
      if (photoLibrary2)
      {
        v16 = photoLibrary2;
      }

      else
      {
        photoLibrary3 = [personCopy photoLibrary];
        v21 = photoLibrary3;
        if (photoLibrary3)
        {
          photoLibrary4 = photoLibrary3;
        }

        else
        {
          photoLibrary4 = [groupCopy photoLibrary];
        }

        v16 = photoLibrary4;
      }
    }

    if ([MEMORY[0x1E69C39E8] sharedAlbumsEnabledForPhotoLibrary:v16])
    {
      v24.receiver = self;
      v24.super_class = &OBJC_METACLASS___PUPXPhotoKitAddToSharedCollectionActionPerformer;
      v17 = objc_msgSendSuper2(&v24, sel_canPerformOnAsset_inAssetCollection_person_socialGroup_, assetCopy, collectionCopy, personCopy, groupCopy);
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

- (id)_addAssetsActionForAssets:(id)assets assetCollection:(id)collection
{
  v5 = MEMORY[0x1E69C3328];
  collectionCopy = collection;
  assetsCopy = assets;
  v8 = [[v5 alloc] initWithAssets:assetsCopy assetCollection:collectionCopy];

  [v8 setShouldSortAssetsByCreationDate:1];

  return v8;
}

@end