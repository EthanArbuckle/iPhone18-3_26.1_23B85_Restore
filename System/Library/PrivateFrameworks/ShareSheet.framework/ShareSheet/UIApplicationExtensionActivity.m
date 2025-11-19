@interface UIApplicationExtensionActivity
+ (id)_applicationExtensionActivitiesForItems:(id)a3;
+ (id)preparedActivityExtensionItemDataForActivityItemValues:(id)a3 extensionItemDataRequest:(id)a4;
- (BOOL)_dismissActivityFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)_isServiceExtension;
- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (NSString)containingAppBundleIdentifier;
- (NSString)debugDescription;
- (UIApplicationExtensionActivity)initWithApplicationExtension:(id)a3;
- (UIViewController)presenterViewController;
- (_UIActivityBundleHelper)activityBundleHelper;
- (id)_actionImage;
- (id)_activityImage;
- (id)_activityImageUTI;
- (id)_activitySettingsImage;
- (id)activityTitle;
- (id)activityType;
- (int64_t)activityCategory;
- (void)_cleanup;
- (void)_instantiateExtensionViewControllerWithInputItems:(id)a3;
- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4;
- (void)_presentExtensionViewControllerIfPossible;
- (void)dealloc;
- (void)prepareWithActivityExtensionItemData:(id)a3;
- (void)prepareWithActivityItems:(id)a3;
- (void)setApplicationExtension:(id)a3;
@end

@implementation UIApplicationExtensionActivity

- (UIApplicationExtensionActivity)initWithApplicationExtension:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIApplicationExtensionActivity;
  v5 = [(UIActivity *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(UIApplicationExtensionActivity *)v5 setApplicationExtension:v4];
    v7 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(NSExtension *)self->_applicationExtension set_requestPostCompletionBlockWithItems:0];
  [(NSExtension *)self->_applicationExtension setRequestCompletionBlock:0];
  [(NSExtension *)self->_applicationExtension setRequestCancellationBlock:0];
  v3.receiver = self;
  v3.super_class = UIApplicationExtensionActivity;
  [(UIApplicationExtensionActivity *)&v3 dealloc];
}

- (int64_t)activityCategory
{
  v3 = [(UIApplicationExtensionActivity *)self overrideActivityCategory];
  if (v3)
  {
    v4 = [(UIApplicationExtensionActivity *)self overrideActivityCategory];
    v5 = [v4 intValue];
  }

  else
  {
    v5 = [objc_opt_class() activityCategory];
  }

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = UIApplicationExtensionActivity;
  v4 = [(UIActivity *)&v9 description];
  v5 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v6 = [v5 identifier];
  v7 = [v3 stringWithFormat:@"%@ {extension = %@}", v4, v6];

  return v7;
}

- (void)setApplicationExtension:(id)a3
{
  objc_storeStrong(&self->_applicationExtension, a3);
  v5 = a3;
  v6 = [v5 _plugIn];

  self->_installationDate = [v6 timestamp];
}

- (NSString)containingAppBundleIdentifier
{
  v2 = [(UIApplicationExtensionActivity *)self activityBundleHelper];
  v3 = [v2 bundleProxy];
  v4 = [v3 containingBundle];

  v5 = [v4 bundleIdentifier];

  return v5;
}

- (id)activityType
{
  v2 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v3 = [v2 identifier];

  return v3;
}

- (id)activityTitle
{
  v3 = [(UIApplicationExtensionActivity *)self activityCategory];
  v4 = [(UIApplicationExtensionActivity *)self activityBundleHelper];
  v5 = [v4 bundleProxy];

  if (v3 == 1)
  {
    v6 = [v5 containingBundle];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;

    v5 = v9;
  }

  v10 = [(UIActivity *)self preferredLocalizations];

  if (!v10 || (-[UIActivity preferredLocalizations](self, "preferredLocalizations"), v11 = objc_claimAutoreleasedReturnValue(), [v5 localizedNameWithPreferredLocalizations:v11 useShortNameOnly:0], v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    v13 = [v5 localizedName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v5 localizedShortName];
    }

    v12 = v15;
  }

  return v12;
}

