@interface PRWidgetIconViewController
- (CGRect)visibleBounds;
- (CHUISWidgetHostViewController)widgetHostViewController;
- (NSString)description;
- (PRWidgetIconViewController)initWithComplicationDescriptor:(id)descriptor contentType:(unint64_t)type presentationMode:(unint64_t)mode;
- (PRWidgetIconViewController)initWithComplicationDescriptor:(id)descriptor contentType:(unint64_t)type presentationMode:(unint64_t)mode delegate:(id)delegate;
- (PRWidgetIconViewControllerDelegate)delegate;
- (id)_platterVisualStylingProvider;
- (id)createPreviewView;
- (void)_recreateBackgroundView;
- (void)_tapRecognized:(id)recognized;
- (void)_updateBackgroundViewAlpha;
- (void)_updatePlatterStylingIfNeeded;
- (void)_updateWidgetHostViewController;
- (void)beginCancellingTouches;
- (void)dealloc;
- (void)invalidate;
- (void)setBackgroundHidden:(BOOL)hidden;
- (void)setConfigureForSnapshotting:(BOOL)snapshotting;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setUseMaterialBackground:(BOOL)background;
- (void)setVibrancyConfiguration:(id)configuration;
- (void)setWidgetInteractionDisabled:(BOOL)disabled;
- (void)setWidgetPresentationMode:(unint64_t)mode;
- (void)updateIntent:(id)intent;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)widgetHostViewController:(id)controller requestsLaunch:(id)launch;
@end

@implementation PRWidgetIconViewController

- (PRWidgetIconViewController)initWithComplicationDescriptor:(id)descriptor contentType:(unint64_t)type presentationMode:(unint64_t)mode
{
  descriptorCopy = descriptor;
  v13.receiver = self;
  v13.super_class = PRWidgetIconViewController;
  v10 = [(PRWidgetIconViewController *)&v13 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_complicationDescriptor, descriptor);
    v11->_contentType = type;
    v11->_widgetPresentationMode = mode;
    v11->_backgroundHidden = 1;
    v11->_useMaterialBackground = 1;
  }

  return v11;
}

- (PRWidgetIconViewController)initWithComplicationDescriptor:(id)descriptor contentType:(unint64_t)type presentationMode:(unint64_t)mode delegate:(id)delegate
{
  delegateCopy = delegate;
  v11 = [(PRWidgetIconViewController *)self initWithComplicationDescriptor:descriptor contentType:type presentationMode:mode];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
  }

  return v12;
}

