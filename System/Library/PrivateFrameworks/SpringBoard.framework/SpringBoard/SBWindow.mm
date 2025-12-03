@interface SBWindow
- (BOOL)_shouldResizeWithScene;
- (BOOL)isActive;
- (NSString)description;
- (NSString)orientationSourceDescription;
- (SBWindow)initWithFrame:(CGRect)frame;
- (SBWindow)initWithWindowScene:(id)scene rootViewController:(id)controller layoutStrategy:(id)strategy role:(id)role debugName:(id)name;
- (UIView)recycledViewsContainer;
- (id)sb_coronaAnimationController;
- (int64_t)activeInterfaceOrientation;
- (void)_addHiddenReason:(id)reason;
- (void)_removeHiddenReason:(id)reason;
- (void)_sb_updateAutorotatesFlagAndForceInterfaceOrientationUpdate:(BOOL)update;
- (void)_updateHidingForSecureRendering:(BOOL)rendering;
- (void)_updateRealIsHidden;
- (void)dealloc;
- (void)handleStatusBarChangeFromHeight:(double)height toHeight:(double)toHeight;
- (void)layoutStrategyFrameOnScreenDidChange:(id)change;
- (void)makeKeyAndVisible;
- (void)moveToWindowSceneIfNeeded:(id)needed;
- (void)sb_updateAutorotatesFlag;
- (void)setAlphaAndObeyBecauseIAmTheWindowManager:(double)manager;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SBWindow

- (void)_updateRealIsHidden
{
  v3 = self->_requestedHiddenValue || [(NSMutableSet *)self->_additionalHiddenReasons count]!= 0;
  v4.receiver = self;
  v4.super_class = SBWindow;
  [(SBFWindow *)&v4 setHidden:v3];
}

- (BOOL)_shouldResizeWithScene
{
  screen = [(SBWindow *)self screen];
  displayIdentity = [screen displayIdentity];
  isMainDisplay = [displayIdentity isMainDisplay];

  return isMainDisplay ^ 1;
}

- (UIView)recycledViewsContainer
{
  recycledViewsContainerView = self->_recycledViewsContainerView;
  if (!recycledViewsContainerView)
  {
    v4 = [SBRecycledViewsContainer alloc];
    v5 = [(SBRecycledViewsContainer *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_recycledViewsContainerView;
    self->_recycledViewsContainerView = v5;

    [(SBRecycledViewsContainer *)self->_recycledViewsContainerView setHidden:1];
    [(SBRecycledViewsContainer *)self->_recycledViewsContainerView setAlpha:0.0];
    [(SBRecycledViewsContainer *)self->_recycledViewsContainerView setUserInteractionEnabled:0];
    [(SBWindow *)self addSubview:self->_recycledViewsContainerView];
    recycledViewsContainerView = self->_recycledViewsContainerView;
  }

  return recycledViewsContainerView;
}

- (id)sb_coronaAnimationController
{
  coronaAnimationController = self->_coronaAnimationController;
  if (!coronaAnimationController)
  {
    v4 = objc_alloc_init(MEMORY[0x277D679A8]);
    v5 = self->_coronaAnimationController;
    self->_coronaAnimationController = v4;

    coronaAnimationController = self->_coronaAnimationController;
  }

  return coronaAnimationController;
}

- (SBWindow)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBWindow.m" lineNumber:125 description:{@"%s - dont' call this function - %@", "-[SBWindow initWithFrame:]", callStackSymbols}];

  return 0;
}

- (SBWindow)initWithWindowScene:(id)scene rootViewController:(id)controller layoutStrategy:(id)strategy role:(id)role debugName:(id)name
{
  v49 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  controllerCopy = controller;
  strategyCopy = strategy;
  roleCopy = role;
  nameCopy = name;
  if (!strategyCopy)
  {
    strategyCopy = [objc_opt_class() defaultLayoutStrategy];
  }

  [strategyCopy frameWithInterfaceOrientation:1 windowScene:sceneCopy];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = SBLogStartup();
  v27 = v26;
  if (sceneCopy)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = _SBFLoggingMethodProem();
      *buf = 138543618;
      v46 = v28;
      v47 = 2114;
      v48 = sceneCopy;
      _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] wiring up with windowScene: %{public}@", buf, 0x16u);
    }

    v44.receiver = self;
    v44.super_class = SBWindow;
    v29 = [(SBWindow *)&v44 _initWithFrame:nameCopy debugName:sceneCopy windowScene:v19, v21, v23, v25];
    if (!v29)
    {
      goto LABEL_27;
    }