- (id)_activityImage
{
  v3 = [(UIApplicationExtensionActivity *)self activityCategory];
  v4 = [(UIApplicationExtensionActivity *)self activityBundleHelper];
  v5 = [(UIActivity *)self contentSizeCategory];
  v6 = [v4 imageForApplicationIconFormat:10 activityCategory:v3 contentSizeCategory:v5 userInterfaceStyle:-[UIActivity userInterfaceStyle](self, "userInterfaceStyle")];

  if (!v3 || !v6)
  {
    v7 = [objc_opt_class() _activityImageForActionRepresentationImage:v6];

    v6 = v7;
  }

  return v6;
}

- (id)_activityImageUTI
{
  v2 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v3 = [v2 attributes];
  v4 = [v3 objectForKeyedSubscript:@"NSExtensionIconUTI"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 length])
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (id)_activitySettingsImage
{
  v3 = [(UIApplicationExtensionActivity *)self activityCategory];
  if (v3)
  {
    v4 = [(UIApplicationExtensionActivity *)self activityBundleHelper];
    v5 = [(UIActivity *)self contentSizeCategory];
    v3 = [v4 imageForApplicationIconFormat:0 activityCategory:v3 contentSizeCategory:v5 userInterfaceStyle:-[UIActivity userInterfaceStyle](self, "userInterfaceStyle")];
  }

  return v3;
}

- (id)_actionImage
{
  v3 = [(UIApplicationExtensionActivity *)self activityBundleHelper];
  v4 = [(UIActivity *)self contentSizeCategory];
  v5 = [v3 imageForApplicationIconFormat:10 activityCategory:0 contentSizeCategory:v4 userInterfaceStyle:-[UIActivity userInterfaceStyle](self, "userInterfaceStyle")];

  v6 = objc_opt_class();
  v7 = [(UIActivity *)self contentSizeCategory];
  v8 = [v6 _actionImageForActionRepresentationImage:v5 contentSizeCategory:v7];

  return v8;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = [(UIApplicationExtensionActivity *)self activityType];
  v4 = [v3 isEqualToString:@"com.apple.CloudSharingUI.CreateiCloudLinkExtension"];

  if (!v4)
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)_isServiceExtension
{
  v2 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v3 = [v2 extensionPointIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.services"];

  return v4;
}

- (void)prepareWithActivityItems:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIApplicationExtensionActivity *)self _injectedExtensionItem];
  v6 = v5;
  if (v5)
  {
    v11[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

    v4 = v7;
  }

  v8 = [(UIApplicationExtensionActivity *)self extensionItemDataRequest];
  if (!v8)
  {
    v9 = [(UIApplicationExtensionActivity *)self activityType];
    v8 = [UISUIActivityExtensionItemDataRequest requestForActivity:self activityType:v9];
  }

  v10 = [objc_opt_class() preparedActivityExtensionItemDataForActivityItemValues:v4 extensionItemDataRequest:v8];
  [(UIApplicationExtensionActivity *)self prepareWithActivityExtensionItemData:v10];
}

- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4
{
  v21[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(UIApplicationExtensionActivity *)self originalFileURL];

  if (v8)
  {
    v9 = [(UIApplicationExtensionActivity *)self originalFileURL];
    v10 = v9;
    [v9 fileSystemRepresentation];
    v11 = sandbox_extension_issue_file();

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    v13 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:v12 typeIdentifier:@"sandbox-token"];
    v21[0] = v13;
    v14 = [(UIApplicationExtensionActivity *)self originalFileURL];
    v21[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    [(UIApplicationExtensionActivity *)self prepareWithActivityItems:v15];

    v7[2](v7);
  }

  else
  {
    v16 = MEMORY[0x1E69CDE78];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__UIApplicationExtensionActivity__prepareWithActivityItems_completion___block_invoke;
    v17[3] = &unk_1E71F9A70;
    objc_copyWeak(&v19, &location);
    v18 = v7;
    [v16 loadSendCopyRepresentationIfNeededForActivityItems:v6 completion:v17];

    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(&location);
}

void __71__UIApplicationExtensionActivity__prepareWithActivityItems_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v6, (a1 + 40));
  v4 = v3;
  v5 = *(a1 + 32);
  sf_dispatch_on_main_queue();

  objc_destroyWeak(&v6);
}

