@interface SBHWidgetStyleManager
- (BOOL)_shouldBoostWhitePoint;
- (BOOL)needsGradientBackground;
- (SBHIconImageStyleConfiguration)imageStyleConfiguration;
- (SBHWidgetStyleManager)initWithWidgetViewController:(id)controller widgetDataSource:(id)source gridSizeClass:(id)class iconImageInfo:(SBIconImageInfo *)info delegate:(id)delegate;
- (SBHWidgetStyleManagerDelegate)delegate;
- (id)backdropGroupName;
- (id)displayedIconImageAppearance;
- (id)effectiveWidgetViewController;
- (id)imageAppearance;
- (id)makeBackgroundViewForType:(int64_t)type frame:(CGRect)frame;
- (id)succinctDescription;
- (id)widgetHostViewController;
- (int64_t)userInterfaceStyle;
- (void)_updateBackgroundViewForBackgroundType:(int64_t)type;
- (void)appendDescriptionToStream:(id)stream;
- (void)dealloc;
- (void)setAllowsGlassGrouping:(BOOL)grouping;
- (void)setOverrideIconImageAppearance:(id)appearance;
- (void)setOverrideIconImageStyleConfiguration:(id)configuration;
- (void)updateConfiguration;
@end

@implementation SBHWidgetStyleManager

