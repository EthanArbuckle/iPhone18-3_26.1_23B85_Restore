@interface SBWallpaperIconStyleCoordinator
- (BOOL)_issueUpdates:(id)a3;
- (BOOL)isWallpaperDimmed;
- (BOOL)shouldUseLargeHomeScreenIcons;
- (BSColor)currentTintColor;
- (PUIStylePickerHomeScreenConfiguration)currentStyleConfiguration;
- (SBWallpaperIconStyleCoordinator)initWithWallpaperController:(id)a3 homeScreenDefaults:(id)a4;
- (id)_enclosureAccentColor;
- (id)_fetchPosterStyleState;
- (id)_fetchStyleConfiguration;
- (id)posterStyleState;
- (void)_emitPowerLogForStyleUpdateWithConfiguration:(id)a3 styleState:(id)a4 oldConfiguration:(id)a5;
- (void)_fetchPosterStyleState;
- (void)_notifyObserversOfUpdatedPostersStyleState;
- (void)_postersStyleStateDidChange;
- (void)_resetStateExpectingUpdates;
- (void)_setupStateCapture;
- (void)addIconStyleObserver:(id)a3;
- (void)dealloc;
- (void)fetchWallpaperProminentColor:(id)a3;
- (void)removeIconStyleObserver:(id)a3;
- (void)setCurrentStyleConfiguration:(id)a3;
- (void)setCurrentTintColor:(id)a3;
- (void)setShouldUseLargeHomeScreenIcons:(BOOL)a3;
- (void)setWallpaperDimmed:(BOOL)a3;
- (void)shouldUseLargeHomeScreenIcons;
- (void)wallpaperDidChangeForVariant:(int64_t)a3;
- (void)wallpaperWillChangeForVariant:(int64_t)a3;
@end

@implementation SBWallpaperIconStyleCoordinator

- (PUIStylePickerHomeScreenConfiguration)currentStyleConfiguration
{
  currentStyleConfiguration = self->_currentStyleConfiguration;
  if (currentStyleConfiguration)
  {
    goto LABEL_5;
  }

  if (self->_posterStyleState || ([(SBWallpaperIconStyleCoordinator *)self _postersStyleStateDidChange], self->_posterStyleState))
  {
    v4 = [(SBWallpaperIconStyleCoordinator *)self _fetchStyleConfiguration];
    v5 = self->_currentStyleConfiguration;
    self->_currentStyleConfiguration = v4;

    currentStyleConfiguration = self->_currentStyleConfiguration;
LABEL_5:
    v6 = currentStyleConfiguration;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)_postersStyleStateDidChange
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = SBLogIconStyle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[_postersStyleStateDidChange] begin", &v18, 2u);
  }

  v4 = self->_posterStyleState;
  if (v4)
  {
    v5 = v4;
    v6 = [(SBWallpaperIconStyleCoordinator *)self _fetchPosterStyleState];
    if ([v6 isEqualToState:v5])
    {
      v7 = SBLogIconStyle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[_postersStyleStateDidChange] posterStyleState is same; bailing", &v18, 2u);
      }

LABEL_19:
      goto LABEL_20;
    }

    posterStyleState = self->_posterStyleState;
    self->_posterStyleState = v6;
    v6 = v6;

    currentStyleConfiguration = self->_currentStyleConfiguration;
    self->_currentStyleConfiguration = 0;
  }

  else
  {
    v8 = SBLogIconStyle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[_postersStyleStateDidChange] nil poster style state; fetching", &v18, 2u);
    }

    v9 = [(SBWallpaperIconStyleCoordinator *)self _fetchPosterStyleState];
    v10 = self->_posterStyleState;
    self->_posterStyleState = v9;

    v5 = v9;
    v11 = self->_currentStyleConfiguration;
    self->_currentStyleConfiguration = 0;

    v12 = self->_posterStyleState;
    v13 = SBLogIconStyle();
    v6 = v13;
    if (!v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(SBWallpaperIconStyleCoordinator *)v6 _postersStyleStateDidChange];
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[_postersStyleStateDidChange] populated", &v18, 2u);
    }
  }

  v16 = SBLogIconStyle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_posterStyleState;
    v18 = 138543362;
    v19 = v17;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "[_postersStyleStateDidChange] posterStyleState did change: %{public}@", &v18, 0xCu);
  }

  [(SBWallpaperIconStyleCoordinator *)self _notifyObserversOfUpdatedPostersStyleState];
LABEL_20:
}

- (id)_fetchPosterStyleState
{
  v2 = [(SBWallpaperController *)self->_wallpaperController currentHomeVariantStyleState];
  v3 = SBLogIconStyle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SBWallpaperIconStyleCoordinator *)v2 _fetchPosterStyleState];
  }

  return v2;
}

