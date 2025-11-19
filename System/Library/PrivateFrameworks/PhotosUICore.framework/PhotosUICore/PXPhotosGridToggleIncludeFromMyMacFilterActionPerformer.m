@interface PXPhotosGridToggleIncludeFromMyMacFilterActionPerformer
+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleIncludeFromMyMacFilterActionPerformer

+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4
{
  v4 = a4;
  v5 = [v4 dataSourceManager];
  v6 = [v5 supportsFiltering];

  if (v6 && ([v4 currentDataSource], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "firstAssetCollection"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "px_isMacSyncedAlbum"), v8, v7, (v9 & 1) == 0))
  {
    v11 = [v4 contentFilterState];
    v12 = [v11 photoLibrary];
    v13 = [v12 px_macSyncedAssetsStatusProvider];
    v10 = [v13 hasAnyAssets];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  [v3 setIncludeFromMyMac:{objc_msgSend(v3, "includeFromMyMac") ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v3];
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
    v4 = [v3 isContentFilterActive:4];

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
  v2 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:4];

  return v3;
}

@end