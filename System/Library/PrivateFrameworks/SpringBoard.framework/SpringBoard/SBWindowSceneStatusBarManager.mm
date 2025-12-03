@interface SBWindowSceneStatusBarManager
- (BOOL)_isEmbeddedDisplay;
- (BOOL)isStatusBarEffectivelyHidden;
- (CGRect)_combineAvoidanceFrame:(CGRect)frame withFrame:(CGRect)withFrame;
- (CGRect)_globalAvoidanceFrame;
- (CGRect)avoidanceFrameForStatusBar:(id)statusBar;
- (CGRect)sb_statusBarFrameForStatusBarHeight:(double)height;
- (CGRect)statusBarFrame;
- (CGRect)statusBarWindowFrame;
- (NSHashTable)_homeScreenLegibilityObservers;
- (SBWindowSceneStatusBarManager)initWithScene:(id)scene;
- (id)_legibilitySettings;
- (id)_transientOverlayPresentationManagerActiveStatusBarStyleRequest;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)leadingStatusBarStyleRequest;
- (id)succinctDescription;
- (id)trailingStatusBarStyleRequest;
- (int64_t)statusBarOrientation;
- (void)_applyAvoidanceFrameToStatusBar:(id)bar withGlobalAvoidanceFrame:(CGRect)frame animationSettings:(id)settings reason:(id)reason options:(unint64_t)options;
- (void)_setCurrentHomeScreenLegibilitySettings:(id)settings;
- (void)_setCurrentHomeScreenLegibilitySettingsAssertion:(id)assertion;
- (void)_startObservingLegibilityChanges;
- (void)_stopObservingLegibilityChanges;
- (void)_updateLegibility;
- (void)addHomeScreenStatusBarLegibilityObserver:(id)observer;
- (void)removeHomeScreenStatusBarLegibilityObserver:(id)observer;
- (void)sbf_addObserver:(id)observer;
- (void)setAvoidanceFrame:(CGRect)frame reason:(id)reason statusBar:(id)bar animationSettings:(id)settings options:(unint64_t)options;
- (void)setStatusBarOrientation:(int64_t)orientation;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)updateHomeScreenStatusBarLegibility;
- (void)wallpaperDidChangeForVariant:(int64_t)variant;
- (void)wallpaperLegibilitySettingsDidChange:(id)change forVariant:(int64_t)variant;
- (void)windowSceneDidConnect:(id)connect;
@end

@implementation SBWindowSceneStatusBarManager

- (BOOL)_isEmbeddedDisplay
{
  _fbsDisplayIdentity = [(UIStatusBarWindow *)self->_statusBarWindow _fbsDisplayIdentity];
  isMainDisplay = [_fbsDisplayIdentity isMainDisplay];

  return isMainDisplay;
}