- (void)_notifyObserversOfUpdatedPostersStyleState
{
  v21 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (!self->_posterStyleState)
  {
    v3 = [(SBWallpaperIconStyleCoordinator *)self _fetchPosterStyleState];
    posterStyleState = self->_posterStyleState;
    self->_posterStyleState = v3;
  }

  if (!self->_currentStyleConfiguration)
  {
    v5 = [(SBWallpaperIconStyleCoordinator *)self _fetchStyleConfiguration];
    currentStyleConfiguration = self->_currentStyleConfiguration;
    self->_currentStyleConfiguration = v5;
  }

  if (BSEqualObjects() && BSEqualObjects())
  {
    v7 = SBLogIconStyle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[_notifyObserversOfUpdatedPostersStyleState] posters style state is same; bailing", buf, 2u);
    }
  }

  else
  {
    v8 = SBLogIconStyle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[_notifyObserversOfUpdatedPostersStyleState] updating last notified posters style state", buf, 2u);
    }

    objc_storeStrong(&self->_lastNotifiedStyleConfiguration, self->_currentStyleConfiguration);
    objc_storeStrong(&self->_lastNotifiedPosterStyleState, self->_posterStyleState);
    [(SBWallpaperController *)self->_wallpaperController noteHomeVariantStyleStateMayHaveUpdated];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(NSHashTable *)self->_observers copy];
    v10 = [v9 allObjects];

    v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v14++) iconStyleCoordinatorDidUpdate:self];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v12);
    }

    [(SBWallpaperIconStyleCoordinator *)self _emitPowerLogForStyleUpdateWithConfiguration:self->_currentStyleConfiguration styleState:self->_posterStyleState oldConfiguration:0];
  }
}

- (id)_fetchStyleConfiguration
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v3 = getPUIMutableStylePickerHomeScreenConfigurationClass_softClass;
  v36 = getPUIMutableStylePickerHomeScreenConfigurationClass_softClass;
  if (!getPUIMutableStylePickerHomeScreenConfigurationClass_softClass)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __getPUIMutableStylePickerHomeScreenConfigurationClass_block_invoke;
    v32[3] = &unk_2783A9718;
    v32[4] = &v33;
    __getPUIMutableStylePickerHomeScreenConfigurationClass_block_invoke(v32);
    v3 = v34[3];
  }

  v4 = v3;
  _Block_object_dispose(&v33, 8);
  v5 = objc_alloc_init(v3);
  v6 = [(SBWallpaperIconStyleCoordinator *)self posterStyleState];
  v7 = [v6 iconStyle];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = SBSStringForHomeScreenIconStyleConfigurationType();
  }

  v10 = v9;

  v11 = [v6 iconStyleVariant];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = SBSStringForHomeScreenIconStyleConfigurationVariant();
  }

  v14 = v13;

  [v5 setStyleType:__PUIHomeScreenStyleTypeForTypeDescription(v10)];
  [v5 setStyleVariant:__PUIHomeScreenStyleVariantFromSBSHomeScreenIconStyleConfigurationVariantDescription(v14)];
  v15 = [v6 lastUserSelectedVariantForStyleTypeOption];

  if (v15)
  {
    v16 = [v6 lastUserSelectedVariantForStyleTypeOption];
    [v5 setLastUserSelectedVariantForStyleTypeOption:v16];
  }

  if ([v10 isEqualToString:@"accent"])
  {
    v17 = [v6 tintColorStyle];

    if (v17)
    {
      v18 = [v6 tintColorStyle];
      [v5 setAccentStyle:v18];
    }

    else
    {
      v18 = [(SBHomeScreenDefaults *)self->_homeScreenDefaults iconTintColor];
      [(SBHomeScreenDefaults *)self->_homeScreenDefaults iconUserInterfaceStyleVariation];
      v20 = v19;
      [(SBHomeScreenDefaults *)self->_homeScreenDefaults iconUserInterfaceStyleLuminance];
      v22 = v21;
      [(SBHomeScreenDefaults *)self->_homeScreenDefaults iconUserInterfaceStyleSaturation];
      v24 = v23;
      [v5 setVariation:v20];
      [v5 setLuminance:v22];
      [v5 setSaturation:v24];
      [v5 setAccentColor:v18];
    }
  }

  v25 = [v6 tintSource];
  [v5 setIconTintSource:_PUIHomeScreenIconTintSourceFromDescription(v25)];

  v26 = [v6 suggestedTintColor];

  if (v26)
  {
    v27 = [v6 suggestedTintColor];
    [v5 setSuggestedAccentColor:v27];
  }

  if (self->_caseAccentColor)
  {
    [v5 setCaseAccentColor:?];
  }

  v28 = [v5 enclosureAccentColor];
  if (!v28)
  {
    v29 = [(SBWallpaperIconStyleCoordinator *)self _enclosureAccentColor];

    if (!v29)
    {
      goto LABEL_24;
    }

    v28 = [(SBWallpaperIconStyleCoordinator *)self _enclosureAccentColor];
    [v5 setEnclosureAccentColor:v28];
  }

LABEL_24:
  v30 = [v5 copy];

  return v30;
}

- (id)posterStyleState
{
  posterStyleState = self->_posterStyleState;
  if (!posterStyleState)
  {
    v4 = [(SBWallpaperIconStyleCoordinator *)self _fetchPosterStyleState];
    v5 = self->_posterStyleState;
    self->_posterStyleState = v4;

    posterStyleState = self->_posterStyleState;
  }

  v6 = posterStyleState;

  return v6;
}