- (void)dealloc
{
  [(PRWidgetIconViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRWidgetIconViewController;
  [(PRWidgetIconViewController *)&v3 dealloc];
}

- (void)invalidate
{
  widgetHostViewController = self->_widgetHostViewController;
  if (widgetHostViewController)
  {
    [(CHUISWidgetHostViewController *)widgetHostViewController invalidate];
    [(PRWidgetIconViewController *)self bs_removeChildViewController:self->_widgetHostViewController];
    v4 = self->_widgetHostViewController;
    self->_widgetHostViewController = 0;
  }

  if (self->_userInterfaceStyleTraitChangeRegistration)
  {
    [(PRWidgetIconViewController *)self unregisterForTraitChanges:?];
    userInterfaceStyleTraitChangeRegistration = self->_userInterfaceStyleTraitChangeRegistration;
    self->_userInterfaceStyleTraitChangeRegistration = 0;
  }
}

- (void)viewDidLoad
{
  v34[1] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = PRWidgetIconViewController;
  [(PRWidgetIconViewController *)&v33 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = objc_opt_self();
  v34[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __41__PRWidgetIconViewController_viewDidLoad__block_invoke;
  v30 = &unk_1E7845AB0;
  objc_copyWeak(&v31, &location);
  v5 = [(PRWidgetIconViewController *)self registerForTraitChanges:v4 withHandler:&v27];
  userInterfaceStyleTraitChangeRegistration = self->_userInterfaceStyleTraitChangeRegistration;
  self->_userInterfaceStyleTraitChangeRegistration = v5;

  if (self->_backgroundView)
  {
    view = [(PRWidgetIconViewController *)self view];
    [view addSubview:self->_backgroundView];
  }

  v8 = objc_alloc(MEMORY[0x1E6994530]);
  v9 = [v8 pr_initWithComplicationDescriptor:self->_complicationDescriptor];
  widgetHostViewController = self->_widgetHostViewController;
  self->_widgetHostViewController = v9;

  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setDelegate:self];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setInteractionDisabled:self->_widgetInteractionDisabled];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setDrawSystemBackgroundMaterialIfNecessary:0];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setVisibility:2];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setContentType:self->_contentType];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setColorScheme:2];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setSupportsLowLuminance:1];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setPrefersUnredactedContentInLowLuminanceEnvironment:1];
  [(PRWidgetIconViewController *)self _updateWidgetHostViewController];
  v11 = MEMORY[0x1E696AEC0];
  widget = [(PRComplicationDescriptor *)self->_complicationDescriptor widget];
  extensionBundleIdentifier = [widget extensionBundleIdentifier];
  widget2 = [(PRComplicationDescriptor *)self->_complicationDescriptor widget];
  kind = [widget2 kind];
  v16 = [v11 stringWithFormat:@"%@:%@", extensionBundleIdentifier, kind, v27, v28, v29, v30];

  view2 = [(CHUISWidgetHostViewController *)self->_widgetHostViewController view];
  [view2 setAccessibilityIdentifier:v16];

  view3 = [(CHUISWidgetHostViewController *)self->_widgetHostViewController view];
  [view3 setAccessibilityValue:@"Widget"];

  v19 = objc_alloc(MEMORY[0x1E6994428]);
  blackColor = [MEMORY[0x1E698E650] blackColor];
  v21 = [v19 initWithPrimaryTintColor:0 secondaryTintColor:blackColor filterStyle:1 fallbackFilterStyle:1 fraction:1.0];

  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setTintParameters:v21];
  v22 = self->_widgetHostViewController;
  vibrancyConfiguration = [(PRWidgetIconViewController *)self vibrancyConfiguration];
  [(CHUISWidgetHostViewController *)v22 setVibrancyConfiguration:vibrancyConfiguration];

  v24 = [objc_alloc(MEMORY[0x1E6994420]) initWithRenderingMode:1 backgroundViewPolicy:1];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setRenderScheme:v24];
  [(PRWidgetIconViewController *)self bs_addChildViewController:self->_widgetHostViewController];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setCanAppearInSecureEnvironment:1];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setShouldShareTouchesWithHost:1];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setPresentationMode:self->_widgetPresentationMode];
  v25 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapRecognized_];
  view4 = [(PRWidgetIconViewController *)self view];
  [view4 addGestureRecognizer:v25];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __41__PRWidgetIconViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[125];
    WeakRetained[125] = 0;
    v3 = WeakRetained;

    [v3 _updatePlatterStylingIfNeeded];
    WeakRetained = v3;
  }
}

