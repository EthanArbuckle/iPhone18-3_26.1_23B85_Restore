@interface VUIAppNavigationController
- (VUIAppNavigationController)initWithRootViewController:(id)controller;
- (void)_presentConfirmationViewController:(id)controller preferredContentSize:(CGSize)size completion:(id)completion;
- (void)presentConfirmationDialogWithType:(id)type name:(id)name completion:(id)completion;
@end

@implementation VUIAppNavigationController

- (VUIAppNavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v7.receiver = self;
  v7.super_class = VUIAppNavigationController;
  v5 = [(_VUITVAppNavigationController *)&v7 initWithRootViewController:controllerCopy];
  if (v5 && [controllerCopy conformsToProtocol:&unk_1F5E7E5A8])
  {
    [(_VUITVAppNavigationController *)v5 setDelegate:controllerCopy];
  }

  return v5;
}

- (void)_presentConfirmationViewController:(id)controller preferredContentSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  controllerCopy = controller;
  v11 = objc_alloc_init(VUIConfirmationDocumentWrapperViewController);
  vuiView = [(VUIConfirmationDocumentWrapperViewController *)v11 vuiView];
  view = [(VUIAppNavigationController *)self view];
  [view bounds];
  [vuiView setFrame:?];

  if (*MEMORY[0x1E695F060] != width || *(MEMORY[0x1E695F060] + 8) != height)
  {
    [(VUIConfirmationDocumentWrapperViewController *)v11 setPreferredContentSize:width, height];
  }

  [(VUIConfirmationDocumentWrapperViewController *)v11 vui_addChildViewController:controllerCopy];
  [controllerCopy vui_didMoveToParentViewController:v11];
  vuiView2 = [(VUIConfirmationDocumentWrapperViewController *)v11 vuiView];
  vuiView3 = [controllerCopy vuiView];

  [vuiView2 vui_addSubview:vuiView3 oldView:0];
  [(VUIConfirmationDocumentWrapperViewController *)v11 setVuiModalPresentationStyle:6];
  v17 = +[VUIConfirmationTransitioningDelegate sharedInstance];
  [(VUIConfirmationDocumentWrapperViewController *)v11 setTransitioningDelegate:v17];

  v18 = +[VUIConfirmationTransitioningDelegate sharedInstance];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__VUIAppNavigationController__presentConfirmationViewController_preferredContentSize_completion___block_invoke;
  v20[3] = &unk_1E872D7E0;
  v21 = completionCopy;
  v19 = completionCopy;
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

- (void)presentConfirmationDialogWithType:(id)type name:(id)name completion:(id)completion
{
  typeCopy = type;
  nameCopy = name;
  completionCopy = completion;
  v10 = +[VUITVAppLauncher sharedInstance];
  appController = [v10 appController];

  appContext = [appController appContext];
  v13 = objc_opt_new();
  [v13 setConfirmationDialogType:typeCopy];
  if (nameCopy)
  {
    [v13 setName:nameCopy];
  }

  v14 = [[VUIDocumentDataSource alloc] initWithDocumentRef:@"ConfirmationDialog"];
  [(VUIDocumentDataSource *)v14 setDocumentType:@"default"];
  [(VUIDocumentDataSource *)v14 setControllerRef:@"ConfirmationDialog"];
  [(VUIDocumentDataSource *)v14 setContextData:v13];
  v15 = +[VUIInterfaceFactory sharedInstance];
  v16 = [v15 viewControllerWithDocumentDataSource:v14 appContext:appContext];

  v17 = [dialogAccessibilityIdentifierPrefix stringByAppendingString:typeCopy];
  vuiView = [v16 vuiView];
  [vuiView setVuiAccessibilityIdentifier:v17];

  [(VUIAppNavigationController *)self _presentConfirmationViewController:v16 preferredContentSize:completionCopy completion:200.0, 200.0];
}

@end