- (SBWallpaperIconStyleCoordinator)initWithWallpaperController:(id)a3 homeScreenDefaults:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBWallpaperIconStyleCoordinator initWithWallpaperController:a2 homeScreenDefaults:self];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [SBWallpaperIconStyleCoordinator initWithWallpaperController:a2 homeScreenDefaults:self];
LABEL_3:
  v17.receiver = self;
  v17.super_class = SBWallpaperIconStyleCoordinator;
  v11 = [(SBWallpaperIconStyleCoordinator *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_wallpaperController, a3);
    objc_storeStrong(&v12->_homeScreenDefaults, a4);
    [(SBWallpaperIconStyleCoordinator *)v12 _setupObservers];
    v13 = SBLogIconStyle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[SBWallpaperIconStyleCoordinator init] setting up state updater...", v16, 2u);
    }

    [(SBWallpaperIconStyleCoordinator *)v12 _postersStyleStateDidChange];
    v14 = SBLogIconStyle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[SBWallpaperIconStyleCoordinator init] state updater is running", v16, 2u);
    }

    [(SBWallpaperIconStyleCoordinator *)v12 _setupStateCapture];
  }

  return v12;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCapturer invalidate];
  stateCapturer = self->_stateCapturer;
  self->_stateCapturer = 0;

  v4.receiver = self;
  v4.super_class = SBWallpaperIconStyleCoordinator;
  [(SBWallpaperIconStyleCoordinator *)&v4 dealloc];
}

- (void)fetchWallpaperProminentColor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SBWallpaperIconStyleCoordinator *)self currentStyleConfiguration];
    v6 = [v5 suggestedAccentColor];

    if (v6)
    {
      v7 = SBLogIconStyle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[fetchWallpaperProminentColor] returning suggestedAccentColor w/o PaperBoardUI fetch...", buf, 2u);
      }

      v8 = [v5 suggestedAccentColor];
      v4[2](v4, v8);
    }

    else
    {
      wallpaperController = self->_wallpaperController;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __64__SBWallpaperIconStyleCoordinator_fetchWallpaperProminentColor___block_invoke;
      v10[3] = &unk_2783BD378;
      v10[4] = self;
      v11 = v4;
      [(SBWallpaperController *)wallpaperController fetchWallpaperProminentColor:v10];
      v8 = v11;
    }
  }
}

void __64__SBWallpaperIconStyleCoordinator_fetchWallpaperProminentColor___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogIconStyle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[fetchWallpaperProminentColor] fetched from PaperBoardUI a suggestedAccentColor", v11, 2u);
  }

  (*(*(a1 + 40) + 16))();
  v5 = SBLogIconStyle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[fetchWallpaperProminentColor] updating suggested tint color from paperboard UI...", v11, 2u);
  }

  v6 = *(a1 + 32);
  v7 = MEMORY[0x277D3E9C8];
  v8 = [v3 BSColor];
  v9 = [v7 posterUpdateHomeScreenSuggestedTintColor:v8];
  v12[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v6 _issueUpdates:v10];
}

- (BSColor)currentTintColor
{
  v2 = [(SBWallpaperIconStyleCoordinator *)self currentStyleConfiguration];
  v3 = [v2 accentStyle];
  v4 = [v3 luminanceAppliedColor];
  v5 = [v4 BSColor];

  return v5;
}

- (void)setCurrentTintColor:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogIconStyle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[setCurrentTintColor] updating to tint color %{public}@", &v9, 0xCu);
  }

  v6 = [(SBWallpaperIconStyleCoordinator *)self currentStyleConfiguration];
  v7 = [v6 mutableCopy];

  v8 = [v4 UIColor];
  [v7 setAccentColor:v8];

  [(SBWallpaperIconStyleCoordinator *)self setCurrentStyleConfiguration:v7];
}

- (BOOL)isWallpaperDimmed
{
  v2 = [(SBWallpaperIconStyleCoordinator *)self posterStyleState];
  v3 = [v2 isHomeScreenDimmed];

  return v3;
}

- (void)setWallpaperDimmed:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  if ([(SBWallpaperIconStyleCoordinator *)self isWallpaperDimmed]!= a3)
  {
    v5 = SBLogIconStyle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[setWallpaperDimmed] updating wallpaper dim to %{BOOL}u", buf, 8u);
    }

    v6 = [MEMORY[0x277D3E9C8] posterUpdateHomeScreenAppearanceDimWithValue:v3];
    v8 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    [(SBWallpaperIconStyleCoordinator *)self _issueUpdates:v7];
  }
}

- (BOOL)shouldUseLargeHomeScreenIcons
{
  v2 = [(SBWallpaperIconStyleCoordinator *)self posterStyleState];
  v3 = [v2 iconSize];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getPRIconUserInterfaceSizeLargeSymbolLoc_ptr;
  v11 = getPRIconUserInterfaceSizeLargeSymbolLoc_ptr;
  if (!getPRIconUserInterfaceSizeLargeSymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getPRIconUserInterfaceSizeLargeSymbolLoc_block_invoke;
    v7[3] = &unk_2783A9718;
    v7[4] = &v8;
    __getPRIconUserInterfaceSizeLargeSymbolLoc_block_invoke(v7);
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    [SBWallpaperIconStyleCoordinator shouldUseLargeHomeScreenIcons];
  }

  v5 = [v3 isEqualToString:*v4];

  return v5;
}

- (void)setShouldUseLargeHomeScreenIcons:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  if ([(SBWallpaperIconStyleCoordinator *)self shouldUseLargeHomeScreenIcons]!= a3)
  {
    v5 = SBLogIconStyle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[setshouldUseLargeHomeScreenIcons] updating shouldUseLargeHomeScreenIcons to %{BOOL}u", buf, 8u);
    }

    v6 = MEMORY[0x277D3E9C8];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v8 = [v6 posterUpdateShouldUseLargeHomeScreenIcons:v7];

    v10 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(SBWallpaperIconStyleCoordinator *)self _issueUpdates:v9];
  }
}