- (void)_updateWidgetHostViewController
{
  configureForSnapshotting = self->_configureForSnapshotting;
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setWidgetPriority:configureForSnapshotting];
  widgetHostViewController = self->_widgetHostViewController;

  [(CHUISWidgetHostViewController *)widgetHostViewController setDisableViewTransitionAnimations:configureForSnapshotting];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  complicationDescriptor = [(PRWidgetIconViewController *)self complicationDescriptor];
  v5 = [v3 appendObject:complicationDescriptor withName:@"complicationDescriptor"];

  if ([(CHUISWidgetHostViewController *)self->_widgetHostViewController isViewLoaded])
  {
    [(CHUISWidgetHostViewController *)self->_widgetHostViewController presentationMode];
    v6 = NSStringFromCHUISWidgetPresentationMode();
    v7 = [v3 appendObject:v6 withName:@"presentationMode"];
  }

  v8 = [v3 appendObject:self->_widgetHostViewController withName:@"widgetHostViewController" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PRWidgetIconViewController;
  [(PRWidgetIconViewController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    [(PRWidgetIconViewController *)self _updatePlatterStylingIfNeeded];
  }
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = PRWidgetIconViewController;
  [(PRWidgetIconViewController *)&v11 viewDidLayoutSubviews];
  backgroundView = self->_backgroundView;
  view = [(PRWidgetIconViewController *)self view];
  [view bounds];
  [(UIView *)backgroundView setFrame:?];

  metrics = [(CHUISWidgetHostViewController *)self->_widgetHostViewController metrics];
  [metrics size];
  v7 = v6;
  v9 = v8;

  view2 = [(CHUISWidgetHostViewController *)self->_widgetHostViewController view];
  [view2 setFrame:{0.0, 0.0, v7, v9}];
}

- (CHUISWidgetHostViewController)widgetHostViewController
{
  [(PRWidgetIconViewController *)self loadViewIfNeeded];
  widgetHostViewController = self->_widgetHostViewController;

  return widgetHostViewController;
}

- (void)setUseMaterialBackground:(BOOL)background
{
  if (self->_useMaterialBackground != background)
  {
    self->_useMaterialBackground = background;
    [(PRWidgetIconViewController *)self _recreateBackgroundView];
    viewIfLoaded = [(PRWidgetIconViewController *)self viewIfLoaded];
    backgroundView = self->_backgroundView;
    view = [(CHUISWidgetHostViewController *)self->_widgetHostViewController view];
    [viewIfLoaded insertSubview:backgroundView belowSubview:view];
  }
}

- (void)_recreateBackgroundView
{
  [(UIView *)self->_backgroundView removeFromSuperview];
  if (self->_useMaterialBackground)
  {
    v3 = [MEMORY[0x1E69AE158] materialViewWithRecipe:101];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(UIView *)v3 setGroupNameBase:v5];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  }

  backgroundView = self->_backgroundView;
  self->_backgroundView = v3;

  [(UIView *)self->_backgroundView _setContinuousCornerRadius:self->_iconImageInfo.continuousCornerRadius];
  [(PRWidgetIconViewController *)self _updatePlatterStylingIfNeeded];

  [(PRWidgetIconViewController *)self _updateBackgroundViewAlpha];
}

- (id)_platterVisualStylingProvider
{
  platterVisualStylingProvider = self->_platterVisualStylingProvider;
  if (!platterVisualStylingProvider)
  {
    traitCollection = [(PRWidgetIconViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    v6 = @"widgetGalleryPlatterLight";
    if (userInterfaceStyle == 2)
    {
      v6 = @"widgetGalleryPlatterDark";
    }

    v7 = v6;

    v8 = MEMORY[0x1E69AE170];
    v9 = PRBundle();
    v10 = [v8 _visualStylingProviderForStyleSetNamed:v7 inBundle:v9];

    v11 = self->_platterVisualStylingProvider;
    self->_platterVisualStylingProvider = v10;

    platterVisualStylingProvider = self->_platterVisualStylingProvider;
  }

  return platterVisualStylingProvider;
}

- (void)_updatePlatterStylingIfNeeded
{
  if (!self->_useMaterialBackground)
  {
    [(UIView *)self->_backgroundView mt_removeAllVisualStyling];
    backgroundView = self->_backgroundView;
    _platterVisualStylingProvider = [(PRWidgetIconViewController *)self _platterVisualStylingProvider];
    v5 = [_platterVisualStylingProvider _visualStylingForStyle:0];
    [(UIView *)backgroundView mt_replaceVisualStyling:v5];
  }
}

- (void)setBackgroundHidden:(BOOL)hidden
{
  if (self->_backgroundHidden != hidden)
  {
    self->_backgroundHidden = hidden;
    if (!self->_backgroundView)
    {
      [(PRWidgetIconViewController *)self _recreateBackgroundView];
      viewIfLoaded = [(PRWidgetIconViewController *)self viewIfLoaded];
      backgroundView = self->_backgroundView;
      view = [(CHUISWidgetHostViewController *)self->_widgetHostViewController view];
      [viewIfLoaded insertSubview:backgroundView belowSubview:view];
    }

    [(PRWidgetIconViewController *)self _updateBackgroundViewAlpha];
  }
}

- (void)setWidgetInteractionDisabled:(BOOL)disabled
{
  if (self->_widgetInteractionDisabled != disabled)
  {
    self->_widgetInteractionDisabled = disabled;
    [(CHUISWidgetHostViewController *)self->_widgetHostViewController setInteractionDisabled:?];
  }
}

- (void)setConfigureForSnapshotting:(BOOL)snapshotting
{
  if (self->_configureForSnapshotting != snapshotting)
  {
    self->_configureForSnapshotting = snapshotting;
    [(PRWidgetIconViewController *)self _updateWidgetHostViewController];
  }
}

- (void)_updateBackgroundViewAlpha
{
  isBackgroundHidden = [(PRWidgetIconViewController *)self isBackgroundHidden];
  v4 = 1.0;
  if (isBackgroundHidden)
  {
    v4 = 0.0;
  }

  backgroundView = self->_backgroundView;

  [(UIView *)backgroundView setAlpha:v4];
}

- (void)setVibrancyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration isEqual:?]& 1) == 0)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [configurationCopy copyWithGroupName:v5];
    vibrancyConfiguration = self->_vibrancyConfiguration;
    self->_vibrancyConfiguration = v6;

    widgetHostViewController = [(PRWidgetIconViewController *)self widgetHostViewController];
    [widgetHostViewController setVibrancyConfiguration:self->_vibrancyConfiguration];
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if ((SBIconImageInfoEqualToIconImageInfo() & 1) == 0)
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;
    backgroundView = self->_backgroundView;

    [(UIView *)backgroundView _setContinuousCornerRadius:v7];
  }
}

