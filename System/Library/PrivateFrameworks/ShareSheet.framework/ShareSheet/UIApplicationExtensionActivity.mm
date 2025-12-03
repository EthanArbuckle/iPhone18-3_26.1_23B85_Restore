@interface UIApplicationExtensionActivity
+ (id)_applicationExtensionActivitiesForItems:(id)items;
+ (id)preparedActivityExtensionItemDataForActivityItemValues:(id)values extensionItemDataRequest:(id)request;
- (BOOL)_dismissActivityFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)_isServiceExtension;
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)containingAppBundleIdentifier;
- (NSString)debugDescription;
- (UIApplicationExtensionActivity)initWithApplicationExtension:(id)extension;
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
- (void)_instantiateExtensionViewControllerWithInputItems:(id)items;
- (void)_prepareWithActivityItems:(id)items completion:(id)completion;
- (void)_presentExtensionViewControllerIfPossible;
- (void)dealloc;
- (void)prepareWithActivityExtensionItemData:(id)data;
- (void)prepareWithActivityItems:(id)items;
- (void)setApplicationExtension:(id)extension;
@end

@implementation UIApplicationExtensionActivity

- (UIApplicationExtensionActivity)initWithApplicationExtension:(id)extension
{
  extensionCopy = extension;
  v9.receiver = self;
  v9.super_class = UIApplicationExtensionActivity;
  v5 = [(UIActivity *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(UIApplicationExtensionActivity *)v5 setApplicationExtension:extensionCopy];
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
  overrideActivityCategory = [(UIApplicationExtensionActivity *)self overrideActivityCategory];
  if (overrideActivityCategory)
  {
    overrideActivityCategory2 = [(UIApplicationExtensionActivity *)self overrideActivityCategory];
    intValue = [overrideActivityCategory2 intValue];
  }

  else
  {
    intValue = [objc_opt_class() activityCategory];
  }

  return intValue;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = UIApplicationExtensionActivity;
  v4 = [(UIActivity *)&v9 description];
  applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
  identifier = [applicationExtension identifier];
  v7 = [v3 stringWithFormat:@"%@ {extension = %@}", v4, identifier];

  return v7;
}

- (void)setApplicationExtension:(id)extension
{
  objc_storeStrong(&self->_applicationExtension, extension);
  extensionCopy = extension;
  _plugIn = [extensionCopy _plugIn];

  self->_installationDate = [_plugIn timestamp];
}

- (NSString)containingAppBundleIdentifier
{
  activityBundleHelper = [(UIApplicationExtensionActivity *)self activityBundleHelper];
  bundleProxy = [activityBundleHelper bundleProxy];
  containingBundle = [bundleProxy containingBundle];

  bundleIdentifier = [containingBundle bundleIdentifier];

  return bundleIdentifier;
}

- (id)activityType
{
  applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
  identifier = [applicationExtension identifier];

  return identifier;
}

- (id)activityTitle
{
  activityCategory = [(UIApplicationExtensionActivity *)self activityCategory];
  activityBundleHelper = [(UIApplicationExtensionActivity *)self activityBundleHelper];
  bundleProxy = [activityBundleHelper bundleProxy];

  if (activityCategory == 1)
  {
    containingBundle = [bundleProxy containingBundle];
    v7 = containingBundle;
    if (containingBundle)
    {
      v8 = containingBundle;
    }

    else
    {
      v8 = bundleProxy;
    }

    v9 = v8;

    bundleProxy = v9;
  }

  preferredLocalizations = [(UIActivity *)self preferredLocalizations];

  if (!preferredLocalizations || (-[UIActivity preferredLocalizations](self, "preferredLocalizations"), v11 = objc_claimAutoreleasedReturnValue(), [bundleProxy localizedNameWithPreferredLocalizations:v11 useShortNameOnly:0], v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    localizedName = [bundleProxy localizedName];
    v14 = localizedName;
    if (localizedName)
    {
      localizedShortName = localizedName;
    }

    else
    {
      localizedShortName = [bundleProxy localizedShortName];
    }

    v12 = localizedShortName;
  }

  return v12;
}

- (id)_activityImage
{
  activityCategory = [(UIApplicationExtensionActivity *)self activityCategory];
  activityBundleHelper = [(UIApplicationExtensionActivity *)self activityBundleHelper];
  contentSizeCategory = [(UIActivity *)self contentSizeCategory];
  v6 = [activityBundleHelper imageForApplicationIconFormat:10 activityCategory:activityCategory contentSizeCategory:contentSizeCategory userInterfaceStyle:-[UIActivity userInterfaceStyle](self, "userInterfaceStyle")];

  if (!activityCategory || !v6)
  {
    v7 = [objc_opt_class() _activityImageForActionRepresentationImage:v6];

    v6 = v7;
  }

  return v6;
}

- (id)_activityImageUTI
{
  applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
  attributes = [applicationExtension attributes];
  v4 = [attributes objectForKeyedSubscript:@"NSExtensionIconUTI"];

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
  activityCategory = [(UIApplicationExtensionActivity *)self activityCategory];
  if (activityCategory)
  {
    activityBundleHelper = [(UIApplicationExtensionActivity *)self activityBundleHelper];
    contentSizeCategory = [(UIActivity *)self contentSizeCategory];
    activityCategory = [activityBundleHelper imageForApplicationIconFormat:0 activityCategory:activityCategory contentSizeCategory:contentSizeCategory userInterfaceStyle:-[UIActivity userInterfaceStyle](self, "userInterfaceStyle")];
  }

  return activityCategory;
}

- (id)_actionImage
{
  activityBundleHelper = [(UIApplicationExtensionActivity *)self activityBundleHelper];
  contentSizeCategory = [(UIActivity *)self contentSizeCategory];
  v5 = [activityBundleHelper imageForApplicationIconFormat:10 activityCategory:0 contentSizeCategory:contentSizeCategory userInterfaceStyle:-[UIActivity userInterfaceStyle](self, "userInterfaceStyle")];

  v6 = objc_opt_class();
  contentSizeCategory2 = [(UIActivity *)self contentSizeCategory];
  v8 = [v6 _actionImageForActionRepresentationImage:v5 contentSizeCategory:contentSizeCategory2];

  return v8;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  activityType = [(UIApplicationExtensionActivity *)self activityType];
  v4 = [activityType isEqualToString:@"com.apple.CloudSharingUI.CreateiCloudLinkExtension"];

  if (!v4)
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)_isServiceExtension
{
  applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
  extensionPointIdentifier = [applicationExtension extensionPointIdentifier];
  v4 = [extensionPointIdentifier isEqualToString:@"com.apple.services"];

  return v4;
}

- (void)prepareWithActivityItems:(id)items
{
  v11[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  _injectedExtensionItem = [(UIApplicationExtensionActivity *)self _injectedExtensionItem];
  v6 = _injectedExtensionItem;
  if (_injectedExtensionItem)
  {
    v11[0] = _injectedExtensionItem;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

    itemsCopy = v7;
  }

  extensionItemDataRequest = [(UIApplicationExtensionActivity *)self extensionItemDataRequest];
  if (!extensionItemDataRequest)
  {
    activityType = [(UIApplicationExtensionActivity *)self activityType];
    extensionItemDataRequest = [UISUIActivityExtensionItemDataRequest requestForActivity:self activityType:activityType];
  }

  v10 = [objc_opt_class() preparedActivityExtensionItemDataForActivityItemValues:itemsCopy extensionItemDataRequest:extensionItemDataRequest];
  [(UIApplicationExtensionActivity *)self prepareWithActivityExtensionItemData:v10];
}

- (void)_prepareWithActivityItems:(id)items completion:(id)completion
{
  v21[2] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  completionCopy = completion;
  objc_initWeak(&location, self);
  originalFileURL = [(UIApplicationExtensionActivity *)self originalFileURL];

  if (originalFileURL)
  {
    originalFileURL2 = [(UIApplicationExtensionActivity *)self originalFileURL];
    v10 = originalFileURL2;
    [originalFileURL2 fileSystemRepresentation];
    v11 = sandbox_extension_issue_file();

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    v13 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:v12 typeIdentifier:@"sandbox-token"];
    v21[0] = v13;
    originalFileURL3 = [(UIApplicationExtensionActivity *)self originalFileURL];
    v21[1] = originalFileURL3;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    [(UIApplicationExtensionActivity *)self prepareWithActivityItems:v15];

    completionCopy[2](completionCopy);
  }

  else
  {
    v16 = MEMORY[0x1E69CDE78];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__UIApplicationExtensionActivity__prepareWithActivityItems_completion___block_invoke;
    v17[3] = &unk_1E71F9A70;
    objc_copyWeak(&v19, &location);
    v18 = completionCopy;
    [v16 loadSendCopyRepresentationIfNeededForActivityItems:itemsCopy completion:v17];

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

- (void)prepareWithActivityExtensionItemData:(id)data
{
  dataCopy = data;
  extensionItems = [dataCopy extensionItems];
  if ([(UIApplicationExtensionActivity *)self _isServiceExtension])
  {
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke;
    v16[3] = &unk_1E71FABA0;
    objc_copyWeak(&v17, &location);
    applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
    [applicationExtension set_requestPostCompletionBlockWithItems:v16];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_23;
    v14[3] = &unk_1E71FABC8;
    objc_copyWeak(&v15, &location);
    applicationExtension2 = [(UIApplicationExtensionActivity *)self applicationExtension];
    [applicationExtension2 setRequestCancellationBlock:v14];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_26;
    v12[3] = &unk_1E71FABF0;
    objc_copyWeak(&v13, &location);
    applicationExtension3 = [(UIApplicationExtensionActivity *)self applicationExtension];
    [applicationExtension3 setRequestInterruptionBlock:v12];

    applicationExtension4 = [(UIApplicationExtensionActivity *)self applicationExtension];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__UIApplicationExtensionActivity_prepareWithActivityExtensionItemData___block_invoke_34;
    v10[3] = &unk_1E71FABC8;
    objc_copyWeak(&v11, &location);
    [applicationExtension4 beginExtensionRequestWithInputItems:extensionItems completion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    [(UIApplicationExtensionActivity *)self _instantiateExtensionViewControllerWithInputItems:extensionItems];
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

+ (id)preparedActivityExtensionItemDataForActivityItemValues:(id)values extensionItemDataRequest:(id)request
{
  requestCopy = request;
  valuesCopy = values;
  v8 = objc_alloc_init(UISUIActivityExtensionItemData);
  v9 = [self _activityExtensionItemsForActivityItemValues:valuesCopy extensionItemDataRequest:requestCopy];

  [(UISUIActivityExtensionItemData *)v8 setExtensionItems:v9];

  return v8;
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  [(UIApplicationExtensionActivity *)self setPresenterViewController:controller];
  [(UIApplicationExtensionActivity *)self setPresenterCompletion:completionCopy];

  [(UIApplicationExtensionActivity *)self _presentExtensionViewControllerIfPossible];
  return 1;
}

- (BOOL)_dismissActivityFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  extensionViewController = [(UIApplicationExtensionActivity *)self extensionViewController];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __89__UIApplicationExtensionActivity__dismissActivityFromViewController_animated_completion___block_invoke;
  v20 = &unk_1E71FA0F0;
  selfCopy = self;
  v22 = completionCopy;
  v11 = completionCopy;
  v12 = MEMORY[0x18CFF58E0](&v17);
  v13 = v12;
  if (controllerCopy)
  {
    v14 = controllerCopy;
  }

  else
  {
    if (!extensionViewController)
    {
      (*(v12 + 16))(v12);
      v15 = 0;
      goto LABEL_6;
    }

    v14 = extensionViewController;
  }

  [v14 dismissViewControllerAnimated:animatedCopy completion:{v13, v17, v18, v19, v20, selfCopy, v22}];
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
  applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
  [applicationExtension set_requestPostCompletionBlockWithItems:0];

  applicationExtension2 = [(UIApplicationExtensionActivity *)self applicationExtension];
  [applicationExtension2 setRequestCancellationBlock:0];

  applicationExtension3 = [(UIApplicationExtensionActivity *)self applicationExtension];
  [applicationExtension3 setRequestInterruptionBlock:0];

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
    applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
    v5 = [_UIActivityBundleHelper activityBundleHelperForExtension:applicationExtension];
    v6 = self->_activityBundleHelper;
    self->_activityBundleHelper = v5;

    activityBundleHelper = self->_activityBundleHelper;
  }

  return activityBundleHelper;
}

- (void)_instantiateExtensionViewControllerWithInputItems:(id)items
{
  itemsCopy = items;
  applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
  identifier = [applicationExtension identifier];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke;
  v18[3] = &unk_1E71FABA0;
  objc_copyWeak(&v19, &location);
  applicationExtension2 = [(UIApplicationExtensionActivity *)self applicationExtension];
  [applicationExtension2 set_requestPostCompletionBlockWithItems:v18];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_40;
  v16[3] = &unk_1E71FABC8;
  objc_copyWeak(&v17, &location);
  applicationExtension3 = [(UIApplicationExtensionActivity *)self applicationExtension];
  [applicationExtension3 setRequestCancellationBlock:v16];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_42;
  v14[3] = &unk_1E71FABF0;
  objc_copyWeak(&v15, &location);
  applicationExtension4 = [(UIApplicationExtensionActivity *)self applicationExtension];
  [applicationExtension4 setRequestInterruptionBlock:v14];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__UIApplicationExtensionActivity__instantiateExtensionViewControllerWithInputItems___block_invoke_44;
  v11[3] = &unk_1E71FAC40;
  objc_copyWeak(&v13, &location);
  v10 = identifier;
  v12 = v10;
  [applicationExtension instantiateViewControllerWithInputItems:itemsCopy connectionHandler:v11];

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
  extensionViewController = [(UIApplicationExtensionActivity *)self extensionViewController];
  if (extensionViewController)
  {
    v14 = extensionViewController;
    presenterViewController = [(UIApplicationExtensionActivity *)self presenterViewController];
    if (presenterViewController)
    {
      applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
      infoDictionary = [applicationExtension infoDictionary];
      v7 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];

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
      view = [v14 view];
      [view setTintAdjustmentMode:1];

      presenterCompletion = [(UIApplicationExtensionActivity *)self presenterCompletion];
      [presenterViewController presentViewController:v14 animated:1 completion:presenterCompletion];
    }

    extensionViewController = v14;
  }
}

- (UIViewController)presenterViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterViewController);

  return WeakRetained;
}

+ (id)_applicationExtensionActivitiesForItems:(id)items
{
  itemsCopy = items;
  v4 = [_UIActivityMatchingContext alloc];
  v5 = [(_UIActivityMatchingContext *)v4 initWithActivityItems:MEMORY[0x1E695E0F0] itemValues:MEMORY[0x1E695E0F0]];
  [(_UIActivityMatchingContext *)v5 setIsContentManaged:0];
  [(_UIActivityMatchingContext *)v5 setShouldMatchOnlyUserElectedExtensions:1];
  v6 = _NSExtensionItemsFromActivityItemValues(itemsCopy);

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