- (void)setCurrentStyleConfiguration:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v46 = self->_currentStyleConfiguration;
    v5 = SBLogIconStyle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v50 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[setCurrentStyleConfiguration] updating to style configuration %{public}@", buf, 0xCu);
    }

    v6 = [(PUIStylePickerHomeScreenConfiguration *)self->_currentStyleConfiguration styleType];
    v7 = [v4 styleType];
    v8 = [(PUIStylePickerHomeScreenConfiguration *)self->_currentStyleConfiguration styleVariant];
    v9 = [v4 styleVariant];
    v48 = [(PUIStylePickerHomeScreenConfiguration *)self->_currentStyleConfiguration accentStyle];
    if (v7 == 3)
    {
      v10 = SBLogIconStyle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[setCurrentStyleConfiguration] updating to a style type of accent", buf, 2u);
      }

      v11 = [v4 accentStyle];
    }

    else
    {
      if (v6 == 3)
      {
        v12 = SBLogIconStyle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[setCurrentStyleConfiguration] updating AWAY a style type of accent; clearing out target style", buf, 2u);
        }
      }

      v11 = 0;
    }

    v13 = objc_opt_new();
    if (v6 != v7)
    {
      if ((v7 - 1) > 4)
      {
        v14 = @"auto";
      }

      else
      {
        v14 = off_2783BD3C8[v7 - 1];
      }

      v15 = [MEMORY[0x277D3E9C8] posterUpdateHomeScreenIconUserInterfaceStyle:{v14, v46}];
      [v13 addObject:v15];
    }

    if (v8 != v9)
    {
      v16 = MEMORY[0x277D3E9C8];
      v17 = _SBSHomeScreenIconStyleConfigurationVariantDescriptionFromPUIHomeScreenStyleVariant();
      v18 = [v16 posterUpdateHomeScreenIconUserInterfaceStyleVariant:v17];
      [v13 addObject:v18];
    }

    v19 = [(PUIStylePickerHomeScreenConfiguration *)self->_currentStyleConfiguration lastUserSelectedVariantForStyleTypeOption];
    v20 = [v4 lastUserSelectedVariantForStyleTypeOption];
    v21 = BSEqualDictionaries();

    v22 = v48;
    if ((v21 & 1) == 0)
    {
      v23 = MEMORY[0x277D3E9C8];
      v24 = [v4 lastUserSelectedVariantForStyleTypeOption];
      v25 = [v23 posterUpdateUserSelectedHomeScreenIconStyleVariantsForTypes:v24];
      [v13 addObject:v25];
    }

    v26 = [(PUIStylePickerHomeScreenConfiguration *)self->_currentStyleConfiguration iconTintSource];
    v27 = [v4 iconTintSource];
    if (v26 != v27)
    {
      if ((v27 - 1) > 3)
      {
        v28 = @"none";
      }

      else
      {
        v28 = off_2783BD3F0[v27 - 1];
      }

      v29 = [MEMORY[0x277D3E9C8] posterUpdateHomeScreenIconTintSource:v28];
      [v13 addObject:v29];
    }

    objc_opt_class();
    v30 = objc_opt_respondsToSelector();
    if ((BSEqualObjects() & 1) == 0)
    {
      v31 = SBLogIconStyle();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v32)
        {
          *buf = 138543362;
          v50 = v11;
          _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "[setCurrentStyleConfiguration] updating poster style to %{public}@ ON POSTER", buf, 0xCu);
        }

        v33 = MEMORY[0x277D3E9C8];
        v34 = MEMORY[0x277CCABB0];
        [v11 variation];
        v35 = [v34 numberWithDouble:?];
        v36 = MEMORY[0x277CCABB0];
        [v11 saturation];
        v37 = [v36 numberWithDouble:?];
        v38 = MEMORY[0x277CCABB0];
        [v11 luminance];
        v39 = [v38 numberWithDouble:?];
        if (v30)
        {
          v40 = MEMORY[0x277CCABB0];
          [v11 alpha];
          v41 = [v40 numberWithDouble:?];
          v42 = [v33 posterUpdateHomeScreenTintWithVariation:v35 saturation:v37 luminance:v39 alpha:v41];
          [v13 addObject:v42];
        }

        else
        {
          v43 = [v33 posterUpdateHomeScreenTintWithVariation:v35 saturation:v37 luminance:v39];
          [v13 addObject:v43];
        }

        v22 = v48;
      }

      else
      {
        if (v32)
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "[setCurrentStyleConfiguration] unsetting poster style on POSTER", buf, 2u);
        }

        if (v30)
        {
          [MEMORY[0x277D3E9C8] posterUpdateHomeScreenTintWithVariation:0 saturation:0 luminance:0 alpha:0];
        }

        else
        {
          [MEMORY[0x277D3E9C8] posterUpdateHomeScreenTintWithVariation:0 saturation:0 luminance:0];
        }
        v35 = ;
        [v13 addObject:v35];
      }
    }

    v44 = self->_caseAccentColor;
    v45 = [v4 caseAccentColor];
    if (v44 != v45)
    {
      objc_storeStrong(&self->_caseAccentColor, v45);
    }

    [(SBWallpaperIconStyleCoordinator *)self _issueUpdates:v13];
    [(SBWallpaperIconStyleCoordinator *)self _emitPowerLogForStyleUpdateWithConfiguration:self->_currentStyleConfiguration styleState:self->_posterStyleState oldConfiguration:v47];
  }
}

