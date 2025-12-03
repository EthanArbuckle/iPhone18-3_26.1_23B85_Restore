@interface PXPhotosGridToggleIncludeFromMyMacFilterActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleIncludeFromMyMacFilterActionPerformer

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  dataSourceManager = [modelCopy dataSourceManager];
  supportsFiltering = [dataSourceManager supportsFiltering];

  if (supportsFiltering && ([modelCopy currentDataSource], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "firstAssetCollection"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "px_isMacSyncedAlbum"), v8, v7, (v9 & 1) == 0))
  {
    contentFilterState = [modelCopy contentFilterState];
    photoLibrary = [contentFilterState photoLibrary];
    px_macSyncedAssetsStatusProvider = [photoLibrary px_macSyncedAssetsStatusProvider];
    hasAnyAssets = [px_macSyncedAssetsStatusProvider hasAnyAssets];
  }

  else
  {
    hasAnyAssets = 0;
  }

  return hasAnyAssets;
}

- (void)performUserInteractionTask
{
  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  [currentContentFilterState setIncludeFromMyMac:{objc_msgSend(currentContentFilterState, "includeFromMyMac") ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  if (case == 1)
  {
    currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
    v4 = [currentContentFilterState isContentFilterActive:4];

    if (v4)
    {
      v5 = @"DISABLE_INCLUDE_FROM_MY_MAC_FILTER_SHORTCUT";
    }

    else
    {
      v5 = @"ENABLE_INCLUDE_FROM_MY_MAC_FILTER_SHORTCUT";
    }

    v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  }

  else
  {
    v6 = PXContentFilterTitleForItemTag(4);
  }

  return v6;
}

- (int64_t)menuElementState
{
  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:4];

  return v3;
}

@end