- (void)_tapRecognized:(id)recognized
{
  delegate = [(PRWidgetIconViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PRWidgetIconViewController *)self delegate];
    [delegate2 widgetIconViewControllerDidReceiveTap:self];
  }
}

- (void)setWidgetPresentationMode:(unint64_t)mode
{
  if (self->_widgetPresentationMode != mode)
  {
    self->_widgetPresentationMode = mode;
    [(CHUISWidgetHostViewController *)self->_widgetHostViewController setPresentationMode:?];
  }
}

- (void)updateIntent:(id)intent
{
  intentCopy = intent;
  widget = [(CHUISWidgetHostViewController *)self->_widgetHostViewController widget];
  intentReference = [widget intentReference];
  intent = [intentReference intent];

  if ((BSEqualObjects() & 1) == 0)
  {
    v7 = [(PRComplicationDescriptor *)self->_complicationDescriptor copyWithIntent:intentCopy];
    complicationDescriptor = self->_complicationDescriptor;
    self->_complicationDescriptor = v7;
    v9 = v7;

    v10 = [widget widgetByReplacingIntent:intent];
    [(CHUISWidgetHostViewController *)self->_widgetHostViewController setWidget:v10];
  }
}

- (id)createPreviewView
{
  v2 = [[PRComplicationDragPreviewView alloc] initWithWidgetHostViewController:self->_widgetHostViewController];

  return v2;
}

- (void)beginCancellingTouches
{
  cancelTouchesForCurrentEventInHostedContent = [(CHUISWidgetHostViewController *)self->_widgetHostViewController cancelTouchesForCurrentEventInHostedContent];
  if (cancelTouchesForCurrentEventInHostedContent)
  {
    obj = cancelTouchesForCurrentEventInHostedContent;
    [(BSInvalidatable *)self->_cancelTouchesAssertion invalidate];
    objc_storeStrong(&self->_cancelTouchesAssertion, obj);
    cancelTouchesForCurrentEventInHostedContent = obj;
  }
}

- (void)widgetHostViewController:(id)controller requestsLaunch:(id)launch
{
  launchCopy = launch;
  delegate = [(PRWidgetIconViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(PRWidgetIconViewController *)self delegate];
    launchAction = [launchCopy launchAction];
    [delegate2 widgetIconViewController:self requestsLaunchWithAction:launchAction];
  }
}

- (CGRect)visibleBounds
{
  x = self->_visibleBounds.origin.x;
  y = self->_visibleBounds.origin.y;
  width = self->_visibleBounds.size.width;
  height = self->_visibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PRWidgetIconViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end