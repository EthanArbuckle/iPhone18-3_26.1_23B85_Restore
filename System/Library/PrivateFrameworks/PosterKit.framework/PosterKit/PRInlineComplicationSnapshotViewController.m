@interface PRInlineComplicationSnapshotViewController
- (PRInlineComplicationSnapshotViewController)initWithComplicationDescriptor:(id)a3;
- (PRInlineComplicationSnapshotViewController)initWithScene:(id)a3 complicationLayoutProvider:(id)a4;
- (id)_hostViewControllerForComplicationDescriptor:(id)a3;
- (void)setComplicationUserInteractionEnabled:(BOOL)a3;
- (void)setVibrancyConfiguration:(id)a3;
- (void)viewDidLoad;
@end

@implementation PRInlineComplicationSnapshotViewController

- (PRInlineComplicationSnapshotViewController)initWithComplicationDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PRInlineComplicationSnapshotViewController;
  v6 = [(PRInlineComplicationSnapshotViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_complicationDescriptor, a3);
  }

  return v7;
}

- (PRInlineComplicationSnapshotViewController)initWithScene:(id)a3 complicationLayoutProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_scene, a3);
  v9 = [v7 settings];
  v10 = [v9 pui_posterContents];

  v11 = [v10 identity];
  if ([v11 type] == 3)
  {
    v12 = [[PRPosterConfiguration alloc] _initWithPath:v10];
    v26 = 0;
    v13 = [v12 loadComplicationLayoutWithError:&v26];
    v14 = v26;
    if (v14)
    {
      v15 = PRLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PRWidgetGridSnapshotViewController initWithScene:v12 complicationLayoutProvider:v14 gridType:v15];
      }

      v16 = 0;
    }

    else
    {
      v21 = [PRComplicationDescriptor alloc];
      v15 = [v13 inlineComplication];
      v16 = [(PRComplicationDescriptor *)v21 initWithPRSWidget:v15];
    }
  }

  else
  {
    v17 = [v7 settings];
    v12 = [v17 pui_previewIdentifier];

    v18 = [v8 complicationLayoutForPreviewIdentifier:v12];
    v19 = [PRComplicationDescriptor alloc];
    v20 = [v18 inlineComplication];
    v16 = [(PRComplicationDescriptor *)v19 initWithPRSWidget:v20];
  }

  if (![(PRComplicationDescriptor *)v16 hasMatchingDescriptor])
  {

    v16 = 0;
  }

  v22 = [(PRInlineComplicationSnapshotViewController *)self initWithComplicationDescriptor:v16];
  if (v22)
  {
    v23 = [v7 clientSettings];
    v24 = [v23 pr_vibrancyConfiguration];

    [(PRInlineComplicationSnapshotViewController *)v22 setVibrancyConfiguration:v24];
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

- (void)setVibrancyConfiguration:(id)a3
{
  v5 = a3;
  if (self->_vibrancyConfiguration != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_vibrancyConfiguration, a3);
    [(CHUISWidgetHostViewController *)self->_hostViewController setVibrancyConfiguration:v6];
    v5 = v6;
  }
}

- (void)setComplicationUserInteractionEnabled:(BOOL)a3
{
  touchBlockingView = self->_touchBlockingView;
  if ((((touchBlockingView != 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      [(UIView *)touchBlockingView removeFromSuperview];
      v5 = self->_touchBlockingView;
      self->_touchBlockingView = 0;
    }

    else
    {
      v10 = [(PRInlineComplicationSnapshotViewController *)self view];
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      [(UIView *)v10 bounds];
      v7 = [v6 initWithFrame:?];
      [(UIView *)v7 setAutoresizingMask:18];
      v8 = [(UIView *)v7 layer];
      [v8 setHitTestsAsOpaque:1];

      [(UIView *)v10 addSubview:v7];
      v9 = self->_touchBlockingView;
      self->_touchBlockingView = v7;

      v5 = v10;
    }
  }
}

- (id)_hostViewControllerForComplicationDescriptor:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E6994530]);
  v6 = [v5 pr_initWithComplicationDescriptor:v4];

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
  v11 = [(PRInlineComplicationSnapshotViewController *)self vibrancyConfiguration];
  [v6 setVibrancyConfiguration:v11];

  [v6 setPresentationMode:2];
  v12 = [v4 widget];
  v13 = PRSharedWidgetExtensionProvider();
  v14 = [v13 widgetDescriptorForWidget:v12];

  v15 = [v14 intentType];
  if (v15 && (v16 = v15, [v12 intent], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91__PRInlineComplicationSnapshotViewController__hostViewControllerForComplicationDescriptor___block_invoke;
    v19[3] = &unk_1E7845450;
    v20 = v6;
    v21 = v12;
    v22 = v4;
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