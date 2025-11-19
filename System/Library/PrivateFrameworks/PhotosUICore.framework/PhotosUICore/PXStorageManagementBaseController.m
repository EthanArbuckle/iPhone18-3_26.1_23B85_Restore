@interface PXStorageManagementBaseController
- (PXStorageManagementBaseController)initWithCustomAssetSelectionHandler:(id)a3;
- (id)photosViewConfigurationWithShouldExpunge:(BOOL)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)viewController:(id)a3 didUpdateBarsAnimated:(BOOL)a4 isSelecting:(BOOL)a5;
- (void)viewDidLoad;
@end

@implementation PXStorageManagementBaseController

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v5 = [a4 copy];
  preferenceValue = self->_preferenceValue;
  self->_preferenceValue = v5;
}

- (void)viewController:(id)a3 didUpdateBarsAnimated:(BOOL)a4 isSelecting:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v27 = a3;
  v8 = [(PXStorageManagementBaseController *)self navigationItem];
  v9 = [v27 navigationItem];
  v10 = [(PXStorageManagementBaseController *)self isGridControllerEditing];
  [(PXStorageManagementBaseController *)self setIsGridControllerEditing:v5];
  if (v5)
  {
    v11 = [v9 leftBarButtonItems];
    [v8 setLeftBarButtonItems:v11 animated:v6];
  }

  else if (v10)
  {
    [v8 setLeftBarButtonItems:MEMORY[0x1E695E0F0] animated:v6];
  }

  v12 = [v9 rightBarButtonItems];
  [v8 setRightBarButtonItems:v12 animated:v6];

  v13 = [v27 toolbarItems];
  [(PXStorageManagementBaseController *)self setToolbarItems:v13 animated:v6];

  v14 = [(PXStorageManagementBaseController *)self title];
  [v8 setTitle:v14];

  v15 = [(PXStorageManagementBaseController *)self parentViewController];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  if ([v17 containsString:@"SwiftUI"])
  {
    v18 = [v15 navigationItem];
    v19 = [v8 rightBarButtonItems];
    [v18 setRightBarButtonItems:v19 animated:v6];

    v20 = [v15 navigationItem];
    v21 = [v8 leftBarButtonItems];
    [v20 setLeftBarButtonItems:v21 animated:v6];

    v22 = [v27 toolbarItems];
    [v15 setToolbarItems:v22 animated:v6];

    v23 = [v8 title];
    v24 = [v15 navigationItem];
    [v24 setTitle:v23];
  }

  v25 = [(PXStorageManagementBaseController *)self parentViewController];
  v26 = [v25 navigationItem];
  [v26 setLeftItemsSupplementBackButton:0];
}

- (id)photosViewConfigurationWithShouldExpunge:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXStorageManagementBaseController.m" lineNumber:103 description:{@"Method %s is a responsibility of subclass %@", "-[PXStorageManagementBaseController photosViewConfigurationWithShouldExpunge:]", v7}];

  abort();
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = [(PXStorageManagementBaseController *)self contentScrollViewForEdge:1];
  v6 = [(PXStorageManagementBaseController *)self contentScrollViewForEdge:4];
  [v4 setContentScrollView:v5 forEdge:1];
  [v4 setContentScrollView:v6 forEdge:4];
  v7.receiver = self;
  v7.super_class = PXStorageManagementBaseController;
  [(PXStorageManagementBaseController *)&v7 didMoveToParentViewController:v4];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = PXStorageManagementBaseController;
  [(PXStorageManagementBaseController *)&v24 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69789A8]);
  v4 = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  v5 = [v3 initWithPhotoLibraryURL:v4];
  photoLibrary = self->_photoLibrary;
  self->_photoLibrary = v5;

  v7 = [(PXStorageManagementBaseController *)self navigationController];
  v8 = objc_opt_class();
  v9 = objc_opt_class();

  v10 = [(PXStorageManagementBaseController *)self photosViewConfigurationWithShouldExpunge:v8 != v9];
  v11 = [self->_customAssetSelectionHandler copy];
  [v10 setCustomAssetSelectionHandler:v11];

  v12 = [[PXPhotosUIViewController alloc] initWithConfiguration:v10];
  [(PXPhotosUIViewController *)v12 setContainerViewController:self];
  [(PXPhotosUIViewController *)v12 setGridPresentationBarsUpdateDelegate:self];
  v13 = [v10 title];
  [(PXPhotosUIViewController *)v12 setTitle:v13];

  [(UIViewController *)self px_setOneUpPresentationStyle:1];
  if (v8 == v9)
  {
    [(PXStorageManagementBaseController *)self px_addOrReplaceChildViewController:v12 activateConstraints:1];
  }

  else
  {
    Helper_x8__OBJC_CLASS___APApplication = gotLoadHelper_x8__OBJC_CLASS___APApplication(v14);
    v17 = [*(v16 + 208) applicationWithBundleIdentifier:{*MEMORY[0x1E69BFF18], Helper_x8__OBJC_CLASS___APApplication}];
    Helper_x8__OBJC_CLASS___APGuard = gotLoadHelper_x8__OBJC_CLASS___APGuard(v18);
    v21 = [*(v20 + 216) sharedGuard];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __48__PXStorageManagementBaseController_viewDidLoad__block_invoke;
    v22[3] = &unk_1E774B730;
    v22[4] = self;
    v23 = v12;
    [v21 authenticateForSubject:v17 completion:v22];
  }
}

void __48__PXStorageManagementBaseController_viewDidLoad__block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PXStorageManagementBaseController_viewDidLoad__block_invoke_2;
    block[3] = &unk_1E774C620;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v10 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Failed to pass APGuard check with error: %@", buf, 0xCu);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__PXStorageManagementBaseController_viewDidLoad__block_invoke_194;
    v8[3] = &unk_1E774C648;
    v8[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __48__PXStorageManagementBaseController_viewDidLoad__block_invoke_194(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (PXStorageManagementBaseController)initWithCustomAssetSelectionHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXStorageManagementBaseController;
  v5 = [(PXStorageManagementBaseController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    customAssetSelectionHandler = v5->_customAssetSelectionHandler;
    v5->_customAssetSelectionHandler = v6;
  }

  return v5;
}

@end