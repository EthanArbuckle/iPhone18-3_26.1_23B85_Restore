@interface SBDeviceApplicationSceneStatusBarStateProvider
- (BOOL)_statusBarAppearsOutsideOfAJailedApp;
- (BOOL)_statusBarAppearsOutsideOfAJailedAppCanChange;
- (BOOL)_statusBarAppearsOutsideOfAJailedAppInOrientation:(int64_t)a3;
- (BOOL)_statusBarHiddenGivenFallbackOrientation:(int64_t)a3;
- (BOOL)sceneWantsDeviceOrientationEventsEnabled;
- (CGRect)statusBarAvoidanceFrame;
- (double)_statusBarAlpha;
- (id)_initWithSceneHandle:(id)a3;
- (id)_statusBarPartStyles;
- (id)backgroundActivitiesToSuppress;
- (id)breadcrumbProvider;
- (id)classicApplicationSceneHandleIfExists;
- (id)overlayStatusBarData;
- (id)sceneToHandleStatusBarTapIfExists;
- (id)statusBarSceneIdentifier;
- (int64_t)_defaultStatusBarStyle;
- (int64_t)_fallbackInterfaceOrientation;
- (int64_t)_statusBarOrientationGivenFallbackOrientation:(int64_t)a3;
- (int64_t)_statusBarStyle;
- (int64_t)_statusBarStyleForPartWithIdentifier:(id)a3 suppressingInherited:(BOOL)a4;
- (uint64_t)_statusBarCanAppearOutsideApp;
- (void)_handleStatusBarBackgroundActivitiesToSuppressUpdate;
- (void)_performUpdateWith:(id)a3 actions:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateStatusBarSettings;
- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5;
@end

@implementation SBDeviceApplicationSceneStatusBarStateProvider

- (uint64_t)_statusBarCanAppearOutsideApp
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained application];
  if ([v2 isClassic])
  {
    v3 = [WeakRetained _windowScene];
    v4 = [v3 switcherController];
    v5 = [v4 isChamoisWindowingUIEnabled] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_statusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v4 = [WeakRetained sceneIfExists];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 uiClientSettings];
    v7 = [v6 statusBarModernStyle];
  }

  else
  {
    v7 = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self defaultStatusBarStyle];
  }

  return v7;
}

- (int64_t)_defaultStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained _defaultStatusBarStyleFromSceneDataStore];
  if (v3 == -1)
  {
    v4 = [WeakRetained application];
    v5 = [v4 info];
    v3 = [v5 defaultStatusBarStyle];
  }

  v6 = _SBStatusBarStyleFromLegacyStyle(v3);

  return v6;
}

- (int64_t)_fallbackInterfaceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained defaultInterfaceOrientation];

  return v3;
}

- (id)backgroundActivitiesToSuppress
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained sceneIfExists];
  v4 = 0;
  if (([WeakRetained sceneFullyOccluded] & 1) == 0 && v3)
  {
    v4 = [WeakRetained backgroundActivitiesToSuppress];
    v5 = [v3 uiClientSettings];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 mutableCopy];
      v7 = [v5 preferredBackgroundActivitiesToSuppress];
      [v6 unionSet:v7];

      v4 = v6;
    }
  }

  return v4;
}

- (double)_statusBarAlpha
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained sceneIfExists];

  if (v3)
  {
    v4 = [v3 uiClientSettings];
    [v4 statusBarAlpha];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (BOOL)_statusBarAppearsOutsideOfAJailedApp
{
  v3 = [(SBDeviceApplicationSceneStatusBarStateProvider *)self _statusBarOrientationGivenFallbackOrientation:[(SBDeviceApplicationSceneStatusBarStateProvider *)self _fallbackInterfaceOrientation]];

  return [(SBDeviceApplicationSceneStatusBarStateProvider *)self _statusBarAppearsOutsideOfAJailedAppInOrientation:v3];
}

- (void)invalidateStatusBarSettings
{
  v3 = [(SBDeviceApplicationSceneStatusBarStateProvider *)self statusBarSceneIdentifier];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__SBDeviceApplicationSceneStatusBarStateProvider_invalidateStatusBarSettings__block_invoke;
  v5[3] = &unk_2783AC850;
  v6 = v3;
  v4 = v3;
  [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v5];
}

- (id)statusBarSceneIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained sceneIdentifier];

  return v3;
}

