@interface SBDeviceApplicationSceneStatusBarStateProxy
- (BOOL)_statusBarAppearsOutsideOfAJailedApp;
- (BOOL)_statusBarHiddenGivenFallbackOrientation:(int64_t)orientation;
- (BOOL)sceneWantsDeviceOrientationEventsEnabled;
- (CGRect)statusBarAvoidanceFrame;
- (SBDeviceApplicationSceneStatusBarStateProxy)initWithDeviceApplicationSceneHandle:(id)handle;
- (double)_statusBarAlpha;
- (id)_statusBarPartStyles;
- (id)backgroundActivitiesToSuppress;
- (id)breadcrumbProvider;
- (id)classicApplicationSceneHandleIfExists;
- (id)overlayStatusBarData;
- (id)sceneToHandleStatusBarTapIfExists;
- (id)statusBarSceneIdentifier;
- (int64_t)_defaultStatusBarStyle;
- (int64_t)_fallbackInterfaceOrientation;
- (int64_t)_statusBarOrientationGivenFallbackOrientation:(int64_t)orientation;
- (int64_t)_statusBarStyle;
- (int64_t)_statusBarStyleForPartWithIdentifier:(id)identifier suppressingInherited:(BOOL)inherited;
- (void)didInvalidateStatusBarDescriptionForSceneWithIdentifier:(id)identifier;
- (void)invalidateStatusBarSettings;
- (void)sceneWithIdentifier:(id)identifier didChangeBackgroundActivitiesToSuppressTo:(id)to;
- (void)sceneWithIdentifier:(id)identifier didChangeSceneInterfaceOrientationTo:(int64_t)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarAlphaTo:(double)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarAvoidanceFrameTo:(CGRect)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarHiddenTo:(BOOL)to withAnimation:(int64_t)animation;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarOrientationTo:(int64_t)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to forPartWithIdentifier:(id)withIdentifier;
@end

@implementation SBDeviceApplicationSceneStatusBarStateProxy

- (void)invalidateStatusBarSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  [WeakRetained invalidateStatusBarSettings];
}

- (id)statusBarSceneIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  statusBarSceneIdentifier = [WeakRetained statusBarSceneIdentifier];

  return statusBarSceneIdentifier;
}

- (BOOL)_statusBarAppearsOutsideOfAJailedApp
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  _statusBarAppearsOutsideOfAJailedApp = [WeakRetained _statusBarAppearsOutsideOfAJailedApp];

  return _statusBarAppearsOutsideOfAJailedApp;
}

- (id)backgroundActivitiesToSuppress
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  backgroundActivitiesToSuppress = [WeakRetained backgroundActivitiesToSuppress];

  return backgroundActivitiesToSuppress;
}

- (int64_t)_statusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  _statusBarStyle = [WeakRetained _statusBarStyle];

  return _statusBarStyle;
}

- (CGRect)statusBarAvoidanceFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  [WeakRetained statusBarAvoidanceFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (SBDeviceApplicationSceneStatusBarStateProxy)initWithDeviceApplicationSceneHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = SBDeviceApplicationSceneStatusBarStateProxy;
  v5 = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_deviceApplicationSceneHandle, handleCopy);
    statusBarStateProvider = [handleCopy statusBarStateProvider];
    objc_storeWeak(&v6->_stateProvider, statusBarStateProvider);
    [statusBarStateProvider addStatusBarObserver:v6];
  }

  return v6;
}

- (id)_statusBarPartStyles
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  _statusBarPartStyles = [WeakRetained _statusBarPartStyles];

  return _statusBarPartStyles;
}

- (int64_t)_statusBarStyleForPartWithIdentifier:(id)identifier suppressingInherited:(BOOL)inherited
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  v7 = [WeakRetained _statusBarStyleForPartWithIdentifier:identifierCopy suppressingInherited:{-[SBDeviceApplicationSceneStatusBarStateProxy _suppressInheritedPartStyles](self, "_suppressInheritedPartStyles")}];

  return v7;
}

- (double)_statusBarAlpha
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  [WeakRetained _statusBarAlpha];
  v4 = v3;

  return v4;
}

- (BOOL)_statusBarHiddenGivenFallbackOrientation:(int64_t)orientation
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  LOBYTE(orientation) = [WeakRetained _statusBarHiddenGivenFallbackOrientation:orientation];

  return orientation;
}

- (int64_t)_statusBarOrientationGivenFallbackOrientation:(int64_t)orientation
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  v5 = [WeakRetained _statusBarOrientationGivenFallbackOrientation:orientation];

  return v5;
}

- (BOOL)sceneWantsDeviceOrientationEventsEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  sceneWantsDeviceOrientationEventsEnabled = [WeakRetained sceneWantsDeviceOrientationEventsEnabled];

  return sceneWantsDeviceOrientationEventsEnabled;
}

