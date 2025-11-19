@interface SBHWidgetStyleManager
- (BOOL)_shouldBoostWhitePoint;
- (BOOL)needsGradientBackground;
- (SBHIconImageStyleConfiguration)imageStyleConfiguration;
- (SBHWidgetStyleManager)initWithWidgetViewController:(id)a3 widgetDataSource:(id)a4 gridSizeClass:(id)a5 iconImageInfo:(SBIconImageInfo *)a6 delegate:(id)a7;
- (SBHWidgetStyleManagerDelegate)delegate;
- (id)backdropGroupName;
- (id)displayedIconImageAppearance;
- (id)effectiveWidgetViewController;
- (id)imageAppearance;
- (id)makeBackgroundViewForType:(int64_t)a3 frame:(CGRect)a4;
- (id)succinctDescription;
- (id)widgetHostViewController;
- (int64_t)userInterfaceStyle;
- (void)_updateBackgroundViewForBackgroundType:(int64_t)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)dealloc;
- (void)setAllowsGlassGrouping:(BOOL)a3;
- (void)setOverrideIconImageAppearance:(id)a3;
- (void)setOverrideIconImageStyleConfiguration:(id)a3;
- (void)updateConfiguration;
@end

@implementation SBHWidgetStyleManager

- (void)updateConfiguration
{
  v3 = [(SBHWidgetStyleManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 widgetStyleManagerShouldDelayConfiguration:self] & 1) == 0)
  {
    v4 = [(SBHWidgetStyleManager *)self effectiveWidgetViewController];
    v5 = [(SBHWidgetStyleManager *)self widgetHostViewController];
    v6 = [v5 sbh_customDisplayConfiguration];
    v7 = [(SBHWidgetStyleManager *)self imageStyleConfiguration];
    v8 = [(SBHWidgetStyleManager *)self userInterfaceStyle];
    v41 = v4;
    if (v6)
    {
      v37 = [v6 colorScheme];
      v9 = 1;
    }

    else
    {
      v9 = v8;
      v10 = [v7 variant];
      v11 = 2;
      if (v10 != 1)
      {
        v11 = v10 == 0;
      }

      v37 = v11;
    }

    v45 = v7;
    v34 = v9;
    v12 = [v7 widgetAppearanceWithUserInterfaceStyle:v9];
    v39 = [v12 appearanceType];
    v46 = [v12 tintColor];
    v13 = [(SBHWidgetStyleManager *)self widgetDataSource];
    v14 = [(SBHWidgetStyleManager *)self gridSizeClass];
    v15 = [v5 sbh_widgetExtensionProvider];
    v16 = [(SBHWidgetStyleManager *)self backdropGroupName];
    v17 = [SBHWidgetIconStyleConfiguration alloc];
    v40 = v16;
    LOBYTE(v33) = [(SBHWidgetStyleManager *)self _shouldBoostWhitePoint];
    v43 = v14;
    v44 = v13;
    v42 = v15;
    v18 = v12;
    v19 = v41;
    v20 = [SBHWidgetIconStyleConfiguration initWithWidgetDataSource:v17 gridSizeClass:"initWithWidgetDataSource:gridSizeClass:widgetViewController:widgetExtensionProvider:imageAppearance:customDisplayConfiguration:boostsWhitePoint:backdropGroupName:" widgetViewController:v13 widgetExtensionProvider:v14 imageAppearance:v33 customDisplayConfiguration:v16 boostsWhitePoint:? backdropGroupName:?];
    v21 = [(SBHWidgetStyleManager *)self widgetIconStyleConfiguration];
    v22 = [(SBHWidgetStyleManager *)self displayedIconImageAppearance];
    if ([(SBHWidgetIconStyleConfiguration *)v20 isEqualToWidgetIconStyleConfiguration:v21]&& (BSEqualObjects() & 1) != 0)
    {
      goto LABEL_32;
    }

    v35 = v22;
    v36 = v6;
    v23 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v41 tintWithHomeScreenTintColor:{objc_msgSend(v46, "CGColor")}];
      if (objc_opt_respondsToSelector())
      {
        [v41 setWidgetStyleToClear:{objc_msgSend(v45, "configurationType") == 1}];
      }

      if (!v5)
      {
        goto LABEL_18;
      }
    }

    else if (!v5)
    {
      [v41 setOverrideUserInterfaceStyle:v34];
LABEL_18:
      v38 = v5;
      v25 = [v21 imageAppearance];
      v26 = [v25 appearanceType];
      v27 = [(SBHWidgetIconStyleConfiguration *)v20 backgroundType];
      v28 = [v21 backgroundType];
      v29 = [(SBHWidgetIconStyleConfiguration *)v20 shouldBoostWhitePoint];
      v30 = [v21 shouldBoostWhitePoint];
      if (v27 != v28 || v39 != v26 || v29 != v30)
      {
        [(SBHWidgetStyleManager *)self _updateBackgroundViewForBackgroundType:v27];
      }

      v31 = [(SBHWidgetIconStyleConfiguration *)v20 appropriateColorFilter];
      v32 = [v21 appropriateColorFilter];
      v19 = v41;
      v22 = v35;
      if ((BSEqualObjects() & 1) == 0)
      {
        if (v32 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v3 widgetStyleManager:self needsToRemoveFilter:v32];
        }

        if (v31 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v3 widgetStyleManager:self needsToAddFilter:v31];
        }
      }

      [(SBHWidgetStyleManager *)self setWidgetIconStyleConfiguration:v20];
      if (objc_opt_respondsToSelector())
      {
        [v3 widgetStyleManagerDidUpdateConfiguration:self];
      }

      v6 = v36;
      v5 = v38;