uint64_t __77__SBDeviceApplicationSceneStatusBarStateProvider_invalidateStatusBarSettings__block_invoke(uint64_t result, void *a2, char a3)
{
  if ((a3 & 0x20) != 0)
  {
    return [a2 didInvalidateStatusBarDescriptionForSceneWithIdentifier:*(result + 32)];
  }

  return result;
}

- (CGRect)statusBarAvoidanceFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained sceneIfExists];

  if (v3)
  {
    v4 = [v3 uiSettings];
    [v4 statusBarAvoidanceFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)_statusBarPartStyles
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained sceneIfExists];

  if (v3)
  {
    v4 = [v3 uiClientSettings];
    v5 = [v4 statusBarPartStyles];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (BOOL)sceneWantsDeviceOrientationEventsEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained wantsDeviceOrientationEventsEnabled];

  return v3;
}

- (BOOL)_statusBarAppearsOutsideOfAJailedAppCanChange
{
  CanAppearOutside = [(SBDeviceApplicationSceneStatusBarStateProvider *)self _statusBarCanAppearOutsideApp];
  if (CanAppearOutside)
  {
    v4 = [(SBDeviceApplicationSceneStatusBarStateProvider *)self _statusBarAppearsOutsideOfAJailedAppInOrientation:1];
    LOBYTE(CanAppearOutside) = v4 ^ [(SBDeviceApplicationSceneStatusBarStateProvider *)self _statusBarAppearsOutsideOfAJailedAppInOrientation:4];
  }

  return CanAppearOutside;
}

- (void)invalidate
{
  [(UIApplicationSceneClientSettingsDiffInspector *)self->_appClientSettingsDiffInspector removeAllObservers];
  [(UIApplicationSceneSettingsDiffInspector *)self->_appSceneSettingsDiffInspector removeAllObservers];
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  [WeakRetained removeObserver:self];
}

- (void)dealloc
{
  [(SBDeviceApplicationSceneStatusBarStateProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneStatusBarStateProvider;
  [(SBDeviceApplicationSceneStatusBarStateProvider *)&v3 dealloc];
}

- (id)_initWithSceneHandle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBDeviceApplicationSceneStatusBarStateProvider;
  v5 = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sceneHandle, v4);
    [v4 addObserver:v6];
  }

  return v6;
}

- (int64_t)_statusBarStyleForPartWithIdentifier:(id)a3 suppressingInherited:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self statusBarPartStyles];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    if (!v4)
    {
      v9 = 4;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v9 = [v8 integerValue];
  if (v9 == 4 && v4)
  {
LABEL_6:
    v9 = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self statusBarStyle];
  }

LABEL_8:

  return v9;
}

- (BOOL)_statusBarHiddenGivenFallbackOrientation:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v5 = [WeakRetained sceneIfExists];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 uiClientSettings];
    v8 = [v7 statusBarHidden];
  }

  else
  {
    v8 = [WeakRetained defaultStatusBarHiddenForOrientation:a3];
  }

  return v8;
}

- (int64_t)_statusBarOrientationGivenFallbackOrientation:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v5 = [WeakRetained sceneIfExists];

  if (v5)
  {
    v6 = [v5 uiSettings];
    if ([v6 deviceOrientationEventsEnabled])
    {
      v7 = [v5 uiClientSettings];
      a3 = [v7 interfaceOrientation];
    }

    else
    {
      a3 = [v6 interfaceOrientation];
    }
  }

  return a3;
}

- (id)overlayStatusBarData
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained overlayStatusBarData];

  return v3;
}

- (id)breadcrumbProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained breadcrumbProvider];

  return v3;
}

