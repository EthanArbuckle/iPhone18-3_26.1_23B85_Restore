@interface PRWidgetIconViewController
- (CGRect)visibleBounds;
- (CHUISWidgetHostViewController)widgetHostViewController;
- (NSString)description;
- (PRWidgetIconViewController)initWithComplicationDescriptor:(id)a3 contentType:(unint64_t)a4 presentationMode:(unint64_t)a5;
- (PRWidgetIconViewController)initWithComplicationDescriptor:(id)a3 contentType:(unint64_t)a4 presentationMode:(unint64_t)a5 delegate:(id)a6;
- (PRWidgetIconViewControllerDelegate)delegate;
- (id)_platterVisualStylingProvider;
- (id)createPreviewView;
- (void)_recreateBackgroundView;
- (void)_tapRecognized:(id)a3;
- (void)_updateBackgroundViewAlpha;
- (void)_updatePlatterStylingIfNeeded;
- (void)_updateWidgetHostViewController;
- (void)beginCancellingTouches;
- (void)dealloc;
- (void)invalidate;
- (void)setBackgroundHidden:(BOOL)a3;
- (void)setConfigureForSnapshotting:(BOOL)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setUseMaterialBackground:(BOOL)a3;
- (void)setVibrancyConfiguration:(id)a3;
- (void)setWidgetInteractionDisabled:(BOOL)a3;
- (void)setWidgetPresentationMode:(unint64_t)a3;
- (void)updateIntent:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)widgetHostViewController:(id)a3 requestsLaunch:(id)a4;
@end

@implementation PRWidgetIconViewController

- (PRWidgetIconViewController)initWithComplicationDescriptor:(id)a3 contentType:(unint64_t)a4 presentationMode:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PRWidgetIconViewController;
  v10 = [(PRWidgetIconViewController *)&v13 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_complicationDescriptor, a3);
    v11->_contentType = a4;
    v11->_widgetPresentationMode = a5;
    v11->_backgroundHidden = 1;
    v11->_useMaterialBackground = 1;
  }

  return v11;
}