- (id)overlayStatusBarData
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  overlayStatusBarData = [WeakRetained overlayStatusBarData];

  return overlayStatusBarData;
}

- (id)breadcrumbProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  breadcrumbProvider = [WeakRetained breadcrumbProvider];

  return breadcrumbProvider;
}

- (id)classicApplicationSceneHandleIfExists
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  classicApplicationSceneHandleIfExists = [WeakRetained classicApplicationSceneHandleIfExists];

  return classicApplicationSceneHandleIfExists;
}

- (id)sceneToHandleStatusBarTapIfExists
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  sceneToHandleStatusBarTapIfExists = [WeakRetained sceneToHandleStatusBarTapIfExists];

  return sceneToHandleStatusBarTapIfExists;
}

- (int64_t)_fallbackInterfaceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceApplicationSceneHandle);
  defaultInterfaceOrientation = [WeakRetained defaultInterfaceOrientation];

  return defaultInterfaceOrientation;
}

- (int64_t)_defaultStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  _defaultStatusBarStyle = [WeakRetained _defaultStatusBarStyle];

  return _defaultStatusBarStyle;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  statusBarStyle = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self statusBarStyle];
  if (statusBarStyle != to)
  {
    v8 = SBLogAppStatusBars();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = _SBStringFromStatusBarStyle(statusBarStyle);
      v12 = _SBStringFromStatusBarStyle(to);
      *buf = 138413058;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden style %@ (was provided %@)", buf, 0x2Au);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarStyleTo_])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __93__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarStyleTo___block_invoke;
    v13[3] = &unk_2783AC878;
    v14 = identifierCopy;
    v15 = statusBarStyle;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v13];
  }
}

uint64_t __93__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarStyleTo___block_invoke(uint64_t result, void *a2, char a3)
{
  if (a3)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeStatusBarStyleTo:*(result + 40)];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to forPartWithIdentifier:(id)withIdentifier
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v10 = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self statusBarStyleForPartWithIdentifier:withIdentifierCopy];
  if (v10 != to)
  {
    v11 = SBLogAppStatusBars();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = _SBStringFromStatusBarStyle(v10);
      v15 = _SBStringFromStatusBarStyle(to);
      *buf = 138413314;
      v21 = identifierCopy;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = withIdentifierCopy;
      v28 = 2112;
      v29 = v15;
      _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden style %@ for %@ (was provided %@)", buf, 0x34u);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarStyleTo_forPartWithIdentifier_])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __115__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarStyleTo_forPartWithIdentifier___block_invoke;
    v16[3] = &unk_2783BD2C0;
    v17 = identifierCopy;
    v19 = v10;
    v18 = withIdentifierCopy;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v16];
  }
}

void *__115__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarStyleTo_forPartWithIdentifier___block_invoke(void *result, void *a2, char a3)
{
  if ((a3 & 2) != 0)
  {
    return [a2 sceneWithIdentifier:result[4] didChangeStatusBarStyleTo:result[6] forPartWithIdentifier:result[5]];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarAlphaTo:(double)to
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self statusBarAlpha];
  v8 = v7;
  if (v7 != to)
  {
    v9 = SBLogAppStatusBars();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v15 = identifierCopy;
      v16 = 2112;
      v17 = objc_opt_class();
      v18 = 2048;
      v19 = v8;
      v20 = 2048;
      toCopy = to;
      v10 = v17;
      _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden alpha %1.1f (was provided %1.1f)", buf, 0x2Au);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarAlphaTo_])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __93__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarAlphaTo___block_invoke;
    v11[3] = &unk_2783AC878;
    v12 = identifierCopy;
    v13 = v8;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v11];
  }
}

uint64_t __93__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarAlphaTo___block_invoke(uint64_t result, void *a2, char a3)
{
  if ((a3 & 4) != 0)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeStatusBarAlphaTo:*(result + 40)];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarHiddenTo:(BOOL)to withAnimation:(int64_t)animation
{
  toCopy = to;
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  statusBarHidden = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self statusBarHidden];
  if (statusBarHidden != toCopy)
  {
    v10 = SBLogAppStatusBars();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = objc_opt_class();
      v20 = 1024;
      v21 = statusBarHidden;
      v22 = 1024;
      v23 = toCopy;
      v11 = v19;
      _os_log_debug_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden hidden %{BOOL}u (was provided %{BOOL}u)", buf, 0x22u);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarHiddenTo_withAnimation_])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __108__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarHiddenTo_withAnimation___block_invoke;
    v12[3] = &unk_2783AC8F0;
    v15 = statusBarHidden;
    v13 = identifierCopy;
    animationCopy = animation;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v12];
  }
}