LABEL_11:
    v29->_requestedHiddenValue = [(SBWindow *)v29 isHidden];
    _isSecure = [objc_opt_class() _isSecure];
    if ((_isSecure & 1) == 0)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v29 selector:sel__willEnableSecureRendering_ name:*MEMORY[0x277D66028] object:0];
      [defaultCenter addObserver:v29 selector:sel__didDisableSecureRendering_ name:*MEMORY[0x277D66020] object:0];
    }

    objc_storeStrong(&v29->_layoutStrategy, strategyCopy);
    [(SBWindow *)v29 setClipsToBounds:[(SBWindowLayoutStrategy *)v29->_layoutStrategy shouldClipForWindow:v29]];
    [(SBWindow *)v29 _setWindowInterfaceOrientation:1];
    if (roleCopy)
    {
      [(SBWindow *)v29 _setRoleHint:roleCopy];
    }

    if (controllerCopy)
    {
      isHidden = [(SBWindow *)v29 isHidden];
      [(SBWindow *)v29 setRootViewController:controllerCopy];
      [(SBWindow *)v29 setHidden:0];
      [(SBWindow *)v29 setHidden:isHidden];
    }

    [(SBWindowLayoutStrategy *)v29->_layoutStrategy addObserver:v29];
    if ((_isSecure & 1) == 0)
    {
      v34 = objc_opt_class();
      v35 = sceneCopy;
      if (v34)
      {
        if (objc_opt_isKindOfClass())
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
      }

      v37 = v36;

      secureDisplayStateProvider = [v37 secureDisplayStateProvider];
      v39 = secureDisplayStateProvider;
      if (secureDisplayStateProvider)
      {
        authenticationController = secureDisplayStateProvider;
      }

      else
      {
        authenticationController = [SBApp authenticationController];
      }

      v41 = authenticationController;

      -[SBWindow _updateHidingForSecureRendering:](v29, "_updateHidingForSecureRendering:", [v41 isInSecureDisplayMode]);
    }

    goto LABEL_27;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [SBWindow initWithWindowScene:a2 rootViewController:v27 layoutStrategy:? role:? debugName:?];
  }

  v30 = SBMainWindowScene();
  v43.receiver = self;
  v43.super_class = SBWindow;
  v29 = [(SBWindow *)&v43 _initWithFrame:nameCopy debugName:v30 windowScene:v19, v21, v23, v25];

  if (v29)
  {
    goto LABEL_11;
  }

LABEL_27:

  return v29;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D66028] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D66020] object:0];

  v4.receiver = self;
  v4.super_class = SBWindow;
  [(SBFWindow *)&v4 dealloc];
}

- (void)layoutStrategyFrameOnScreenDidChange:(id)change
{
  changeCopy = change;
  interfaceOrientation = [(SBWindow *)self interfaceOrientation];
  windowScene = [(SBWindow *)self windowScene];
  [changeCopy frameWithInterfaceOrientation:interfaceOrientation windowScene:windowScene];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15.receiver = self;
  v15.super_class = SBWindow;
  [(SBWindow *)&v15 setFrame:v8, v10, v12, v14];
}