- (id)classicApplicationSceneHandleIfExists
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained application];
  if ([v3 isClassic])
  {
    v4 = WeakRetained;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)sceneToHandleStatusBarTapIfExists
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained sceneIfExists];

  return v3;
}

- (BOOL)_statusBarAppearsOutsideOfAJailedAppInOrientation:(int64_t)a3
{
  if ([(SBDeviceApplicationSceneStatusBarStateProvider *)self _statusBarCanAppearOutsideApp])
  {
    WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
    v6 = [WeakRetained application];
    v7 = [v6 includesStatusBarInClassicJailForInterfaceOrientation:a3] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 settingsDiff];
  v9 = [v7 transitionContext];
  if (v8)
  {
    appClientSettingsDiffInspector = self->_appClientSettingsDiffInspector;
    if (!appClientSettingsDiffInspector)
    {
      v11 = objc_alloc_init(MEMORY[0x277D75160]);
      v12 = self->_appClientSettingsDiffInspector;
      self->_appClientSettingsDiffInspector = v11;

      objc_initWeak(location, self);
      v13 = self->_appClientSettingsDiffInspector;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke;
      v35[3] = &unk_2783AC8A0;
      objc_copyWeak(&v36, location);
      [(UIApplicationSceneClientSettingsDiffInspector *)v13 observeStatusBarModernStyleWithBlock:v35];
      v14 = self->_appClientSettingsDiffInspector;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_3;
      v33[3] = &unk_2783AC8A0;
      objc_copyWeak(&v34, location);
      [(UIApplicationSceneClientSettingsDiffInspector *)v14 observeStatusBarPartStylesWithBlock:v33];
      v15 = self->_appClientSettingsDiffInspector;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_3_13;
      v31[3] = &unk_2783AC8A0;
      objc_copyWeak(&v32, location);
      [(UIApplicationSceneClientSettingsDiffInspector *)v15 observeStatusBarAlphaWithBlock:v31];
      v16 = self->_appClientSettingsDiffInspector;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_3_18;
      v29[3] = &unk_2783AC8A0;
      objc_copyWeak(&v30, location);
      [(UIApplicationSceneClientSettingsDiffInspector *)v16 observeStatusBarHiddenWithBlock:v29];
      v17 = self->_appClientSettingsDiffInspector;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_3_23;
      v27[3] = &unk_2783AC8A0;
      objc_copyWeak(&v28, location);
      [(UIApplicationSceneClientSettingsDiffInspector *)v17 observeInterfaceOrientationWithBlock:v27];
      objc_destroyWeak(&v28);
      objc_destroyWeak(&v30);
      objc_destroyWeak(&v32);
      objc_destroyWeak(&v34);
      objc_destroyWeak(&v36);
      objc_destroyWeak(location);
      appClientSettingsDiffInspector = self->_appClientSettingsDiffInspector;
    }

    [v8 evaluateWithInspector:appClientSettingsDiffInspector context:v9];
    if (!self->_hasAttemptedInCallSceneClientSettingsDiffInspectorCreation)
    {
      self->_hasAttemptedInCallSceneClientSettingsDiffInspectorCreation = 1;
      v18 = [v6 sceneIfExists];
      v19 = [v18 clientSettings];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v21 = objc_alloc_init(MEMORY[0x277D67BB0]);
        inCallSceneClientSettingsDiffInspector = self->_inCallSceneClientSettingsDiffInspector;
        self->_inCallSceneClientSettingsDiffInspector = v21;

        objc_initWeak(location, self);
        v23 = self->_inCallSceneClientSettingsDiffInspector;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_3_29;
        v25[3] = &unk_2783AC8A0;
        objc_copyWeak(&v26, location);
        [(SBSUIInCallSceneClientSettingsDiffInspector *)v23 observePreferredStatusBarStyleOverridesToSuppressWithBlock:v25];
        objc_destroyWeak(&v26);
        objc_destroyWeak(location);
      }
    }

    v24 = self->_inCallSceneClientSettingsDiffInspector;
    if (v24)
    {
      [v8 evaluateWithInspector:v24 context:v9];
    }
  }
}

