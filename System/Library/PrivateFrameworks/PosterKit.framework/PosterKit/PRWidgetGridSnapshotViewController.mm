@interface PRWidgetGridSnapshotViewController
- (PRWidgetGridSnapshotViewController)initWithScene:(id)scene complicationLayoutProvider:(id)provider gridType:(unint64_t)type;
- (void)dealloc;
- (void)invalidate;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PRWidgetGridSnapshotViewController

- (PRWidgetGridSnapshotViewController)initWithScene:(id)scene complicationLayoutProvider:(id)provider gridType:(unint64_t)type
{
  sceneCopy = scene;
  providerCopy = provider;
  v40.receiver = self;
  v40.super_class = PRWidgetGridSnapshotViewController;
  v11 = [(PRWidgetGridSnapshotViewController *)&v40 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_scene, scene);
    v13 = objc_opt_new();
    models = v12->_models;
    v12->_models = v13;

    settings = [sceneCopy settings];
    pui_posterContents = [settings pui_posterContents];

    identity = [pui_posterContents identity];
    v37 = pui_posterContents;
    if ([identity type] == 3)
    {
      pui_previewIdentifier = [[PRPosterConfiguration alloc] _initWithPath:pui_posterContents];
      v39 = 0;
      v18 = [pui_previewIdentifier loadComplicationLayoutWithError:&v39];
      v19 = v39;
      if (v19)
      {
        v20 = PRLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [PRWidgetGridSnapshotViewController initWithScene:pui_previewIdentifier complicationLayoutProvider:v19 gridType:v20];
        }
      }
    }

    else
    {
      settings2 = [sceneCopy settings];
      pui_previewIdentifier = [settings2 pui_previewIdentifier];

      v18 = [providerCopy complicationLayoutForPreviewIdentifier:pui_previewIdentifier];
    }

    if (type == 1)
    {
      sidebarComplications = [v18 sidebarComplications];
      [v18 complicationIconLayout];
    }

    else
    {
      sidebarComplications = [v18 complications];
      [v18 sidebarComplicationIconLayout];
    }
    v23 = ;
    v38 = providerCopy;
    v24 = MEMORY[0x1E695E0F0];
    if (v18)
    {
      v25 = [sidebarComplications bs_map:&__block_literal_global_20];
      v26 = [v25 bs_filter:&__block_literal_global_5_0];
    }

    else
    {
      v26 = MEMORY[0x1E695E0F0];
    }

    v27 = [PRWidgetGridModel alloc];
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v24;
    }

    v29 = [(PRWidgetGridModel *)v27 initWithComplicationDescriptors:v28 iconLayout:v23 type:type];
    [(NSMutableArray *)v12->_models bs_safeAddObject:v29];
    v30 = [[PRWidgetGridViewController alloc] initWithModel:v29 iconViewProvider:0];
    widgetGridViewController = v12->_widgetGridViewController;
    v12->_widgetGridViewController = v30;

    [(PRWidgetGridViewController *)v12->_widgetGridViewController setConfigureForSnapshotting:1];
    v32 = v12->_widgetGridViewController;
    clientSettings = [sceneCopy clientSettings];
    pr_vibrancyConfiguration = [clientSettings pr_vibrancyConfiguration];
    [(PRWidgetGridViewController *)v32 setVibrancyConfiguration:pr_vibrancyConfiguration];

    providerCopy = v38;
  }

  return v12;
}

PRComplicationDescriptor *__88__PRWidgetGridSnapshotViewController_initWithScene_complicationLayoutProvider_gridType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRComplicationDescriptor alloc] initWithPRSWidget:v2];

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PRWidgetGridSnapshotViewController;
  [(PRWidgetGridSnapshotViewController *)&v5 viewDidLoad];
  [(PRWidgetGridSnapshotViewController *)self bs_addChildViewController:self->_widgetGridViewController];
  widgetGridViewController = self->_widgetGridViewController;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PRWidgetGridSnapshotViewController_viewDidLoad__block_invoke;
  v4[3] = &unk_1E7843688;
  v4[4] = self;
  [(PRWidgetGridViewController *)widgetGridViewController ensureContentWithTimeout:v4 completion:5.0];
}

void __49__PRWidgetGridSnapshotViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x1E69C5550]) initWithInfo:0 responder:0];
  v2 = [*(a1 + 32) scene];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:v4];
  [v2 sendActions:v3];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PRWidgetGridSnapshotViewController;
  [(PRWidgetGridSnapshotViewController *)&v5 viewDidLayoutSubviews];
  view = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
  view2 = [(PRWidgetGridSnapshotViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (void)dealloc
{
  [(PRWidgetGridSnapshotViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRWidgetGridSnapshotViewController;
  [(PRWidgetGridSnapshotViewController *)&v3 dealloc];
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  [(PRWidgetGridViewController *)self->_widgetGridViewController invalidate];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_models;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_models removeAllObjects];
}

- (void)initWithScene:(uint64_t)a1 complicationLayoutProvider:(uint64_t)a2 gridType:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A8AA7000, log, OS_LOG_TYPE_ERROR, "Error loading complication layout from poster configuration %@: %@", &v3, 0x16u);
}

@end