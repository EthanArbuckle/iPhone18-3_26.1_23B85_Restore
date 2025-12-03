@interface PXPhotosBarButtonItemsController
- (PXPhotosBarButtonItemsController)init;
- (PXPhotosBarButtonItemsController)initWithExtendedTraitCollection:(id)collection viewModel:(id)model;
- (id)_createBarButtonItemWithTitle:(id)title orSystemItem:(int64_t)item orSystemIconName:(id)name target:(id)target action:(SEL)action menuAction:(SEL)menuAction accessibilityIdentifier:(id)identifier;
@end

@implementation PXPhotosBarButtonItemsController

- (id)_createBarButtonItemWithTitle:(id)title orSystemItem:(int64_t)item orSystemIconName:(id)name target:(id)target action:(SEL)action menuAction:(SEL)menuAction accessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  targetCopy = target;
  nameCopy = name;
  titleCopy = title;
  v20 = [_PXPhotosBarButtonView alloc];
  specManager = [(PXPhotosBarButtonItemsController *)self specManager];
  viewModel = [(PXPhotosBarButtonItemsController *)self viewModel];
  v23 = [(_PXPhotosBarButtonView *)v20 initWithTitle:titleCopy orSystemItem:item orSystemIconName:nameCopy target:targetCopy action:action menuAction:menuAction specManager:specManager viewModel:viewModel];

  [(_PXPhotosBarButtonView *)v23 setAccessibilityIdentifier:identifierCopy];
  v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v23];
  [(_PXPhotosBarButtonView *)v23 setBarButtonItem:v24];

  return v24;
}

- (PXPhotosBarButtonItemsController)initWithExtendedTraitCollection:(id)collection viewModel:(id)model
{
  collectionCopy = collection;
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = PXPhotosBarButtonItemsController;
  v8 = [(PXPhotosBarButtonItemsController *)&v12 init];
  if (v8)
  {
    v9 = [(PXFeatureSpecManager *)[_PXPhotosBarButtonSpecManager alloc] initWithExtendedTraitCollection:collectionCopy];
    specManager = v8->_specManager;
    v8->_specManager = v9;

    objc_storeStrong(&v8->_viewModel, model);
  }

  return v8;
}

- (PXPhotosBarButtonItemsController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosBarButtonItemsController.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXPhotosBarButtonItemsController init]"}];

  abort();
}

@end