- (CGRect)_globalAvoidanceFrame
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allValues = [(NSMutableDictionary *)self->_globalAvoidanceFrames allValues];
  v8 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v24 + 1) + 8 * v11) CGRectValue];
        [(SBWindowSceneStatusBarManager *)self _combineAvoidanceFrame:v4 withFrame:v3, v6, v5, v12, v13, v14, v15];
        v4 = v16;
        v3 = v17;
        v6 = v18;
        v5 = v19;
        ++v11;
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v20 = v4;
  v21 = v3;
  v22 = v6;
  v23 = v5;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)statusBarFrame
{
  if ([(SBWindowSceneStatusBarManager *)self isStatusBarHidden])
  {
    v3 = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 8);
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    [(SBWindowSceneStatusBarManager *)self statusBarHeight];
    [(SBWindowSceneStatusBarManager *)self sb_statusBarFrameForStatusBarHeight:?];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (int64_t)statusBarOrientation
{
  if ([(SBWindowSceneStatusBarManager *)self _isEmbeddedDisplay])
  {
    v3 = SBApp;

    return [v3 statusBarOrientationForEmbeddedDisplay];
  }

  else
  {
    statusBarWindow = self->_statusBarWindow;

    return [(UIStatusBarWindow *)statusBarWindow orientation];
  }
}

- (CGRect)statusBarWindowFrame
{
  windowScene = [(UIStatusBarWindow *)self->_statusBarWindow windowScene];
  [windowScene _referenceBounds];

  [(UIStatusBarWindow *)self->_statusBarWindow orientation];

  _UIWindowConvertRectFromOrientationToOrientation();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_updateLegibility
{
  v25 = *MEMORY[0x277D85DE8];
  _legibilitySettings = [(SBWindowSceneStatusBarManager *)self _legibilitySettings];
  _currentHomeScreenLegibilitySettings = [(SBWindowSceneStatusBarManager *)self _currentHomeScreenLegibilitySettings];
  v5 = MEMORY[0x277D663F0];
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  [v5 labelMaximumHeightForContentSizeCategory:preferredContentSizeCategory];
  v8 = v7;

  [_legibilitySettings setMinFillHeight:v8];
  if ((SBUILegibilitySettingsAreEqual() & 1) == 0)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D67F68] object:0];
  }

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    sb_description = [_legibilitySettings sb_description];
    *buf = 138412290;
    v24 = sb_description;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "Using legibility settings: %@", buf, 0xCu);
  }

  [(SBWindowSceneStatusBarManager *)self _setCurrentHomeScreenLegibilitySettings:_legibilitySettings];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  _homeScreenLegibilityObservers = [(SBWindowSceneStatusBarManager *)self _homeScreenLegibilityObservers];
  allObjects = [_homeScreenLegibilityObservers allObjects];

  v14 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v18 + 1) + 8 * v17++) homeScreenLegibilitySettingsDidChange:_legibilitySettings];
      }

      while (v15 != v17);
      v15 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }

  [(SBWindowSceneStatusBarManager *)self updateHomeScreenStatusBarLegibility];
}

- (id)_legibilitySettings
{
  v2 = +[SBWallpaperController sharedInstance];
  v3 = [v2 legibilitySettingsForVariant:1];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
  }

  v5 = v4;

  return v5;
}

- (NSHashTable)_homeScreenLegibilityObservers
{
  homeScreenLegibilityObservers = self->_homeScreenLegibilityObservers;
  if (!homeScreenLegibilityObservers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v5 = self->_homeScreenLegibilityObservers;
    self->_homeScreenLegibilityObservers = weakObjectsHashTable;

    homeScreenLegibilityObservers = self->_homeScreenLegibilityObservers;
  }

  return homeScreenLegibilityObservers;
}

void __90__SBWindowSceneStatusBarManager_HomeScreenLegibility__updateHomeScreenStatusBarLegibility__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setStyle:SBDefaultStatusBarStyle()];
  [v3 setLegibilitySettings:*(a1 + 32)];
}

- (void)updateHomeScreenStatusBarLegibility
{
  _currentHomeScreenLegibilitySettings = [(SBWindowSceneStatusBarManager *)self _currentHomeScreenLegibilitySettings];
  _currentHomeScreenLegibilitySettingsAssertion = [(SBWindowSceneStatusBarManager *)self _currentHomeScreenLegibilitySettingsAssertion];
  if (_currentHomeScreenLegibilitySettingsAssertion)
  {
    v5 = _currentHomeScreenLegibilitySettingsAssertion;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __90__SBWindowSceneStatusBarManager_HomeScreenLegibility__updateHomeScreenStatusBarLegibility__block_invoke;
    v8[3] = &unk_2783B9A70;
    v9 = _currentHomeScreenLegibilitySettings;
    [v5 modifySettingsWithBlock:v8];
  }

  else
  {
    v6 = objc_alloc_init(SBMutableStatusBarSettings);
    [(SBMutableStatusBarSettings *)v6 setStyle:SBDefaultStatusBarStyle()];
    [(SBMutableStatusBarSettings *)v6 setLegibilitySettings:_currentHomeScreenLegibilitySettings];
    assertionManager = [(SBWindowSceneStatusBarManager *)self assertionManager];
    v5 = [assertionManager newSettingsAssertionWithSettings:v6 atLevel:0 reason:@"SBHomeScreenStatusBar"];
    [v5 acquire];
    [(SBWindowSceneStatusBarManager *)self _setCurrentHomeScreenLegibilitySettingsAssertion:v5];
  }
}