- (void)addIconStyleObserver:(id)a3
{
  v7 = a3;
  BSDispatchQueueAssertMain();
  observers = self->_observers;
  if (!observers)
  {
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v7];
}

- (void)removeIconStyleObserver:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  [(NSHashTable *)self->_observers removeObject:v4];
}

- (BOOL)_issueUpdates:(id)a3
{
  wallpaperController = self->_wallpaperController;
  v11 = 0;
  v5 = [(SBWallpaperController *)wallpaperController updateCurrentPosterWithUpdates:a3 error:&v11];
  v6 = v11;
  v7 = SBLogIconStyle();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SBWallpaperIconStyleCoordinator *)v6 _issueUpdates:v8];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[_issueUpdates] Updated current poster", v10, 2u);
    }

    [(SBWallpaperIconStyleCoordinator *)self _resetStateExpectingUpdates];
    [(SBWallpaperIconStyleCoordinator *)self _notifyObserversOfUpdatedPostersStyleState];
  }

  return v5;
}

- (void)_resetStateExpectingUpdates
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  p_posterStyleState = &self->_posterStyleState;
  v4 = self->_posterStyleState;
  v5 = [(SBWallpaperIconStyleCoordinator *)self _fetchPosterStyleState];
  v6 = BSEqualObjects();
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(p_posterStyleState, v5);
  }

  p_currentStyleConfiguration = &self->_currentStyleConfiguration;
  v8 = self->_currentStyleConfiguration;
  v9 = [(SBWallpaperIconStyleCoordinator *)self _fetchStyleConfiguration];
  v10 = BSEqualObjects();
  if ((v10 & 1) == 0)
  {
    objc_storeStrong(p_currentStyleConfiguration, v9);
  }

  v11 = SBLogIconStyle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109376;
    v15[0] = v6 ^ 1;
    LOWORD(v15[1]) = 1024;
    *(&v15[1] + 2) = v10 ^ 1;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[_resetStateExpectingUpdates] didUpdatePosterStyleState: %{BOOL}u didUpdateStyleConfiguration: %{BOOL}u", &v14, 0xEu);
  }

  if ((v10 & 1) == 0)
  {
    v12 = SBLogIconStyle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      *v15 = v9;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "[_resetStateExpectingUpdates] updatedStyleConfiguration: %{public}@", &v14, 0xCu);
    }
  }

  if ((v6 & 1) == 0)
  {
    v13 = SBLogIconStyle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      *v15 = v5;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "[_resetStateExpectingUpdates] updatedPosterStyleState: %{public}@", &v14, 0xCu);
    }
  }
}

- (id)_enclosureAccentColor
{
  if (_enclosureAccentColor_onceToken != -1)
  {
    [SBWallpaperIconStyleCoordinator _enclosureAccentColor];
  }

  v3 = _enclosureAccentColor_enclosureAccentColor;

  return v3;
}

