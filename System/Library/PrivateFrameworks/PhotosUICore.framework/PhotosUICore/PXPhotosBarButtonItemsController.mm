@interface PXPhotosBarButtonItemsController
- (PXPhotosBarButtonItemsController)init;
- (PXPhotosBarButtonItemsController)initWithExtendedTraitCollection:(id)a3 viewModel:(id)a4;
- (id)_createBarButtonItemWithTitle:(id)a3 orSystemItem:(int64_t)a4 orSystemIconName:(id)a5 target:(id)a6 action:(SEL)a7 menuAction:(SEL)a8 accessibilityIdentifier:(id)a9;
@end

@implementation PXPhotosBarButtonItemsController

- (id)_createBarButtonItemWithTitle:(id)a3 orSystemItem:(int64_t)a4 orSystemIconName:(id)a5 target:(id)a6 action:(SEL)a7 menuAction:(SEL)a8 accessibilityIdentifier:(id)a9
{
  v16 = a9;
  v17 = a6;
  v18 = a5;
  v19 = a3;
  v20 = [_PXPhotosBarButtonView alloc];
  v21 = [(PXPhotosBarButtonItemsController *)self specManager];
  v22 = [(PXPhotosBarButtonItemsController *)self viewModel];
  v23 = [(_PXPhotosBarButtonView *)v20 initWithTitle:v19 orSystemItem:a4 orSystemIconName:v18 target:v17 action:a7 menuAction:a8 specManager:v21 viewModel:v22];

  [(_PXPhotosBarButtonView *)v23 setAccessibilityIdentifier:v16];
  v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v23];
  [(_PXPhotosBarButtonView *)v23 setBarButtonItem:v24];

  return v24;
}

- (PXPhotosBarButtonItemsController)initWithExtendedTraitCollection:(id)a3 viewModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PXPhotosBarButtonItemsController;
  v8 = [(PXPhotosBarButtonItemsController *)&v12 init];
  if (v8)
  {
    v9 = [(PXFeatureSpecManager *)[_PXPhotosBarButtonSpecManager alloc] initWithExtendedTraitCollection:v6];
    specManager = v8->_specManager;
    v8->_specManager = v9;

    objc_storeStrong(&v8->_viewModel, a4);
  }

  return v8;
}

- (PXPhotosBarButtonItemsController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosBarButtonItemsController.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXPhotosBarButtonItemsController init]"}];

  abort();
}

@end