uint64_t __71__UIApplicationExtensionActivity__prepareWithActivityItems_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained prepareWithActivityItems:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)prepareWithActivityExtensionItemData:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionItems];
  if ([(UIApplicationExtensionActivity *)self _isServiceExtension])
  {
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke;
    v16[3] = &unk_1E71FABA0;
    objc_copyWeak(&v17, &location);
    v6 = [(UIApplicationExtensionActivity *)self applicationExtension];
    [v6 set_requestPostCompletionBlockWithItems:v16];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_23;
    v14[3] = &unk_1E71FABC8;
    objc_copyWeak(&v15, &location);
    v7 = [(UIApplicationExtensionActivity *)self applicationExtension];
    [v7 setRequestCancellationBlock:v14];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_26;
    v12[3] = &unk_1E71FABF0;
    objc_copyWeak(&v13, &location);
    v8 = [(UIApplicationExtensionActivity *)self applicationExtension];
    [v8 setRequestInterruptionBlock:v12];

    v9 = [(UIApplicationExtensionActivity *)self applicationExtension];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_34;
    v10[3] = &unk_1E71FABC8;
    objc_copyWeak(&v11, &location);
    [v9 beginExtensionRequestWithInputItems:v5 completion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    [(UIApplicationExtensionActivity *)self _instantiateExtensionViewControllerWithInputItems:v5];
  }
}

void __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2;
  block[3] = &unk_1E71F9958;
  v13 = v6;
  v14 = WeakRetained;
  v15 = v7;
  v9 = v7;
  v10 = WeakRetained;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "completed request - items: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 40) setExtensionRequestCleanupCompletion:*(a1 + 48)];
  return [*(a1 + 40) activityDidFinish:1 items:*(a1 + 32) error:0];
}

void __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_23(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_24;
  v8[3] = &unk_1E71F91A0;
  v9 = v4;
  v10 = WeakRetained;
  v6 = WeakRetained;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_24(uint64_t a1)
{
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_24_cold_1(a1);
  }

  return [*(a1 + 40) activityDidFinish:0 items:0 error:*(a1 + 32)];
}

void __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_27;
  block[3] = &unk_1E71F9510;
  v4 = WeakRetained;
  v2 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_27(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A250];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Extension was interrupted";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:v3 code:0 userInfo:v4];

  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_27_cold_1(v5);
  }

  [*(a1 + 32) activityDidFinish:0 items:0 error:v5];
}

void __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_35;
  block[3] = &unk_1E71F9638;
  v12 = v5;
  v13 = v6;
  v14 = WeakRetained;
  v8 = WeakRetained;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_35(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 48);

    return [v2 setExtensionContextIdentifier:?];
  }

  else
  {
    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_35_cold_1(a1);
    }

    return [*(a1 + 48) activityDidFinish:0 items:0 error:*(a1 + 40)];
  }
}

+ (id)preparedActivityExtensionItemDataForActivityItemValues:(id)a3 extensionItemDataRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(UISUIActivityExtensionItemData);
  v9 = [a1 _activityExtensionItemsForActivityItemValues:v7 extensionItemDataRequest:v6];

  [(UISUIActivityExtensionItemData *)v8 setExtensionItems:v9];

  return v8;
}

- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = a5;
  [(UIApplicationExtensionActivity *)self setPresenterViewController:a3];
  [(UIApplicationExtensionActivity *)self setPresenterCompletion:v7];

  [(UIApplicationExtensionActivity *)self _presentExtensionViewControllerIfPossible];
  return 1;
}

