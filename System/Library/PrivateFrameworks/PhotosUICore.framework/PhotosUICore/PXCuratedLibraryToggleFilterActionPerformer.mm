@interface PXCuratedLibraryToggleFilterActionPerformer
- (BOOL)updateToContentFilterStateAndFinishTask:(id)task;
- (BOOL)updateToLibraryFilterStateAndFinishTask:(id)task;
- (PXContentFilterState)currentContentFilterState;
- (id)menuElement;
@end

@implementation PXCuratedLibraryToggleFilterActionPerformer

- (BOOL)updateToContentFilterStateAndFinishTask:(id)task
{
  taskCopy = task;
  delegate = [(PXActionPerformer *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    [delegate curatedLibraryActionPerformer:self contentFilterStateChanged:taskCopy];
  }

  [(PXCuratedLibraryToggleFilterActionPerformer *)self finishedUserInteractionTask];

  return v6 & 1;
}

- (BOOL)updateToLibraryFilterStateAndFinishTask:(id)task
{
  taskCopy = task;
  delegate = [(PXActionPerformer *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    [delegate curatedLibraryActionPerformer:self libraryFilterStateChanged:taskCopy];
  }

  [(PXCuratedLibraryToggleFilterActionPerformer *)self finishedUserInteractionTask];

  return v6 & 1;
}

- (id)menuElement
{
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryToggleFilterActionPerformer;
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
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryToggleFilterActionPerformer.m" lineNumber:37 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[super menuElement]", v9, px_descriptionForAssertionMessage}];
    }
  }

  v5 = [(PXCuratedLibraryActionPerformer *)self localizedTitleForUseCase:0];
  [menuElement setTitle:v5];

  return menuElement;
}

- (PXContentFilterState)currentContentFilterState
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  allPhotosContentFilterState = [viewModel allPhotosContentFilterState];

  if (allPhotosContentFilterState)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      px_descriptionForAssertionMessage = [allPhotosContentFilterState px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryToggleFilterActionPerformer.m" lineNumber:30 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewModel.allPhotosContentFilterState", v14, px_descriptionForAssertionMessage}];
    }
  }

  v6 = [allPhotosContentFilterState copy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    viewModel2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
    photoLibrary = [viewModel2 photoLibrary];
    v8 = [PXContentFilterState defaultAllPhotosFilterStateForPhotoLibrary:photoLibrary];
  }

  return v8;
}

@end