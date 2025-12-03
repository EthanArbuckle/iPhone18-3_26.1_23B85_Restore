@interface ICSystemPaperPresenter
+ (id)makeExtensionHostViewControllerWithUserActivityData:(id)data completion:(id)completion;
+ (void)initialize;
+ (void)presentSystemPaperWithUserActivityData:(id)data presentingViewController:(id)controller completion:(id)completion;
- (ICSystemPaperPresenter)init;
@end

@implementation ICSystemPaperPresenter

+ (void)initialize
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = @"ICEnableSystemPaperExtension";
    v6[0] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    [standardUserDefaults registerDefaults:v3];
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)presentSystemPaperWithUserActivityData:(id)data presentingViewController:(id)controller completion:(id)completion
{
  dataCopy = data;
  controllerCopy = controller;
  completionCopy = completion;
  if (ICIsSystemPaperAvailable())
  {
    if (!controllerCopy)
    {
      _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
      rootViewController = [_applicationKeyWindow rootViewController];

      presentedViewController = [rootViewController presentedViewController];

      if (presentedViewController)
      {
        do
        {
          controllerCopy = [rootViewController presentedViewController];

          presentedViewController2 = [controllerCopy presentedViewController];

          rootViewController = controllerCopy;
        }

        while (presentedViewController2);
      }

      else
      {
        controllerCopy = rootViewController;
      }
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __101__ICSystemPaperPresenter_presentSystemPaperWithUserActivityData_presentingViewController_completion___block_invoke;
    v22[3] = &unk_279D33EA0;
    v25 = &v26;
    controllerCopy = controllerCopy;
    v23 = controllerCopy;
    v24 = completionCopy;
    v15 = MEMORY[0x26D6A24D0](v22);
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v17 = [standardUserDefaults BOOLForKey:@"ICEnableSystemPaperExtension"];

    if (v17)
    {
      v18 = [self makeExtensionHostViewControllerWithUserActivityData:dataCopy completion:v15];
      v19 = v27[5];
      v27[5] = v18;
    }

    else
    {
      v20 = [[ICSystemPaperSceneViewController alloc] initWithUserActivityData:dataCopy];
      v21 = v27[5];
      v27[5] = v20;

      [v27[5] setActive:1];
      v15[2](v15);
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"System Paper not available"];
  }
}

uint64_t __101__ICSystemPaperPresenter_presentSystemPaperWithUserActivityData_presentingViewController_completion___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 8) + 40);
  if (v1)
  {
    return [*(a1 + 32) presentViewController:v1 animated:1 completion:*(a1 + 40)];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)makeExtensionHostViewControllerWithUserActivityData:(id)data completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v6 = [MEMORY[0x277CC5DF8] extensionPointIdentifierQuery:@"com.apple.private.system-paper"];
  [MEMORY[0x277CC5E00] executeQuery:v6];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v24 + 1) + 8 * v11);
      bundleIdentifier = [v12 bundleIdentifier];
      v14 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes.EditorExtension"];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v12;

    if (!v15)
    {
      goto LABEL_12;
    }

    v16 = [objc_alloc(MEMORY[0x277CC5E78]) initWithExtensionIdentity:v15];
    [v16 setBeginHostingImmediately:1];
    v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [v17 setBackgroundColor:systemBackgroundColor];

    v19 = [[ICSystemPaperExtensionHostViewController alloc] initWithConfiguration:v16];
    [(_EXHostViewController *)v19 setPlaceholderView:v17];
    v20 = dataCopy;
    [(ICSystemPaperExtensionHostViewController *)v19 setUserActivityData:dataCopy];
    [(ICSystemPaperExtensionHostViewController *)v19 setStartHostingBlock:completionCopy];
  }

  else
  {
LABEL_9:

LABEL_12:
    v15 = ICSystemPaperExtensionLog();
    v20 = dataCopy;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[ICSystemPaperPresenter makeExtensionHostViewControllerWithUserActivityData:completion:];
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (ICSystemPaperPresenter)init
{
  [(ICSystemPaperPresenter *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end