- (void)updateConfiguration
{
  delegate = [(SBHWidgetStyleManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate widgetStyleManagerShouldDelayConfiguration:self] & 1) == 0)
  {
    effectiveWidgetViewController = [(SBHWidgetStyleManager *)self effectiveWidgetViewController];
    widgetHostViewController = [(SBHWidgetStyleManager *)self widgetHostViewController];
    sbh_customDisplayConfiguration = [widgetHostViewController sbh_customDisplayConfiguration];
    imageStyleConfiguration = [(SBHWidgetStyleManager *)self imageStyleConfiguration];
    userInterfaceStyle = [(SBHWidgetStyleManager *)self userInterfaceStyle];
    v41 = effectiveWidgetViewController;
    if (sbh_customDisplayConfiguration)
    {
      colorScheme = [sbh_customDisplayConfiguration colorScheme];
      v9 = 1;
    }

    else
    {
      v9 = userInterfaceStyle;
      variant = [imageStyleConfiguration variant];
      v11 = 2;
      if (variant != 1)
      {
        v11 = variant == 0;
      }

      colorScheme = v11;
    }

    v45 = imageStyleConfiguration;
    v34 = v9;
    v12 = [imageStyleConfiguration widgetAppearanceWithUserInterfaceStyle:v9];
    appearanceType = [v12 appearanceType];
    tintColor = [v12 tintColor];
    widgetDataSource = [(SBHWidgetStyleManager *)self widgetDataSource];
    gridSizeClass = [(SBHWidgetStyleManager *)self gridSizeClass];
    sbh_widgetExtensionProvider = [widgetHostViewController sbh_widgetExtensionProvider];
    backdropGroupName = [(SBHWidgetStyleManager *)self backdropGroupName];
    v17 = [SBHWidgetIconStyleConfiguration alloc];
    v40 = backdropGroupName;
    LOBYTE(v33) = [(SBHWidgetStyleManager *)self _shouldBoostWhitePoint];
    v43 = gridSizeClass;
    v44 = widgetDataSource;
    v42 = sbh_widgetExtensionProvider;
    v18 = v12;
    v19 = v41;
    v20 = [SBHWidgetIconStyleConfiguration initWithWidgetDataSource:v17 gridSizeClass:"initWithWidgetDataSource:gridSizeClass:widgetViewController:widgetExtensionProvider:imageAppearance:customDisplayConfiguration:boostsWhitePoint:backdropGroupName:" widgetViewController:widgetDataSource widgetExtensionProvider:gridSizeClass imageAppearance:v33 customDisplayConfiguration:backdropGroupName boostsWhitePoint:? backdropGroupName:?];
    widgetIconStyleConfiguration = [(SBHWidgetStyleManager *)self widgetIconStyleConfiguration];
    displayedIconImageAppearance = [(SBHWidgetStyleManager *)self displayedIconImageAppearance];
    if ([(SBHWidgetIconStyleConfiguration *)v20 isEqualToWidgetIconStyleConfiguration:widgetIconStyleConfiguration]&& (BSEqualObjects() & 1) != 0)
    {
      goto LABEL_32;
    }

    v35 = displayedIconImageAppearance;
    v36 = sbh_customDisplayConfiguration;
    v23 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v41 tintWithHomeScreenTintColor:{objc_msgSend(tintColor, "CGColor")}];
      if (objc_opt_respondsToSelector())
      {
        [v41 setWidgetStyleToClear:{objc_msgSend(v45, "configurationType") == 1}];
      }

      if (!widgetHostViewController)
      {
        goto LABEL_18;
      }
    }

    else if (!widgetHostViewController)
    {
      [v41 setOverrideUserInterfaceStyle:v34];
LABEL_18:
      v38 = widgetHostViewController;
      imageAppearance = [widgetIconStyleConfiguration imageAppearance];
      appearanceType2 = [imageAppearance appearanceType];
      backgroundType = [(SBHWidgetIconStyleConfiguration *)v20 backgroundType];
      backgroundType2 = [widgetIconStyleConfiguration backgroundType];
      shouldBoostWhitePoint = [(SBHWidgetIconStyleConfiguration *)v20 shouldBoostWhitePoint];
      shouldBoostWhitePoint2 = [widgetIconStyleConfiguration shouldBoostWhitePoint];
      if (backgroundType != backgroundType2 || appearanceType != appearanceType2 || shouldBoostWhitePoint != shouldBoostWhitePoint2)
      {
        [(SBHWidgetStyleManager *)self _updateBackgroundViewForBackgroundType:backgroundType];
      }

      appropriateColorFilter = [(SBHWidgetIconStyleConfiguration *)v20 appropriateColorFilter];
      appropriateColorFilter2 = [widgetIconStyleConfiguration appropriateColorFilter];
      v19 = v41;
      displayedIconImageAppearance = v35;
      if ((BSEqualObjects() & 1) == 0)
      {
        if (appropriateColorFilter2 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [delegate widgetStyleManager:self needsToRemoveFilter:appropriateColorFilter2];
        }

        if (appropriateColorFilter && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [delegate widgetStyleManager:self needsToAddFilter:appropriateColorFilter];
        }
      }

      [(SBHWidgetStyleManager *)self setWidgetIconStyleConfiguration:v20];
      if (objc_opt_respondsToSelector())
      {
        [delegate widgetStyleManagerDidUpdateConfiguration:self];
      }

      sbh_customDisplayConfiguration = v36;
      widgetHostViewController = v38;
LABEL_32:

      goto LABEL_33;
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __44__SBHWidgetStyleManager_updateConfiguration__block_invoke;
    v47[3] = &unk_1E808B200;
    v48 = widgetHostViewController;
    v51 = colorScheme;
    v49 = v20;
    selfCopy = self;
    [v48 performBatchUpdate:v47];

    goto LABEL_18;
  }

LABEL_33:
}

- (id)effectiveWidgetViewController
{
  widgetViewController = [(SBHWidgetStyleManager *)self widgetViewController];
  if ([widgetViewController sbh_isMultiplexingViewController])
  {
    multiplexedViewController = [widgetViewController multiplexedViewController];

    widgetViewController = multiplexedViewController;
  }

  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentViewController = [widgetViewController contentViewController];

    widgetViewController = contentViewController;
  }

  return widgetViewController;
}

- (id)widgetHostViewController
{
  effectiveWidgetViewController = [(SBHWidgetStyleManager *)self effectiveWidgetViewController];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = effectiveWidgetViewController;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBHIconImageStyleConfiguration)imageStyleConfiguration
{
  overrideIconImageAppearance = [(SBHWidgetStyleManager *)self overrideIconImageAppearance];
  overrideIconImageStyleConfiguration = [(SBHWidgetStyleManager *)self overrideIconImageStyleConfiguration];
  widgetViewController = [(SBHWidgetStyleManager *)self widgetViewController];
  traitCollection = [widgetViewController traitCollection];
  v7 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:traitCollection overrideIconImageAppearance:overrideIconImageAppearance overrideIconImageStyleConfiguration:overrideIconImageStyleConfiguration];

  return v7;
}