void __56__SBWallpaperIconStyleCoordinator__enclosureAccentColor__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = MGGetProductType();
  v2 = v0;
  v3 = 0;
  v14 = v2;
  if (v1 > 2159747552)
  {
    if (v1 > 2941181570)
    {
      if (v1 <= 3591055298)
      {
        if (v1 <= 3048527335)
        {
          if (v1 != 2941181571)
          {
            v4 = 3001488778;
LABEL_60:
            if (v1 != v4)
            {
              goto LABEL_141;
            }

            if ([v2 isEqualToString:@"3"])
            {
              v7 = MEMORY[0x277D75348];
              v8 = 0.988;
              v9 = 0.922;
              v10 = 0.827;
              goto LABEL_139;
            }

            if ([v14 isEqualToString:@"9"])
            {
              v7 = MEMORY[0x277D75348];
              v8 = 0.176;
              v9 = 0.306;
              v10 = 0.361;
              goto LABEL_139;
            }

            goto LABEL_144;
          }

          goto LABEL_71;
        }

        if (v1 != 3048527336)
        {
          if (v1 != 3585085679)
          {
            goto LABEL_141;
          }

LABEL_55:
          if (![v2 isEqualToString:@"6"])
          {
            if ([v14 isEqualToString:@"4"])
            {
              v7 = MEMORY[0x277D75348];
              v8 = 0.98;
              v9 = 0.87;
              v10 = 0.84;
              goto LABEL_139;
            }

            if ([v14 isEqualToString:@"18"])
            {
              v7 = MEMORY[0x277D75348];
              v9 = 0.3;
              v8 = 0.22;
              v12 = 1.0;
              v10 = 0.22;
LABEL_140:
              v3 = [v7 colorWithRed:v8 green:v9 blue:v10 alpha:v12];
              goto LABEL_141;
            }

            if ([v14 isEqualToString:@"9"])
            {
              v7 = MEMORY[0x277D75348];
              v8 = 0.15;
              v9 = 0.4;
              v10 = 0.53;
              goto LABEL_139;
            }

            goto LABEL_144;
          }

LABEL_80:
          v7 = MEMORY[0x277D75348];
          v8 = 0.749;
          v10 = 0.0745;
          v9 = 0.0;
          goto LABEL_139;
        }

        goto LABEL_75;
      }

      if (v1 <= 3885279869)
      {
        if (v1 == 3591055299)
        {
LABEL_75:
          if ([v2 isEqualToString:@"9"])
          {
            v7 = MEMORY[0x277D75348];
            v8 = 0.470588235;
            v9 = 0.525490196;
            v10 = 0.62745098;
            goto LABEL_139;
          }

          if (![v14 isEqualToString:@"8"])
          {
            goto LABEL_144;
          }

          v7 = MEMORY[0x277D75348];
          v8 = 0.97;
          v9 = 0.49;
          goto LABEL_104;
        }

        v6 = 3825599860;
        goto LABEL_24;
      }

      if (v1 != 3885279870)
      {
        v4 = 4201643249;
        goto LABEL_60;
      }

LABEL_73:
      if ([v2 isEqualToString:@"18"])
      {
        v7 = MEMORY[0x277D75348];
        v8 = 0.847;
        v9 = 0.937;
        v10 = 0.835;
        goto LABEL_139;
      }

      if ([v14 isEqualToString:@"17"])
      {
        v7 = MEMORY[0x277D75348];
        v8 = 0.718;
        v9 = 0.686;
        v10 = 0.902;
        goto LABEL_139;
      }

      if ([v14 isEqualToString:@"9"])
      {
        v7 = MEMORY[0x277D75348];
        v8 = 0.008;
        v9 = 0.231;
        v10 = 0.388;
        goto LABEL_139;
      }

      if ([v14 isEqualToString:@"6"])
      {
        v7 = MEMORY[0x277D75348];
        v8 = 0.847;
        v9 = 0.18;
        v12 = 1.0;
        v10 = 0.18;
        goto LABEL_140;
      }

LABEL_144:
      v3 = 0;
      goto LABEL_141;
    }

    if (v1 > 2722529671)
    {
      if (v1 <= 2795618602)
      {
        if (v1 != 2722529672)
        {
          v6 = 2793418701;
LABEL_24:
          if (v1 != v6)
          {
            goto LABEL_141;
          }

          if ([v2 isEqualToString:@"9"])
          {
            v7 = MEMORY[0x277D75348];
            v8 = 0.835;
            v9 = 0.867;
            v10 = 0.878;
            goto LABEL_139;
          }

          if (![v14 isEqualToString:@"4"])
          {
            if ([v14 isEqualToString:@"7"])
            {
              v7 = MEMORY[0x277D75348];
              v8 = 0.925;
              v9 = 0.902;
              v10 = 0.776;
              goto LABEL_139;
            }

            if ([v14 isEqualToString:@"18"])
            {
              v7 = MEMORY[0x277D75348];
              v8 = 0.812;
              v9 = 0.851;
              v10 = 0.788;
              goto LABEL_139;
            }

            goto LABEL_144;
          }

          v7 = MEMORY[0x277D75348];
          v8 = 0.922;
          v9 = 0.816;
LABEL_93:
          v10 = 0.824;
          goto LABEL_139;
        }

LABEL_67:
        if ([v2 isEqualToString:@"4"])
        {
          v7 = MEMORY[0x277D75348];
          v8 = 0.98;
          v9 = 0.843;
          v10 = 0.741;
          goto LABEL_139;
        }

        if ([v14 isEqualToString:@"18"])
        {
          v7 = MEMORY[0x277D75348];
          v8 = 0.306;
          v9 = 0.345;
          v10 = 0.318;
          goto LABEL_139;
        }

        goto LABEL_144;
      }

      if (v1 != 2795618603)
      {
        v11 = 2940697645;
        goto LABEL_50;
      }

LABEL_65:
      if ([v2 isEqualToString:@"4"])
      {
        v7 = MEMORY[0x277D75348];
        v8 = 0.749;
        v9 = 0.647;
        v10 = 0.561;
        goto LABEL_139;
      }

      if ([v14 isEqualToString:@"5"])
      {
        v7 = MEMORY[0x277D75348];
        v8 = 0.761;
        v9 = 0.737;
        v10 = 0.698;
        goto LABEL_139;
      }

      goto LABEL_144;
    }

    if (v1 != 2159747553)
    {
      if (v1 != 2309863438)
      {
        v11 = 2688879999;
LABEL_50:
        if (v1 != v11)
        {
          goto LABEL_141;
        }

        if (![v2 isEqualToString:@"3"])
        {
          if ([v14 isEqualToString:@"17"])
          {
            v7 = MEMORY[0x277D75348];
            v8 = 0.294;
            v9 = 0.263;
            v10 = 0.322;
            goto LABEL_139;
          }

          goto LABEL_144;
        }

        v7 = MEMORY[0x277D75348];
        v8 = 0.953;
        v9 = 0.898;
        v10 = 0.792;
        goto LABEL_139;
      }

LABEL_63:
      if ([v2 isEqualToString:@"3"])
      {
        v7 = MEMORY[0x277D75348];
        v8 = 0.98;
        v9 = 0.906;
        v10 = 0.812;
        goto LABEL_139;
      }

      if ([v14 isEqualToString:@"9"])
      {
        v7 = MEMORY[0x277D75348];
        v8 = 0.655;
        v9 = 0.757;
        v10 = 0.851;
        goto LABEL_139;
      }

      if ([v14 isEqualToString:@"18"])
      {
        v7 = MEMORY[0x277D75348];
        v8 = 0.341;
        v9 = 0.408;
        v10 = 0.337;
        goto LABEL_139;
      }

      goto LABEL_144;
    }

LABEL_96:
    if (![v2 isEqualToString:@"6"])
    {
      goto LABEL_144;
    }

    v7 = MEMORY[0x277D75348];
    v8 = 0.729;
    v9 = 0.047;
LABEL_104:
    v10 = 0.18;
    goto LABEL_139;
  }

  if (v1 > 1371389548)
  {
    if (v1 > 1872992316)
    {
      if (v1 > 2078329140)
      {
        if (v1 == 2078329141)
        {
          if (![v2 isEqualToString:@"6"])
          {
            goto LABEL_144;
          }

          goto LABEL_80;
        }

        if (v1 != 2080700391)
        {
          goto LABEL_141;
        }

        if ([v2 isEqualToString:@"17"])
        {
          v7 = MEMORY[0x277D75348];
          v8 = 0.82;
          v9 = 0.804;
          goto LABEL_115;
        }

        if (![v14 isEqualToString:@"7"])
        {
          if ([v14 isEqualToString:@"18"])
          {
            v7 = MEMORY[0x277D75348];
            v8 = 0.682;
            v9 = 0.882;
            v10 = 0.804;
            goto LABEL_139;
          }

          v2 = v14;
          goto LABEL_96;
        }

        v7 = MEMORY[0x277D75348];
        v9 = 0.902;
        v10 = 0.506;
      }

      else
      {
        if (v1 != 1872992317)
        {
          if (v1 != 2021146989)
          {
            goto LABEL_141;
          }

LABEL_69:
          if ([v2 isEqualToString:@"9"])
          {
            v7 = MEMORY[0x277D75348];
            v8 = 0.749;
            v9 = 0.808;
            v10 = 0.871;
            goto LABEL_139;
          }

          if ([v14 isEqualToString:@"17"])
          {
            v7 = MEMORY[0x277D75348];
            v8 = 0.906;
            v9 = 0.839;
            v10 = 0.914;
            goto LABEL_139;
          }

          if ([v14 isEqualToString:@"7"])
          {
            v7 = MEMORY[0x277D75348];
            v8 = 0.961;
            v9 = 0.894;
            v10 = 0.533;
            goto LABEL_139;
          }

          if ([v14 isEqualToString:@"6"])
          {
            v7 = MEMORY[0x277D75348];
            v8 = 0.882;
            v9 = 0.106;
            v10 = 0.169;
            goto LABEL_139;
          }

          goto LABEL_144;
        }

        if ([v2 isEqualToString:@"9"])
        {
          v7 = MEMORY[0x277D75348];
          v8 = 0.94;
          v9 = 0.98;
          v10 = 1.0;
          goto LABEL_139;
        }

        if (![v14 isEqualToString:@"3"])
        {
          goto LABEL_144;
        }

        v7 = MEMORY[0x277D75348];
        v9 = 0.99;
        v10 = 0.96;
      }

      v8 = 1.0;
      goto LABEL_139;
    }

    if (v1 == 1371389549)
    {
      goto LABEL_67;
    }

    if (v1 != 1434404433)
    {
      if (v1 != 1781728947)
      {
        goto LABEL_141;
      }

      if (![v2 isEqualToString:@"9"])
      {
        if ([v14 isEqualToString:@"18"])
        {
          v7 = MEMORY[0x277D75348];
          v8 = 0.66;
          v9 = 0.71;
          v10 = 0.54;
          goto LABEL_139;
        }

        if ([v14 isEqualToString:@"17"])
        {
          v7 = MEMORY[0x277D75348];
          v8 = 0.87;
          v9 = 0.81;
          v10 = 0.92;
          goto LABEL_139;
        }

        goto LABEL_144;
      }

      v7 = MEMORY[0x277D75348];
      v8 = 0.59;
      v9 = 0.68;
      v10 = 0.82;
LABEL_139:
      v12 = 1.0;
      goto LABEL_140;
    }

    goto LABEL_69;
  }

  if (v1 <= 689804741)
  {
    if (v1 == 133314240)
    {
LABEL_71:
      if ([v2 isEqualToString:@"5"])
      {
        v7 = MEMORY[0x277D75348];
        v8 = 0.729;
        v9 = 0.706;
        v10 = 0.663;
        goto LABEL_139;
      }

      if ([v14 isEqualToString:@"9"])
      {
        v7 = MEMORY[0x277D75348];
        v8 = 0.239;
        v9 = 0.271;
        v10 = 0.333;
        goto LABEL_139;
      }

      goto LABEL_144;
    }

    if (v1 == 330877086)
    {
      goto LABEL_65;
    }

    v5 = 574536383;
LABEL_30:
    if (v1 != v5)
    {
      goto LABEL_141;
    }

    if ([v2 isEqualToString:@"9"])
    {
      v7 = MEMORY[0x277D75348];
      v8 = 0.604;
      v9 = 0.678;
      v10 = 0.965;
      goto LABEL_139;
    }

    if ([v14 isEqualToString:@"18"])
    {
      v7 = MEMORY[0x277D75348];
      v8 = 0.69;
      v9 = 0.831;
      goto LABEL_93;
    }

    if (![v14 isEqualToString:@"4"])
    {
      goto LABEL_144;
    }

    v7 = MEMORY[0x277D75348];
    v8 = 0.949;
    v9 = 0.678;
LABEL_115:
    v10 = 0.855;
    goto LABEL_139;
  }

  if (v1 <= 1060988940)
  {
    if (v1 == 689804742)
    {
      goto LABEL_63;
    }

    v5 = 851437781;
    goto LABEL_30;
  }

  if (v1 == 1060988941)
  {
    goto LABEL_55;
  }

  if (v1 == 1169082144)
  {
    goto LABEL_73;
  }

