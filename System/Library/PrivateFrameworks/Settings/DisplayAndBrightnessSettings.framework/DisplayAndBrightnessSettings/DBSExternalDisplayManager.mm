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
- (id)mainDisplayImageWithWidth:(double)a3;
- (id)mainDisplayName;
- (id)preferredHDRModes;
- (id)supportedHDRModes;
- (id)supportedHDRModesWithHighRefreshRate;
- (id)supportedHDRModesWithVRR;
- (void)_notifyObserversDidUpdateMirroringEnabledState:(BOOL)a3;
- (void)_updateDisplayInfo;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)externalDisplayDidConnect:(id)a3;
- (void)externalDisplayWillDisconnect:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeObserver:(id)a3;
- (void)setAdaptiveSyncEnabled:(BOOL)a3;
- (void)setAutoBrightnessEnabled:(BOOL)a3;
- (void)setCurrentHDRMode:(id)a3;
- (void)setExternalDisplayBrightness:(id)a3 shouldCommit:(BOOL)a4;
- (void)setLimitRefreshRate:(BOOL)a3;
- (void)setMatchContent:(BOOL)a3;
- (void)setMirroringEnabled:(BOOL)a3;
- (void)updateNativeDisplaySize:(CGSize)a3;
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
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [MEMORY[0x277CD9E40] TVOutDisplay];
    if (v5)
    {
      v6 = NSStringFromSelector(sel_preferences);
      [v5 addObserver:v2 forKeyPath:v6 options:1 context:PKDisplayPreferencesContext];

      if (![(DBSExternalDisplayManager *)v2 deviceSupportsChamoisExternalDisplay])
      {
        v7 = NSStringFromSelector(sel_currentMode);
        [v5 addObserver:v2 forKeyPath:v7 options:1 context:PKDisplayCurrentModeContext];
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

    v12 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    objc_initWeak(&location, v2);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __33__DBSExternalDisplayManager_init__block_invoke_2;
    v19 = &unk_2784596E0;
    objc_copyWeak(&v20, &location);
    [v12 setTransitionHandler:&v16];
    v13 = [MEMORY[0x277D0AD08] monitorWithConfiguration:{v12, v16, v17, v18, v19}];
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
  v3 = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (v3)
  {
    v4 = NSStringFromSelector(sel_preferences);
    [v3 removeObserver:self forKeyPath:v4 context:PKDisplayPreferencesContext];

    if (![(DBSExternalDisplayManager *)self deviceSupportsChamoisExternalDisplay])
    {
      v5 = NSStringFromSelector(sel_currentMode);
      [v3 removeObserver:self forKeyPath:v5 context:PKDisplayCurrentModeContext];
    }
  }

  v6 = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  [v6 unregisterNotificationForKeys:&unk_28349F610];

  if ([(DBSExternalDisplayManager *)self deviceSupportsChamoisExternalDisplay])
  {
    [(SBSExternalDisplayService *)self->_displayService removeObserver:self];
  }

  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  v7.receiver = self;
  v7.super_class = DBSExternalDisplayManager;
  [(DBSExternalDisplayManager *)&v7 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if (![(NSHashTable *)self->_observers containsObject:v4])
    {
      [(NSHashTable *)self->_observers addObject:v5];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (id)externalDisplayName
{
  if ([(DBSExternalDisplayManager *)self externalDisplayAvailable])
  {
    v2 = [MEMORY[0x277CD9E40] TVOutDisplay];
    v3 = [v2 productName];
    if (v3 && (v4 = v3, [v2 productName], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v4, v6))
    {
      v7 = [v2 productName];
    }

    else
    {
      v7 = DBS_LocalizedStringForConnectedDisplays(@"EXTERNAL_DISPLAY");
    }

    v8 = v7;
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
    v2 = [MEMORY[0x277CD9E40] TVOutDisplay];
    v3 = v2;
    if (v2)
    {
      [v2 frame];
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

- (void)updateNativeDisplaySize:(CGSize)a3
{
  if (self->_nativeDisplaySize.width != a3.width || self->_nativeDisplaySize.height != a3.height)
  {
    self->_nativeDisplaySize = a3;
  }
}

- (id)mainDisplayName
{
  v2 = [MEMORY[0x277CD9E40] mainDisplay];
  v3 = [v2 productName];
  if (v3 && (v4 = v3, [v2 productName], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v4, v6))
  {
    v7 = [v2 productName];
  }

  else
  {
    v7 = DBS_LocalizedStringForConnectedDisplays(@"MAIN_DISPLAY");
  }

  v8 = v7;

  return v8;
}

- (id)mainDisplayImageWithWidth:(double)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 connectedScenes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__DBSExternalDisplayManager_mainDisplayImageWithWidth___block_invoke;
  v9[3] = &unk_278459708;
  v9[4] = &v10;
  [v4 enumerateObjectsUsingBlock:v9];

  [v11[5] interfaceOrientation];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];

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
    v2 = [MEMORY[0x277CD9E40] TVOutDisplay];
    v3 = [v2 supportedHDRModes];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (id)preferredHDRModes
{
  if ([(DBSExternalDisplayManager *)self externalDisplayAvailable])
  {
    v2 = [MEMORY[0x277CD9E40] TVOutDisplay];
    v3 = [v2 preferredHDRModes];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (id)supportedHDRModesWithHighRefreshRate
{
  v2 = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD9E50]);
    [v3 setHighRefreshRate:1];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v2 supportedHDRModesWithCriteria:v3];
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
  v2 = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD9E50]);
    [v3 setHighRefreshRate:1];
    [v3 setVariableRefreshRate:1];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v2 supportedHDRModesWithCriteria:v3];
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
  v2 = [MEMORY[0x277CD9E40] TVOutDisplay];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 currentMode];
    if ([v4 height])
    {
      v5 = [v4 width] != 0;
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
  v2 = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  v3 = [v2 copyPropertyForKey:@"DisplayBrightness2Available"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (BOOL)externalDisplayAutoBrightnessAvailable
{
  v2 = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  v3 = [v2 copyPropertyForKey:@"DisplayBrightnessAuto2Available"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (NSString)currentHDRMode
{
  v2 = [MEMORY[0x277CD9E40] TVOutDisplay];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 preferences];
    v5 = [v4 preferredHdrMode];

    if (v5)
    {
      v6 = [v3 preferences];
      [v6 preferredHdrMode];
    }

    else
    {
      v6 = [v3 currentMode];
      [v6 hdrMode];
    }
    v7 = ;
  }

  else
  {
    v7 = *MEMORY[0x277CDA178];
  }

  return v7;
}

- (void)setCurrentHDRMode:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (v4)
  {
    v5 = DBSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22102E000, v5, OS_LOG_TYPE_DEFAULT, "External Display: Setting current HDR mode preference to value: %@", &v8, 0xCu);
    }

    v6 = [v4 preferences];
    v7 = [v6 mutableCopy];

    [v7 setPreferredHdrMode:v3];
    [v4 setPreferences:v7];
  }
}

- (BOOL)matchContent
{
  v2 = [MEMORY[0x277CD9E40] TVOutDisplay];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 preferences];
    v5 = [v4 matchContent];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setMatchContent:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (v4)
  {
    v5 = DBSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_22102E000, v5, OS_LOG_TYPE_DEFAULT, "External Display: Setting match content preference to value: %@", &v9, 0xCu);
    }

    v7 = [v4 preferences];
    v8 = [v7 mutableCopy];

    [v8 setMatchContent:v3];
    [v4 setPreferences:v8];
  }
}