- (BOOL)_dismissActivityFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(UIApplicationExtensionActivity *)self extensionViewController];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __89__UIApplicationExtensionActivity__dismissActivityFromViewController_animated_completion___block_invoke;
  v20 = &unk_1E71FA0F0;
  v21 = self;
  v22 = v9;
  v11 = v9;
  v12 = MEMORY[0x18CFF58E0](&v17);
  v13 = v12;
  if (v8)
  {
    v14 = v8;
  }

  else
  {
    if (!v10)
    {
      (*(v12 + 16))(v12);
      v15 = 0;
      goto LABEL_6;
    }

    v14 = v10;
  }

  [v14 dismissViewControllerAnimated:v6 completion:{v13, v17, v18, v19, v20, v21, v22}];
  v15 = 1;
LABEL_6:

  return v15;
}

uint64_t __89__UIApplicationExtensionActivity__dismissActivityFromViewController_animated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionRequestCleanupCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) extensionRequestCleanupCompletion];
    v3[2]();

    [*(a1 + 32) setExtensionRequestCleanupCompletion:0];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)_cleanup
{
  [(UIApplicationExtensionActivity *)self setPresenterCompletion:0];
  v3 = [(UIApplicationExtensionActivity *)self applicationExtension];
  [v3 set_requestPostCompletionBlockWithItems:0];

  v4 = [(UIApplicationExtensionActivity *)self applicationExtension];
  [v4 setRequestCancellationBlock:0];

  v5 = [(UIApplicationExtensionActivity *)self applicationExtension];
  [v5 setRequestInterruptionBlock:0];

  [(UIApplicationExtensionActivity *)self setExtensionContextIdentifier:0];
  [(UIApplicationExtensionActivity *)self setExtensionViewController:0];
  v6.receiver = self;
  v6.super_class = UIApplicationExtensionActivity;
  [(UIActivity *)&v6 _cleanup];
}

- (_UIActivityBundleHelper)activityBundleHelper
{
  activityBundleHelper = self->_activityBundleHelper;
  if (!activityBundleHelper)
  {
    v4 = [(UIApplicationExtensionActivity *)self applicationExtension];
    v5 = [_UIActivityBundleHelper activityBundleHelperForExtension:v4];
    v6 = self->_activityBundleHelper;
    self->_activityBundleHelper = v5;

    activityBundleHelper = self->_activityBundleHelper;
  }

  return activityBundleHelper;
}

- (void)_instantiateExtensionViewControllerWithInputItems:(id)a3
{
  v4 = a3;
  v5 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v6 = [v5 identifier];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke;
  v18[3] = &unk_1E71FABA0;
  objc_copyWeak(&v19, &location);
  v7 = [(UIApplicationExtensionActivity *)self applicationExtension];
  [v7 set_requestPostCompletionBlockWithItems:v18];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_40;
  v16[3] = &unk_1E71FABC8;
  objc_copyWeak(&v17, &location);
  v8 = [(UIApplicationExtensionActivity *)self applicationExtension];
  [v8 setRequestCancellationBlock:v16];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_42;
  v14[3] = &unk_1E71FABF0;
  objc_copyWeak(&v15, &location);
  v9 = [(UIApplicationExtensionActivity *)self applicationExtension];
  [v9 setRequestInterruptionBlock:v14];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_44;
  v11[3] = &unk_1E71FAC40;
  objc_copyWeak(&v13, &location);
  v10 = v6;
  v12 = v10;
  [v5 instantiateViewControllerWithInputItems:v4 connectionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_2;
  block[3] = &unk_1E71F9958;
  v13 = v6;
  v14 = WeakRetained;
  v15 = v7;
  v9 = v7;
  v10 = WeakRetained;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "completed request - items: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 40) setExtensionRequestCleanupCompletion:*(a1 + 48)];
  return [*(a1 + 40) activityDidFinish:1 items:*(a1 + 32) error:0];
}

void __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_2_41;
  v8[3] = &unk_1E71F91A0;
  v9 = v4;
  v10 = WeakRetained;
  v6 = WeakRetained;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_2_41(uint64_t a1)
{
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_24_cold_1(a1);
  }

  return [*(a1 + 40) activityDidFinish:0 items:0 error:*(a1 + 32)];
}

