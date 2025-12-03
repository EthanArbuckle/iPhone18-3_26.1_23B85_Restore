@interface PXPhotosGridToggleIncludeScreenshotFilterActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleIncludeScreenshotFilterActionPerformer

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  dataSourceManager = [modelCopy dataSourceManager];
  if ([dataSourceManager supportsFiltering])
  {
    currentDataSource = [modelCopy currentDataSource];
    firstAssetCollection = [currentDataSource firstAssetCollection];
    v8 = [firstAssetCollection px_isMediaTypeSmartAlbum] ^ 1;
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
  [currentContentFilterState setIncludeScreenshots:{objc_msgSend(currentContentFilterState, "isContentFilterActive:", 2) ^ 1}];
  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  if (case == 1)
  {
    viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
    contentFilterState = [viewModel contentFilterState];

    if (contentFilterState)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        px_descriptionForAssertionMessage = [contentFilterState px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridToggleIncludeScreenshotFilterActionPerformer.m" lineNumber:43 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewModel.contentFilterState", v13, px_descriptionForAssertionMessage}];
      }
    }

    shouldExcludeScreenshots = [contentFilterState shouldExcludeScreenshots];

    if (shouldExcludeScreenshots)
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
  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:2];

  return v3;
}

@end