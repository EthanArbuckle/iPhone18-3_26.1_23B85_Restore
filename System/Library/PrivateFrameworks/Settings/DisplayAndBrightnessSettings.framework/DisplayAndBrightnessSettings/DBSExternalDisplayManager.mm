@interface DBSExternalDisplayManager
+ (id)defaultManager;
- (BOOL)adaptiveSyncEnabled;
- (BOOL)autoBrightnessEnabled;
- (BOOL)deviceSupportsChamoisExternalDisplay;
- (BOOL)externalDisplayAutoBrightnessAvailable;
- (BOOL)externalDisplayAvailable;
- (BOOL)externalDisplayBrightnessAvailable;
- (BOOL)isMirroringEnabled;
- (BOOL)limitRefreshRate;
- (BOOL)matchContent;
- (CGSize)externalDisplaySize;
- (CGSize)nativeDisplaySize;
- (DBSExternalDisplayManager)init;
- (NSNumber)externalDisplayBrightness;
- (NSString)currentHDRMode;
- (id)externalDisplayName;
- (id)mainDisplayImageWithWidth:(double)width;
- (id)mainDisplayName;
- (id)preferredHDRModes;
- (id)supportedHDRModes;
- (id)supportedHDRModesWithHighRefreshRate;
- (id)supportedHDRModesWithVRR;
- (void)_notifyObserversDidUpdateMirroringEnabledState:(BOOL)state;
- (void)_updateDisplayInfo;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)externalDisplayDidConnect:(id)connect;
- (void)externalDisplayWillDisconnect:(id)disconnect;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeObserver:(id)observer;
- (void)setAdaptiveSyncEnabled:(BOOL)enabled;
- (void)setAutoBrightnessEnabled:(BOOL)enabled;
- (void)setCurrentHDRMode:(id)mode;
- (void)setExternalDisplayBrightness:(id)brightness shouldCommit:(BOOL)commit;
- (void)setLimitRefreshRate:(BOOL)rate;
- (void)setMatchContent:(BOOL)content;
- (void)setMirroringEnabled:(BOOL)enabled;
- (void)updateNativeDisplaySize:(CGSize)size;
@end

@implementation DBSExternalDisplayManager

+ (id)defaultManager
{
  if (defaultManager_onceToken_0 != -1)
  {
    +[DBSExternalDisplayManager defaultManager];
  }

  v3 = defaultManager_defaultManager_0;

  return v3;
}

uint64_t __43__DBSExternalDisplayManager_defaultManager__block_invoke()
{
  defaultManager_defaultManager_0 = objc_alloc_init(DBSExternalDisplayManager);

  return MEMORY[0x2821F96F8]();
}

- (DBSExternalDisplayManager)init
{
  v22.receiver = self;
  v22.super_class = DBSExternalDisplayManager;
  v2 = [(DBSExternalDisplayManager *)&v22 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
    if (tVOutDisplay)
    {
      v6 = NSStringFromSelector(sel_preferences);
      [tVOutDisplay addObserver:v2 forKeyPath:v6 options:1 context:PKDisplayPreferencesContext];

      if (![(DBSExternalDisplayManager *)v2 deviceSupportsChamoisExternalDisplay])
      {
        v7 = NSStringFromSelector(sel_currentMode);
        [tVOutDisplay addObserver:v2 forKeyPath:v7 options:1 context:PKDisplayCurrentModeContext];
      }
    }

    v8 = objc_alloc_init(MEMORY[0x277CFD390]);
    brightnessSystemClient = v2->_brightnessSystemClient;
    v2->_brightnessSystemClient = v8;

    [(BrightnessSystemClient *)v2->_brightnessSystemClient registerNotificationBlock:&__block_literal_global_26 forProperties:&unk_28349F5F8];
    if ([(DBSExternalDisplayManager *)v2 deviceSupportsChamoisExternalDisplay])
    {
      v10 = objc_opt_new();
      displayService = v2->_displayService;
      v2->_displayService = v10;

      [(SBSExternalDisplayService *)v2->_displayService addObserver:v2];
      if ([(DBSExternalDisplayManager *)v2 externalDisplayAvailable])
      {
        [(DBSExternalDisplayManager *)v2 _updateDisplayInfo];
      }
    }

    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    objc_initWeak(&location, v2);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __33__DBSExternalDisplayManager_init__block_invoke_2;
    v19 = &unk_2784596E0;
    objc_copyWeak(&v20, &location);
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:&v16];
    v13 = [MEMORY[0x277D0AD08] monitorWithConfiguration:{configurationForDefaultMainDisplayMonitor, v16, v17, v18, v19}];
    layoutMonitor = v2->_layoutMonitor;
    v2->_layoutMonitor = v13;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __33__DBSExternalDisplayManager_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isEqualToString:@"DisplayBrightness2Available"])
  {
    v2 = DBSExternalDisplayManagerExternalBrightnessAvailablityDidChange;
  }

  else if ([v4 isEqualToString:@"DisplayBrightness2"])
  {
    v2 = DBSExternalDisplayManagerExternalBrightnessValueDidChange;
  }

  else if ([v4 isEqualToString:@"DisplayBrightnessAuto2Available"])
  {
    v2 = DBSExternalDisplayManagerExternalAutoBrightnessAvailablityDidChange;
  }

  else
  {
    if (![v4 isEqualToString:@"DisplayBrightnessAuto2"])
    {
      goto LABEL_10;
    }

    v2 = DBSExternalDisplayManagerExternalAutoBrightnessValueDidChange;
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:*v2 object:0];

