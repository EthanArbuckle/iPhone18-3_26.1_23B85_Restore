@interface PKIssuerProvisioningExtensionAuthorizationServiceViewController
- (void)beginRequestWithExtensionContext:(id)context;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKIssuerProvisioningExtensionAuthorizationServiceViewController

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = PKIssuerProvisioningExtensionAuthorizationServiceViewController;
  [(PKIssuerProvisioningExtensionAuthorizationServiceViewController *)&v10 beginRequestWithExtensionContext:contextCopy];
  childViewControllers = [(PKIssuerProvisioningExtensionAuthorizationServiceViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (!lastObject || ([lastObject conformsToProtocol:&unk_1F3E3D5A8] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSExtensionPrincipalClass does not conform to PKIssuerProvisioningExtensionAuthorizationProviding"];
  }

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__PKIssuerProvisioningExtensionAuthorizationServiceViewController_beginRequestWithExtensionContext___block_invoke;
  v7[3] = &unk_1E801A1E8;
  objc_copyWeak(&v8, &location);
  [lastObject setCompletionHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __100__PKIssuerProvisioningExtensionAuthorizationServiceViewController_beginRequestWithExtensionContext___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __100__PKIssuerProvisioningExtensionAuthorizationServiceViewController_beginRequestWithExtensionContext___block_invoke_2;
  v3[3] = &unk_1E801E5C8;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __100__PKIssuerProvisioningExtensionAuthorizationServiceViewController_beginRequestWithExtensionContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[992] & 1) == 0)
  {
    WeakRetained[992] = 1;
    v4 = WeakRetained;
    v3 = [WeakRetained _remoteViewControllerProxy];
    [v3 serviceViewControllerDidCompleteWithResult:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)loadView
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PKIssuerProvisioningExtensionAuthorizationServiceViewController;
  [(PKIssuerProvisioningExtensionAuthorizationServiceViewController *)&v14 loadView];
  view = [(PKIssuerProvisioningExtensionAuthorizationServiceViewController *)self view];
  [view setAutoresizesSubviews:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  childViewControllers = [(PKIssuerProvisioningExtensionAuthorizationServiceViewController *)self childViewControllers];
  v5 = [childViewControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(childViewControllers);
        }

        view2 = [*(*(&v10 + 1) + 8 * v8) view];
        [view addSubview:view2];

        ++v8;
      }

      while (v6 != v8);
      v6 = [childViewControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)viewWillLayoutSubviews
{
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PKIssuerProvisioningExtensionAuthorizationServiceViewController;
  [(PKIssuerProvisioningExtensionAuthorizationServiceViewController *)&v22 viewWillLayoutSubviews];
  view = [(PKIssuerProvisioningExtensionAuthorizationServiceViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  childViewControllers = [(PKIssuerProvisioningExtensionAuthorizationServiceViewController *)self childViewControllers];
  v13 = [childViewControllers countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(childViewControllers);
        }

        view2 = [*(*(&v18 + 1) + 8 * v16) view];
        [view2 setFrame:{v5, v7, v9, v11}];

        ++v16;
      }

      while (v14 != v16);
      v14 = [childViewControllers countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v14);
  }
}

@end