- (int64_t)userInterfaceStyle
{
  widgetViewController = [(SBHWidgetStyleManager *)self widgetViewController];
  traitCollection = [widgetViewController traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle;
}

- (SBHWidgetStyleManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)imageAppearance
{
  userInterfaceStyle = [(SBHWidgetStyleManager *)self userInterfaceStyle];
  imageStyleConfiguration = [(SBHWidgetStyleManager *)self imageStyleConfiguration];
  v5 = [imageStyleConfiguration widgetAppearanceWithUserInterfaceStyle:userInterfaceStyle];

  return v5;
}

- (SBHWidgetStyleManager)initWithWidgetViewController:(id)controller widgetDataSource:(id)source gridSizeClass:(id)class iconImageInfo:(SBIconImageInfo *)info delegate:(id)delegate
{
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  v48[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  sourceCopy = source;
  classCopy = class;
  infoCopy = info;
  v47.receiver = self;
  v47.super_class = SBHWidgetStyleManager;
  v22 = [(SBHWidgetStyleManager *)&v47 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_widgetViewController, controller);
    objc_storeStrong(&v23->_widgetDataSource, source);
    v24 = [classCopy copy];
    gridSizeClass = v23->_gridSizeClass;
    v23->_gridSizeClass = v24;

    v23->_iconImageInfo.size.width = v15;
    v23->_iconImageInfo.size.height = v14;
    v23->_iconImageInfo.scale = v13;
    v23->_iconImageInfo.continuousCornerRadius = v12;
    objc_storeWeak(&v23->_delegate, infoCopy);
    v23->_allowsGlassGrouping = 1;
    [(SBHWidgetStyleManager *)v23 updateConfiguration];
    widgetHostViewController = [(SBHWidgetStyleManager *)v23 widgetHostViewController];
    [widgetHostViewController sbh_addObserver:v23];
    v27 = objc_opt_self();
    v48[0] = v27;
    v28 = objc_opt_self();
    v48[1] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v30 = [controllerCopy registerForTraitChanges:v29 withTarget:v23 action:sel_updateConfiguration];

    objc_initWeak(&location, v23);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __108__SBHWidgetStyleManager_initWithWidgetViewController_widgetDataSource_gridSizeClass_iconImageInfo_delegate___block_invoke;
    v44[3] = &unk_1E808C6F0;
    objc_copyWeak(&v45, &location);
    v33 = [defaultCenter addObserverForName:@"SBHIconManagerWillPresentStyleEditingSheetNotification" object:0 queue:mainQueue usingBlock:v44];
    sheetPresentedNotificationObserver = v23->_sheetPresentedNotificationObserver;
    v23->_sheetPresentedNotificationObserver = v33;

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue2 = [MEMORY[0x1E696ADC8] mainQueue];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __108__SBHWidgetStyleManager_initWithWidgetViewController_widgetDataSource_gridSizeClass_iconImageInfo_delegate___block_invoke_2;
    v42[3] = &unk_1E808C6F0;
    objc_copyWeak(&v43, &location);
    v37 = [defaultCenter2 addObserverForName:@"SBHIconManagerDidDismissStyleEditingSheetNotification" object:0 queue:mainQueue2 usingBlock:v42];
    sheetDismissedNotificationObserver = v23->_sheetDismissedNotificationObserver;
    v23->_sheetDismissedNotificationObserver = v37;

    objc_destroyWeak(&v43);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  return v23;
}

void __108__SBHWidgetStyleManager_initWithWidgetViewController_widgetDataSource_gridSizeClass_iconImageInfo_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[24] = 1;
  }
}

void __108__SBHWidgetStyleManager_initWithWidgetViewController_widgetDataSource_gridSizeClass_iconImageInfo_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[24] = 0;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_sheetPresentedNotificationObserver];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self->_sheetDismissedNotificationObserver];

  v5.receiver = self;
  v5.super_class = SBHWidgetStyleManager;
  [(SBHWidgetStyleManager *)&v5 dealloc];
}