LABEL_10:
}

void __33__DBSExternalDisplayManager_init__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__DBSExternalDisplayManager_init__block_invoke_3;
  v6[3] = &unk_278459660;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v8);
}

void __33__DBSExternalDisplayManager_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:DBSExternalDisplayManagerDisplayLayoutMonitorDidChange object:*(a1 + 32)];

    [*(a1 + 32) bounds];
    [v6 updateNativeDisplaySize:{v4, v5}];
    WeakRetained = v6;
  }
}

- (void)dealloc
{
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (tVOutDisplay)
  {
    v4 = NSStringFromSelector(sel_preferences);
    [tVOutDisplay removeObserver:self forKeyPath:v4 context:PKDisplayPreferencesContext];

    if (![(DBSExternalDisplayManager *)self deviceSupportsChamoisExternalDisplay])
    {
      v5 = NSStringFromSelector(sel_currentMode);
      [tVOutDisplay removeObserver:self forKeyPath:v5 context:PKDisplayCurrentModeContext];
    }
  }

  brightnessSystemClient = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  [brightnessSystemClient unregisterNotificationForKeys:&unk_28349F610];

  if ([(DBSExternalDisplayManager *)self deviceSupportsChamoisExternalDisplay])
  {
    [(SBSExternalDisplayService *)self->_displayService removeObserver:self];
  }

  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  v7.receiver = self;
  v7.super_class = DBSExternalDisplayManager;
  [(DBSExternalDisplayManager *)&v7 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    if (![(NSHashTable *)self->_observers containsObject:observerCopy])
    {
      [(NSHashTable *)self->_observers addObject:v5];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (id)externalDisplayName
{
  if ([(DBSExternalDisplayManager *)self externalDisplayAvailable])
  {
    tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
    productName = [tVOutDisplay productName];
    if (productName && (v4 = productName, [tVOutDisplay productName], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v4, v6))
    {
      productName2 = [tVOutDisplay productName];
    }

    else
    {
      productName2 = DBS_LocalizedStringForConnectedDisplays(@"EXTERNAL_DISPLAY");
    }

    v8 = productName2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGSize)externalDisplaySize
{
  if ([(DBSExternalDisplayManager *)self externalDisplayAvailable])
  {
    tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
    v3 = tVOutDisplay;
    if (tVOutDisplay)
    {
      [tVOutDisplay frame];
      v5 = v4;
      v7 = v6;
    }

    else
    {
      v5 = *MEMORY[0x277CBF3A8];
      v7 = *(MEMORY[0x277CBF3A8] + 8);
    }
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v7 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)updateNativeDisplaySize:(CGSize)size
{
  if (self->_nativeDisplaySize.width != size.width || self->_nativeDisplaySize.height != size.height)
  {
    self->_nativeDisplaySize = size;
  }
}

- (id)mainDisplayName
{
  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  productName = [mainDisplay productName];
  if (productName && (v4 = productName, [mainDisplay productName], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v4, v6))
  {
    productName2 = [mainDisplay productName];
  }

  else
  {
    productName2 = DBS_LocalizedStringForConnectedDisplays(@"MAIN_DISPLAY");
  }

  v8 = productName2;

  return v8;
}

- (id)mainDisplayImageWithWidth:(double)width
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  connectedScenes = [mEMORY[0x277D75128] connectedScenes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__DBSExternalDisplayManager_mainDisplayImageWithWidth___block_invoke;
  v9[3] = &unk_278459708;
  v9[4] = &v10;
  [connectedScenes enumerateObjectsUsingBlock:v9];

  [v11[5] interfaceOrientation];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];

  v7 = SBSUIWallpaperGetPreview();
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __55__DBSExternalDisplayManager_mainDisplayImageWithWidth___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v8 activationState])
  {
    v6 = [v8 _sceneIdentifier];
    v7 = [v6 isEqualToString:@"sceneID:com.apple.Preferences-default"];

    if (v7)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a3 = 1;
    }
  }
}

- (id)supportedHDRModes
{
  if ([(DBSExternalDisplayManager *)self externalDisplayAvailable])
  {
    tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
    supportedHDRModes = [tVOutDisplay supportedHDRModes];
  }

  else
  {
    supportedHDRModes = MEMORY[0x277CBEBF8];
  }

  return supportedHDRModes;
}

- (id)preferredHDRModes
{
  if ([(DBSExternalDisplayManager *)self externalDisplayAvailable])
  {
    tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
    preferredHDRModes = [tVOutDisplay preferredHDRModes];
  }

  else
  {
    preferredHDRModes = MEMORY[0x277CBEBF8];
  }

  return preferredHDRModes;
}

- (id)supportedHDRModesWithHighRefreshRate
{
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (tVOutDisplay)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD9E50]);
    [v3 setHighRefreshRate:1];
    if (objc_opt_respondsToSelector())
    {
      v4 = [tVOutDisplay supportedHDRModesWithCriteria:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)supportedHDRModesWithVRR
{
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (tVOutDisplay)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD9E50]);
    [v3 setHighRefreshRate:1];
    [v3 setVariableRefreshRate:1];
    if (objc_opt_respondsToSelector())
    {
      v4 = [tVOutDisplay supportedHDRModesWithCriteria:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)externalDisplayAvailable
{
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  v3 = tVOutDisplay;
  if (tVOutDisplay)
  {
    currentMode = [tVOutDisplay currentMode];
    if ([currentMode height])
    {
      v5 = [currentMode width] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)externalDisplayBrightnessAvailable
{
  brightnessSystemClient = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  v3 = [brightnessSystemClient copyPropertyForKey:@"DisplayBrightness2Available"];

  LOBYTE(brightnessSystemClient) = [v3 BOOLValue];
  return brightnessSystemClient;
}

- (BOOL)externalDisplayAutoBrightnessAvailable
{
  brightnessSystemClient = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  v3 = [brightnessSystemClient copyPropertyForKey:@"DisplayBrightnessAuto2Available"];

  LOBYTE(brightnessSystemClient) = [v3 BOOLValue];
  return brightnessSystemClient;
}

- (NSString)currentHDRMode
{
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  v3 = tVOutDisplay;
  if (tVOutDisplay)
  {
    preferences = [tVOutDisplay preferences];
    preferredHdrMode = [preferences preferredHdrMode];

    if (preferredHdrMode)
    {
      preferences2 = [v3 preferences];
      [preferences2 preferredHdrMode];
    }

    else
    {
      preferences2 = [v3 currentMode];
      [preferences2 hdrMode];
    }
    v7 = ;
  }

  else
  {
    v7 = *MEMORY[0x277CDA178];
  }

  return v7;
}

- (void)setCurrentHDRMode:(id)mode
{
  v10 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (tVOutDisplay)
  {
    v5 = DBSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = modeCopy;
      _os_log_impl(&dword_22102E000, v5, OS_LOG_TYPE_DEFAULT, "External Display: Setting current HDR mode preference to value: %@", &v8, 0xCu);
    }

    preferences = [tVOutDisplay preferences];
    v7 = [preferences mutableCopy];

    [v7 setPreferredHdrMode:modeCopy];
    [tVOutDisplay setPreferences:v7];
  }
}

- (BOOL)matchContent
{
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  v3 = tVOutDisplay;
  if (tVOutDisplay)
  {
    preferences = [tVOutDisplay preferences];
    matchContent = [preferences matchContent];
  }

  else
  {
    matchContent = 0;
  }

  return matchContent;
}

- (void)setMatchContent:(BOOL)content
{
  contentCopy = content;
  v11 = *MEMORY[0x277D85DE8];
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (tVOutDisplay)
  {
    v5 = DBSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (contentCopy)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_22102E000, v5, OS_LOG_TYPE_DEFAULT, "External Display: Setting match content preference to value: %@", &v9, 0xCu);
    }

    preferences = [tVOutDisplay preferences];
    v8 = [preferences mutableCopy];

    [v8 setMatchContent:contentCopy];
    [tVOutDisplay setPreferences:v8];
  }
}