- (PRWidgetIconViewController)initWithComplicationDescriptor:(id)a3 contentType:(unint64_t)a4 presentationMode:(unint64_t)a5 delegate:(id)a6
{
  v10 = a6;
  v11 = [(PRWidgetIconViewController *)self initWithComplicationDescriptor:a3 contentType:a4 presentationMode:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v10);
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
    v7 = [(PRWidgetIconViewController *)self view];
    [v7 addSubview:self->_backgroundView];
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
  v12 = [(PRComplicationDescriptor *)self->_complicationDescriptor widget];
  v13 = [v12 extensionBundleIdentifier];
  v14 = [(PRComplicationDescriptor *)self->_complicationDescriptor widget];
  v15 = [v14 kind];
  v16 = [v11 stringWithFormat:@"%@:%@", v13, v15, v27, v28, v29, v30];

  v17 = [(CHUISWidgetHostViewController *)self->_widgetHostViewController view];
  [v17 setAccessibilityIdentifier:v16];

  v18 = [(CHUISWidgetHostViewController *)self->_widgetHostViewController view];
  [v18 setAccessibilityValue:@"Widget"];

  v19 = objc_alloc(MEMORY[0x1E6994428]);
  v20 = [MEMORY[0x1E698E650] blackColor];
  v21 = [v19 initWithPrimaryTintColor:0 secondaryTintColor:v20 filterStyle:1 fallbackFilterStyle:1 fraction:1.0];

  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setTintParameters:v21];
  v22 = self->_widgetHostViewController;
  v23 = [(PRWidgetIconViewController *)self vibrancyConfiguration];
  [(CHUISWidgetHostViewController *)v22 setVibrancyConfiguration:v23];

  v24 = [objc_alloc(MEMORY[0x1E6994420]) initWithRenderingMode:1 backgroundViewPolicy:1];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setRenderScheme:v24];
  [(PRWidgetIconViewController *)self bs_addChildViewController:self->_widgetHostViewController];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setCanAppearInSecureEnvironment:1];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setShouldShareTouchesWithHost:1];
  [(CHUISWidgetHostViewController *)self->_widgetHostViewController setPresentationMode:self->_widgetPresentationMode];
  v25 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapRecognized_];
  v26 = [(PRWidgetIconViewController *)self view];
  [v26 addGestureRecognizer:v25];

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
  v4 = [(PRWidgetIconViewController *)self complicationDescriptor];
  v5 = [v3 appendObject:v4 withName:@"complicationDescriptor"];

  if ([(CHUISWidgetHostViewController *)self->_widgetHostViewController isViewLoaded])
  {
    [(CHUISWidgetHostViewController *)self->_widgetHostViewController presentationMode];
    v6 = NSStringFromCHUISWidgetPresentationMode();
    v7 = [v3 appendObject:v6 withName:@"presentationMode"];
  }

  v8 = [v3 appendObject:self->_widgetHostViewController withName:@"widgetHostViewController" skipIfNil:1];
  v9 = [v3 build];

  return v9;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = PRWidgetIconViewController;
  [(PRWidgetIconViewController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
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
  v4 = [(PRWidgetIconViewController *)self view];
  [v4 bounds];
  [(UIView *)backgroundView setFrame:?];

  v5 = [(CHUISWidgetHostViewController *)self->_widgetHostViewController metrics];
  [v5 size];
  v7 = v6;
  v9 = v8;

  v10 = [(CHUISWidgetHostViewController *)self->_widgetHostViewController view];
  [v10 setFrame:{0.0, 0.0, v7, v9}];
}

- (CHUISWidgetHostViewController)widgetHostViewController
{
  [(PRWidgetIconViewController *)self loadViewIfNeeded];
  widgetHostViewController = self->_widgetHostViewController;

  return widgetHostViewController;
}

- (void)setUseMaterialBackground:(BOOL)a3
{
  if (self->_useMaterialBackground != a3)
  {
    self->_useMaterialBackground = a3;
    [(PRWidgetIconViewController *)self _recreateBackgroundView];
    v7 = [(PRWidgetIconViewController *)self viewIfLoaded];
    backgroundView = self->_backgroundView;
    v6 = [(CHUISWidgetHostViewController *)self->_widgetHostViewController view];
    [v7 insertSubview:backgroundView belowSubview:v6];
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
    v4 = [(PRWidgetIconViewController *)self traitCollection];
    v5 = [v4 userInterfaceStyle];
    v6 = @"widgetGalleryPlatterLight";
    if (v5 == 2)
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
    v6 = [(PRWidgetIconViewController *)self _platterVisualStylingProvider];
    v5 = [v6 _visualStylingForStyle:0];
    [(UIView *)backgroundView mt_replaceVisualStyling:v5];
  }
}

- (void)setBackgroundHidden:(BOOL)a3
{
  if (self->_backgroundHidden != a3)
  {
    self->_backgroundHidden = a3;
    if (!self->_backgroundView)
    {
      [(PRWidgetIconViewController *)self _recreateBackgroundView];
      v5 = [(PRWidgetIconViewController *)self viewIfLoaded];
      backgroundView = self->_backgroundView;
      v7 = [(CHUISWidgetHostViewController *)self->_widgetHostViewController view];
      [v5 insertSubview:backgroundView belowSubview:v7];
    }

    [(PRWidgetIconViewController *)self _updateBackgroundViewAlpha];
  }
}

- (void)setWidgetInteractionDisabled:(BOOL)a3
{
  if (self->_widgetInteractionDisabled != a3)
  {
    self->_widgetInteractionDisabled = a3;
    [(CHUISWidgetHostViewController *)self->_widgetHostViewController setInteractionDisabled:?];
  }
}

- (void)setConfigureForSnapshotting:(BOOL)a3
{
  if (self->_configureForSnapshotting != a3)
  {
    self->_configureForSnapshotting = a3;
    [(PRWidgetIconViewController *)self _updateWidgetHostViewController];
  }
}

- (void)_updateBackgroundViewAlpha
{
  v3 = [(PRWidgetIconViewController *)self isBackgroundHidden];
  v4 = 1.0;
  if (v3)
  {
    v4 = 0.0;
  }

  backgroundView = self->_backgroundView;

  [(UIView *)backgroundView setAlpha:v4];
}

- (void)setVibrancyConfiguration:(id)a3
{
  v9 = a3;
  if (([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration isEqual:?]& 1) == 0)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v9 copyWithGroupName:v5];
    vibrancyConfiguration = self->_vibrancyConfiguration;
    self->_vibrancyConfiguration = v6;

    v8 = [(PRWidgetIconViewController *)self widgetHostViewController];
    [v8 setVibrancyConfiguration:self->_vibrancyConfiguration];
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
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

- (void)_tapRecognized:(id)a3
{
  v4 = [(PRWidgetIconViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PRWidgetIconViewController *)self delegate];
    [v6 widgetIconViewControllerDidReceiveTap:self];
  }
}

- (void)setWidgetPresentationMode:(unint64_t)a3
{
  if (self->_widgetPresentationMode != a3)
  {
    self->_widgetPresentationMode = a3;
    [(CHUISWidgetHostViewController *)self->_widgetHostViewController setPresentationMode:?];
  }
}

- (void)updateIntent:(id)a3
{
  v11 = a3;
  v4 = [(CHUISWidgetHostViewController *)self->_widgetHostViewController widget];
  v5 = [v4 intentReference];
  v6 = [v5 intent];

  if ((BSEqualObjects() & 1) == 0)
  {
    v7 = [(PRComplicationDescriptor *)self->_complicationDescriptor copyWithIntent:v11];
    complicationDescriptor = self->_complicationDescriptor;
    self->_complicationDescriptor = v7;
    v9 = v7;

    v10 = [v4 widgetByReplacingIntent:v6];
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
  v3 = [(CHUISWidgetHostViewController *)self->_widgetHostViewController cancelTouchesForCurrentEventInHostedContent];
  if (v3)
  {
    obj = v3;
    [(BSInvalidatable *)self->_cancelTouchesAssertion invalidate];
    objc_storeStrong(&self->_cancelTouchesAssertion, obj);
    v3 = obj;
  }
}

- (void)widgetHostViewController:(id)a3 requestsLaunch:(id)a4
{
  v9 = a4;
  v5 = [(PRWidgetIconViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PRWidgetIconViewController *)self delegate];
    v8 = [v9 launchAction];
    [v7 widgetIconViewController:self requestsLaunchWithAction:v8];
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