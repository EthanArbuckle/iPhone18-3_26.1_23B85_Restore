@interface PRInlineComplicationSnapshotViewController
- (PRInlineComplicationSnapshotViewController)initWithComplicationDescriptor:(id)descriptor;
- (PRInlineComplicationSnapshotViewController)initWithScene:(id)scene complicationLayoutProvider:(id)provider;
- (id)_hostViewControllerForComplicationDescriptor:(id)descriptor;
- (void)setComplicationUserInteractionEnabled:(BOOL)enabled;
- (void)setVibrancyConfiguration:(id)configuration;
- (void)viewDidLoad;
@end

@implementation PRInlineComplicationSnapshotViewController

- (PRInlineComplicationSnapshotViewController)initWithComplicationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = PRInlineComplicationSnapshotViewController;
  v6 = [(PRInlineComplicationSnapshotViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_complicationDescriptor, descriptor);
  }

  return v7;
}

- (PRInlineComplicationSnapshotViewController)initWithScene:(id)scene complicationLayoutProvider:(id)provider
{
  sceneCopy = scene;
  providerCopy = provider;
  objc_storeStrong(&self->_scene, scene);
  settings = [sceneCopy settings];
  pui_posterContents = [settings pui_posterContents];

  identity = [pui_posterContents identity];
  if ([identity type] == 3)
  {
    pui_previewIdentifier = [[PRPosterConfiguration alloc] _initWithPath:pui_posterContents];
    v26 = 0;
    v13 = [pui_previewIdentifier loadComplicationLayoutWithError:&v26];
    v14 = v26;
    if (v14)
    {
      inlineComplication = PRLogCommon();
      if (os_log_type_enabled(inlineComplication, OS_LOG_TYPE_ERROR))
      {
        [PRWidgetGridSnapshotViewController initWithScene:pui_previewIdentifier complicationLayoutProvider:v14 gridType:inlineComplication];
      }

      v16 = 0;
    }

    else
    {
      v21 = [PRComplicationDescriptor alloc];
      inlineComplication = [v13 inlineComplication];
      v16 = [(PRComplicationDescriptor *)v21 initWithPRSWidget:inlineComplication];
    }
  }

  else
  {
    settings2 = [sceneCopy settings];
    pui_previewIdentifier = [settings2 pui_previewIdentifier];

    v18 = [providerCopy complicationLayoutForPreviewIdentifier:pui_previewIdentifier];
    v19 = [PRComplicationDescriptor alloc];
    inlineComplication2 = [v18 inlineComplication];
    v16 = [(PRComplicationDescriptor *)v19 initWithPRSWidget:inlineComplication2];
  }

  if (![(PRComplicationDescriptor *)v16 hasMatchingDescriptor])
  {

    v16 = 0;
  }

  v22 = [(PRInlineComplicationSnapshotViewController *)self initWithComplicationDescriptor:v16];
  if (v22)
  {
    clientSettings = [sceneCopy clientSettings];
    pr_vibrancyConfiguration = [clientSettings pr_vibrancyConfiguration];

    [(PRInlineComplicationSnapshotViewController *)v22 setVibrancyConfiguration:pr_vibrancyConfiguration];
  }

  return v22;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PRInlineComplicationSnapshotViewController;
  [(PRInlineComplicationSnapshotViewController *)&v13 viewDidLoad];
  if (self->_complicationDescriptor && ([(PRInlineComplicationSnapshotViewController *)self _hostViewControllerForComplicationDescriptor:?], v3 = objc_claimAutoreleasedReturnValue(), v4 = self->_hostViewController, self->_hostViewController = v3, v4, self->_hostViewController))
  {
    [(PRInlineComplicationSnapshotViewController *)self bs_addChildViewController:?];
    Current = CFAbsoluteTimeGetCurrent();
    objc_initWeak(&location, self);
    hostViewController = self->_hostViewController;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__PRInlineComplicationSnapshotViewController_viewDidLoad__block_invoke;
    v10[3] = &unk_1E7845428;
    objc_copyWeak(v11, &location);
    v11[1] = *&Current;
    [(CHUISWidgetHostViewController *)hostViewController ensureContentWithTimeout:v10 completion:5.0];
    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69C5550]) initWithInfo:0 responder:0];
    scene = self->_scene;
    v9 = [MEMORY[0x1E695DFD8] setWithObject:v7];
    [(FBSScene *)scene sendActions:v9];
  }
}

void __57__PRInlineComplicationSnapshotViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = PRLogSnapshotter();
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = WeakRetained[127];
        v9 = Current - *(a1 + 40);
        v15 = 138543874;
        v16 = v8;
        v17 = 2048;
        v18 = v9;
        v19 = 2114;
        v20 = v3;
        _os_log_error_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_ERROR, "Error loading content for snapshot %{public}@ (%f seconds elapsed): %{public}@", &v15, 0x20u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = WeakRetained[127];
      v11 = Current - *(a1 + 40);
      v15 = 138543618;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      _os_log_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_DEFAULT, "Successfully loaded content for snapshot %{public}@ (%f seconds elapsed)", &v15, 0x16u);
    }

    v12 = [objc_alloc(MEMORY[0x1E69C5550]) initWithInfo:0 responder:0];
    v13 = WeakRetained[124];
    v14 = [MEMORY[0x1E695DFD8] setWithObject:v12];
    [v13 sendActions:v14];
  }
}

- (void)setVibrancyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_vibrancyConfiguration != configurationCopy)
  {
    v6 = configurationCopy;
    objc_storeStrong(&self->_vibrancyConfiguration, configuration);
    [(CHUISWidgetHostViewController *)self->_hostViewController setVibrancyConfiguration:v6];
    configurationCopy = v6;
  }
}

- (void)setComplicationUserInteractionEnabled:(BOOL)enabled
{
  touchBlockingView = self->_touchBlockingView;
  if ((((touchBlockingView != 0) ^ enabled) & 1) == 0)
  {
    if (enabled)
    {
      [(UIView *)touchBlockingView removeFromSuperview];
      v5 = self->_touchBlockingView;
      self->_touchBlockingView = 0;
    }

    else
    {
      view = [(PRInlineComplicationSnapshotViewController *)self view];
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      [(UIView *)view bounds];
      v7 = [v6 initWithFrame:?];
      [(UIView *)v7 setAutoresizingMask:18];
      layer = [(UIView *)v7 layer];
      [layer setHitTestsAsOpaque:1];

      [(UIView *)view addSubview:v7];
      v9 = self->_touchBlockingView;
      self->_touchBlockingView = v7;

      v5 = view;
    }
  }
}

- (id)_hostViewControllerForComplicationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = objc_alloc(MEMORY[0x1E6994530]);
  v6 = [v5 pr_initWithComplicationDescriptor:descriptorCopy];

  [v6 setDrawSystemBackgroundMaterialIfNecessary:0];
  [v6 setVisibility:2];
  [v6 setContentType:0];
  [v6 setColorScheme:2];
  [v6 setWidgetPriority:1];
  [v6 setDisableViewTransitionAnimations:1];
  v7 = objc_alloc_init(MEMORY[0x1E69942B8]);
  [v7 setShowsDateAlongsideText:1];
  [v7 setSymbolScale:1];
  v8 = objc_alloc_init(MEMORY[0x1E69942A0]);
  [v8 setSize:&unk_1F1C6BE50];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
  [v8 setWeight:v9];

  [v7 setFontSpecification:v8];
  [v6 setInlineTextParameters:v7];
  v10 = [objc_alloc(MEMORY[0x1E6994428]) initWithPrimaryTintColor:0 secondaryTintColor:0 filterStyle:1 fallbackFilterStyle:1 fraction:1.0];
  [v6 setTintParameters:v10];
  vibrancyConfiguration = [(PRInlineComplicationSnapshotViewController *)self vibrancyConfiguration];
  [v6 setVibrancyConfiguration:vibrancyConfiguration];

  [v6 setPresentationMode:2];
  widget = [descriptorCopy widget];
  v13 = PRSharedWidgetExtensionProvider();
  v14 = [v13 widgetDescriptorForWidget:widget];

  intentType = [v14 intentType];
  if (intentType && (v16 = intentType, [widget intent], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91__PRInlineComplicationSnapshotViewController__hostViewControllerForComplicationDescriptor___block_invoke;
    v19[3] = &unk_1E7845450;
    v20 = v6;
    v21 = widget;
    v22 = descriptorCopy;
    [v14 loadDefaultIntent:v19];
  }

  else
  {
    [v6 setPresentationMode:2];
  }

  return v6;
}

void __91__PRInlineComplicationSnapshotViewController__hostViewControllerForComplicationDescriptor___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [a1[4] widget];
    v5 = a1[5];

    if (v4 == v5)
    {
      v6 = [a1[5] widgetByReplacingIntent:v3];
      [a1[6] setWidget:v6];
      [a1[4] setWidget:v6];
    }

    [a1[4] setPresentationMode:2];
  }

  else
  {
    v7 = PRLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __91__PRInlineComplicationSnapshotViewController__hostViewControllerForComplicationDescriptor___block_invoke_cold_1(a1, v7);
    }
  }
}

void __91__PRInlineComplicationSnapshotViewController__hostViewControllerForComplicationDescriptor___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 40) extensionBundleIdentifier];
  v5 = [*(a1 + 40) kind];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_ERROR, "Default intent asked for but not provided: %@ - %@", &v6, 0x16u);
}

@end