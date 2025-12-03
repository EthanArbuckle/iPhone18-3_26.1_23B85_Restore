@interface PXPhotosGridToggleSharedLibraryBadgeActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (id)menuElement;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleSharedLibraryBadgeActionPerformer

- (void)performUserInteractionTask
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];

  [libraryFilterState setSharedLibraryBadgeEnabled:{objc_msgSend(libraryFilterState, "isSharedLibraryBadgeEnabled") ^ 1}];
  delegate = [(PXActionPerformer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate photosGridActionPerformer:self libraryFilterStateChanged:libraryFilterState];
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

- (int64_t)menuElementState
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  isSharedLibraryBadgeEnabled = [libraryFilterState isSharedLibraryBadgeEnabled];

  return isSharedLibraryBadgeEnabled;
}

- (id)menuElement
{
  v10.receiver = self;
  v10.super_class = PXPhotosGridToggleSharedLibraryBadgeActionPerformer;
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
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridToggleSharedLibraryBadgeActionPerformer.m" lineNumber:44 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[super menuElement]", v8, px_descriptionForAssertionMessage}];
    }
  }

  [menuElement setAttributes:{objc_msgSend(menuElement, "attributes") | 8}];

  return menuElement;
}

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  sharedLibraryStatusProvider = [modelCopy sharedLibraryStatusProvider];
  hasSharedLibraryOrPreview = [sharedLibraryStatusProvider hasSharedLibraryOrPreview];

  if (hasSharedLibraryOrPreview)
  {
    dataSourceManager = [modelCopy dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    containerCollection = [dataSource containerCollection];

    v10 = [containerCollection px_isSharedAlbum] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

@end