LABEL_32:

      goto LABEL_33;
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __44__SBHWidgetStyleManager_updateConfiguration__block_invoke;
    v47[3] = &unk_1E808B200;
    v48 = v5;
    v51 = v37;
    v49 = v20;
    v50 = self;
    [v48 performBatchUpdate:v47];

    goto LABEL_18;
  }

LABEL_33:
}

- (id)effectiveWidgetViewController
{
  v2 = [(SBHWidgetStyleManager *)self widgetViewController];
  if ([v2 sbh_isMultiplexingViewController])
  {
    v3 = [v2 multiplexedViewController];

    v2 = v3;
  }

  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v2 contentViewController];

    v2 = v6;
  }

  return v2;
}

- (id)widgetHostViewController
{
  v2 = [(SBHWidgetStyleManager *)self effectiveWidgetViewController];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBHIconImageStyleConfiguration)imageStyleConfiguration
{
  v3 = [(SBHWidgetStyleManager *)self overrideIconImageAppearance];
  v4 = [(SBHWidgetStyleManager *)self overrideIconImageStyleConfiguration];
  v5 = [(SBHWidgetStyleManager *)self widgetViewController];
  v6 = [v5 traitCollection];
  v7 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:v6 overrideIconImageAppearance:v3 overrideIconImageStyleConfiguration:v4];

  return v7;
}

- (int64_t)userInterfaceStyle
{
  v2 = [(SBHWidgetStyleManager *)self widgetViewController];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  return v4;
}

- (SBHWidgetStyleManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)imageAppearance
{
  v3 = [(SBHWidgetStyleManager *)self userInterfaceStyle];
  v4 = [(SBHWidgetStyleManager *)self imageStyleConfiguration];
  v5 = [v4 widgetAppearanceWithUserInterfaceStyle:v3];

  return v5;
}

- (SBHWidgetStyleManager)initWithWidgetViewController:(id)a3 widgetDataSource:(id)a4 gridSizeClass:(id)a5 iconImageInfo:(SBIconImageInfo *)a6 delegate:(id)a7
{
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  v48[2] = *MEMORY[0x1E69E9840];
  v41 = a3;
  v40 = a4;
  v20 = a5;
  v21 = a6;
  v47.receiver = self;
  v47.super_class = SBHWidgetStyleManager;
  v22 = [(SBHWidgetStyleManager *)&v47 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_widgetViewController, a3);
    objc_storeStrong(&v23->_widgetDataSource, a4);
    v24 = [v20 copy];
    gridSizeClass = v23->_gridSizeClass;
    v23->_gridSizeClass = v24;

    v23->_iconImageInfo.size.width = v15;
    v23->_iconImageInfo.size.height = v14;
    v23->_iconImageInfo.scale = v13;
    v23->_iconImageInfo.continuousCornerRadius = v12;
    objc_storeWeak(&v23->_delegate, v21);
    v23->_allowsGlassGrouping = 1;
    [(SBHWidgetStyleManager *)v23 updateConfiguration];
    v26 = [(SBHWidgetStyleManager *)v23 widgetHostViewController];
    [v26 sbh_addObserver:v23];
    v27 = objc_opt_self();
    v48[0] = v27;
    v28 = objc_opt_self();
    v48[1] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v30 = [v41 registerForTraitChanges:v29 withTarget:v23 action:sel_updateConfiguration];

    objc_initWeak(&location, v23);
    v31 = [MEMORY[0x1E696AD88] defaultCenter];
    v32 = [MEMORY[0x1E696ADC8] mainQueue];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __108__SBHWidgetStyleManager_initWithWidgetViewController_widgetDataSource_gridSizeClass_iconImageInfo_delegate___block_invoke;
    v44[3] = &unk_1E808C6F0;
    objc_copyWeak(&v45, &location);
    v33 = [v31 addObserverForName:@"SBHIconManagerWillPresentStyleEditingSheetNotification" object:0 queue:v32 usingBlock:v44];
    sheetPresentedNotificationObserver = v23->_sheetPresentedNotificationObserver;
    v23->_sheetPresentedNotificationObserver = v33;

    v35 = [MEMORY[0x1E696AD88] defaultCenter];
    v36 = [MEMORY[0x1E696ADC8] mainQueue];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __108__SBHWidgetStyleManager_initWithWidgetViewController_widgetDataSource_gridSizeClass_iconImageInfo_delegate___block_invoke_2;
    v42[3] = &unk_1E808C6F0;
    objc_copyWeak(&v43, &location);
    v37 = [v35 addObserverForName:@"SBHIconManagerDidDismissStyleEditingSheetNotification" object:0 queue:v36 usingBlock:v42];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_sheetPresentedNotificationObserver];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self->_sheetDismissedNotificationObserver];

  v5.receiver = self;
  v5.super_class = SBHWidgetStyleManager;
  [(SBHWidgetStyleManager *)&v5 dealloc];
}

