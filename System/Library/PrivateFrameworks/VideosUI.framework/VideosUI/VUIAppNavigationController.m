@interface VUIAppNavigationController
- (VUIAppNavigationController)initWithRootViewController:(id)a3;
- (void)_presentConfirmationViewController:(id)a3 preferredContentSize:(CGSize)a4 completion:(id)a5;
- (void)presentConfirmationDialogWithType:(id)a3 name:(id)a4 completion:(id)a5;
@end

@implementation VUIAppNavigationController

- (VUIAppNavigationController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = VUIAppNavigationController;
  v5 = [(_VUITVAppNavigationController *)&v7 initWithRootViewController:v4];
  if (v5 && [v4 conformsToProtocol:&unk_1F5E7E5A8])
  {
    [(_VUITVAppNavigationController *)v5 setDelegate:v4];
  }

  return v5;
}

- (void)_presentConfirmationViewController:(id)a3 preferredContentSize:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(VUIConfirmationDocumentWrapperViewController);
  v12 = [(VUIConfirmationDocumentWrapperViewController *)v11 vuiView];
  v13 = [(VUIAppNavigationController *)self view];
  [v13 bounds];
  [v12 setFrame:?];

  if (*MEMORY[0x1E695F060] != width || *(MEMORY[0x1E695F060] + 8) != height)
  {
    [(VUIConfirmationDocumentWrapperViewController *)v11 setPreferredContentSize:width, height];
  }

  [(VUIConfirmationDocumentWrapperViewController *)v11 vui_addChildViewController:v10];
  [v10 vui_didMoveToParentViewController:v11];
  v15 = [(VUIConfirmationDocumentWrapperViewController *)v11 vuiView];
  v16 = [v10 vuiView];

  [v15 vui_addSubview:v16 oldView:0];
  [(VUIConfirmationDocumentWrapperViewController *)v11 setVuiModalPresentationStyle:6];
  v17 = +[VUIConfirmationTransitioningDelegate sharedInstance];
  [(VUIConfirmationDocumentWrapperViewController *)v11 setTransitioningDelegate:v17];

  v18 = +[VUIConfirmationTransitioningDelegate sharedInstance];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__VUIAppNavigationController__presentConfirmationViewController_preferredContentSize_completion___block_invoke;
  v20[3] = &unk_1E872D7E0;
  v21 = v9;
  v19 = v9;
  [v18 setDismissedHandlerBlock:v20];

  [(UIViewController *)self vui_presentViewController:v11 animated:1 completion:0];
}

uint64_t __97__VUIAppNavigationController__presentConfirmationViewController_preferredContentSize_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)presentConfirmationDialogWithType:(id)a3 name:(id)a4 completion:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[VUITVAppLauncher sharedInstance];
  v11 = [v10 appController];

  v12 = [v11 appContext];
  v13 = objc_opt_new();
  [v13 setConfirmationDialogType:v19];
  if (v8)
  {
    [v13 setName:v8];
  }

  v14 = [[VUIDocumentDataSource alloc] initWithDocumentRef:@"ConfirmationDialog"];
  [(VUIDocumentDataSource *)v14 setDocumentType:@"default"];
  [(VUIDocumentDataSource *)v14 setControllerRef:@"ConfirmationDialog"];
  [(VUIDocumentDataSource *)v14 setContextData:v13];
  v15 = +[VUIInterfaceFactory sharedInstance];
  v16 = [v15 viewControllerWithDocumentDataSource:v14 appContext:v12];

  v17 = [dialogAccessibilityIdentifierPrefix stringByAppendingString:v19];
  v18 = [v16 vuiView];
  [v18 setVuiAccessibilityIdentifier:v17];

  [(VUIAppNavigationController *)self _presentConfirmationViewController:v16 preferredContentSize:v9 completion:200.0, 200.0];
}

@end