- (void)makeKeyAndVisible
{
  v3.receiver = self;
  v3.super_class = SBWindow;
  [(SBWindow *)&v3 makeKeyAndVisible];
  self->_requestedHiddenValue = 0;
  [(SBWindow *)self _updateRealIsHidden];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(SBWindow *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if ([changeCopy userInterfaceStyle] != userInterfaceStyle)
  {
    [(SBUICoronaAnimationController *)self->_coronaAnimationController coronaDidChange:userInterfaceStyle];
  }

  v7.receiver = self;
  v7.super_class = SBWindow;
  [(SBWindow *)&v7 traitCollectionDidChange:changeCopy];
}

- (void)handleStatusBarChangeFromHeight:(double)height toHeight:(double)toHeight
{
  if (([objc_opt_class() sb_disableStatusBarHeightChanges] & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = SBWindow;
    [(SBWindow *)&v7 handleStatusBarChangeFromHeight:height toHeight:toHeight];
  }
}

- (void)sb_updateAutorotatesFlag
{
  sb_autorotates = [objc_opt_class() sb_autorotates];
  if (sb_autorotates)
  {
    screen = [(SBWindow *)self screen];
    _isRotatable = [screen _isRotatable];
  }

  else
  {
    _isRotatable = 0;
  }

  v6.receiver = self;
  v6.super_class = SBWindow;
  [(SBWindow *)&v6 setAutorotates:_isRotatable forceUpdateInterfaceOrientation:0];
  if (sb_autorotates)
  {
  }
}

- (void)_sb_updateAutorotatesFlagAndForceInterfaceOrientationUpdate:(BOOL)update
{
  updateCopy = update;
  sb_autorotates = [objc_opt_class() sb_autorotates];
  if (sb_autorotates)
  {
    screen = [(SBWindow *)self screen];
    _isRotatable = [screen _isRotatable];
  }

  else
  {
    _isRotatable = 0;
  }

  v8.receiver = self;
  v8.super_class = SBWindow;
  [(SBWindow *)&v8 setAutorotates:_isRotatable forceUpdateInterfaceOrientation:updateCopy];
  if (sb_autorotates)
  {
  }
}

- (void)moveToWindowSceneIfNeeded:(id)needed
{
  neededCopy = needed;
  windowScene = [(SBWindow *)self windowScene];

  v5 = neededCopy;
  if (windowScene != neededCopy)
  {
    [(SBWindow *)self setWindowScene:neededCopy];
    v5 = neededCopy;
  }
}

- (void)_addHiddenReason:(id)reason
{
  reasonCopy = reason;
  additionalHiddenReasons = self->_additionalHiddenReasons;
  v8 = reasonCopy;
  if (!additionalHiddenReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_additionalHiddenReasons;
    self->_additionalHiddenReasons = v6;

    reasonCopy = v8;
    additionalHiddenReasons = self->_additionalHiddenReasons;
  }

  [(NSMutableSet *)additionalHiddenReasons addObject:reasonCopy];
  [(SBWindow *)self _updateRealIsHidden];
}

- (void)_removeHiddenReason:(id)reason
{
  [(NSMutableSet *)self->_additionalHiddenReasons removeObject:reason];

  [(SBWindow *)self _updateRealIsHidden];
}

- (void)_updateHidingForSecureRendering:(BOOL)rendering
{
  if (rendering && (-[SBWindow screen](self, "screen"), v4 = objc_claimAutoreleasedReturnValue(), [v4 displayIdentity], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isMainDisplay"), v5, v4, v6))
  {

    [(SBWindow *)self _addHiddenReason:@"SBWindowHiddenReasonSecureRendering"];
  }

  else
  {

    [(SBWindow *)self _removeHiddenReason:@"SBWindowHiddenReasonSecureRendering"];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  _debugName = [(SBWindow *)self _debugName];
  v5 = [v3 appendObject:_debugName withName:0];

  appendSuper = [v3 appendSuper];
  build = [v3 build];

  return build;
}

- (int64_t)activeInterfaceOrientation
{
  rootViewController = [(SBWindow *)self rootViewController];
  if (objc_opt_respondsToSelector())
  {
    _overrideWindowActiveInterfaceOrientation = [rootViewController _overrideWindowActiveInterfaceOrientation];
  }

  else
  {
    _overrideWindowActiveInterfaceOrientation = [(SBWindow *)self _windowInterfaceOrientation];
  }

  v5 = _overrideWindowActiveInterfaceOrientation;

  return v5;
}

- (BOOL)isActive
{
  if (([(SBWindow *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  rootViewController = [(SBWindow *)self rootViewController];
  v3 = rootViewController != 0;

  return v3;
}

- (NSString)orientationSourceDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  _debugName = [(SBWindow *)self _debugName];
  v5 = [v3 appendObject:_debugName withName:0];

  [(SBWindow *)self activeInterfaceOrientation];
  v6 = BSInterfaceOrientationDescription();
  v7 = [v3 appendObject:v6 withName:@"orientation"];

  [(SBWindow *)self orientationSourceLevel];
  v9 = [v3 appendInteger:v8 withName:@"level"];
  v10 = [v3 appendBool:-[SBWindow isActive](self withName:{"isActive"), @"active"}];
  build = [v3 build];

  return build;
}

- (void)setAlphaAndObeyBecauseIAmTheWindowManager:(double)manager
{
  v3.receiver = self;
  v3.super_class = SBWindow;
  [(SBWindow *)&v3 setAlpha:manager];
}

- (void)initWithWindowScene:(NSObject *)a3 rootViewController:layoutStrategy:role:debugName:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _SBFLoggingMethodProem();
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] no windowScene passed in somehow. the caller better wire one up soon", &v5, 0xCu);
}

@end