- (BOOL)limitRefreshRate
{
  v2 = [MEMORY[0x277CD9E40] TVOutDisplay];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 preferences];
    v5 = [v4 prefersHighRefreshRate] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setLimitRefreshRate:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (v4)
  {
    v5 = DBSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_22102E000, v5, OS_LOG_TYPE_DEFAULT, "External Display: Setting limit refresh rate preference to value: %@", &v9, 0xCu);
    }

    v7 = [v4 preferences];
    v8 = [v7 mutableCopy];

    [v8 setPrefersHighRefreshRate:!v3];
    [v4 setPreferences:v8];
  }
}

- (BOOL)adaptiveSyncEnabled
{
  v2 = [MEMORY[0x277CD9E40] TVOutDisplay];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 preferences];
    v5 = [v4 prefersVariableRefreshRate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAdaptiveSyncEnabled:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CD9E40] TVOutDisplay];
  if (v4)
  {
    v5 = DBSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_22102E000, v5, OS_LOG_TYPE_DEFAULT, "External Display: Setting adaptive sync preference enabled to: %@", &v9, 0xCu);
    }

    v7 = [v4 preferences];
    v8 = [v7 mutableCopy];

    [v8 setPrefersVariableRefreshRate:v3];
    [v4 setPreferences:v8];
  }
}

