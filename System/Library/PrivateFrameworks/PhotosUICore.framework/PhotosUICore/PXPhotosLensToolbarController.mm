@interface PXPhotosLensToolbarController
- (CGSize)secondaryToolbarControllerToolbarSize:(id)size;
- (PXPhotosLensToolbarController)initWithViewModel:(id)model containerView:(id)view;
- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)padding;
- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)insets;
- (void)_updateLensControl;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photosLensControl:(id)control didSelectItem:(id)item;
- (void)photosLensControl:(id)control didTapOnAlreadySelectedItem:(id)item;
@end

@implementation PXPhotosLensToolbarController

- (CGSize)secondaryToolbarControllerToolbarSize:(id)size
{
  v3 = 260.0;
  v4 = 40.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)padding
{
  v3 = *off_1E7721FA8;
  v4 = *(off_1E7721FA8 + 1);
  v5 = *(off_1E7721FA8 + 2);
  v6 = *(off_1E7721FA8 + 3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)insets
{
  v3 = *off_1E7721FA8;
  v4 = *(off_1E7721FA8 + 1);
  v5 = *(off_1E7721FA8 + 2);
  v6 = *(off_1E7721FA8 + 3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObserverContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLensToolbarController.m" lineNumber:73 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((change & 0x100000000000) != 0)
  {
    v11 = observableCopy;
    [(PXPhotosLensToolbarController *)self _updateLensControl];
    observableCopy = v11;
  }
}

- (void)photosLensControl:(id)control didTapOnAlreadySelectedItem:(id)item
{
  v5 = [(PXSecondaryToolbarController *)self actionHandler:control];
  [v5 secondaryToolbarController:self scrollToBottomAnimated:1];
}

- (void)photosLensControl:(id)control didSelectItem:(id)item
{
  itemCopy = item;
  viewModel = [(PXPhotosLensToolbarController *)self viewModel];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PXPhotosLensToolbarController_photosLensControl_didSelectItem___block_invoke;
  v8[3] = &unk_1E7748CB8;
  v9 = itemCopy;
  v7 = itemCopy;
  [viewModel performChanges:v8];
}

- (void)_updateLensControl
{
  viewModel = [(PXPhotosLensToolbarController *)self viewModel];
  photosLensControl = [(PXPhotosLensToolbarController *)self photosLensControl];
  availableLenses = [viewModel availableLenses];
  [photosLensControl setItems:availableLenses];

  currentLens = [viewModel currentLens];
  [photosLensControl setSelectedItem:currentLens];
}

- (PXPhotosLensToolbarController)initWithViewModel:(id)model containerView:(id)view
{
  modelCopy = model;
  viewCopy = view;
  v10 = viewCopy;
  if (modelCopy)
  {
    if (viewCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLensToolbarController.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosLensToolbarController.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"containerView"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PXPhotosLensToolbarController;
  v11 = [(PXSecondaryToolbarController *)&v18 initWithContainerView:v10 styleGuideProvider:self];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewModel, model);
    [modelCopy registerChangeObserver:v12 context:ViewModelObserverContext];
    v13 = objc_alloc_init(off_1E7721820);
    photosLensControl = v12->_photosLensControl;
    v12->_photosLensControl = v13;

    [(PXPhotosLensControl *)v12->_photosLensControl setHideSymbols:1];
    [(PXPhotosLensControl *)v12->_photosLensControl setDelegate:v12];
    [(PXPhotosLensToolbarController *)v12 _updateLensControl];
    [(PXSecondaryToolbarController *)v12 setContentView:v12->_photosLensControl];
  }

  return v12;
}

@end