- (BOOL)needsGradientBackground
{
  v2 = [(SBHWidgetStyleManager *)self widgetIconStyleConfiguration];
  v3 = [v2 backgroundType] == 2;

  return v3;
}

- (id)backdropGroupName
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SBHWidgetStyleManager *)self widgetDataSource];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 initWithFormat:@"SBWidget-%@", v5];

  return v6;
}

- (void)setOverrideIconImageAppearance:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    overrideIconImageAppearance = self->_overrideIconImageAppearance;
    self->_overrideIconImageAppearance = v4;

    [(SBHWidgetStyleManager *)self updateConfiguration];
  }
}

- (void)setOverrideIconImageStyleConfiguration:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    overrideIconImageStyleConfiguration = self->_overrideIconImageStyleConfiguration;
    self->_overrideIconImageStyleConfiguration = v4;

    [(SBHWidgetStyleManager *)self updateConfiguration];
  }
}

- (BOOL)_shouldBoostWhitePoint
{
  v2 = [(SBHWidgetStyleManager *)self widgetViewController];
  v3 = [v2 traitCollection];
  v4 = objc_opt_self();
  v5 = [v3 valueForNSIntegerTrait:v4];

  if (v5 == 1)
  {
    v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v3];
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
  v3 = [(SBHWidgetStyleManager *)self widgetHostViewController];
  v4 = [v3 tintParameters];
  v5 = [(SBHWidgetStyleManager *)self userInterfaceStyle];
  if (!v4)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v4 filterStyle];
  if (v7 <= 4)
  {
    if (v7 == 3)
    {
      v8 = +[SBHIconImageAppearance clearLightAppearance];
      goto LABEL_12;
    }

    if (v7 == 4)
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

  if (v7 == 5)
  {
    v10 = [v4 primaryTintColor];
    v11 = [v10 UIColor];
    v12 = [SBHIconImageAppearance tintedLightAppearanceWithTintColor:v11];
  }

  else
  {
    if (v7 != 6)
    {
      goto LABEL_10;
    }

    v10 = [v4 primaryTintColor];
    v11 = [v10 UIColor];
    v12 = [SBHIconImageAppearance tintedDarkAppearanceWithTintColor:v11];
  }

  v9 = v12;

LABEL_15:

  return v9;
}

- (id)makeBackgroundViewForType:(int64_t)a3 frame:(CGRect)a4
{
  continuousCornerRadius = self->_iconImageInfo.continuousCornerRadius;
  if (a3 == 1)
  {
    v7 = [(SBHWidgetStyleManager *)self imageAppearance:a4.origin.x];
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
    v14 = self;
    [v9 performWithoutAnimation:v12];
    v5 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  else if (a3 == 2)
  {
    v5 = [SBHWidgetContainerViewController buildGradientBackgroundViewWithFrame:a4.origin.x continuousCornerRadius:a4.origin.y, a4.size.width, a4.size.height, continuousCornerRadius];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

- (void)setAllowsGlassGrouping:(BOOL)a3
{
  if (self->_allowsGlassGrouping != a3)
  {
    self->_allowsGlassGrouping = a3;
    v4 = [(SBHWidgetStyleManager *)self backgroundView];

    if (v4)
    {
      v5 = [(SBHWidgetStyleManager *)self widgetIconStyleConfiguration];
      -[SBHWidgetStyleManager _updateBackgroundViewForBackgroundType:](self, "_updateBackgroundViewForBackgroundType:", [v5 backgroundType]);
    }
  }
}

- (void)_updateBackgroundViewForBackgroundType:(int64_t)a3
{
  v9 = [(SBHWidgetStyleManager *)self backgroundView];
  v5 = [(SBHWidgetStyleManager *)self delegate];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 widgetStyleManager:self needsToRemoveBackgroundView:v9];
  }

  v6 = [(SBHWidgetStyleManager *)self widgetHostViewController];
  v7 = [v6 view];

  [v7 bounds];
  v8 = [(SBHWidgetStyleManager *)self makeBackgroundViewForType:a3 frame:?];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 widgetStyleManager:self needsToAddBackgroundView:v8];
  }

  [(SBHWidgetStyleManager *)self setBackgroundView:v8];
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SBHWidgetStyleManager_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = v4;
  v8 = self;
  v5 = v4;
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