- (SBWindowSceneStatusBarManager)initWithScene:(id)scene
{
  sceneCopy = scene;
  v34.receiver = self;
  v34.super_class = SBWindowSceneStatusBarManager;
  v6 = [(SBWindowSceneStatusBarManager *)&v34 initWithScene:sceneCopy];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = SBSafeCast(v7, sceneCopy);
    if (!v8)
    {
      [(SBWindowSceneStatusBarManager *)a2 initWithScene:v6];
    }

    session = [v8 session];
    role = [session role];
    v11 = [role isEqualToString:*MEMORY[0x277D772C8]];

    if (v11)
    {
      statusBarWindowForEmbeddedDisplay = [SBApp statusBarWindowForEmbeddedDisplay];
      statusBarForEmbeddedDisplay = [SBApp statusBarForEmbeddedDisplay];
      [statusBarWindowForEmbeddedDisplay setWindowScene:v8];
    }

    else
    {
      _statusBarWindowClass = [objc_opt_class() _statusBarWindowClass];
      _statusBarClass = [objc_opt_class() _statusBarClass];
      statusBarWindowForEmbeddedDisplay = [[_statusBarWindowClass alloc] initWithWindowScene:v8];
      [statusBarWindowForEmbeddedDisplay frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [(SBWindowSceneStatusBarManager *)v6 defaultStatusBarHeight];
      statusBarForEmbeddedDisplay = [[_statusBarClass alloc] initWithFrame:{v17, v19, v21, v22}];
      [statusBarForEmbeddedDisplay setOrientation:1];
      [statusBarForEmbeddedDisplay setStyleDelegate:SBApp];
      [(SBWindowSceneStatusBarManager *)v6 updateStatusBarAppearance];
      [statusBarWindowForEmbeddedDisplay setStatusBar:statusBarForEmbeddedDisplay];
      [statusBarWindowForEmbeddedDisplay setOrientation:1 animationParameters:0];
      [statusBarWindowForEmbeddedDisplay setWindowLevel:*MEMORY[0x277D772B8]];
      [statusBarWindowForEmbeddedDisplay _orderFrontWithoutMakingKey];
    }

    objc_storeStrong(&v6->_statusBarWindow, statusBarWindowForEmbeddedDisplay);
    objc_storeStrong(&v6->_statusBar, statusBarForEmbeddedDisplay);
    v23 = [[SBWindowSceneStatusBarAssertionManager alloc] initWithWindowScene:v8];
    assertionManager = v6->_assertionManager;
    v6->_assertionManager = v23;

    v25 = [[SBWindowSceneStatusBarLayoutManager alloc] initWithWindowScene:v8];
    layoutManager = v6->_layoutManager;
    v6->_layoutManager = v25;

    v27 = [[SBStatusBarReusePool alloc] initWithWindowScene:v8];
    reusePool = v6->_reusePool;
    v6->_reusePool = v27;

    [statusBarForEmbeddedDisplay setManager:v6->_assertionManager];
    objc_initWeak(&location, v6);
    v29 = v6->_reusePool;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __47__SBWindowSceneStatusBarManager_initWithScene___block_invoke;
    v31[3] = &unk_2783A99C8;
    objc_copyWeak(&v32, &location);
    [(SBStatusBarReusePool *)v29 setNewStatusBarConfigurationHandler:v31];
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __47__SBWindowSceneStatusBarManager_initWithScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _globalAvoidanceFrame];
  [WeakRetained _applyAvoidanceFrameToStatusBar:v3 withGlobalAvoidanceFrame:0 animationSettings:@"newly created status bar" reason:0 options:?];
}