uint64_t __108__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarHiddenTo_withAnimation___block_invoke(uint64_t result, void *a2, char a3)
{
  if ((a3 & 8) != 0)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeStatusBarHiddenTo:*(result + 48) withAnimation:*(result + 40)];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarOrientationTo:(int64_t)to
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  statusBarOrientation = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self statusBarOrientation];
  if (statusBarOrientation != to)
  {
    v8 = SBLogAppStatusBars();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = BSInterfaceOrientationDescription();
      v12 = BSInterfaceOrientationDescription();
      *buf = 138413058;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden orientation %@ (was provided %@)", buf, 0x2Au);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarOrientationTo_])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __99__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarOrientationTo___block_invoke;
    v13[3] = &unk_2783AC878;
    v14 = identifierCopy;
    v15 = statusBarOrientation;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v13];
  }
}

uint64_t __99__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarOrientationTo___block_invoke(uint64_t result, void *a2, char a3)
{
  if ((a3 & 0x10) != 0)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeStatusBarOrientationTo:*(result + 40)];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeBackgroundActivitiesToSuppressTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  toCopy = to;
  backgroundActivitiesToSuppress = [(SBDeviceApplicationSceneStatusBarStateProxy *)self backgroundActivitiesToSuppress];
  if ((BSEqualSets() & 1) == 0)
  {
    v9 = SBLogAppStatusBars();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = STBackgroundActivityIdentifiersDescription();
      v13 = STBackgroundActivityIdentifiersDescription();
      *buf = 138413058;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden backgroundActivitiesToSuppress %@ (was provided %@)", buf, 0x2Au);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeBackgroundActivitiesToSuppressTo_])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __109__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeBackgroundActivitiesToSuppressTo___block_invoke;
    v14[3] = &unk_2783AC968;
    v15 = identifierCopy;
    v16 = toCopy;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v14];
  }
}

uint64_t __109__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeBackgroundActivitiesToSuppressTo___block_invoke(uint64_t result, void *a2, char a3)
{
  if ((a3 & 0x40) != 0)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeBackgroundActivitiesToSuppressTo:*(result + 40)];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarAvoidanceFrameTo:(CGRect)to
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(SBDeviceApplicationSceneStatusBarStateProxy *)self statusBarAvoidanceFrame];
  v10 = v34.origin.x;
  v11 = v34.origin.y;
  v12 = v34.size.width;
  v13 = v34.size.height;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  if (!CGRectEqualToRect(v34, v37))
  {
    v14 = SBLogAppStatusBars();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v35.origin.x = v10;
      v35.origin.y = v11;
      v35.size.width = v12;
      v35.size.height = v13;
      v17 = NSStringFromCGRect(v35);
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v18 = NSStringFromCGRect(v36);
      *buf = 138413058;
      v26 = identifierCopy;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      _os_log_debug_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden statusBarAvoidanceFrame %@ (was provided %@)", buf, 0x2Au);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarAvoidanceFrameTo_])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __102__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarAvoidanceFrameTo___block_invoke;
    v19[3] = &unk_2783AC940;
    v20 = identifierCopy;
    v21 = x;
    v22 = y;
    v23 = width;
    v24 = height;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v19];
  }
}

uint64_t __102__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarAvoidanceFrameTo___block_invoke(uint64_t result, void *a2, char a3)
{
  if (a3 < 0)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeStatusBarAvoidanceFrameTo:{*(result + 40), *(result + 48), *(result + 56), *(result + 64)}];
  }

  return result;
}

- (void)didInvalidateStatusBarDescriptionForSceneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_didInvalidateStatusBarDescriptionForSceneWithIdentifier_])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __103__SBDeviceApplicationSceneStatusBarStateProxy_didInvalidateStatusBarDescriptionForSceneWithIdentifier___block_invoke;
    v5[3] = &unk_2783AC850;
    v6 = identifierCopy;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v5];
  }
}

uint64_t __103__SBDeviceApplicationSceneStatusBarStateProxy_didInvalidateStatusBarDescriptionForSceneWithIdentifier___block_invoke(uint64_t result, void *a2, char a3)
{
  if ((a3 & 0x20) != 0)
  {
    return [a2 didInvalidateStatusBarDescriptionForSceneWithIdentifier:*(result + 32)];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeSceneInterfaceOrientationTo:(int64_t)to
{
  identifierCopy = identifier;
  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeSceneInterfaceOrientationTo_])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __104__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeSceneInterfaceOrientationTo___block_invoke;
    v7[3] = &unk_2783AC878;
    v8 = identifierCopy;
    toCopy = to;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v7];
  }
}

uint64_t __104__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeSceneInterfaceOrientationTo___block_invoke(uint64_t result, void *a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    return [a2 sceneWithIdentifier:*(result + 32) didChangeSceneInterfaceOrientationTo:*(result + 40)];
  }

  return result;
}

@end