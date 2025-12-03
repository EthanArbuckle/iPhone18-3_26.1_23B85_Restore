@interface PXFilterFooterController
- (PXFilterFooterController)init;
- (PXFilterFooterController)initWithActionManager:(id)manager photoLibrary:(id)library;
- (PXFilterFooterView)footerFilterView;
- (UIView)view;
- (void)filterFooterViewDidTapShowFilter:(id)filter sender:(id)sender;
- (void)setContentFilterState:(id)state;
- (void)setLibraryFilterState:(id)state;
- (void)setSharedLibraryStatusProvider:(id)provider;
@end

@implementation PXFilterFooterController

- (void)filterFooterViewDidTapShowFilter:(id)filter sender:(id)sender
{
  filterCopy = filter;
  v5 = [(PXActionManager *)self->_actionManager actionPerformerForActionType:@"PXCuratedLibraryActionShowFilters"];
  if (!v5)
  {
    v5 = [(PXActionManager *)self->_actionManager actionPerformerForActionType:*off_1E77220F8];
  }

  [v5 setSender:filterCopy];
  [v5 performActionWithCompletionHandler:0];
}

- (UIView)view
{
  libraryFilterState = [(PXFilterFooterController *)self libraryFilterState];
  if ([libraryFilterState isFiltering])
  {

LABEL_4:
    footerFilterView = [(PXFilterFooterController *)self footerFilterView];
    goto LABEL_6;
  }

  contentFilterState = [(PXFilterFooterController *)self contentFilterState];
  isFiltering = [contentFilterState isFiltering];

  if (isFiltering)
  {
    goto LABEL_4;
  }

  footerFilterView = 0;
LABEL_6:

  return footerFilterView;
}

- (PXFilterFooterView)footerFilterView
{
  footerFilterView = self->_footerFilterView;
  if (!footerFilterView)
  {
    v4 = [PXFilterFooterView alloc];
    v5 = [(PXFilterFooterView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_footerFilterView;
    self->_footerFilterView = v5;

    [(PXFilterFooterView *)self->_footerFilterView setDelegate:self];
    [(PXFilterFooterView *)self->_footerFilterView setSharedLibraryStatusProvider:self->_sharedLibraryStatusProvider];
    [(PXFilterFooterView *)self->_footerFilterView setLibraryFilterState:self->_libraryFilterState];
    [(PXFilterFooterView *)self->_footerFilterView setContentFilterState:self->_contentFilterState];
    footerFilterView = self->_footerFilterView;
  }

  return footerFilterView;
}

- (void)setContentFilterState:(id)state
{
  v4 = [state copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [PXContentFilterState defaultFilterStateForPhotoLibrary:self->_photoLibrary];
  }

  contentFilterState = self->_contentFilterState;
  self->_contentFilterState = v6;

  v8 = self->_contentFilterState;
  footerFilterView = self->_footerFilterView;

  [(PXFilterFooterView *)footerFilterView setContentFilterState:v8];
}

- (void)setLibraryFilterState:(id)state
{
  if (state)
  {
    v4 = [state copy];
    libraryFilterState = self->_libraryFilterState;
    self->_libraryFilterState = v4;
  }

  else
  {
    v6 = [PXLibraryFilterState alloc];
    libraryFilterState = [(PXFilterFooterController *)self sharedLibraryStatusProvider];
    v7 = [(PXLibraryFilterState *)v6 initWithSharedLibraryStatusProvider:libraryFilterState];
    v8 = self->_libraryFilterState;
    self->_libraryFilterState = v7;
  }

  v9 = self->_libraryFilterState;
  footerFilterView = self->_footerFilterView;

  [(PXFilterFooterView *)footerFilterView setLibraryFilterState:v9];
}

- (void)setSharedLibraryStatusProvider:(id)provider
{
  objc_storeStrong(&self->_sharedLibraryStatusProvider, provider);
  providerCopy = provider;
  [(PXFilterFooterView *)self->_footerFilterView setSharedLibraryStatusProvider:providerCopy];
  v6 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:providerCopy];

  [(PXFilterFooterController *)self setLibraryFilterState:v6];
}

- (PXFilterFooterController)initWithActionManager:(id)manager photoLibrary:(id)library
{
  managerCopy = manager;
  libraryCopy = library;
  v10 = libraryCopy;
  if (managerCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFilterFooterController.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"actionManager"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXFilterFooterController.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = PXFilterFooterController;
  v11 = [(PXFilterFooterController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actionManager, manager);
    objc_storeStrong(&v12->_photoLibrary, library);
  }

  return v12;
}

- (PXFilterFooterController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFilterFooterController.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXFilterFooterController init]"}];

  abort();
}

@end