- (NSNumber)externalDisplayBrightness
{
  v2 = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  v3 = [v2 copyPropertyForKey:@"DisplayBrightness2"];

  return v3;
}

- (BOOL)autoBrightnessEnabled
{
  v2 = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  v3 = [v2 copyPropertyForKey:@"DisplayBrightnessAuto2"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (void)setAutoBrightnessEnabled:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = DBSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_22102E000, v5, OS_LOG_TYPE_DEFAULT, "External Display: Setting external display auto brightness setting to to %@.", &v13, 0xCu);
  }

  v7 = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v9 = [v7 setProperty:v8 forKey:@"DisplayBrightnessAuto2"];

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

- (void)setExternalDisplayBrightness:(id)a3 shouldCommit:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = DBSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_22102E000, v7, OS_LOG_TYPE_DEFAULT, "External Display: Setting external display brightness to %@ with hint %@.", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{v4, @"Brightness", @"Commit", v6}];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:2];

  v11 = [(DBSExternalDisplayManager *)self brightnessSystemClient];
  LODWORD(v9) = [v11 setProperty:v10 forKey:@"DisplayBrightness2"];

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

- (void)setMirroringEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBSConnectedDisplayInfo *)self->_displayInfo identifier];

  if (v5)
  {
    v6 = [(DBSExternalDisplayManager *)self displayService];
    v7 = [(SBSConnectedDisplayInfo *)self->_displayInfo identifier];
    [v6 setMirroringEnabled:v3 forDisplay:v7];

    [(DBSExternalDisplayManager *)self _notifyObserversDidUpdateMirroringEnabledState:v3];

    [(DBSExternalDisplayManager *)self _updateDisplayInfo];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CD9E40] TVOutDisplay];
  v14 = v13;
  if (PKDisplayPreferencesContext == a6 && [v13 isEqual:v11])
  {
    v15 = DBSLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 preferences];
      v17 = [v16 description];
      *buf = 138412290;
      v23 = v17;
      _os_log_impl(&dword_22102E000, v15, OS_LOG_TYPE_DEFAULT, "External Display: Display preference did change: %@", buf, 0xCu);
    }
  }

  else
  {
    if (PKDisplayCurrentModeContext != a6 || ![v14 isEqual:v11])
    {
      v21.receiver = self;
      v21.super_class = DBSExternalDisplayManager;
      [(DBSExternalDisplayManager *)&v21 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      goto LABEL_12;
    }

    v18 = DBSLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v14 currentMode];
      v20 = [v19 description];
      *buf = 138412290;
      v23 = v20;
      _os_log_impl(&dword_22102E000, v18, OS_LOG_TYPE_DEFAULT, "External Display: Display current mode did change %@", buf, 0xCu);
    }

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 postNotificationName:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];
  }

LABEL_12:
}

- (void)externalDisplayDidConnect:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];

  [(DBSExternalDisplayManager *)self _updateDisplayInfo];
}

- (void)externalDisplayWillDisconnect:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:DBSExternalDisplayManagerCurrentModeDidChange[0] object:0];

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
  v4 = [(DBSExternalDisplayManager *)self displayService];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__DBSExternalDisplayManager__updateDisplayInfo__block_invoke;
  v5[3] = &unk_278459730;
  objc_copyWeak(&v6, &location);
  [v4 getConnectedDisplayInfoWithCompletionHandler:v5];

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

- (void)_notifyObserversDidUpdateMirroringEnabledState:(BOOL)a3
{
  v3 = a3;
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
          [v10 externalDisplayManager:self didUpdateMirroringEnabledState:v3];
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