- (void)windowSceneDidConnect:(id)connect
{
  connectCopy = connect;
  _sbWindowScene = [(UIStatusBarWindow *)self->_statusBarWindow _sbWindowScene];

  if (_sbWindowScene != connectCopy)
  {
    [(SBWindowSceneStatusBarManager *)a2 windowSceneDidConnect:?];
  }

  if (SBStatusBarIsSpeakeasy())
  {
    [(UIStatusBarWindow *)self->_statusBarWindow windowSceneDidConnect:connectCopy];
  }

  [(SBWindowSceneStatusBarManager *)self _startObservingLegibilityChanges];
}

- (BOOL)isStatusBarEffectivelyHidden
{
  if (([(SBWindowSceneStatusBarManager *)self isStatusBarHidden]& 1) != 0)
  {
    return 1;
  }

  [(UIStatusBar *)self->_statusBar alpha];
  return v4 == 0.0;
}

- (void)setStatusBarOrientation:(int64_t)orientation
{
  if ([(SBWindowSceneStatusBarManager *)self _isEmbeddedDisplay])
  {
    v5 = SBApp;

    [v5 setStatusBarOrientation:orientation forEmbeddedDisplayAnimated:0];
  }

  else
  {
    statusBarWindow = self->_statusBarWindow;

    [(UIStatusBarWindow *)statusBarWindow setOrientation:orientation animationParameters:0];
  }
}

- (void)setAvoidanceFrame:(CGRect)frame reason:(id)reason statusBar:(id)bar animationSettings:(id)settings options:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v56 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  barCopy = bar;
  settingsCopy = settings;
  if (!reasonCopy)
  {
    [SBWindowSceneStatusBarManager setAvoidanceFrame:a2 reason:self statusBar:? animationSettings:? options:?];
  }

  v19 = SBLogStatusBarish();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *v49 = x;
    *&v49[1] = y;
    *&v49[2] = width;
    *&v49[3] = height;
    v20 = [MEMORY[0x277CCAE60] valueWithBytes:v49 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *buf = 138412802;
    v51 = v20;
    v52 = 2114;
    v53 = reasonCopy;
    v54 = 2048;
    v55 = barCopy;
    _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "setAvoidanceFrame:%@ reason: %{public}@ statusBar: %p", buf, 0x20u);
  }

  if (barCopy)
  {
    instanceAvoidanceFrames = self->_instanceAvoidanceFrames;
    if (!instanceAvoidanceFrames)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v23 = self->_instanceAvoidanceFrames;
      self->_instanceAvoidanceFrames = weakToStrongObjectsMapTable;

      instanceAvoidanceFrames = self->_instanceAvoidanceFrames;
    }

    *v39 = x;
    *&v39[1] = y;
    *&v39[2] = width;
    *&v39[3] = height;
    v24 = [MEMORY[0x277CCAE60] valueWithBytes:v39 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [(NSMapTable *)instanceAvoidanceFrames setObject:v24 forKey:barCopy];

    [(SBWindowSceneStatusBarManager *)self _globalAvoidanceFrame];
    [(SBWindowSceneStatusBarManager *)self _applyAvoidanceFrameToStatusBar:barCopy withGlobalAvoidanceFrame:settingsCopy animationSettings:reasonCopy reason:options options:?];
  }

  else
  {
    if (!self->_globalAvoidanceFrames)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      globalAvoidanceFrames = self->_globalAvoidanceFrames;
      self->_globalAvoidanceFrames = dictionary;
    }

    *v48 = x;
    *&v48[1] = y;
    *&v48[2] = width;
    *&v48[3] = height;
    v27 = [MEMORY[0x277CCAE60] valueWithBytes:v48 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [(NSMutableDictionary *)self->_globalAvoidanceFrames setObject:v27 forKeyedSubscript:reasonCopy];

    [(SBWindowSceneStatusBarManager *)self _globalAvoidanceFrame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    reusePool = self->_reusePool;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __94__SBWindowSceneStatusBarManager_setAvoidanceFrame_reason_statusBar_animationSettings_options___block_invoke;
    v40[3] = &unk_2783A99F0;
    v40[4] = self;
    v43 = v28;
    v44 = v30;
    v45 = v32;
    v46 = v34;
    v37 = settingsCopy;
    v41 = v37;
    v38 = reasonCopy;
    v42 = v38;
    optionsCopy = options;
    [(SBStatusBarReusePool *)reusePool enumerateStatusBars:v40];
    [(SBWindowSceneStatusBarManager *)self _applyAvoidanceFrameToStatusBar:self->_statusBar withGlobalAvoidanceFrame:v37 animationSettings:v38 reason:options options:v29, v31, v33, v35];
  }
}

