@interface PXPhotosGridToggleShowOnlyScreenshotFilterActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuActionState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleShowOnlyScreenshotFilterActionPerformer

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___PXPhotosGridToggleShowOnlyScreenshotFilterActionPerformer;
  if (objc_msgSendSuper2(&v10, sel_canPerformActionType_withViewModel_, type, modelCopy))
  {
    contentFilterState = [modelCopy contentFilterState];
    v8 = [contentFilterState shouldExcludeScreenshots] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)performUserInteractionTask
{
  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  [currentContentFilterState setShowOnlyScreenshots:{objc_msgSend(currentContentFilterState, "showOnlyScreenshots") ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (int64_t)menuActionState
{
  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:16];

  return v3;
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  firstAssetCollection = [currentDataSource firstAssetCollection];

  if (![firstAssetCollection px_isVideosSmartAlbum])
  {
    if (case != 1)
    {
      v13 = PXContentFilterTitleForItemTag(16);
      goto LABEL_12;
    }

    showOnlyScreenshots = [currentContentFilterState showOnlyScreenshots];
    v10 = @"ENABLE_SHOW_ONLY_SCREENSHOTS_FILTER_SHORTCUT";
    v11 = @"DISABLE_SHOW_ONLY_SCREENSHOTS_FILTER_SHORTCUT";
    goto LABEL_8;
  }

  if (case == 1)
  {
    showOnlyScreenshots = [currentContentFilterState showOnlyScreenshots];
    v10 = @"ENABLE_SHOW_ONLY_SCREENRECORDINGS_FILTER_SHORTCUT";
    v11 = @"DISABLE_SHOW_ONLY_SCREENRECORDINGS_FILTER_SHORTCUT";
LABEL_8:
    if (showOnlyScreenshots)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    goto LABEL_11;
  }

  v12 = @"PXContentFilterMenu_ScreenRecordings";
LABEL_11:
  v13 = PXLocalizedStringFromTable(v12, @"PhotosUICore");
LABEL_12:
  v14 = v13;

  return v14;
}

@end