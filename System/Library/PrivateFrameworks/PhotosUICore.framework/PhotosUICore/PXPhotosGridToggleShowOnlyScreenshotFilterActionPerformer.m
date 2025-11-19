@interface PXPhotosGridToggleShowOnlyScreenshotFilterActionPerformer
+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuActionState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleShowOnlyScreenshotFilterActionPerformer

+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4
{
  v6 = a4;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___PXPhotosGridToggleShowOnlyScreenshotFilterActionPerformer;
  if (objc_msgSendSuper2(&v10, sel_canPerformActionType_withViewModel_, a3, v6))
  {
    v7 = [v6 contentFilterState];
    v8 = [v7 shouldExcludeScreenshots] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  [v3 setShowOnlyScreenshots:{objc_msgSend(v3, "showOnlyScreenshots") ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v3];
}

- (int64_t)menuActionState
{
  v2 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:16];

  return v3;
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  v5 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v6 = [(PXPhotosGridActionPerformer *)self viewModel];
  v7 = [v6 currentDataSource];
  v8 = [v7 firstAssetCollection];

  if (![v8 px_isVideosSmartAlbum])
  {
    if (a3 != 1)
    {
      v13 = PXContentFilterTitleForItemTag(16);
      goto LABEL_12;
    }

    v9 = [v5 showOnlyScreenshots];
    v10 = @"ENABLE_SHOW_ONLY_SCREENSHOTS_FILTER_SHORTCUT";
    v11 = @"DISABLE_SHOW_ONLY_SCREENSHOTS_FILTER_SHORTCUT";
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    v9 = [v5 showOnlyScreenshots];
    v10 = @"ENABLE_SHOW_ONLY_SCREENRECORDINGS_FILTER_SHORTCUT";
    v11 = @"DISABLE_SHOW_ONLY_SCREENRECORDINGS_FILTER_SHORTCUT";
LABEL_8:
    if (v9)
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