void __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 statusBarSceneIdentifier];
  v5 = [v3 statusBarStyle];
  v6 = SBLogAppStatusBars();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = _SBStringFromStatusBarStyle(v5);
    *buf = 138412802;
    v14 = v4;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "(%@) %@ statusBarModernStyle scene client setting changed to %@", buf, 0x20u);
  }

  if ([v3 _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarStyleTo_])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_6;
    v10[3] = &unk_2783AB2A8;
    v10[4] = v3;
    v11 = v4;
    v12 = v5;
    [v3 _performUpdateWith:a2 actions:v10];
  }
}

void __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_6(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_2;
  v5[3] = &unk_2783AC878;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObserversWithBlock:v5];
}

uint64_t __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_2(uint64_t result, void *a2, char a3)
{
  if (a3)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeStatusBarStyleTo:*(result + 40)];
  }

  return result;
}

void __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 statusBarSceneIdentifier];
  v5 = [v3 statusBarPartStyles];
  v6 = SBLogAppStatusBars();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v12 = v4;
    v13 = 2112;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = v5;
    v7 = v14;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "(%@) %@ statusBarPartStyles scene client setting changed to %@", buf, 0x20u);
  }

  if ([v3 _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarStyleTo_forPartWithIdentifier_])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_11;
    v8[3] = &unk_2783A8ED8;
    v8[4] = v3;
    v9 = v3;
    v10 = v4;
    [v9 _performUpdateWith:a2 actions:v8];
  }
}

void __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_2_12;
  v3[3] = &unk_2783AC8C8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateObserversWithBlock:v3];
}

void __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_2_12(uint64_t a1, void *a2, char a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ((a3 & 2) != 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [*(a1 + 32) statusBarPartStyles];
    v7 = [v6 allKeys];

    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v5 sceneWithIdentifier:*(a1 + 48) didChangeStatusBarStyleTo:objc_msgSend(*(a1 + 40) forPartWithIdentifier:{"statusBarStyleForPartWithIdentifier:", *(*(&v12 + 1) + 8 * v11)), *(*(&v12 + 1) + 8 * v11)}];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

void __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_3_13(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 statusBarSceneIdentifier];
  [v3 statusBarAlpha];
  v6 = v5;
  v7 = SBLogAppStatusBars();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v13 = v4;
    v14 = 2112;
    v15 = objc_opt_class();
    v16 = 2048;
    v17 = v6;
    v8 = v15;
    _os_log_debug_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEBUG, "(%@) %@ statusBarAlpha scene client setting changed to %f", buf, 0x20u);
  }

  if ([v3 _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarAlphaTo_])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_16;
    v9[3] = &unk_2783AB2A8;
    v9[4] = v3;
    v10 = v4;
    v11 = v6;
    [v3 _performUpdateWith:a2 actions:v9];
  }
}

void __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_16(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_2_17;
  v3[3] = &unk_2783AC878;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateObserversWithBlock:v3];
}

uint64_t __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_2_17(uint64_t result, void *a2, char a3)
{
  if ((a3 & 4) != 0)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeStatusBarAlphaTo:*(result + 40)];
  }

  return result;
}

void __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_3_18(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 statusBarSceneIdentifier];
  v5 = [v3 statusBarHidden];
  v6 = SBLogAppStatusBars();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v13 = v4;
    v14 = 2112;
    v15 = objc_opt_class();
    v16 = 1024;
    v17 = v5;
    v7 = v15;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "(%@) %@ statusBarHidden scene client setting changed to %{BOOL}u", buf, 0x1Cu);
  }

  if ([v3 _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarHiddenTo_withAnimation_])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_21;
    v8[3] = &unk_2783AC918;
    v10 = a2;
    v8[4] = v3;
    v9 = v4;
    v11 = v5;
    [v3 _performUpdateWith:a2 actions:v8];
  }
}

void __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_21(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ([v2 isUISubclass])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 statusBarAnimation];
  }

  else
  {
    v6 = 1;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_2_22;
  v9[3] = &unk_2783AC8F0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = *(a1 + 56);
  v10 = v8;
  v11 = v6;
  [v7 enumerateObserversWithBlock:v9];
}

