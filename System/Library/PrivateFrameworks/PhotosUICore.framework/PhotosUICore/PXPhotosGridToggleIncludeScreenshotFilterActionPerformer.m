@interface PXPhotosGridToggleIncludeScreenshotFilterActionPerformer
+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleIncludeScreenshotFilterActionPerformer

+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4
{
  v4 = a4;
  v5 = [v4 dataSourceManager];
  if ([v5 supportsFiltering])
  {
    v6 = [v4 currentDataSource];
    v7 = [v6 firstAssetCollection];
    v8 = [v7 px_isMediaTypeSmartAlbum] ^ 1;
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
  [v3 setIncludeScreenshots:{objc_msgSend(v3, "isContentFilterActive:", 2) ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v3];
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = [(PXPhotosGridActionPerformer *)self viewModel];
    v6 = [v5 contentFilterState];

    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [v6 px_descriptionForAssertionMessage];
        [v11 handleFailureInMethod:a2 object:self file:@"PXPhotosGridToggleIncludeScreenshotFilterActionPerformer.m" lineNumber:43 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewModel.contentFilterState", v13, v14}];
      }
    }

    v7 = [v6 shouldExcludeScreenshots];

    if (v7)
    {
      v8 = @"ENABLE_INCLUDE_SCREENSHOTS_FILTER_SHORTCUT";
    }

    else
    {
      v8 = @"DISABLE_INCLUDE_SCREENSHOTS_FILTER_SHORTCUT";
    }

    v9 = PXLocalizedStringFromTable(v8, @"PhotosUICore");
  }

  else
  {
    v9 = PXContentFilterTitleForItemTag(2);
  }

  return v9;
}

- (int64_t)menuElementState
{
  v2 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:2];

  return v3;
}

@end