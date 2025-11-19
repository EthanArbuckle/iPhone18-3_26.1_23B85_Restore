@interface PXFilterFooterController
- (PXFilterFooterController)init;
- (PXFilterFooterController)initWithActionManager:(id)a3 photoLibrary:(id)a4;
- (PXFilterFooterView)footerFilterView;
- (UIView)view;
- (void)filterFooterViewDidTapShowFilter:(id)a3 sender:(id)a4;
- (void)setContentFilterState:(id)a3;
- (void)setLibraryFilterState:(id)a3;
- (void)setSharedLibraryStatusProvider:(id)a3;
@end

@implementation PXFilterFooterController

- (void)filterFooterViewDidTapShowFilter:(id)a3 sender:(id)a4
{
  v6 = a3;
  v5 = [(PXActionManager *)self->_actionManager actionPerformerForActionType:@"PXCuratedLibraryActionShowFilters"];
  if (!v5)
  {
    v5 = [(PXActionManager *)self->_actionManager actionPerformerForActionType:*off_1E77220F8];
  }

  [v5 setSender:v6];
  [v5 performActionWithCompletionHandler:0];
}

- (UIView)view
{
  v3 = [(PXFilterFooterController *)self libraryFilterState];
  if ([v3 isFiltering])
  {

LABEL_4:
    v6 = [(PXFilterFooterController *)self footerFilterView];
    goto LABEL_6;
  }

  v4 = [(PXFilterFooterController *)self contentFilterState];
  v5 = [v4 isFiltering];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = 0;
LABEL_6:

  return v6;
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

- (void)setContentFilterState:(id)a3
{
  v4 = [a3 copy];
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

- (void)setLibraryFilterState:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
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

- (void)setSharedLibraryStatusProvider:(id)a3
{
  objc_storeStrong(&self->_sharedLibraryStatusProvider, a3);
  v5 = a3;
  [(PXFilterFooterView *)self->_footerFilterView setSharedLibraryStatusProvider:v5];
  v6 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v5];

  [(PXFilterFooterController *)self setLibraryFilterState:v6];
}

- (PXFilterFooterController)initWithActionManager:(id)a3 photoLibrary:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXFilterFooterController.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"actionManager"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PXFilterFooterController.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = PXFilterFooterController;
  v11 = [(PXFilterFooterController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actionManager, a3);
    objc_storeStrong(&v12->_photoLibrary, a4);
  }

  return v12;
}

- (PXFilterFooterController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFilterFooterController.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXFilterFooterController init]"}];

  abort();
}

@end