uint64_t __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_2_22(uint64_t result, void *a2, char a3)
{
  if ((a3 & 8) != 0)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeStatusBarHiddenTo:*(result + 48) withAnimation:*(result + 40)];
  }

  return result;
}

void __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_3_23(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = v3;
  if (v3 && [v3 sceneWantsDeviceOrientationEventsEnabled])
  {
    v5 = [v4 statusBarSceneIdentifier];
    v6 = [v4 statusBarOrientation];
    v7 = SBLogAppStatusBars();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = BSInterfaceOrientationDescription();
      *buf = 138412802;
      v15 = v5;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      _os_log_debug_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEBUG, "(%@) %@ interfaceOrientation scene client setting changed to %@", buf, 0x20u);
    }

    if ([v4 _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarOrientationTo_])
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_26;
      v11[3] = &unk_2783AB2A8;
      v11[4] = v4;
      v12 = v5;
      v13 = v6;
      [v4 _performUpdateWith:a2 actions:v11];
    }
  }
}

void __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_26(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_2_27;
  v5[3] = &unk_2783AC878;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObserversWithBlock:v5];
}

uint64_t __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_2_27(uint64_t result, void *a2, char a3)
{
  if ((a3 & 0x10) != 0)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeStatusBarOrientationTo:*(result + 40)];
  }

  return result;
}

void __86__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateClientSettings___block_invoke_3_29(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleStatusBarBackgroundActivitiesToSuppressUpdate];
}

- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    appSceneSettingsDiffInspector = self->_appSceneSettingsDiffInspector;
    if (!appSceneSettingsDiffInspector)
    {
      v12 = objc_alloc_init(MEMORY[0x277D75178]);
      v13 = self->_appSceneSettingsDiffInspector;
      self->_appSceneSettingsDiffInspector = v12;

      objc_initWeak(&location, self);
      v14 = self->_appSceneSettingsDiffInspector;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __105__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke;
      v18[3] = &unk_2783AC8A0;
      objc_copyWeak(&v19, &location);
      [(UIApplicationSceneSettingsDiffInspector *)v14 observeInterfaceOrientationWithBlock:v18];
      v15 = self->_appSceneSettingsDiffInspector;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __105__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_2;
      v16[3] = &unk_2783AC8A0;
      objc_copyWeak(&v17, &location);
      [(UIApplicationSceneSettingsDiffInspector *)v15 observeStatusBarAvoidanceFrameWithBlock:v16];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
      appSceneSettingsDiffInspector = self->_appSceneSettingsDiffInspector;
    }

    [v9 evaluateWithInspector:appSceneSettingsDiffInspector context:0];
  }
}

void __105__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = objc_loadWeakRetained((a1 + 32));
  v2 = [v1 statusBarSceneIdentifier];
  v3 = [v1 statusBarOrientation];
  v4 = [v1 sceneWantsDeviceOrientationEventsEnabled];
  v5 = SBLogAppStatusBars();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = BSInterfaceOrientationDescription();
    *buf = 138413058;
    v21 = v2;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v10;
    v26 = 1024;
    v27 = v4;
    _os_log_debug_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEBUG, "(%@) %@ interfaceOrientation scene setting changed to %@ (wantsDeviceOrientationEventsEnabled: %{BOOL}u)", buf, 0x26u);
  }

  if ([v1 _anyObserverWants:sel_sceneWithIdentifier_didChangeSceneInterfaceOrientationTo_])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __105__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_33;
    v17[3] = &unk_2783AC878;
    v18 = v2;
    v19 = v3;
    [v1 enumerateObserversWithBlock:v17];
  }

  if ([v1 _statusBarAppearsOutsideOfAJailedAppCanChange])
  {
    v6 = [v1 statusBarStyle];
    v7 = SBLogAppStatusBars();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = _SBStringFromStatusBarStyle(v6);
      *buf = 138412802;
      v21 = v2;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v13;
      _os_log_debug_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEBUG, "(%@) %@ statusBarModernStyle changed via rotation of a classic app to %@", buf, 0x20u);
    }

    if ([v1 _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarStyleTo_])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __105__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_34;
      v14[3] = &unk_2783AC878;
      v15 = v2;
      v16 = v6;
      [v1 enumerateObserversWithBlock:v14];
    }
  }
}

