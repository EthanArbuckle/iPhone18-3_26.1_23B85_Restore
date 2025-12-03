@interface _PXPhotoKitAssetBadgeManager
- (BOOL)_shouldShowGyroBadgeForAsset:(id)asset;
- (PXAssetBadgeInfo)badgeInfoForAsset:(SEL)asset inCollection:(id)collection options:(id)options;
@end

@implementation _PXPhotoKitAssetBadgeManager

- (BOOL)_shouldShowGyroBadgeForAsset:(id)asset
{
  assetCopy = asset;
  if (((PFIsPhotosAppAnyPlatform() & 1) != 0 || PFIsCamera()) && PFPosterIsSpatialPhotoEnabled() && PFPosterDeviceSupportsSpatialPhoto())
  {
    v4 = [assetCopy isEligibleForSpatialGenerationIncludingStereo:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PXAssetBadgeInfo)badgeInfoForAsset:(SEL)asset inCollection:(id)collection options:(id)options
{
  collectionCopy = collection;
  *&retstr->badges = 0u;
  *&retstr->count = 0u;
  v20.receiver = self;
  v20.super_class = _PXPhotoKitAssetBadgeManager;
  [(PXAssetBadgeInfo *)&v20 badgeInfoForAsset:collectionCopy inCollection:options options:a6];
  if (PXDisplayAssetIsSyndicatedAndUnsaved(collectionCopy))
  {
    photoLibrary = [collectionCopy photoLibrary];
    if (photoLibrary)
    {
      v12 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:photoLibrary];
      if ([v12 showUnsavedSyndicatedContentInPhotosGrids])
      {
        retstr->badges |= 0x80000000uLL;
      }
    }
  }

  if ((a6 & 0x10) != 0)
  {
    v13 = collectionCopy;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;

      if (v14 && [(_PXPhotoKitAssetBadgeManager *)self _shouldShowGyroBadgeForAsset:v14])
      {
        [v14 fetchPropertySetsIfNeeded];
        v15 = +[PXOneUpSpatialPhotoBadgeStateModel enabled];
        v16 = 0x14000000000000;
        if (v15)
        {
          v16 = 0xC000000000000;
        }

        retstr->badges |= v16;
      }
    }

    else
    {

      v14 = 0;
    }
  }

  v17 = +[PXPhotosDetailsSettings sharedInstance];
  v18 = v17;
  if (v17)
  {
    [v17 debugBadgeInfo];
  }

  PXAssetBadgeInfoIsNull();
}

@end