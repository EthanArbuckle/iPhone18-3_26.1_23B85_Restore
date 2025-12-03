@interface PXCuratedLibraryToggleSharedLibraryBadgeActionPerformer
- (PXCuratedLibraryToggleSharedLibraryBadgeActionPerformer)initWithViewModel:(id)model;
- (id)menuElement;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryToggleSharedLibraryBadgeActionPerformer

- (void)performUserInteractionTask
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];

  [libraryFilterState setSharedLibraryBadgeEnabled:{objc_msgSend(libraryFilterState, "isSharedLibraryBadgeEnabled") ^ 1}];
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

- (int64_t)menuElementState
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  isSharedLibraryBadgeEnabled = [libraryFilterState isSharedLibraryBadgeEnabled];

  return isSharedLibraryBadgeEnabled;
}

- (id)menuElement
{
  v10.receiver = self;
  v10.super_class = PXCuratedLibraryToggleSharedLibraryBadgeActionPerformer;
  menuElement = [(PXActionPerformer *)&v10 menuElement];
  if (menuElement)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      px_descriptionForAssertionMessage = [menuElement px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryToggleSharedLibraryBadgeActionPerformer.m" lineNumber:36 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[super menuElement]", v8, px_descriptionForAssertionMessage}];
    }
  }

  [menuElement setAttributes:{objc_msgSend(menuElement, "attributes") | 8}];

  return menuElement;
}

- (PXCuratedLibraryToggleSharedLibraryBadgeActionPerformer)initWithViewModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryToggleSharedLibraryBadgeActionPerformer;
  return [(PXCuratedLibraryActionPerformer *)&v4 initWithActionType:@"PXCuratedLibraryActionToggleSharedLibraryBadge" viewModel:model];
}

@end