@interface PXPhotosLensToolbarController
- (CGSize)secondaryToolbarControllerToolbarSize:(id)a3;
- (PXPhotosLensToolbarController)initWithViewModel:(id)a3 containerView:(id)a4;
- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)a3;
- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)a3;
- (void)_updateLensControl;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosLensControl:(id)a3 didSelectItem:(id)a4;
- (void)photosLensControl:(id)a3 didTapOnAlreadySelectedItem:(id)a4;
@end

@implementation PXPhotosLensToolbarController

- (CGSize)secondaryToolbarControllerToolbarSize:(id)a3
{
  v3 = 260.0;
  v4 = 40.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)a3
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

- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)a3
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (ViewModelObserverContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosLensToolbarController.m" lineNumber:73 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((a4 & 0x100000000000) != 0)
  {
    v11 = v9;
    [(PXPhotosLensToolbarController *)self _updateLensControl];
    v9 = v11;
  }
}

- (void)photosLensControl:(id)a3 didTapOnAlreadySelectedItem:(id)a4
{
  v5 = [(PXSecondaryToolbarController *)self actionHandler:a3];
  [v5 secondaryToolbarController:self scrollToBottomAnimated:1];
}

- (void)photosLensControl:(id)a3 didSelectItem:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosLensToolbarController *)self viewModel];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PXPhotosLensToolbarController_photosLensControl_didSelectItem___block_invoke;
  v8[3] = &unk_1E7748CB8;
  v9 = v5;
  v7 = v5;
  [v6 performChanges:v8];
}

- (void)_updateLensControl
{
  v6 = [(PXPhotosLensToolbarController *)self viewModel];
  v3 = [(PXPhotosLensToolbarController *)self photosLensControl];
  v4 = [v6 availableLenses];
  [v3 setItems:v4];

  v5 = [v6 currentLens];
  [v3 setSelectedItem:v5];
}

- (PXPhotosLensToolbarController)initWithViewModel:(id)a3 containerView:(id)a4
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
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXPhotosLensToolbarController.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PXPhotosLensToolbarController.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"containerView"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PXPhotosLensToolbarController;
  v11 = [(PXSecondaryToolbarController *)&v18 initWithContainerView:v10 styleGuideProvider:self];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewModel, a3);
    [v8 registerChangeObserver:v12 context:ViewModelObserverContext];
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