- (BOOL)needsGradientBackground
{
  widgetIconStyleConfiguration = [(SBHWidgetStyleManager *)self widgetIconStyleConfiguration];
  v3 = [widgetIconStyleConfiguration backgroundType] == 2;

  return v3;
}

- (id)backdropGroupName
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  widgetDataSource = [(SBHWidgetStyleManager *)self widgetDataSource];
  uniqueIdentifier = [widgetDataSource uniqueIdentifier];
  v6 = [v3 initWithFormat:@"SBWidget-%@", uniqueIdentifier];

  return v6;
}

- (void)setOverrideIconImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [appearanceCopy copy];
    overrideIconImageAppearance = self->_overrideIconImageAppearance;
    self->_overrideIconImageAppearance = v4;

    [(SBHWidgetStyleManager *)self updateConfiguration];
  }
}

- (void)setOverrideIconImageStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [configurationCopy copy];
    overrideIconImageStyleConfiguration = self->_overrideIconImageStyleConfiguration;
    self->_overrideIconImageStyleConfiguration = v4;

    [(SBHWidgetStyleManager *)self updateConfiguration];
  }
}

- (BOOL)_shouldBoostWhitePoint
{
  widgetViewController = [(SBHWidgetStyleManager *)self widgetViewController];
  traitCollection = [widgetViewController traitCollection];
  v4 = objc_opt_self();
  v5 = [traitCollection valueForNSIntegerTrait:v4];

  if (v5 == 1)
  {
    v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];
    v7 = [v6 isDark] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

void __44__SBHWidgetStyleManager_updateConfiguration__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setColorScheme:*(a1 + 56)];
  v2 = [*(a1 + 40) appropriateWidgetRenderScheme];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v7 = v4;

  v5 = [*(a1 + 40) appropriateWidgetTintParameters];
  [*(a1 + 32) setRenderScheme:v7];
  v6 = *(*(a1 + 48) + 24) == 1 && [*(a1 + 32) presentationMode] == 2;
  [*(a1 + 32) setTintParameters:v5 fencingAnimations:v6];
}

- (id)displayedIconImageAppearance
{
  widgetHostViewController = [(SBHWidgetStyleManager *)self widgetHostViewController];
  tintParameters = [widgetHostViewController tintParameters];
  userInterfaceStyle = [(SBHWidgetStyleManager *)self userInterfaceStyle];
  if (!tintParameters)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v6 = userInterfaceStyle;
  filterStyle = [tintParameters filterStyle];
  if (filterStyle <= 4)
  {
    if (filterStyle == 3)
    {
      v8 = +[SBHIconImageAppearance clearLightAppearance];
      goto LABEL_12;
    }

    if (filterStyle == 4)
    {
      v8 = +[SBHIconImageAppearance clearDarkAppearance];
LABEL_12:
      v9 = v8;
      goto LABEL_15;
    }

LABEL_10:
    v8 = [SBHIconImageAppearance colorAppearanceForUserInterfaceStyle:v6];
    goto LABEL_12;
  }

  if (filterStyle == 5)
  {
    primaryTintColor = [tintParameters primaryTintColor];
    uIColor = [primaryTintColor UIColor];
    v12 = [SBHIconImageAppearance tintedLightAppearanceWithTintColor:uIColor];
  }

  else
  {
    if (filterStyle != 6)
    {
      goto LABEL_10;
    }

    primaryTintColor = [tintParameters primaryTintColor];
    uIColor = [primaryTintColor UIColor];
    v12 = [SBHIconImageAppearance tintedDarkAppearanceWithTintColor:uIColor];
  }

  v9 = v12;

LABEL_15:

  return v9;
}