uint64_t __105__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_33(uint64_t result, void *a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeSceneInterfaceOrientationTo:*(result + 40)];
  }

  return result;
}

uint64_t __105__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_34(uint64_t result, void *a2, char a3)
{
  if (a3)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeStatusBarStyleTo:*(result + 40)];
  }

  return result;
}

void __105__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = objc_loadWeakRetained((a1 + 32));
  v2 = [v1 statusBarSceneIdentifier];
  [v1 statusBarAvoidanceFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = SBLogAppStatusBars();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    v14 = NSStringFromCGRect(v28);
    *buf = 138412802;
    v22 = v2;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v14;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "(%@) %@ statusBarAvoidanceFrame scene setting changed to %@", buf, 0x20u);
  }

  if ([v1 _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarAvoidanceFrameTo_])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __105__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_37;
    v15[3] = &unk_2783AC940;
    v16 = v2;
    v17 = v4;
    v18 = v6;
    v19 = v8;
    v20 = v10;
    [v1 enumerateObserversWithBlock:v15];
  }
}

uint64_t __105__SBDeviceApplicationSceneStatusBarStateProvider_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_37(uint64_t result, void *a2, char a3)
{
  if (a3 < 0)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeStatusBarAvoidanceFrameTo:{*(result + 40), *(result + 48), *(result + 56), *(result + 64)}];
  }

  return result;
}

- (void)_performUpdateWith:(id)a3 actions:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v10 animationSettings];
  if (v6)
  {
    v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    v8 = [MEMORY[0x277CF0D38] factoryWithSettings:v6 timingFunction:v7];
    [v8 setAllowsAdditiveAnimations:1];
    [MEMORY[0x277CF0D38] animateWithFactory:v8 actions:v5];
  }

  else if (v5)
  {
    v5[2](v5);
  }

  v9 = [v10 animationFence];
  if (v9)
  {
    [MEMORY[0x277D75940] _synchronizeDrawingWithFence:v9];
  }
}

- (void)_handleStatusBarBackgroundActivitiesToSuppressUpdate
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = self;
  v3 = [(SBDeviceApplicationSceneStatusBarStateProvider *)v2 statusBarSceneIdentifier];
  v4 = [(SBDeviceApplicationSceneStatusBarStateProvider *)v2 backgroundActivitiesToSuppress];
  v5 = SBLogAppStatusBars();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = STBackgroundActivityIdentifiersDescription();
    *buf = 138412802;
    v13 = v3;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_debug_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEBUG, "(%@) %@ backgroundActivitiesToSuppress scene setting changed to %@ ", buf, 0x20u);
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProvider *)v2 _anyObserverWants:sel_sceneWithIdentifier_didChangeBackgroundActivitiesToSuppressTo_])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __102__SBDeviceApplicationSceneStatusBarStateProvider__handleStatusBarBackgroundActivitiesToSuppressUpdate__block_invoke;
    v9[3] = &unk_2783AC968;
    v10 = v3;
    v11 = v4;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)v2 enumerateObserversWithBlock:v9];
  }
}

uint64_t __102__SBDeviceApplicationSceneStatusBarStateProvider__handleStatusBarBackgroundActivitiesToSuppressUpdate__block_invoke(uint64_t result, void *a2, char a3)
{
  if ((a3 & 0x40) != 0)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeBackgroundActivitiesToSuppressTo:*(result + 40)];
  }

  return result;
}

uint64_t __76__SBDeviceApplicationSceneStatusBarStateProvider_Base_addStatusBarObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 observer];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __79__SBDeviceApplicationSceneStatusBarStateProvider_Base_removeStatusBarObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 observer];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end