LABEL_141:

  v13 = _enclosureAccentColor_enclosureAccentColor;
  _enclosureAccentColor_enclosureAccentColor = v3;
}

- (void)_setupStateCapture
{
  if (!self->_stateCapturer)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v6, &location);
    v4 = BSLogAddStateCaptureBlockWithTitle();
    stateCapturer = self->_stateCapturer;
    self->_stateCapturer = v4;

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

__CFString *__53__SBWallpaperIconStyleCoordinator__setupStateCapture__block_invoke(uint64_t a1)
{
  v22[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    v4 = [v2 _fetchPosterStyleState];
    v5 = v2[7];
    v6 = [v2 _fetchStyleConfiguration];
    v21[0] = @"posterStyleState";
    v7 = [v3 description];
    v8 = v7;
    v9 = @"(null posterStyleState)";
    if (v7)
    {
      v9 = v7;
    }

    v22[0] = v9;
    v21[1] = @"fetchedPostersStyleState";
    v10 = [v4 description];
    v11 = v10;
    v12 = @"(null fetchedPostersStyleState)";
    if (v10)
    {
      v12 = v10;
    }

    v22[1] = v12;
    v21[2] = @"currentStyleConfiguration";
    v13 = [v5 description];
    v14 = v13;
    v15 = @"(null currentStyleConfiguration)";
    if (v13)
    {
      v15 = v13;
    }

    v22[2] = v15;
    v21[3] = @"fetchedStyleConfiguration";
    v16 = [v6 description];
    v17 = v16;
    v18 = @"(null fetchedStyleConfiguration)";
    if (v16)
    {
      v18 = v16;
    }

    v22[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  }

  else
  {
    v19 = &stru_283094718;
  }

  return v19;
}

- (void)wallpaperWillChangeForVariant:(int64_t)a3
{
  v4 = SBLogIconStyle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "wallpaperWillChangeForVariant", v7, 2u);
  }

  posterStyleState = self->_posterStyleState;
  self->_posterStyleState = 0;

  currentStyleConfiguration = self->_currentStyleConfiguration;
  self->_currentStyleConfiguration = 0;
}

