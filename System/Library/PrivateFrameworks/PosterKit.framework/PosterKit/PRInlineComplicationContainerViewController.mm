@interface PRInlineComplicationContainerViewController
- (PRInlineComplicationContainerViewController)initWithComplicationDescriptor:(id)descriptor;
- (PRInlineComplicationContainerViewControllerDelegate)delegate;
- (void)_tapGestureRecognized:(id)recognized;
- (void)setComplicationDescriptor:(id)descriptor;
- (void)setFocused:(BOOL)focused animated:(BOOL)animated;
- (void)setFocused:(BOOL)focused animationSettings:(id)settings;
- (void)setVibrancyConfiguration:(id)configuration;
- (void)viewDidLoad;
@end

@implementation PRInlineComplicationContainerViewController

- (PRInlineComplicationContainerViewController)initWithComplicationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v8.receiver = self;
  v8.super_class = PRInlineComplicationContainerViewController;
  v5 = [(PRInlineComplicationContainerViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PRInlineComplicationContainerViewController *)v5 setComplicationDescriptor:descriptorCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PRInlineComplicationContainerViewController;
  [(PRInlineComplicationContainerViewController *)&v7 viewDidLoad];
  view = [(PRInlineComplicationContainerViewController *)self view];
  layer = [view layer];
  [layer setHitTestsAsOpaque:1];

  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapGestureRecognized_];
  view2 = [(PRInlineComplicationContainerViewController *)self view];
  [view2 addGestureRecognizer:v5];
}

- (void)setComplicationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (self->_complicationDescriptor != descriptorCopy)
  {
    objc_storeStrong(&self->_complicationDescriptor, descriptor);
    if (self->_hostViewController)
    {
      [(PRInlineComplicationContainerViewController *)self bs_removeChildViewController:?];
      [(CHUISWidgetHostViewController *)self->_hostViewController invalidate];
    }

    if (descriptorCopy)
    {
      v6 = objc_alloc(MEMORY[0x1E6994530]);
      v7 = [v6 pr_initWithComplicationDescriptor:descriptorCopy];

      v8 = objc_alloc_init(MEMORY[0x1E69942B8]);
      [v8 setShowsDateAlongsideText:1];
      v9 = objc_alloc_init(MEMORY[0x1E69942A0]);
      [v9 setSize:&unk_1F1C6BE70];
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
      [v9 setWeight:v10];

      v21 = v9;
      [v8 setFontSpecification:v9];
      [v8 setSymbolScale:1];
      [v7 setInlineTextParameters:v8];
      [v7 setDrawSystemBackgroundMaterialIfNecessary:0];
      [v7 setVisibility:2];
      [v7 setCanAppearInSecureEnvironment:1];
      [v7 setContentType:0];
      [v7 setShouldShareTouchesWithHost:1];
      [v7 setColorScheme:2];
      vibrancyConfiguration = [(PRInlineComplicationContainerViewController *)self vibrancyConfiguration];
      [v7 setVibrancyConfiguration:vibrancyConfiguration];

      view = [v7 view];
      [view setUserInteractionEnabled:0];

      v13 = [objc_alloc(MEMORY[0x1E6994428]) initWithPrimaryTintColor:0 secondaryTintColor:0 filterStyle:1 fallbackFilterStyle:1 fraction:1.0];
      [v7 setTintParameters:v13];
      widget = [(PRComplicationDescriptor *)descriptorCopy widget];
      v15 = PRSharedWidgetExtensionProvider();
      v16 = [v15 widgetDescriptorForWidget:widget];

      intentType = [v16 intentType];
      if (intentType && (v18 = intentType, [widget intent], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, !v19))
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __73__PRInlineComplicationContainerViewController_setComplicationDescriptor___block_invoke;
        v22[3] = &unk_1E7845450;
        v23 = v7;
        v24 = widget;
        v25 = descriptorCopy;
        [v16 loadDefaultIntent:v22];
      }

      else
      {
        [v7 setPresentationMode:2];
      }

      [(PRInlineComplicationContainerViewController *)self loadViewIfNeeded];
      [(PRInlineComplicationContainerViewController *)self bs_addChildViewController:v7];
      hostViewController = self->_hostViewController;
      self->_hostViewController = v7;
    }
  }
}

void __73__PRInlineComplicationContainerViewController_setComplicationDescriptor___block_invoke(id *a1, void *a2)
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

- (void)setFocused:(BOOL)focused animated:(BOOL)animated
{
  focusedCopy = focused;
  if (animated)
  {
    v6 = [MEMORY[0x1E698E608] settingsWithDuration:0.3];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PRInlineComplicationContainerViewController *)self setFocused:focusedCopy animationSettings:v6];
}

- (void)setFocused:(BOOL)focused animationSettings:(id)settings
{
  if (self->_focused != focused)
  {
    self->_focused = focused;
  }
}

- (void)setVibrancyConfiguration:(id)configuration
{
  objc_storeStrong(&self->_vibrancyConfiguration, configuration);
  configurationCopy = configuration;
  [(CHUISWidgetHostViewController *)self->_hostViewController setVibrancyConfiguration:configurationCopy];
}

- (void)_tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if (self->_focused)
  {
    if (!self->_complicationDescriptor)
    {
      goto LABEL_6;
    }

    v6 = recognizedCopy;
    delegate = [(PRInlineComplicationContainerViewController *)self delegate];
    [delegate inlineComplicationContainerViewController:self didEditComplication:self->_complicationDescriptor];
  }

  else
  {
    v6 = recognizedCopy;
    delegate = [(PRInlineComplicationContainerViewController *)self delegate];
    [delegate inlineComplicationContainerViewControllerDidTapAdd:self];
  }

  recognizedCopy = v6;
LABEL_6:
}

- (PRInlineComplicationContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end