void __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_42(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_2_43;
  block[3] = &unk_1E71F9510;
  v4 = WeakRetained;
  v2 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_2_43(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A250];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Extension was interrupted";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:v3 code:0 userInfo:v4];

  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_27_cold_1(v5);
  }

  [*(a1 + 32) activityDidFinish:0 items:0 error:v5];
}

void __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_44(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_2_45;
  block[3] = &unk_1E71FAC18;
  v16 = v7;
  v17 = v8;
  v18 = *(a1 + 32);
  v19 = v9;
  v20 = WeakRetained;
  v11 = WeakRetained;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_2_45(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40))
  {
    [*(a1 + 64) setExtensionContextIdentifier:?];
    [*(a1 + 64) setExtensionViewController:*(a1 + 40)];
    v2 = *(a1 + 64);

    return [v2 _presentExtensionViewControllerIfPossible];
  }

  else
  {
    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_2_45_cold_1(a1);
    }

    return [*(a1 + 64) activityDidFinish:0 items:0 error:*(a1 + 56)];
  }
}

- (void)_presentExtensionViewControllerIfPossible
{
  v3 = [(UIApplicationExtensionActivity *)self extensionViewController];
  if (v3)
  {
    v14 = v3;
    v4 = [(UIApplicationExtensionActivity *)self presenterViewController];
    if (v4)
    {
      v5 = [(UIApplicationExtensionActivity *)self applicationExtension];
      v6 = [v5 infoDictionary];
      v7 = [v6 objectForKeyedSubscript:@"NSExtension"];

      v8 = [v7 objectForKeyedSubscript:@"NSExtensionActionWantsFullScreenPresentation"];
      if ([v8 BOOLValue])
      {
        v9 = 5;
      }

      else
      {
        v10 = [v7 objectForKeyedSubscript:@"NSExtensionAttributes"];
        v11 = [v10 objectForKeyedSubscript:@"NSExtensionActionWantsFullScreenPresentation"];
        if ([v11 BOOLValue])
        {
          v9 = 5;
        }

        else
        {
          v9 = 2;
        }
      }

      [v14 setModalPresentationStyle:v9];
      v12 = [v14 view];
      [v12 setTintAdjustmentMode:1];

      v13 = [(UIApplicationExtensionActivity *)self presenterCompletion];
      [v4 presentViewController:v14 animated:1 completion:v13];
    }

    v3 = v14;
  }
}

- (UIViewController)presenterViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterViewController);

  return WeakRetained;
}

+ (id)_applicationExtensionActivitiesForItems:(id)a3
{
  v3 = a3;
  v4 = [_UIActivityMatchingContext alloc];
  v5 = [(_UIActivityMatchingContext *)v4 initWithActivityItems:MEMORY[0x1E695E0F0] itemValues:MEMORY[0x1E695E0F0]];
  [(_UIActivityMatchingContext *)v5 setIsContentManaged:0];
  [(_UIActivityMatchingContext *)v5 setShouldMatchOnlyUserElectedExtensions:1];
  v6 = _NSExtensionItemsFromActivityItemValues(v3);

  v7 = [_UIActivityApplicationExtensionDiscovery extensionMatchingDictionariesForExtensionItems:v6];
  [(_UIActivityMatchingContext *)v5 setActivityItemValueExtensionMatchingDictionaries:v7];

  v8 = objc_alloc_init(_UIActivityApplicationExtensionDiscovery);
  v13 = 0;
  v9 = [(_UIActivityApplicationExtensionDiscovery *)v8 activitiesForMatchingContext:v5 error:&v13];
  v10 = v13;
  if (v10)
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[UIApplicationExtensionActivity(UIActivity_PerformanceTest) _applicationExtensionActivitiesForItems:];
    }
  }

  return v9;
}

void __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_24_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_27_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_2_35_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_2_45_cold_1(uint64_t a1)
{
  v6 = [*(a1 + 56) userInfo];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

@end