- (CGRect)avoidanceFrameForStatusBar:(id)statusBar
{
  instanceAvoidanceFrames = self->_instanceAvoidanceFrames;
  if (!statusBar)
  {
    statusBar = self->_statusBar;
  }

  v5 = [(NSMapTable *)instanceAvoidanceFrames objectForKey:statusBar];
  [v5 CGRectValue];

  [(SBWindowSceneStatusBarManager *)self _globalAvoidanceFrame];

  [SBWindowSceneStatusBarManager _combineAvoidanceFrame:"_combineAvoidanceFrame:withFrame:" withFrame:?];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_combineAvoidanceFrame:(CGRect)frame withFrame:(CGRect)withFrame
{
  height = withFrame.size.height;
  width = withFrame.size.width;
  y = withFrame.origin.y;
  x = withFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  if (!CGRectIsEmpty(frame))
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    if (CGRectIsEmpty(v16))
    {
      height = v8;
      width = v9;
      y = v10;
      x = v11;
    }

    else
    {
      v17.origin.x = v11;
      v17.origin.y = v10;
      v17.size.width = v9;
      v17.size.height = v8;
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v18 = CGRectUnion(v17, v20);
      x = v18.origin.x;
      y = v18.origin.y;
      width = v18.size.width;
      height = v18.size.height;
    }
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_applyAvoidanceFrameToStatusBar:(id)bar withGlobalAvoidanceFrame:(CGRect)frame animationSettings:(id)settings reason:(id)reason options:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v54 = *MEMORY[0x277D85DE8];
  barCopy = bar;
  settingsCopy = settings;
  reasonCopy = reason;
  v18 = [(NSMapTable *)self->_instanceAvoidanceFrames objectForKey:barCopy];
  [v18 CGRectValue];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [(SBWindowSceneStatusBarManager *)self _combineAvoidanceFrame:x withFrame:y, width, height, v20, v22, v24, v26];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = SBLogStatusBarish();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *v46 = v28;
    *&v46[1] = v30;
    *&v46[2] = v32;
    *&v46[3] = v34;
    v36 = [MEMORY[0x277CCAE60] valueWithBytes:v46 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *buf = 138412802;
    v49 = v36;
    v50 = 2048;
    v51 = barCopy;
    v52 = 2114;
    v53 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_INFO, "setting avoidanceFrame %@ on statusBar %p for reason: %{public}@", buf, 0x20u);
  }

  [barCopy setAvoidanceFrame:settingsCopy animationSettings:options options:{v28, v30, v32, v34}];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v38 = [allObjects countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v43;
    do
    {
      v41 = 0;
      do
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v42 + 1) + 8 * v41++) statusBarManager:self didUpdateAvoidanceFrameForStatusBar:barCopy withAnimationSettings:settingsCopy];
      }

      while (v39 != v41);
      v39 = [allObjects countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v39);
  }
}

