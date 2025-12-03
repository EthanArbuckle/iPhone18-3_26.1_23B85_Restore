@interface PXPhotosGridToggleFilterActionPerformer
+ (BOOL)isContentFilterHidden:(int64_t)hidden viewModel:(id)model;
+ (BOOL)isLibaryFilterHidden:(int64_t)hidden viewModel:(id)model;
- (BOOL)updateToContentFilterStateAndFinishTask:(id)task;
- (BOOL)updateToLibraryFilterStateAndFinishTask:(id)task;
- (id)menuElement;
@end

@implementation PXPhotosGridToggleFilterActionPerformer

- (BOOL)updateToContentFilterStateAndFinishTask:(id)task
{
  taskCopy = task;
  delegate = [(PXActionPerformer *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    [delegate photosGridActionPerformer:self contentFilterStateChanged:taskCopy];
  }

  [(PXPhotosGridToggleFilterActionPerformer *)self finishedUserInteractionTask];

  return v6 & 1;
}

- (BOOL)updateToLibraryFilterStateAndFinishTask:(id)task
{
  taskCopy = task;
  delegate = [(PXActionPerformer *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    [delegate photosGridActionPerformer:self libraryFilterStateChanged:taskCopy];
  }

  [(PXPhotosGridToggleFilterActionPerformer *)self finishedUserInteractionTask];

  return v6 & 1;
}

- (id)menuElement
{
  v11.receiver = self;
  v11.super_class = PXPhotosGridToggleFilterActionPerformer;
  menuElement = [(PXActionPerformer *)&v11 menuElement];
  if (menuElement)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      px_descriptionForAssertionMessage = [menuElement px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridToggleFilterActionPerformer.m" lineNumber:45 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[super menuElement]", v9, px_descriptionForAssertionMessage}];
    }
  }

  v5 = [(PXActionPerformer *)self localizedTitleForUseCase:0];
  [menuElement setTitle:v5];

  return menuElement;
}

+ (BOOL)isContentFilterHidden:(int64_t)hidden viewModel:(id)model
{
  modelCopy = model;
  dataSourceManager = [modelCopy dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  containerCollection = [dataSource containerCollection];

  libraryFilterState = [modelCopy libraryFilterState];

  v10 = PXContentFilterHiddenTypesForAssetCollection(containerCollection);

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:hidden];
  LOBYTE(libraryFilterState) = [v10 containsObject:v11];

  return libraryFilterState;
}

+ (BOOL)isLibaryFilterHidden:(int64_t)hidden viewModel:(id)model
{
  modelCopy = model;
  if ([modelCopy allowsSwitchLibraryAction] && (objc_msgSend(modelCopy, "sharedLibraryStatusProvider"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasSharedLibraryOrPreview"), v6, v7))
  {
    dataSourceManager = [modelCopy dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    containerCollection = [dataSource containerCollection];

    libraryFilterState = [modelCopy libraryFilterState];
    v12 = PXLibraryFilterHiddenTypesForAssetCollection(containerCollection);

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:hidden];
    v14 = [v12 containsObject:v13];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

@end