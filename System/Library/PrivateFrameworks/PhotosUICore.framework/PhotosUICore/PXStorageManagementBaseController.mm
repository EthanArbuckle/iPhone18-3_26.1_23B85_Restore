@interface PXStorageManagementBaseController
- (PXStorageManagementBaseController)initWithCustomAssetSelectionHandler:(id)handler;
- (id)photosViewConfigurationWithShouldExpunge:(BOOL)expunge;
- (void)didMoveToParentViewController:(id)controller;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)viewController:(id)controller didUpdateBarsAnimated:(BOOL)animated isSelecting:(BOOL)selecting;
- (void)viewDidLoad;
@end

@implementation PXStorageManagementBaseController

- (void)handleURL:(id)l withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  v5 = [specifier copy];
  preferenceValue = self->_preferenceValue;
  self->_preferenceValue = v5;
}

- (void)viewController:(id)controller didUpdateBarsAnimated:(BOOL)animated isSelecting:(BOOL)selecting
{
  selectingCopy = selecting;
  animatedCopy = animated;
  controllerCopy = controller;
  navigationItem = [(PXStorageManagementBaseController *)self navigationItem];
  navigationItem2 = [controllerCopy navigationItem];
  isGridControllerEditing = [(PXStorageManagementBaseController *)self isGridControllerEditing];
  [(PXStorageManagementBaseController *)self setIsGridControllerEditing:selectingCopy];
  if (selectingCopy)
  {
    leftBarButtonItems = [navigationItem2 leftBarButtonItems];
    [navigationItem setLeftBarButtonItems:leftBarButtonItems animated:animatedCopy];
  }

  else if (isGridControllerEditing)
  {
    [navigationItem setLeftBarButtonItems:MEMORY[0x1E695E0F0] animated:animatedCopy];
  }

  rightBarButtonItems = [navigationItem2 rightBarButtonItems];
  [navigationItem setRightBarButtonItems:rightBarButtonItems animated:animatedCopy];

  toolbarItems = [controllerCopy toolbarItems];
  [(PXStorageManagementBaseController *)self setToolbarItems:toolbarItems animated:animatedCopy];

  title = [(PXStorageManagementBaseController *)self title];
  [navigationItem setTitle:title];

  parentViewController = [(PXStorageManagementBaseController *)self parentViewController];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  if ([v17 containsString:@"SwiftUI"])
  {
    navigationItem3 = [parentViewController navigationItem];
    rightBarButtonItems2 = [navigationItem rightBarButtonItems];
    [navigationItem3 setRightBarButtonItems:rightBarButtonItems2 animated:animatedCopy];

    navigationItem4 = [parentViewController navigationItem];
    leftBarButtonItems2 = [navigationItem leftBarButtonItems];
    [navigationItem4 setLeftBarButtonItems:leftBarButtonItems2 animated:animatedCopy];

    toolbarItems2 = [controllerCopy toolbarItems];
    [parentViewController setToolbarItems:toolbarItems2 animated:animatedCopy];

    title2 = [navigationItem title];
    navigationItem5 = [parentViewController navigationItem];
    [navigationItem5 setTitle:title2];
  }

  parentViewController2 = [(PXStorageManagementBaseController *)self parentViewController];
  navigationItem6 = [parentViewController2 navigationItem];
  [navigationItem6 setLeftItemsSupplementBackButton:0];
}

- (id)photosViewConfigurationWithShouldExpunge:(BOOL)expunge
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStorageManagementBaseController.m" lineNumber:103 description:{@"Method %s is a responsibility of subclass %@", "-[PXStorageManagementBaseController photosViewConfigurationWithShouldExpunge:]", v7}];

  abort();
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(PXStorageManagementBaseController *)self contentScrollViewForEdge:1];
  v6 = [(PXStorageManagementBaseController *)self contentScrollViewForEdge:4];
  [controllerCopy setContentScrollView:v5 forEdge:1];
  [controllerCopy setContentScrollView:v6 forEdge:4];
  v7.receiver = self;
  v7.super_class = PXStorageManagementBaseController;
  [(PXStorageManagementBaseController *)&v7 didMoveToParentViewController:controllerCopy];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = PXStorageManagementBaseController;
  [(PXStorageManagementBaseController *)&v24 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69789A8]);
  systemPhotoLibraryURL = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  v5 = [v3 initWithPhotoLibraryURL:systemPhotoLibraryURL];
  photoLibrary = self->_photoLibrary;
  self->_photoLibrary = v5;

  navigationController = [(PXStorageManagementBaseController *)self navigationController];
  v8 = objc_opt_class();
  v9 = objc_opt_class();

  v10 = [(PXStorageManagementBaseController *)self photosViewConfigurationWithShouldExpunge:v8 != v9];
  v11 = [self->_customAssetSelectionHandler copy];
  [v10 setCustomAssetSelectionHandler:v11];

  v12 = [[PXPhotosUIViewController alloc] initWithConfiguration:v10];
  [(PXPhotosUIViewController *)v12 setContainerViewController:self];
  [(PXPhotosUIViewController *)v12 setGridPresentationBarsUpdateDelegate:self];
  title = [v10 title];
  [(PXPhotosUIViewController *)v12 setTitle:title];

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
    sharedGuard = [*(v20 + 216) sharedGuard];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __48__PXStorageManagementBaseController_viewDidLoad__block_invoke;
    v22[3] = &unk_1E774B730;
    v22[4] = self;
    v23 = v12;
    [sharedGuard authenticateForSubject:v17 completion:v22];
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

- (PXStorageManagementBaseController)initWithCustomAssetSelectionHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = PXStorageManagementBaseController;
  v5 = [(PXStorageManagementBaseController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [handlerCopy copy];
    customAssetSelectionHandler = v5->_customAssetSelectionHandler;
    v5->_customAssetSelectionHandler = v6;
  }

  return v5;
}

@end