- (id)leadingStatusBarStyleRequest
{
  if (![(SBWindowSceneStatusBarManager *)self isStatusBarEffectivelyHidden])
  {
LABEL_4:
    _transientOverlayPresentationManagerActiveStatusBarStyleRequest = [(SBWindowSceneStatusBarAssertionManager *)self->_assertionManager effectiveStatusBarStyleRequestWithSettings:0];
    goto LABEL_5;
  }

  _transientOverlayPresentationManagerActiveStatusBarStyleRequest = [(SBWindowSceneStatusBarManager *)self _transientOverlayPresentationManagerActiveStatusBarStyleRequest];
  if (!_transientOverlayPresentationManagerActiveStatusBarStyleRequest)
  {
    _sbWindowScene = [(UIStatusBarWindow *)self->_statusBarWindow _sbWindowScene];
    switcherController = [_sbWindowScene switcherController];

    leadingStatusBarStyleRequest = [switcherController leadingStatusBarStyleRequest];

    if (leadingStatusBarStyleRequest)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_5:
  leadingStatusBarStyleRequest = _transientOverlayPresentationManagerActiveStatusBarStyleRequest;
LABEL_6:

  return leadingStatusBarStyleRequest;
}

- (id)trailingStatusBarStyleRequest
{
  if (![(SBWindowSceneStatusBarManager *)self isStatusBarEffectivelyHidden])
  {
LABEL_7:
    _transientOverlayPresentationManagerActiveStatusBarStyleRequest = [(SBWindowSceneStatusBarAssertionManager *)self->_assertionManager effectiveStatusBarStyleRequestWithSettings:0];
    goto LABEL_8;
  }

  _transientOverlayPresentationManagerActiveStatusBarStyleRequest = [(SBWindowSceneStatusBarManager *)self _transientOverlayPresentationManagerActiveStatusBarStyleRequest];
  if (!_transientOverlayPresentationManagerActiveStatusBarStyleRequest)
  {
    _sbWindowScene = [(UIStatusBarWindow *)self->_statusBarWindow _sbWindowScene];
    switcherController = [_sbWindowScene switcherController];

    leadingStatusBarStyleRequest = [switcherController leadingStatusBarStyleRequest];
    trailingStatusBarStyleRequest = [switcherController trailingStatusBarStyleRequest];
    v8 = trailingStatusBarStyleRequest;
    if (trailingStatusBarStyleRequest)
    {
      v9 = trailingStatusBarStyleRequest;
    }

    else
    {
      v9 = leadingStatusBarStyleRequest;
    }

    v10 = v9;

    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_8:
  v10 = _transientOverlayPresentationManagerActiveStatusBarStyleRequest;
LABEL_9:

  return v10;
}

- (id)_transientOverlayPresentationManagerActiveStatusBarStyleRequest
{
  _sbWindowScene = [(UIStatusBarWindow *)self->_statusBarWindow _sbWindowScene];
  transientOverlayPresenter = [_sbWindowScene transientOverlayPresenter];
  if ([transientOverlayPresenter hasActivePresentation])
  {
    currentStatusBarStyleRequest = [transientOverlayPresenter currentStatusBarStyleRequest];

    if (currentStatusBarStyleRequest)
    {
      currentStatusBarStyleRequest = [transientOverlayPresenter currentStatusBarStyleRequest];
    }
  }

  else
  {
    currentStatusBarStyleRequest = 0;
  }

  return currentStatusBarStyleRequest;
}

- (CGRect)sb_statusBarFrameForStatusBarHeight:(double)height
{
  _screen = [(UIStatusBarWindow *)self->_statusBarWindow _screen];
  [_screen _referenceBounds];

  [(SBWindowSceneStatusBarManager *)self statusBarOrientation];
  _UIWindowConvertRectFromOrientationToOrientation();
  heightCopy = height;
  result.size.height = heightCopy;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBWindowSceneStatusBarManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBWindowSceneStatusBarManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBWindowSceneStatusBarManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SBWindowSceneStatusBarManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __71__SBWindowSceneStatusBarManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 64) _sbWindowScene];
  v4 = [v3 succinctDescription];
  v5 = [v2 appendObject:v4 withName:@"windowScene"];

  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 72) withName:@"status bar"];
  v7 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"status bar window"];
  v8 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 136) withName:@"layout manager"];
  v9 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 128) withName:@"assertion manager"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 144) withName:@"reuse pool"];
}