- (id)makeBackgroundViewForType:(int64_t)type frame:(CGRect)frame
{
  continuousCornerRadius = self->_iconImageInfo.continuousCornerRadius;
  if (type == 1)
  {
    v7 = [(SBHWidgetStyleManager *)self imageAppearance:frame.origin.x];
    v8 = [MEMORY[0x1E69DD1B8] sbh_userInterfaceStyleForIconImageAppearance:v7];
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__24;
    v22 = __Block_byref_object_dispose__24;
    v23 = 0;
    v9 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__SBHWidgetStyleManager_makeBackgroundViewForType_frame___block_invoke;
    v12[3] = &unk_1E8091340;
    v15 = &v18;
    v16 = continuousCornerRadius;
    v10 = v7;
    v17 = v8;
    v13 = v10;
    selfCopy = self;
    [v9 performWithoutAnimation:v12];
    continuousCornerRadius = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  else if (type == 2)
  {
    continuousCornerRadius = [SBHWidgetContainerViewController buildGradientBackgroundViewWithFrame:frame.origin.x continuousCornerRadius:frame.origin.y, frame.size.width, frame.size.height, continuousCornerRadius];
  }

  else
  {
    continuousCornerRadius = 0;
  }

  return continuousCornerRadius;
}

void __57__SBHWidgetStyleManager_makeBackgroundViewForType_frame___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 48) + 8) + 40) _setContinuousCornerRadius:*(a1 + 56)];
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = [*(a1 + 32) tintColor];
  [v5 sbh_applyWidgetGlassWithTintColor:v6 userInterfaceStyle:*(a1 + 64) allowingGrouping:objc_msgSend(*(a1 + 40) boostsWhitePoint:{"allowsGlassGrouping"), objc_msgSend(*(a1 + 40), "_shouldBoostWhitePoint")}];

  v7 = *(a1 + 40);
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = [v7 backdropGroupName];
  [v8 sbh_backdropGroupName:v9];
}

- (void)setAllowsGlassGrouping:(BOOL)grouping
{
  if (self->_allowsGlassGrouping != grouping)
  {
    self->_allowsGlassGrouping = grouping;
    backgroundView = [(SBHWidgetStyleManager *)self backgroundView];

    if (backgroundView)
    {
      widgetIconStyleConfiguration = [(SBHWidgetStyleManager *)self widgetIconStyleConfiguration];
      -[SBHWidgetStyleManager _updateBackgroundViewForBackgroundType:](self, "_updateBackgroundViewForBackgroundType:", [widgetIconStyleConfiguration backgroundType]);
    }
  }
}

- (void)_updateBackgroundViewForBackgroundType:(int64_t)type
{
  backgroundView = [(SBHWidgetStyleManager *)self backgroundView];
  delegate = [(SBHWidgetStyleManager *)self delegate];
  if (backgroundView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate widgetStyleManager:self needsToRemoveBackgroundView:backgroundView];
  }

  widgetHostViewController = [(SBHWidgetStyleManager *)self widgetHostViewController];
  view = [widgetHostViewController view];

  [view bounds];
  v8 = [(SBHWidgetStyleManager *)self makeBackgroundViewForType:type frame:?];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate widgetStyleManager:self needsToAddBackgroundView:v8];
  }

  [(SBHWidgetStyleManager *)self setBackgroundView:v8];
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SBHWidgetStyleManager_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

void __51__SBHWidgetStyleManager_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) widgetViewController];
  v4 = [v2 appendObject:v3 withName:@"widgetViewController"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) widgetDataSource];
  v7 = [v5 appendObject:v6 withName:@"widgetDataSource"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) gridSizeClass];
  v10 = [v8 appendObject:v9 withName:@"gridSizeClass"];

  v11 = *(a1 + 32);
  [*(a1 + 40) iconImageInfo];
  v16 = SBHStringForIconImageInfo(v12, v13, v14, v15);
  v17 = [v11 appendObject:v16 withName:@"iconImageInfo"];

  v18 = *(a1 + 32);
  v19 = [*(a1 + 40) imageAppearance];
  v20 = [v18 appendObject:v19 withName:@"imageAppearance"];

  v21 = *(a1 + 32);
  v22 = [*(a1 + 40) overrideIconImageAppearance];
  v23 = [v21 appendObject:v22 withName:@"overrideIconImageAppearance" skipIfNil:1];

  v24 = *(a1 + 32);
  v26 = [*(a1 + 40) overrideIconImageStyleConfiguration];
  v25 = [v24 appendObject:v26 withName:@"overrideIconImageStyleConfiguration" skipIfNil:1];
}

@end