- (void)wallpaperDidChangeForVariant:(int64_t)a3
{
  v4 = SBLogIconStyle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "wallpaperDidChangeForVariant", v7, 2u);
  }

  posterStyleState = self->_posterStyleState;
  self->_posterStyleState = 0;

  currentStyleConfiguration = self->_currentStyleConfiguration;
  self->_currentStyleConfiguration = 0;

  [(SBWallpaperIconStyleCoordinator *)self _postersStyleStateDidChange];
}

- (void)_emitPowerLogForStyleUpdateWithConfiguration:(id)a3 styleState:(id)a4 oldConfiguration:(id)a5
{
  v23[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (_emitPowerLogForStyleUpdateWithConfiguration_styleState_oldConfiguration__onceToken != -1)
  {
    [SBWallpaperIconStyleCoordinator _emitPowerLogForStyleUpdateWithConfiguration:styleState:oldConfiguration:];
  }

  v10 = [v7 styleType];
  v11 = [v7 styleVariant];
  v12 = [v8 iconSize];
  v13 = [v12 caseInsensitiveCompare:@"large"];

  if (v9)
  {
    if (v10 == 3 && [v9 styleType] == 3)
    {
      v14 = [v7 accentColor];
      v15 = [v9 accentColor];
      v16 = BSEqualObjects() ^ 1;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  v22[0] = @"FilterType";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v23[0] = v17;
  v22[1] = @"Variant";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v23[1] = v18;
  v22[2] = @"Size";
  v19 = [MEMORY[0x277CCABB0] numberWithInt:v13 != 0];
  v23[2] = v19;
  v22[3] = @"CustomTintColor";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  v23[3] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  PPSSendTelemetry();
}

uint64_t __108__SBWallpaperIconStyleCoordinator__emitPowerLogForStyleUpdateWithConfiguration_styleState_oldConfiguration___block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  _emitPowerLogForStyleUpdateWithConfiguration_styleState_oldConfiguration__identifier = result;
  return result;
}

- (void)initWithWallpaperController:(uint64_t)a1 homeScreenDefaults:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWallpaperIconStyleCoordinator.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"wallpaperController"}];
}

- (void)initWithWallpaperController:(uint64_t)a1 homeScreenDefaults:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWallpaperIconStyleCoordinator.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"homeScreenDefaults"}];
}

- (void)shouldUseLargeHomeScreenIcons
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getPRIconUserInterfaceSizeLarge(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBWallpaperIconStyleCoordinator.m" lineNumber:33 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_issueUpdates:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "[_issueUpdates] Failed to update current poster: %{public}@", &v2, 0xCu);
}

- (void)_fetchPosterStyleState
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[_fetchPosterStyleState] %{public}@", &v2, 0xCu);
}

@end