- (BOOL)limitRefreshRate
{
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  v3 = tVOutDisplay;
  if (tVOutDisplay)
  {
    preferences = [tVOutDisplay preferences];
    v5 = [preferences prefersHighRefreshRate] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setLimitRefreshRate:(BOOL)rate
{
  rateCopy = rate;
  v11 = *MEMORY[0x277D85DE8];
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (tVOutDisplay)
  {
    v5 = DBSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (rateCopy)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_22102E000, v5, OS_LOG_TYPE_DEFAULT, "External Display: Setting limit refresh rate preference to value: %@", &v9, 0xCu);
    }

    preferences = [tVOutDisplay preferences];
    v8 = [preferences mutableCopy];

    [v8 setPrefersHighRefreshRate:!rateCopy];
    [tVOutDisplay setPreferences:v8];
  }
}

- (BOOL)adaptiveSyncEnabled
{
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  v3 = tVOutDisplay;
  if (tVOutDisplay)
  {
    preferences = [tVOutDisplay preferences];
    prefersVariableRefreshRate = [preferences prefersVariableRefreshRate];
  }

  else
  {
    prefersVariableRefreshRate = 0;
  }

  return prefersVariableRefreshRate;
}

- (void)setAdaptiveSyncEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x277D85DE8];
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (tVOutDisplay)
  {
    v5 = DBSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_22102E000, v5, OS_LOG_TYPE_DEFAULT, "External Display: Setting adaptive sync preference enabled to: %@", &v9, 0xCu);
    }

    preferences = [tVOutDisplay preferences];
    v8 = [preferences mutableCopy];

    [v8 setPrefersVariableRefreshRate:enabledCopy];
    [tVOutDisplay setPreferences:v8];
  }
}

