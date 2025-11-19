@interface SBWindow
- (BOOL)_shouldResizeWithScene;
- (BOOL)isActive;
- (NSString)description;
- (NSString)orientationSourceDescription;
- (SBWindow)initWithFrame:(CGRect)a3;
- (SBWindow)initWithWindowScene:(id)a3 rootViewController:(id)a4 layoutStrategy:(id)a5 role:(id)a6 debugName:(id)a7;
- (UIView)recycledViewsContainer;
- (id)sb_coronaAnimationController;
- (int64_t)activeInterfaceOrientation;
- (void)_addHiddenReason:(id)a3;
- (void)_removeHiddenReason:(id)a3;
- (void)_sb_updateAutorotatesFlagAndForceInterfaceOrientationUpdate:(BOOL)a3;
- (void)_updateHidingForSecureRendering:(BOOL)a3;
- (void)_updateRealIsHidden;
- (void)dealloc;
- (void)handleStatusBarChangeFromHeight:(double)a3 toHeight:(double)a4;
- (void)layoutStrategyFrameOnScreenDidChange:(id)a3;
- (void)makeKeyAndVisible;
- (void)moveToWindowSceneIfNeeded:(id)a3;
- (void)sb_updateAutorotatesFlag;
- (void)setAlphaAndObeyBecauseIAmTheWindowManager:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
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
  v2 = [(SBWindow *)self screen];
  v3 = [v2 displayIdentity];
  v4 = [v3 isMainDisplay];

  return v4 ^ 1;
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

- (SBWindow)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = [MEMORY[0x277CCACC8] callStackSymbols];
  [v5 handleFailureInMethod:a2 object:self file:@"SBWindow.m" lineNumber:125 description:{@"%s - dont' call this function - %@", "-[SBWindow initWithFrame:]", v6}];

  return 0;
}

- (SBWindow)initWithWindowScene:(id)a3 rootViewController:(id)a4 layoutStrategy:(id)a5 role:(id)a6 debugName:(id)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v15)
  {
    v15 = [objc_opt_class() defaultLayoutStrategy];
  }

  [v15 frameWithInterfaceOrientation:1 windowScene:v13];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = SBLogStartup();
  v27 = v26;
  if (v13)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = _SBFLoggingMethodProem();
      *buf = 138543618;
      v46 = v28;
      v47 = 2114;
      v48 = v13;
      _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] wiring up with windowScene: %{public}@", buf, 0x16u);
    }

    v44.receiver = self;
    v44.super_class = SBWindow;
    v29 = [(SBWindow *)&v44 _initWithFrame:v17 debugName:v13 windowScene:v19, v21, v23, v25];
    if (!v29)
    {
      goto LABEL_27;
    }

LABEL_11:
    v29->_requestedHiddenValue = [(SBWindow *)v29 isHidden];
    v31 = [objc_opt_class() _isSecure];
    if ((v31 & 1) == 0)
    {
      v32 = [MEMORY[0x277CCAB98] defaultCenter];
      [v32 addObserver:v29 selector:sel__willEnableSecureRendering_ name:*MEMORY[0x277D66028] object:0];
      [v32 addObserver:v29 selector:sel__didDisableSecureRendering_ name:*MEMORY[0x277D66020] object:0];
    }

    objc_storeStrong(&v29->_layoutStrategy, v15);
    [(SBWindow *)v29 setClipsToBounds:[(SBWindowLayoutStrategy *)v29->_layoutStrategy shouldClipForWindow:v29]];
    [(SBWindow *)v29 _setWindowInterfaceOrientation:1];
    if (v16)
    {
      [(SBWindow *)v29 _setRoleHint:v16];
    }

    if (v14)
    {
      v33 = [(SBWindow *)v29 isHidden];
      [(SBWindow *)v29 setRootViewController:v14];
      [(SBWindow *)v29 setHidden:0];
      [(SBWindow *)v29 setHidden:v33];
    }

    [(SBWindowLayoutStrategy *)v29->_layoutStrategy addObserver:v29];
    if ((v31 & 1) == 0)
    {
      v34 = objc_opt_class();
      v35 = v13;
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

      v38 = [v37 secureDisplayStateProvider];
      v39 = v38;
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = [SBApp authenticationController];
      }

      v41 = v40;

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
  v29 = [(SBWindow *)&v43 _initWithFrame:v17 debugName:v30 windowScene:v19, v21, v23, v25];

  if (v29)
  {
    goto LABEL_11;
  }

LABEL_27:

  return v29;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D66028] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D66020] object:0];

  v4.receiver = self;
  v4.super_class = SBWindow;
  [(SBFWindow *)&v4 dealloc];
}

- (void)layoutStrategyFrameOnScreenDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SBWindow *)self interfaceOrientation];
  v6 = [(SBWindow *)self windowScene];
  [v4 frameWithInterfaceOrientation:v5 windowScene:v6];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SBWindow *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if ([v4 userInterfaceStyle] != v6)
  {
    [(SBUICoronaAnimationController *)self->_coronaAnimationController coronaDidChange:v6];
  }

  v7.receiver = self;
  v7.super_class = SBWindow;
  [(SBWindow *)&v7 traitCollectionDidChange:v4];
}

- (void)handleStatusBarChangeFromHeight:(double)a3 toHeight:(double)a4
{
  if (([objc_opt_class() sb_disableStatusBarHeightChanges] & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = SBWindow;
    [(SBWindow *)&v7 handleStatusBarChangeFromHeight:a3 toHeight:a4];
  }
}

- (void)sb_updateAutorotatesFlag
{
  v4 = [objc_opt_class() sb_autorotates];
  if (v4)
  {
    v2 = [(SBWindow *)self screen];
    v5 = [v2 _isRotatable];
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = SBWindow;
  [(SBWindow *)&v6 setAutorotates:v5 forceUpdateInterfaceOrientation:0];
  if (v4)
  {
  }
}

- (void)_sb_updateAutorotatesFlagAndForceInterfaceOrientationUpdate:(BOOL)a3
{
  v4 = a3;
  v6 = [objc_opt_class() sb_autorotates];
  if (v6)
  {
    v3 = [(SBWindow *)self screen];
    v7 = [v3 _isRotatable];
  }

  else
  {
    v7 = 0;
  }

  v8.receiver = self;
  v8.super_class = SBWindow;
  [(SBWindow *)&v8 setAutorotates:v7 forceUpdateInterfaceOrientation:v4];
  if (v6)
  {
  }
}

- (void)moveToWindowSceneIfNeeded:(id)a3
{
  v6 = a3;
  v4 = [(SBWindow *)self windowScene];

  v5 = v6;
  if (v4 != v6)
  {
    [(SBWindow *)self setWindowScene:v6];
    v5 = v6;
  }
}

- (void)_addHiddenReason:(id)a3
{
  v4 = a3;
  additionalHiddenReasons = self->_additionalHiddenReasons;
  v8 = v4;
  if (!additionalHiddenReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_additionalHiddenReasons;
    self->_additionalHiddenReasons = v6;

    v4 = v8;
    additionalHiddenReasons = self->_additionalHiddenReasons;
  }

  [(NSMutableSet *)additionalHiddenReasons addObject:v4];
  [(SBWindow *)self _updateRealIsHidden];
}

- (void)_removeHiddenReason:(id)a3
{
  [(NSMutableSet *)self->_additionalHiddenReasons removeObject:a3];

  [(SBWindow *)self _updateRealIsHidden];
}

- (void)_updateHidingForSecureRendering:(BOOL)a3
{
  if (a3 && (-[SBWindow screen](self, "screen"), v4 = objc_claimAutoreleasedReturnValue(), [v4 displayIdentity], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isMainDisplay"), v5, v4, v6))
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
  v4 = [(SBWindow *)self _debugName];
  v5 = [v3 appendObject:v4 withName:0];

  v6 = [v3 appendSuper];
  v7 = [v3 build];

  return v7;
}

- (int64_t)activeInterfaceOrientation
{
  v3 = [(SBWindow *)self rootViewController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _overrideWindowActiveInterfaceOrientation];
  }

  else
  {
    v4 = [(SBWindow *)self _windowInterfaceOrientation];
  }

  v5 = v4;

  return v5;
}

- (BOOL)isActive
{
  if (([(SBWindow *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  v4 = [(SBWindow *)self rootViewController];
  v3 = v4 != 0;

  return v3;
}

- (NSString)orientationSourceDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBWindow *)self _debugName];
  v5 = [v3 appendObject:v4 withName:0];

  [(SBWindow *)self activeInterfaceOrientation];
  v6 = BSInterfaceOrientationDescription();
  v7 = [v3 appendObject:v6 withName:@"orientation"];

  [(SBWindow *)self orientationSourceLevel];
  v9 = [v3 appendInteger:v8 withName:@"level"];
  v10 = [v3 appendBool:-[SBWindow isActive](self withName:{"isActive"), @"active"}];
  v11 = [v3 build];

  return v11;
}

- (void)setAlphaAndObeyBecauseIAmTheWindowManager:(double)a3
{
  v3.receiver = self;
  v3.super_class = SBWindow;
  [(SBWindow *)&v3 setAlpha:a3];
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