- (void)sbf_addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)_setCurrentHomeScreenLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (self->_currentHomeScreenLegibilitySettings != settingsCopy)
  {
    v6 = settingsCopy;
    objc_storeStrong(&self->_currentHomeScreenLegibilitySettings, settings);
    settingsCopy = v6;
  }
}

- (void)_setCurrentHomeScreenLegibilitySettingsAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (self->_currentHomeScreenLegibilitySettingsAssertion != assertionCopy)
  {
    v6 = assertionCopy;
    objc_storeStrong(&self->_currentHomeScreenLegibilitySettingsAssertion, assertion);
    assertionCopy = v6;
  }
}

- (void)addHomeScreenStatusBarLegibilityObserver:(id)observer
{
  observerCopy = observer;
  _homeScreenLegibilityObservers = [(SBWindowSceneStatusBarManager *)self _homeScreenLegibilityObservers];
  [_homeScreenLegibilityObservers addObject:observerCopy];
  _currentHomeScreenLegibilitySettings = [(SBWindowSceneStatusBarManager *)self _currentHomeScreenLegibilitySettings];
  [observerCopy homeScreenLegibilitySettingsDidChange:_currentHomeScreenLegibilitySettings];
}

- (void)removeHomeScreenStatusBarLegibilityObserver:(id)observer
{
  observerCopy = observer;
  _homeScreenLegibilityObservers = [(SBWindowSceneStatusBarManager *)self _homeScreenLegibilityObservers];
  [_homeScreenLegibilityObservers removeObject:observerCopy];
}

- (void)_startObservingLegibilityChanges
{
  [(SBWindowSceneStatusBarManager *)self _updateLegibility];
  rootSettings = [MEMORY[0x277D65E90] rootSettings];
  [rootSettings addKeyObserver:self];

  v4 = +[SBWallpaperController sharedInstance];
  [v4 addObserver:self forVariant:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__preferredContentSizeDidChange_ name:*MEMORY[0x277D76810] object:0];
}

- (void)_stopObservingLegibilityChanges
{
  rootSettings = [MEMORY[0x277D65E90] rootSettings];
  [rootSettings removeKeyObserver:self];

  v4 = +[SBWallpaperController sharedInstance];
  [v4 removeObserver:self forVariant:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];
}

- (void)wallpaperLegibilitySettingsDidChange:(id)change forVariant:(int64_t)variant
{
  if (variant == 1)
  {
    [(SBWindowSceneStatusBarManager *)self _updateLegibility];
  }
}

- (void)wallpaperDidChangeForVariant:(int64_t)variant
{
  if (variant == 1)
  {
    [(SBWindowSceneStatusBarManager *)self _updateLegibility];
    v5 = MEMORY[0x277D660C8];

    [v5 warmupIfNecessary];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v5 = MEMORY[0x277D65E90];
  settingsCopy = settings;
  rootSettings = [v5 rootSettings];

  if (rootSettings == settingsCopy)
  {
    v8 = [MEMORY[0x277D760A8] sharedInstanceForStyle:0];
    [(SBWindowSceneStatusBarManager *)self _setCurrentHomeScreenLegibilitySettings:v8];
    [(SBWindowSceneStatusBarManager *)self _updateLegibility];
  }
}

- (void)initWithScene:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowSceneStatusBarManager.m" lineNumber:63 description:@"SBWindowSceneStatusBarManager is only for use with SBWindowScenes"];
}

- (void)windowSceneDidConnect:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowSceneStatusBarManager.m" lineNumber:115 description:@"should connect to the window scene our status bar window is on"];
}

- (void)setAvoidanceFrame:(uint64_t)a1 reason:(uint64_t)a2 statusBar:animationSettings:options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowSceneStatusBarManager.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"reason != nil"}];
}

@end