- (NSNumber)externalDisplayBrightness
{
  brightnessSystemClient = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  v3 = [brightnessSystemClient copyPropertyForKey:@"DisplayBrightness2"];

  return v3;
}

- (BOOL)autoBrightnessEnabled
{
  brightnessSystemClient = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  v3 = [brightnessSystemClient copyPropertyForKey:@"DisplayBrightnessAuto2"];

  LOBYTE(brightnessSystemClient) = [v3 BOOLValue];
  return brightnessSystemClient;
}

- (void)setAutoBrightnessEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v15 = *MEMORY[0x277D85DE8];
  v5 = DBSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_22102E000, v5, OS_LOG_TYPE_DEFAULT, "External Display: Setting external display auto brightness setting to to %@.", &v13, 0xCu);
  }

  brightnessSystemClient = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v9 = [brightnessSystemClient setProperty:v8 forKey:@"DisplayBrightnessAuto2"];

  v10 = DBSLogForCategory(0);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      LOWORD(v13) = 0;
      v12 = "External Display: Set external display auto brightness setting successfully.";
LABEL_8:
      _os_log_impl(&dword_22102E000, v10, OS_LOG_TYPE_DEFAULT, v12, &v13, 2u);
    }
  }

  else if (v11)
  {
    LOWORD(v13) = 0;
    v12 = "External Display: Failed to set external display auto brightness setting.";
    goto LABEL_8;
  }
}

- (void)setExternalDisplayBrightness:(id)brightness shouldCommit:(BOOL)commit
{
  commitCopy = commit;
  v21 = *MEMORY[0x277D85DE8];
  brightnessCopy = brightness;
  v7 = DBSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:commitCopy];
    *buf = 138412546;
    v18 = brightnessCopy;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_22102E000, v7, OS_LOG_TYPE_DEFAULT, "External Display: Setting external display brightness to %@ with hint %@.", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{commitCopy, @"Brightness", @"Commit", brightnessCopy}];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:2];

  brightnessSystemClient = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  LODWORD(v9) = [brightnessSystemClient setProperty:v10 forKey:@"DisplayBrightness2"];

  v12 = DBSLogForCategory(0);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v13)
    {
      *buf = 0;
      v14 = "External Display: Set external display brightness successfully.";
LABEL_8:
      _os_log_impl(&dword_22102E000, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }
  }

  else if (v13)
  {
    *buf = 0;
    v14 = "External Display: Failed to set external display brightness.";
    goto LABEL_8;
  }
}

- (BOOL)isMirroringEnabled
{
  displayInfo = self->_displayInfo;
  if (displayInfo)
  {
    LOBYTE(displayInfo) = [(SBSConnectedDisplayInfo *)displayInfo isMirrored];
  }

  return displayInfo;
}

- (void)setMirroringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  identifier = [(SBSConnectedDisplayInfo *)self->_displayInfo identifier];

  if (identifier)
  {
    displayService = [(DBSExternalDisplayManager *)self displayService];
    identifier2 = [(SBSConnectedDisplayInfo *)self->_displayInfo identifier];
    [displayService setMirroringEnabled:enabledCopy forDisplay:identifier2];

    [(DBSExternalDisplayManager *)self _notifyObserversDidUpdateMirroringEnabledState:enabledCopy];

    [(DBSExternalDisplayManager *)self _updateDisplayInfo];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v24 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  tVOutDisplay = [MEMORY[0x277CD9E40] TVOutDisplay];
  v14 = tVOutDisplay;
  if (PKDisplayPreferencesContext == context && [tVOutDisplay isEqual:objectCopy])
  {
    defaultCenter = DBSLogForCategory(0);
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_DEFAULT))
    {
      preferences = [v14 preferences];
      v17 = [preferences description];
      *buf = 138412290;
      v23 = v17;
      _os_log_impl(&dword_22102E000, defaultCenter, OS_LOG_TYPE_DEFAULT, "External Display: Display preference did change: %@", buf, 0xCu);
    }
  }

  else
  {
    if (PKDisplayCurrentModeContext != context || ![v14 isEqual:objectCopy])
    {
      v21.receiver = self;
      v21.super_class = DBSExternalDisplayManager;
      [(DBSExternalDisplayManager *)&v21 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_12;
    }

    v18 = DBSLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      currentMode = [v14 currentMode];
      v20 = [currentMode description];
      *buf = 138412290;
      v23 = v20;
      _os_log_impl(&dword_22102E000, v18, OS_LOG_TYPE_DEFAULT, "External Display: Display current mode did change %@", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];
  }

LABEL_12:
}

- (void)externalDisplayDidConnect:(id)connect
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];

  [(DBSExternalDisplayManager *)self _updateDisplayInfo];
}

- (void)externalDisplayWillDisconnect:(id)disconnect
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];

  [(DBSExternalDisplayManager *)self _updateDisplayInfo];
}

- (BOOL)deviceSupportsChamoisExternalDisplay
{
  v2 = MGGetBoolAnswer();
  if (v2)
  {
    if (_os_feature_enabled_impl())
    {
      LOBYTE(v2) = 1;
    }

    else
    {

      LOBYTE(v2) = _os_feature_enabled_impl();
    }
  }

  return v2;
}

- (void)_updateDisplayInfo
{
  displayInfo = self->_displayInfo;
  self->_displayInfo = 0;

  objc_initWeak(&location, self);
  displayService = [(DBSExternalDisplayManager *)self displayService];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__DBSExternalDisplayManager__updateDisplayInfo__block_invoke;
  v5[3] = &unk_278459730;
  objc_copyWeak(&v6, &location);
  [displayService getConnectedDisplayInfoWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__DBSExternalDisplayManager__updateDisplayInfo__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v6 count])
  {
    v4 = [v6 firstObject];
    v5 = WeakRetained[5];
    WeakRetained[5] = v4;
  }
}

- (void)_notifyObserversDidUpdateMirroringEnabledState:(BOOL)state
{
  stateCopy = state;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 externalDisplayManager:self didUpdateMirroringEnabledState:stateCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (CGSize)nativeDisplaySize
{
  width = self->_nativeDisplaySize.width;
  height = self->_nativeDisplaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end