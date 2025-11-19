@interface SBMainDisplaySceneLayoutStatusBarView
- (BOOL)_allowChangingIndividualStatusBarParts;
- (BOOL)_statusBarNeedsSpecialLayoutForClassic;
- (BOOL)isStatusBarEffectivelyHidden;
- (CGAffineTransform)_hiddenTransformForAnimation:(SEL)a3;
- (CGRect)_statusBarAvoidanceFrame;
- (CGRect)_statusBarFrameForOrientation:(int64_t)a3;
- (SBMainDisplaySceneLayoutStatusBarView)initWithFrame:(CGRect)a3;
- (SBMainDisplaySceneLayoutStatusBarViewDataSource)dataSource;
- (UIStatusBarStyleDelegate_SpringBoardOnly)realStyleDelegate;
- (double)_hiddenAlphaForAnimation:(int64_t)a3;
- (id)_anyAppViewControllerOwningInterfaceOrientation;
- (id)_currentlyValidStatusBarPartIdentifiers;
- (id)_effectiveBackgroundActivityIdentifiersToSuppress;
- (id)_reusePool;
- (id)_sceneHandleForClassicApplicationIfAny;
- (id)_statusBarDescriberForPrimaryApplicationIfAny;
- (id)_validStatusBarPartIdentifiersForSceneWithIdentifier:(id)a3;
- (id)allValidStatusBarPartIdentifiers;
- (id)createStatusBarWithFrame:(CGRect)a3 interfaceOrientation:(int64_t)a4 reason:(id)a5;
- (id)statusBarStyleRequestForStatusBarPart:(id)a3;
- (id)statusBarSystemNavigationAction:(id)a3;
- (int64_t)_effectiveStyleForPartIdentifier:(id)a3;
- (int64_t)overriddenRequestedStyleFromStyle:(int64_t)a3;
- (int64_t)statusBar:(id)a3 styleForRequestedStyle:(int64_t)a4 overrides:(unint64_t)a5;
- (unint64_t)_effectiveStatusBarStyleOverridesToSuppress;
- (unint64_t)statusBar:(id)a3 effectiveStyleOverridesForRequestedStyle:(int64_t)a4 overrides:(unint64_t)a5;
- (void)_addStatusBarIfNeeded;
- (void)_animateHidden:(BOOL)a3 withAnimation:(int64_t)a4 transitionHandler:(id)a5 applyHandler:(id)a6;
- (void)_applyBackgroundActivitiesToSuppress:(id)a3 toSceneWithIdentifier:(id)a4;
- (void)_applyStatusBarAlpha:(double)a3 toSceneWithIdentifier:(id)a4;
- (void)_applyStatusBarAvoidanceFrame:(CGRect)a3 toSceneWithIdentifier:(id)a4;
- (void)_applyStatusBarHidden:(BOOL)a3 withAnimation:(int64_t)a4 toSceneWithIdentifier:(id)a5;
- (void)_applyStatusBarStyle:(int64_t)a3 toPartIdentifier:(id)a4 ofSceneWithIdentifier:(id)a5;
- (void)_applyStatusBarStyle:(int64_t)a3 toSceneWithIdentifier:(id)a4;
- (void)_enumerateValidStatusBarPartIdentifiersForSceneWithIdentifier:(id)a3 withBlock:(id)a4;
- (void)_layoutStatusBarForOrientation:(int64_t)a3;
- (void)_setDebugBackgroundColor:(id)a3;
- (void)_setDebugOffsetIndex:(unint64_t)a3;
- (void)_setupDebugging;
- (void)_statusBarTapped:(id)a3 type:(int64_t)a4;
- (void)_tearDownStatusBar;
- (void)_updateDebugBackgroundColor;
- (void)_updateDebugOffset;
- (void)_updateHitTestLayers;
- (void)applyStatusBarStylesForDescriber:(id)a3;
- (void)beginRequiringStatusBarForReason:(id)a3;
- (void)dealloc;
- (void)didInvalidateStatusBarDescriptionForSceneWithIdentifier:(id)a3;
- (void)endRequiringStatusBarForReason:(id)a3;
- (void)layoutStatusBarForSpringBoardRotationToOrientation:(int64_t)a3;
- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarOrientationTo:(int64_t)a4;
- (void)setDataSource:(id)a3;
- (void)setRealStyleDelegate:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)statusBar:(id)a3 didAnimateFromHeight:(double)a4 toHeight:(double)a5 animation:(int)a6;
- (void)statusBar:(id)a3 didTriggerButtonType:(int64_t)a4 withAction:(int64_t)a5;
- (void)statusBar:(id)a3 didTriggerButtonType:(int64_t)a4 withAction:(int64_t)a5 context:(id)a6;
- (void)statusBar:(id)a3 willAnimateFromHeight:(double)a4 toHeight:(double)a5 duration:(double)a6 animation:(int)a7;
- (void)updateBreadcrumbActionIfNecessary;
- (void)updateStatusBarOrientationForLegacyApp;
@end

@implementation SBMainDisplaySceneLayoutStatusBarView

- (SBMainDisplaySceneLayoutStatusBarViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)allValidStatusBarPartIdentifiers
{
  v5[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D775B0];
  v5[0] = *MEMORY[0x277D775D0];
  v5[1] = v2;
  v5[2] = *MEMORY[0x277D775E0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];

  return v3;
}

- (SBMainDisplaySceneLayoutStatusBarView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBMainDisplaySceneLayoutStatusBarView;
  v3 = [(SBMainDisplaySceneLayoutStatusBarView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBMainDisplaySceneLayoutStatusBarView *)v3 _setupDebugging];
    [(SBMainDisplaySceneLayoutStatusBarView *)v4 setRealStyleDelegate:SBApp];
  }

  return v4;
}

- (void)dealloc
{
  [(SBMainDisplaySceneLayoutStatusBarView *)self _tearDownStatusBar];
  v3.receiver = self;
  v3.super_class = SBMainDisplaySceneLayoutStatusBarView;
  [(SBMainDisplaySceneLayoutStatusBarView *)&v3 dealloc];
}

- (void)beginRequiringStatusBarForReason:(id)a3
{
  v10 = a3;
  statusBarRequiringReasons = self->_statusBarRequiringReasons;
  if (!statusBarRequiringReasons)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = self->_statusBarRequiringReasons;
    self->_statusBarRequiringReasons = v5;

    statusBarRequiringReasons = self->_statusBarRequiringReasons;
  }

  v7 = [(NSMutableSet *)statusBarRequiringReasons count];
  [(NSMutableSet *)self->_statusBarRequiringReasons addObject:v10];
  v8 = [(NSMutableSet *)self->_statusBarRequiringReasons count];
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
    [(SBMainDisplaySceneLayoutStatusBarView *)self _addStatusBarIfNeeded];
  }
}

- (void)endRequiringStatusBarForReason:(id)a3
{
  statusBarRequiringReasons = self->_statusBarRequiringReasons;
  v5 = a3;
  v6 = [(NSMutableSet *)statusBarRequiringReasons count];
  [(NSMutableSet *)self->_statusBarRequiringReasons removeObject:v5];

  v7 = [(NSMutableSet *)self->_statusBarRequiringReasons count];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {

    [(SBMainDisplaySceneLayoutStatusBarView *)self _tearDownStatusBar];
  }
}

- (id)createStatusBarWithFrame:(CGRect)a3 interfaceOrientation:(int64_t)a4 reason:(id)a5
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a5;
  v11 = [(SBMainDisplaySceneLayoutStatusBarView *)self _defaultStatusBarStyleRequest];
  [MEMORY[0x277D75A78] heightForStyle:objc_msgSend(v11 orientation:{"style"), a4}];
  v13 = v12;
  v14 = [(SBMainDisplaySceneLayoutStatusBarView *)self _reusePool];
  v15 = [v14 getReusableStatusBarWithReason:v10 withFrame:{x, y, width, v13}];

  [v15 setBounds:{x, y, width, v13}];
  UIRectGetCenter();
  [v15 setCenter:?];
  [v15 setStyleDelegate:self];
  [v15 setAutoresizingMask:34];
  [v15 setOrientation:a4];
  [v15 setLegibilityStyle:0];
  [v15 setForegroundColor:0];

  return v15;
}

- (void)_addStatusBarIfNeeded
{
  v60 = *MEMORY[0x277D85DE8];
  if (!self->_statusBar)
  {
    v3 = self;
    WeakRetained = objc_loadWeakRetained(&v3->_dataSource);
    v5 = objc_alloc(MEMORY[0x277CF0D78]);
    [(SBMainDisplaySceneLayoutStatusBarView *)v3 bounds];
    v6 = [v5 initWithFrame:?];
    statusBarContainerView = v3->_statusBarContainerView;
    v3->_statusBarContainerView = v6;

    -[BSUIOrientationTransformWrapperView setContentOrientation:](v3->_statusBarContainerView, "setContentOrientation:", [WeakRetained statusBarOrientation]);
    [(BSUIOrientationTransformWrapperView *)v3->_statusBarContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBMainDisplaySceneLayoutStatusBarView *)v3 addSubview:v3->_statusBarContainerView];
    v8 = [(BSUIOrientationTransformWrapperView *)v3->_statusBarContainerView leftAnchor];
    v9 = [(SBMainDisplaySceneLayoutStatusBarView *)v3 leftAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v10 setActive:1];

    v11 = [(BSUIOrientationTransformWrapperView *)v3->_statusBarContainerView rightAnchor];
    v12 = [(SBMainDisplaySceneLayoutStatusBarView *)v3 rightAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [(BSUIOrientationTransformWrapperView *)v3->_statusBarContainerView topAnchor];
    v15 = [(SBMainDisplaySceneLayoutStatusBarView *)v3 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(BSUIOrientationTransformWrapperView *)v3->_statusBarContainerView bottomAnchor];
    v18 = [(SBMainDisplaySceneLayoutStatusBarView *)v3 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = v3->_statusBarContainerView;
    [(SBMainDisplaySceneLayoutStatusBarView *)v3 bounds];
    [(BSUIOrientationTransformWrapperView *)v20 convertRectFromContainerInterfaceOrientationToContentInterfaceOrientation:?];
    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v21, v22, v23, v24}];
    statusBarWrapperView = v3->_statusBarWrapperView;
    v3->_statusBarWrapperView = v25;

    v27 = [WeakRetained statusBarOrientation];
    [(SBMainDisplaySceneLayoutStatusBarView *)v3 _statusBarFrameForOrientation:v27];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %p", objc_opt_class(), v3];
    v36 = [(SBMainDisplaySceneLayoutStatusBarView *)v3 createStatusBarWithFrame:v27 interfaceOrientation:v29 reason:v31, v33, v35];
    statusBar = self->_statusBar;
    self->_statusBar = v36;

    [(UIStatusBar *)self->_statusBar requestResolvedStyle:0];
    v38 = [(UIStatusBar *)self->_statusBar statusBar];
    statusBarUnderlyingViewAccessor = v3->_statusBarUnderlyingViewAccessor;
    v3->_statusBarUnderlyingViewAccessor = v38;

    if (![(SBMainDisplaySceneLayoutStatusBarView *)v3 _allowChangingIndividualStatusBarParts])
    {
      v40 = [(UIStatusBar *)self->_statusBar layer];
      [v40 setHitTestsAsOpaque:1];
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = WeakRetained;
    v41 = [WeakRetained statusBarDescribers];
    v42 = [v41 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v56;
      do
      {
        v45 = 0;
        do
        {
          if (*v56 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [(SBMainDisplaySceneLayoutStatusBarView *)v3 applyStatusBarStylesForDescriber:*(*(&v55 + 1) + 8 * v45++)];
        }

        while (v43 != v45);
        v43 = [v41 countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v43);
    }

    v46 = [(_UIStatusBar *)v3->_statusBarUnderlyingViewAccessor actionGestureRecognizer];
    v47 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel__statusBarScrollToTop_];
    scrollToTopGestureRecognizer = v3->_scrollToTopGestureRecognizer;
    v3->_scrollToTopGestureRecognizer = v47;

    [(UITapGestureRecognizer *)v3->_scrollToTopGestureRecognizer requireGestureRecognizerToFail:v46];
    [(_UIStatusBar *)v3->_statusBarUnderlyingViewAccessor addGestureRecognizer:v3->_scrollToTopGestureRecognizer];
    v49 = +[SBPlatformController sharedInstance];
    v50 = [v49 isInternalInstall];

    if (v50)
    {
      v51 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel__statusBarShowDebug_];
      showDebugGestureRecognizer = v3->_showDebugGestureRecognizer;
      v3->_showDebugGestureRecognizer = v51;

      [(UITapGestureRecognizer *)v3->_showDebugGestureRecognizer setNumberOfTouchesRequired:2];
      [(UITapGestureRecognizer *)v3->_showDebugGestureRecognizer requireGestureRecognizerToFail:v46];
      [(_UIStatusBar *)v3->_statusBarUnderlyingViewAccessor addGestureRecognizer:v3->_showDebugGestureRecognizer];
    }

    [(UIView *)v3->_statusBarWrapperView addSubview:self->_statusBar];
    [(BSUIOrientationTransformWrapperView *)v3->_statusBarContainerView addContentView:v3->_statusBarWrapperView];
    [(BSUIOrientationTransformWrapperView *)v3->_statusBarContainerView addHitTestView:self->_statusBar];
    [(SBMainDisplaySceneLayoutStatusBarView *)v3 _updateHitTestLayers];
    [(SBMainDisplaySceneLayoutStatusBarView *)v3 _updateDebugBackgroundColor];
  }
}

- (void)_statusBarTapped:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v16 = *MEMORY[0x277CBF348];
  if ((*(&self->_conformanceFlags + 1) & 4) == 0)
  {
    v8 = [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarDescriberForPrimaryApplicationIfAny];
    v9 = [v8 sceneToHandleStatusBarTapIfExists];

    [v6 locationInView:self->_statusBarUnderlyingViewAccessor];
    *&v16 = v10;
    *(&v16 + 1) = v11;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [v6 locationInView:self];
  v12 = [WeakRetained statusBarDescriberAtPoint:self inView:&v16 pointInSceneLayoutSpace:?];
  v9 = [v12 sceneToHandleStatusBarTapIfExists];

  if (v9)
  {
LABEL_5:
    v13 = objc_alloc(MEMORY[0x277D75AB0]);
    v14 = [v13 initWithType:a4 xPosition:*&v16];
    v15 = [MEMORY[0x277CBEB98] setWithObject:v14];
    [v9 sendActions:v15];
  }

LABEL_6:
}

- (id)_anyAppViewControllerOwningInterfaceOrientation
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = [WeakRetained statusBarDescribers];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 sceneWantsDeviceOrientationEventsEnabled])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_statusBarDescriberForPrimaryApplicationIfAny
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = [WeakRetained statusBarDescriberForStatusBarPart:*MEMORY[0x277D775D0]];

  return v3;
}

- (id)_sceneHandleForClassicApplicationIfAny
{
  v2 = [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarDescriberForPrimaryApplicationIfAny];
  v3 = [v2 classicApplicationSceneHandleIfExists];

  return v3;
}

- (void)layoutStatusBarForSpringBoardRotationToOrientation:(int64_t)a3
{
  v5 = [(SBMainDisplaySceneLayoutStatusBarView *)self _anyAppViewControllerOwningInterfaceOrientation];

  if (!v5)
  {

    [(SBMainDisplaySceneLayoutStatusBarView *)self _layoutStatusBarForOrientation:a3];
  }
}

- (void)updateStatusBarOrientationForLegacyApp
{
  v3 = [(SBMainDisplaySceneLayoutStatusBarView *)self _anyAppViewControllerOwningInterfaceOrientation];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained statusBarDescriberForStatusBarPart:*MEMORY[0x277D775D0]];

    -[SBMainDisplaySceneLayoutStatusBarView _layoutStatusBarForOrientation:](self, "_layoutStatusBarForOrientation:", [v5 statusBarOrientation]);
  }
}

- (BOOL)_statusBarNeedsSpecialLayoutForClassic
{
  v2 = [(SBMainDisplaySceneLayoutStatusBarView *)self _sceneHandleForClassicApplicationIfAny];
  if (v2 && ([MEMORY[0x277D75418] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, (v4 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v5 = [v2 application];
    if ([v5 classicAppNonFullScreenWithHomeAffordance])
    {
      v6 = [v5 classicAppPhoneAppRunningOnPad] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (CGRect)_statusBarFrameForOrientation:(int64_t)a3
{
  statusBarContainerView = self->_statusBarContainerView;
  [(SBMainDisplaySceneLayoutStatusBarView *)self bounds];
  [(BSUIOrientationTransformWrapperView *)statusBarContainerView convertRectFromContainerInterfaceOrientationToContentInterfaceOrientation:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(SBMainDisplaySceneLayoutStatusBarView *)self _defaultStatusBarStyleRequest];
  if ([(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarNeedsSpecialLayoutForClassic])
  {
    v15 = [(SBMainDisplaySceneLayoutStatusBarView *)self _sceneHandleForClassicApplicationIfAny];
    v16 = [v15 displayIdentity];
    v17 = [v16 currentConfiguration];
    [SBUIController statusBarFrameForDeviceApplicationSceneHandle:v15 displayConfiguration:v17 interfaceOrientation:a3 statusBarStyleRequest:v14 withinBounds:0 inReferenceSpace:v7, v9, v11, v13];
    v7 = v18;
    v9 = v19;
    v11 = v20;
  }

  [MEMORY[0x277D75A78] heightForStyle:objc_msgSend(v14 orientation:{"style"), a3}];
  v22 = v21;
  if (self->_debugOffsetEnabled)
  {
    debugOffsetIndex = self->_debugOffsetIndex;
    v28.origin.x = v7;
    v28.origin.y = v9;
    v28.size.width = v11;
    v28.size.height = v22;
    v9 = CGRectGetHeight(v28) * debugOffsetIndex;
  }

  v24 = v7;
  v25 = v9;
  v26 = v11;
  v27 = v22;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)_layoutStatusBarForOrientation:(int64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(UIStatusBar *)self->_statusBar orientation];
  statusBarLaidOutForClassic = self->_statusBarLaidOutForClassic;
  v7 = [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarNeedsSpecialLayoutForClassic];
  v8 = v5 != a3;
  if (statusBarLaidOutForClassic != v7)
  {
    self->_statusBarLaidOutForClassic = v7;
    v8 = 1;
  }

  v9 = SBLogAppStatusBars();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_opt_class();
    v16 = v13;
    v14 = BSInterfaceOrientationDescription();
    v15 = BSInterfaceOrientationDescription();
    *buf = 138413314;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    v23 = 1024;
    v24 = v8;
    v25 = 1024;
    v26 = v5 != a3;
    _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "%@ statusBar laying out for orientation %@ (was %@) needsFrameUpdate = %{BOOL}u, needsOrientationUpdate = %{BOOL}u", buf, 0x2Cu);
  }

  if (v8)
  {
    [(BSUIOrientationTransformWrapperView *)self->_statusBarContainerView setContentOrientation:a3];
    statusBar = self->_statusBar;
    [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarFrameForOrientation:a3];
    [(UIStatusBar *)statusBar setFrame:?];
    v11 = [(UIView *)self _sbWindowScene];
    v12 = [v11 statusBarManager];
    [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarAvoidanceFrame];
    [v12 setAvoidanceFrame:@"SBMainDisplaySceneLayoutStatusBarView _layoutStatusBarForOrientation" reason:self->_statusBar statusBar:0 animationSettings:?];
  }

  if (v5 != a3)
  {
    [(UIStatusBar *)self->_statusBar setOrientation:a3];
  }

  [(SBMainDisplaySceneLayoutStatusBarView *)self _updateHitTestLayers];
}

- (void)_tearDownStatusBar
{
  v3 = [(UITapGestureRecognizer *)self->_scrollToTopGestureRecognizer view];
  [v3 removeGestureRecognizer:self->_scrollToTopGestureRecognizer];

  scrollToTopGestureRecognizer = self->_scrollToTopGestureRecognizer;
  self->_scrollToTopGestureRecognizer = 0;

  v5 = [(UITapGestureRecognizer *)self->_showDebugGestureRecognizer view];
  [v5 removeGestureRecognizer:self->_showDebugGestureRecognizer];

  showDebugGestureRecognizer = self->_showDebugGestureRecognizer;
  self->_showDebugGestureRecognizer = 0;

  v7 = [(SBMainDisplaySceneLayoutStatusBarView *)self _reusePool];
  [v7 recycleStatusBar:self->_statusBar];

  [(BSUIOrientationTransformWrapperView *)self->_statusBarContainerView removeFromSuperview];
  statusBar = self->_statusBar;
  self->_statusBar = 0;

  statusBarWrapperView = self->_statusBarWrapperView;
  self->_statusBarWrapperView = 0;

  statusBarContainerView = self->_statusBarContainerView;
  self->_statusBarContainerView = 0;

  hitTestLayers = self->_hitTestLayers;
  self->_hitTestLayers = 0;
}

- (BOOL)isStatusBarEffectivelyHidden
{
  if (!self->_statusBarUnderlyingViewAccessor)
  {
    return 1;
  }

  if ([(SBMainDisplaySceneLayoutStatusBarView *)self _allowChangingIndividualStatusBarParts])
  {
    v3 = [(_UIStatusBar *)self->_statusBarUnderlyingViewAccessor enabledPartIdentifiers];
    v4 = [v3 count] == 0;

    return v4;
  }

  statusBar = self->_statusBar;

  return [(UIStatusBar *)statusBar isHidden];
}

- (BOOL)_allowChangingIndividualStatusBarParts
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = [WeakRetained allowsConfiguringIndividualStatusBarParts];

  return v3;
}

- (void)updateBreadcrumbActionIfNecessary
{
  v3 = [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarDescriberForPrimaryApplicationIfAny];
  v4 = [v3 statusBarSceneIdentifier];
  v5 = [v3 overlayStatusBarData];
  if (!BSEqualStrings() || ([(_UIStatusBar *)self->_statusBarUnderlyingViewAccessor currentData], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != v5))
  {
    v7 = [v3 breadcrumbProvider];
    if (v7 && self->_statusBarUnderlyingViewAccessor)
    {
      v8 = MEMORY[0x277D75D18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __74__SBMainDisplaySceneLayoutStatusBarView_updateBreadcrumbActionIfNecessary__block_invoke;
      v15[3] = &unk_2783A92D8;
      v15[4] = self;
      v9 = v5;
      v16 = v9;
      [v8 performWithoutAnimation:v15];
      if (v9 && [v7 hasBreadcrumb])
      {
        statusBarUnderlyingViewAccessor = self->_statusBarUnderlyingViewAccessor;
        v11 = MEMORY[0x277D76290];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __74__SBMainDisplaySceneLayoutStatusBarView_updateBreadcrumbActionIfNecessary__block_invoke_2;
        v13[3] = &unk_2783B2BF8;
        v14 = v7;
        v12 = [v11 actionWithBlock:v13];
        [(_UIStatusBar *)statusBarUnderlyingViewAccessor setAction:v12 forPartWithIdentifier:*MEMORY[0x277D775A0]];
      }
    }

    objc_storeStrong(&self->_statusBarBreadcrumbSceneIdentifier, v4);
  }
}

- (void)_updateHitTestLayers
{
  v48 = *MEMORY[0x277D85DE8];
  if ([(SBMainDisplaySceneLayoutStatusBarView *)self _allowChangingIndividualStatusBarParts])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (!self->_hitTestLayers)
    {
      v4 = [MEMORY[0x277CBEB38] dictionary];
      hitTestLayers = self->_hitTestLayers;
      self->_hitTestLayers = v4;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [(SBMainDisplaySceneLayoutStatusBarView *)self allValidStatusBarPartIdentifiers];
    v6 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v44;
      v41 = *(MEMORY[0x277CBF398] + 8);
      v42 = *MEMORY[0x277CBF398];
      v39 = *(MEMORY[0x277CBF398] + 24);
      v40 = *(MEMORY[0x277CBF398] + 16);
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          v11 = [WeakRetained statusBarDescriberForStatusBarPart:v10];
          v12 = [(NSMutableDictionary *)self->_hitTestLayers objectForKeyedSubscript:v10];
          height = v39;
          width = v40;
          y = v41;
          x = v42;
          if (([v11 statusBarHidden] & 1) == 0)
          {
            height = v39;
            width = v40;
            y = v41;
            x = v42;
            if ((*&self->_conformanceFlags & 0x800) != 0)
            {
              [v11 statusBarSceneIdentifier];
              v18 = v17 = v8;
              [WeakRetained frameForSceneIdentifier:v18 inView:self->_statusBar];
              v20 = v19;
              v22 = v21;
              v24 = v23;
              v26 = v25;

              v8 = v17;
              v49.origin.x = v20;
              v49.origin.y = v22;
              v49.size.width = v24;
              v49.size.height = v26;
              height = v39;
              width = v40;
              y = v41;
              x = v42;
              if (!CGRectIsNull(v49))
              {
                v27 = [(UIStatusBar *)self->_statusBar layer];
                [v27 bounds];
                v29 = v28;
                v31 = v30;
                v33 = v32;
                v35 = v34;

                v8 = v17;
                v50.origin.x = v20;
                v50.origin.y = v22;
                v50.size.width = v24;
                v50.size.height = v26;
                v53.origin.x = v29;
                v53.origin.y = v31;
                v53.size.width = v33;
                v53.size.height = v35;
                v51 = CGRectIntersection(v50, v53);
                x = v51.origin.x;
                y = v51.origin.y;
                width = v51.size.width;
                height = v51.size.height;
              }
            }
          }

          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = width;
          v52.size.height = height;
          if (CGRectIsEmpty(v52))
          {
            [v12 removeFromSuperlayer];
          }

          else
          {
            if (!v12)
            {
              v12 = [MEMORY[0x277CD9ED0] layer];
              [v12 setHitTestsAsOpaque:1];
              [(NSMutableDictionary *)self->_hitTestLayers setObject:v12 forKeyedSubscript:v10];
            }

            v36 = [v12 superlayer];

            if (!v36)
            {
              v37 = [(UIStatusBar *)self->_statusBar layer];
              [v37 addSublayer:v12];
            }

            [v12 setFrame:{x, y, width, height}];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v7);
    }
  }
}

- (id)statusBarStyleRequestForStatusBarPart:(id)a3
{
  if (a3)
  {
    v3 = _SBStatusBarLegacyStyleFromStyle([(SBMainDisplaySceneLayoutStatusBarView *)self _effectiveStyleForPartIdentifier:?]);
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_alloc(MEMORY[0x277D6BFE8]) initWithResolvedStyle:_SBStatusBarStyleFromLegacyStyle(v3) foregroundColor:0];

  return v4;
}

- (void)applyStatusBarStylesForDescriber:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 statusBarSceneIdentifier];
  v6 = SBLogAppStatusBars();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = v10;
    *buf = 138413058;
    v17 = v5;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = objc_opt_class();
    v22 = 2048;
    v23 = v4;
    v12 = v21;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "(%@) %@ applying styles for <%@ %p>", buf, 0x2Au);
  }

  -[SBMainDisplaySceneLayoutStatusBarView _applyStatusBarHidden:withAnimation:toSceneWithIdentifier:](self, "_applyStatusBarHidden:withAnimation:toSceneWithIdentifier:", [v4 statusBarHidden], 0, v5);
  v7 = [v4 backgroundActivitiesToSuppress];
  [(SBMainDisplaySceneLayoutStatusBarView *)self _applyBackgroundActivitiesToSuppress:v7 toSceneWithIdentifier:v5];

  -[SBMainDisplaySceneLayoutStatusBarView _applyStatusBarStyle:toSceneWithIdentifier:](self, "_applyStatusBarStyle:toSceneWithIdentifier:", [v4 statusBarStyle], v5);
  [v4 statusBarAlpha];
  [(SBMainDisplaySceneLayoutStatusBarView *)self _applyStatusBarAlpha:v5 toSceneWithIdentifier:?];
  [v4 statusBarAvoidanceFrame];
  [(SBMainDisplaySceneLayoutStatusBarView *)self _applyStatusBarAvoidanceFrame:v5 toSceneWithIdentifier:?];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SBMainDisplaySceneLayoutStatusBarView_applyStatusBarStylesForDescriber___block_invoke;
  v13[3] = &unk_2783B2C20;
  v13[4] = self;
  v14 = v4;
  v15 = v5;
  v8 = v5;
  v9 = v4;
  [(SBMainDisplaySceneLayoutStatusBarView *)self _enumerateValidStatusBarPartIdentifiersForSceneWithIdentifier:v8 withBlock:v13];
}

void __74__SBMainDisplaySceneLayoutStatusBarView_applyStatusBarStylesForDescriber___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 _applyStatusBarStyle:objc_msgSend(v4 toPartIdentifier:"statusBarStyleForPartWithIdentifier:" ofSceneWithIdentifier:{v5), v5, a1[6]}];
}

- (void)_applyStatusBarStyle:(int64_t)a3 toSceneWithIdentifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_statusBarUnderlyingViewAccessor)
  {
    if ([(SBMainDisplaySceneLayoutStatusBarView *)self _allowChangingIndividualStatusBarParts])
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __84__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarStyle_toSceneWithIdentifier___block_invoke;
      v11[3] = &unk_2783B2C48;
      v11[4] = self;
      v13 = a3;
      v12 = v6;
      [(SBMainDisplaySceneLayoutStatusBarView *)self _enumerateValidStatusBarPartIdentifiersForSceneWithIdentifier:v12 withBlock:v11];
    }

    else
    {
      v7 = SBLogAppStatusBars();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = objc_opt_class();
        v9 = v8;
        v10 = _SBStringFromStatusBarStyle(a3);
        *buf = 138412802;
        v15 = v6;
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v10;
        _os_log_debug_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEBUG, "(%@) %@ changing style for whole bar to %@", buf, 0x20u);
      }

      [(UIStatusBar *)self->_statusBar requestResolvedStyle:a3];
    }
  }
}

void __84__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarStyle_toSceneWithIdentifier___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!*(a1[4] + 448))
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = a1[4];
    v6 = *(v5 + 448);
    *(v5 + 448) = v4;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  [*(a1[4] + 448) setObject:v7 forKeyedSubscript:v3];

  v8 = [*(a1[4] + 456) objectForKey:v3];

  if (!v8)
  {
    v9 = SBLogAppStatusBars();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = a1[5];
      v11 = objc_opt_class();
      v12 = a1[6];
      v13 = v11;
      v14 = _SBStringFromStatusBarStyle(v12);
      v15 = 138413058;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = v14;
      _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "(%@) %@ changing style for %@ to %@", &v15, 0x2Au);
    }

    [*(a1[4] + 432) setStyle:a1[6] forPartWithIdentifier:v3];
  }
}

- (void)_applyStatusBarStyle:(int64_t)a3 toPartIdentifier:(id)a4 ofSceneWithIdentifier:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (self->_statusBarUnderlyingViewAccessor)
  {
    if ([(SBMainDisplaySceneLayoutStatusBarView *)self _allowChangingIndividualStatusBarParts])
    {
      v10 = [(SBMainDisplaySceneLayoutStatusBarView *)self _validStatusBarPartIdentifiersForSceneWithIdentifier:v9];
      v11 = [v10 containsObject:v8];

      if (v11)
      {
        if (a3 == 4)
        {
          v12 = [(NSMutableDictionary *)self->_partIdentifiersDefaultStyles objectForKeyedSubscript:v8];
          a3 = [v12 integerValue];

          partIdentifiersCustomStyles = self->_partIdentifiersCustomStyles;
          if (partIdentifiersCustomStyles)
          {
            [(NSMutableDictionary *)partIdentifiersCustomStyles removeObjectForKey:v8];
          }
        }

        else
        {
          if (!self->_partIdentifiersCustomStyles)
          {
            v14 = [MEMORY[0x277CBEB38] dictionary];
            v15 = self->_partIdentifiersCustomStyles;
            self->_partIdentifiersCustomStyles = v14;
          }

          v16 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
          [(NSMutableDictionary *)self->_partIdentifiersCustomStyles setObject:v16 forKeyedSubscript:v8];
        }

        v17 = SBLogAppStatusBars();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = objc_opt_class();
          v19 = v18;
          v20 = _SBStringFromStatusBarStyle(a3);
          v21 = 138413058;
          v22 = v9;
          v23 = 2112;
          v24 = v18;
          v25 = 2112;
          v26 = v8;
          v27 = 2112;
          v28 = v20;
          _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, "(%@) %@ changing style for %@ to %@", &v21, 0x2Au);
        }

        [(_UIStatusBar *)self->_statusBarUnderlyingViewAccessor setStyle:a3 forPartWithIdentifier:v8];
      }
    }
  }
}

- (void)_applyStatusBarHidden:(BOOL)a3 withAnimation:(int64_t)a4 toSceneWithIdentifier:(id)a5
{
  v6 = a3;
  v36 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (self->_statusBarUnderlyingViewAccessor)
  {
    v9 = SBLogAppStatusBars();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = NSStringFromBOOL();
      *buf = 138413058;
      v29 = v8;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v18;
      v34 = 2048;
      v35 = a4;
      _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "(%@) %@ begin to change status bar hidden to %@ with animation %ld", buf, 0x2Au);
    }

    v10 = [(UIView *)self _sbWindowScene];
    v11 = [v10 recordingIndicatorManager];
    if ([(SBMainDisplaySceneLayoutStatusBarView *)self _allowChangingIndividualStatusBarParts])
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __99__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarHidden_withAnimation_toSceneWithIdentifier___block_invoke_45;
      v22[3] = &unk_2783B2C98;
      v22[4] = self;
      v12 = &v23;
      v23 = v8;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __99__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarHidden_withAnimation_toSceneWithIdentifier___block_invoke_2_46;
      v19[3] = &unk_2783A9940;
      v19[4] = self;
      v13 = &v20;
      v20 = v23;
      v21 = v11;
      v14 = v11;
      [(SBMainDisplaySceneLayoutStatusBarView *)self _animateHidden:v6 withAnimation:a4 transitionHandler:v22 applyHandler:v19];
    }

    else
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __99__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarHidden_withAnimation_toSceneWithIdentifier___block_invoke;
      v27[3] = &unk_2783B2C70;
      v27[4] = self;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __99__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarHidden_withAnimation_toSceneWithIdentifier___block_invoke_2;
      v24[3] = &unk_2783A9940;
      v12 = v25;
      v25[0] = v8;
      v25[1] = self;
      v13 = &v26;
      v26 = v11;
      v15 = v11;
      [(SBMainDisplaySceneLayoutStatusBarView *)self _animateHidden:v6 withAnimation:a4 transitionHandler:v27 applyHandler:v24];
    }
  }
}

uint64_t __99__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarHidden_withAnimation_toSceneWithIdentifier___block_invoke(uint64_t a1, _OWORD *a2, double a3)
{
  [*(*(a1 + 32) + 416) _removeAllAnimations:0];
  [*(*(a1 + 32) + 416) setAlpha:a3];
  v6 = *(*(a1 + 32) + 416);
  v7 = a2[1];
  v9[0] = *a2;
  v9[1] = v7;
  v9[2] = a2[2];
  return [v6 setTransform:v9];
}

uint64_t __99__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarHidden_withAnimation_toSceneWithIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = SBLogAppStatusBars();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __99__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarHidden_withAnimation_toSceneWithIdentifier___block_invoke_2_cold_1(a1, a2, v4);
  }

  [*(*(a1 + 40) + 424) setHidden:a2];
  return [*(a1 + 48) updateRecordingIndicatorForStatusBarChanges];
}

uint64_t __99__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarHidden_withAnimation_toSceneWithIdentifier___block_invoke_45(uint64_t a1, uint64_t a2, double a3)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 416) _removeAllAnimations:1];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [*(a1 + 32) _validStatusBarPartIdentifiersForSceneWithIdentifier:{*(a1 + 40), 0}];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [*(*(a1 + 32) + 432) setAlpha:v11 forPartWithIdentifier:a3];
        [*(*(a1 + 32) + 432) setOffset:v11 forPartWithIdentifier:{*(a2 + 32), *(a2 + 40)}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return [*(*(a1 + 32) + 432) layoutIfNeeded];
}

void __99__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarHidden_withAnimation_toSceneWithIdentifier___block_invoke_2_46(uint64_t a1, int a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [*(*(a1 + 32) + 432) enabledPartIdentifiers];

  v6 = *(a1 + 32);
  if (v5)
  {
    [v6[54] enabledPartIdentifiers];
  }

  else
  {
    [v6 allValidStatusBarPartIdentifiers];
  }
  v7 = ;
  [v4 addObjectsFromArray:v7];

  v8 = MEMORY[0x277CBEB98];
  v9 = [*(a1 + 32) _validStatusBarPartIdentifiersForSceneWithIdentifier:*(a1 + 40)];
  v10 = [v8 setWithArray:v9];

  if (a2)
  {
    [v4 minusSet:v10];
  }

  else
  {
    [v4 unionSet:v10];
  }

  v11 = MEMORY[0x277CBEB98];
  v12 = [*(a1 + 32) _currentlyValidStatusBarPartIdentifiers];
  v13 = [v11 setWithArray:v12];
  [v4 intersectSet:v13];

  v14 = SBLogAppStatusBars();
  LODWORD(v12) = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

  if (v12)
  {
    v15 = [*(*(a1 + 32) + 432) enabledPartIdentifiers];
    v16 = [v4 allObjects];
    v17 = [v15 isEqualToArray:v16];
    v18 = SBLogAppStatusBars();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      if (v19)
      {
        v20 = *(a1 + 40);
        v21 = objc_opt_class();
        v30 = v21;
        v22 = NSStringFromBOOL();
        *buf = 138412802;
        v32 = v20;
        v33 = 2112;
        v34 = v21;
        v35 = 2112;
        v36 = v22;
        v23 = "(%@) %@ changing hidden to %@, which results in unchanged enabled parts";
        v24 = v18;
        v25 = 32;
LABEL_15:
        _os_log_debug_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEBUG, v23, buf, v25);
      }
    }

    else if (v19)
    {
      v28 = *(a1 + 40);
      v29 = objc_opt_class();
      v30 = v29;
      v22 = NSStringFromBOOL();
      *buf = 138413314;
      v32 = v28;
      v33 = 2112;
      v34 = v29;
      v35 = 2112;
      v36 = v22;
      v37 = 2112;
      v38 = v15;
      v39 = 2112;
      v40 = v4;
      v23 = "(%@) %@ changing hidden to %@, which results in enabled parts changing from %@ to %@";
      v24 = v18;
      v25 = 52;
      goto LABEL_15;
    }
  }

  v26 = *(*(a1 + 32) + 432);
  v27 = [v4 allObjects];
  [v26 setEnabledPartIdentifiers:v27];

  [*(a1 + 48) updateRecordingIndicatorForStatusBarChanges];
  [*(a1 + 32) _updateHitTestLayers];
}

- (void)_applyStatusBarAlpha:(double)a3 toSceneWithIdentifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_statusBarUnderlyingViewAccessor)
  {
    v7 = [(UIView *)self _sbWindowScene];
    v8 = [v7 recordingIndicatorManager];
    if ([(SBMainDisplaySceneLayoutStatusBarView *)self _allowChangingIndividualStatusBarParts])
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __84__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarAlpha_toSceneWithIdentifier___block_invoke;
      v11[3] = &unk_2783B2CC0;
      v11[4] = self;
      v14 = a3;
      v12 = v6;
      v13 = v8;
      [(SBMainDisplaySceneLayoutStatusBarView *)self _enumerateValidStatusBarPartIdentifiersForSceneWithIdentifier:v12 withBlock:v11];
    }

    else
    {
      v9 = SBLogAppStatusBars();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v16 = v6;
        v17 = 2112;
        v18 = objc_opt_class();
        v19 = 2048;
        v20 = a3;
        v10 = v18;
        _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "(%@) %@ changing alpha for whole bar to %f", buf, 0x20u);
      }

      [(_UIStatusBar *)self->_statusBarUnderlyingViewAccessor setAlpha:a3];
      [v8 updateRecordingIndicatorForStatusBarChanges];
    }
  }
}

void __84__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarAlpha_toSceneWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(*(a1 + 32) + 432) setAlpha:v3 forPartWithIdentifier:*(a1 + 56)];
  v4 = SBLogAppStatusBars();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v6 = objc_opt_class();
    v7 = *(a1 + 56);
    v9 = 138413058;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    v15 = 2048;
    v16 = v7;
    v8 = v6;
    _os_log_debug_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEBUG, "(%@) %@ changing alpha for %@ to %f", &v9, 0x2Au);
  }

  if ([v3 isEqual:@"trailingPartIdentifier"])
  {
    [*(a1 + 48) updateRecordingIndicatorForStatusBarChanges];
  }
}

- (void)_applyBackgroundActivitiesToSuppress:(id)a3 toSceneWithIdentifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_statusBarUnderlyingViewAccessor)
  {
    [(UIStatusBar *)self->_statusBar requestResolvedStyle:[(UIStatusBar *)self->_statusBar currentResolvedStyle]];
    v8 = SBLogAppStatusBars();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = STBackgroundActivityIdentifiersDescription();
      v11 = [(SBMainDisplaySceneLayoutStatusBarView *)self _effectiveBackgroundActivityIdentifiersToSuppress];
      v12 = STBackgroundActivityIdentifiersDescription();

      v13 = SBLogAppStatusBars();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138413058;
        v16 = v7;
        v17 = 2112;
        v18 = objc_opt_class();
        v19 = 2112;
        v20 = v10;
        v21 = 2112;
        v22 = v12;
        v14 = v18;
        _os_log_debug_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEBUG, "(%@) %@ changing style overrides to %@ (effectively %@)", &v15, 0x2Au);
      }
    }
  }
}

- (void)_applyStatusBarAvoidanceFrame:(CGRect)a3 toSceneWithIdentifier:(id)a4
{
  if (self->_statusBarUnderlyingViewAccessor)
  {
    v6 = [(UIView *)self _sbWindowScene:a4];
    v5 = [v6 statusBarManager];
    [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarAvoidanceFrame];
    [v5 setAvoidanceFrame:@"SBMainDisplaySceneLayoutStatusBarView _applyStatusBarAvoidanceFrame" reason:self->_statusBar statusBar:0 animationSettings:?];
  }
}

- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarOrientationTo:(int64_t)a4
{
  v17 = a3;
  v7 = [(SBMainDisplaySceneLayoutStatusBarView *)self _anyAppViewControllerOwningInterfaceOrientation];

  if (v7)
  {
    v8 = SBLogAppStatusBars();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      if ((*&self->_conformanceFlags & 0x100) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        v11 = [WeakRetained statusBarPartsForSceneWithIdentifier:v17];

        v12 = [(SBMainDisplaySceneLayoutStatusBarView *)self allValidStatusBarPartIdentifiers];
        v13 = [v11 isEqualToArray:v12];

        if ((v13 & 1) == 0)
        {
          [SBMainDisplaySceneLayoutStatusBarView sceneWithIdentifier:a2 didChangeStatusBarOrientationTo:self];
        }
      }

      v14 = [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarDescriberForPrimaryApplicationIfAny];
      v15 = [v14 statusBarSceneIdentifier];
      v16 = [v17 isEqualToString:v15];

      if ((v16 & 1) == 0)
      {
        [SBMainDisplaySceneLayoutStatusBarView sceneWithIdentifier:a2 didChangeStatusBarOrientationTo:self];
      }
    }

    [(SBMainDisplaySceneLayoutStatusBarView *)self _layoutStatusBarForOrientation:a4];
    [(BSUIOrientationTransformWrapperView *)self->_statusBarContainerView setNeedsLayout];
    [(BSUIOrientationTransformWrapperView *)self->_statusBarContainerView layoutIfNeeded];
  }
}

- (void)didInvalidateStatusBarDescriptionForSceneWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SBMainDisplaySceneLayoutStatusBarView *)self dataSource];
  v6 = [v5 statusBarDescribers];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 statusBarSceneIdentifier];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          [(SBMainDisplaySceneLayoutStatusBarView *)self applyStatusBarStylesForDescriber:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    if (objc_opt_respondsToSelector())
    {
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFEFF | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 512;
    }

    else
    {
      v6 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFDFF | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 1024;
    }

    else
    {
      v7 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFBFF | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 2048;
    }

    else
    {
      v8 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xF7FF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 4096;
    }

    else
    {
      v9 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xEFFF | v9;
  }
}

- (id)_currentlyValidStatusBarPartIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = WeakRetained;
  if ((*&self->_conformanceFlags & 0x200) != 0)
  {
    [WeakRetained currentlyValidStatusBarPartIdentifiers];
  }

  else
  {
    [(SBMainDisplaySceneLayoutStatusBarView *)self allValidStatusBarPartIdentifiers];
  }
  v5 = ;

  return v5;
}

- (CGRect)_statusBarAvoidanceFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = WeakRetained;
  if ((*&self->_conformanceFlags & 0x1000) != 0)
  {
    [WeakRetained statusBarAvoidanceFrame];
    v5 = v9;
    v6 = v10;
    v7 = v11;
    v8 = v12;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)_validStatusBarPartIdentifiersForSceneWithIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if ((*&self->_conformanceFlags & 0x100) != 0)
  {
    [WeakRetained statusBarPartsForSceneWithIdentifier:v4];
  }

  else
  {
    [(SBMainDisplaySceneLayoutStatusBarView *)self allValidStatusBarPartIdentifiers];
  }
  v7 = ;

  return v7;
}

- (int64_t)_effectiveStyleForPartIdentifier:(id)a3
{
  v4 = a3;
  v5 = _SBStatusBarStyleFromLegacyStyle([(UIStatusBar *)self->_statusBar currentStyle]);
  if ([(SBMainDisplaySceneLayoutStatusBarView *)self _allowChangingIndividualStatusBarParts])
  {
    v6 = [(NSMutableDictionary *)self->_partIdentifiersDefaultStyles objectForKeyedSubscript:v4];
    v7 = [(NSMutableDictionary *)self->_partIdentifiersCustomStyles objectForKeyedSubscript:v4];
    v8 = v7;
    if (v7 || (v7 = v6) != 0)
    {
      v5 = [v7 integerValue];
    }
  }

  return v5;
}

- (void)_enumerateValidStatusBarPartIdentifiersForSceneWithIdentifier:(id)a3 withBlock:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(SBMainDisplaySceneLayoutStatusBarView *)self _validStatusBarPartIdentifiersForSceneWithIdentifier:a3, 0];
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

          v6[2](v6, *(*(&v12 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (unint64_t)_effectiveStatusBarStyleOverridesToSuppress
{
  v2 = [(SBMainDisplaySceneLayoutStatusBarView *)self _effectiveBackgroundActivityIdentifiersToSuppress];
  v3 = STUIStyleOverridesForBackgroundActivityIdentifiers();

  return v3;
}

- (id)_effectiveBackgroundActivityIdentifiersToSuppress
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SBMainDisplaySceneLayoutStatusBarView *)self dataSource];
  v5 = [v4 statusBarDescribers];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) backgroundActivitiesToSuppress];
        [v3 unionSet:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_animateHidden:(BOOL)a3 withAnimation:(int64_t)a4 transitionHandler:(id)a5 applyHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  [(SBMainDisplaySceneLayoutStatusBarView *)self _hiddenTransformForAnimation:a4];
  [(SBMainDisplaySceneLayoutStatusBarView *)self _hiddenAlphaForAnimation:a4];
  v13 = v12;
  self->_lastHiddenValueForAnimation = a3;
  v14 = [MEMORY[0x277D75D18] _isInAnimationBlock];
  if (a4 && v14)
  {
    if (!a3)
    {
      v15 = MEMORY[0x277D75D18];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __101__SBMainDisplaySceneLayoutStatusBarView__animateHidden_withAnimation_transitionHandler_applyHandler___block_invoke;
      v32[3] = &unk_2783B2CE8;
      v33 = v11;
      v34 = v10;
      v35 = v13;
      v36 = v39;
      v37 = v40;
      v38 = v41;
      [v15 performWithoutAnimation:v32];
    }

    v16 = MEMORY[0x277D75D18];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __101__SBMainDisplaySceneLayoutStatusBarView__animateHidden_withAnimation_transitionHandler_applyHandler___block_invoke_2;
    v26[3] = &unk_2783B2D10;
    v17 = v27;
    v27[0] = v10;
    v31 = a3;
    v27[1] = v13;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __101__SBMainDisplaySceneLayoutStatusBarView__animateHidden_withAnimation_transitionHandler_applyHandler___block_invoke_3;
    v23[3] = &unk_2783B2D38;
    v23[4] = self;
    v24 = v11;
    v25 = v27[0];
    v18 = v11;
    [v16 animateWithDuration:v26 animations:v23 completion:0.0];
  }

  else
  {
    v19 = MEMORY[0x277D75D18];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __101__SBMainDisplaySceneLayoutStatusBarView__animateHidden_withAnimation_transitionHandler_applyHandler___block_invoke_4;
    v21[3] = &unk_2783A9878;
    v17 = &v22;
    v21[4] = self;
    v22 = v11;
    v20 = v11;
    [v19 performWithoutAnimation:v21];
  }
}

uint64_t __101__SBMainDisplaySceneLayoutStatusBarView__animateHidden_withAnimation_transitionHandler_applyHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 16);
  v4 = *(a1 + 72);
  v6 = *(a1 + 56);
  v7 = v4;
  v8 = *(a1 + 88);
  return v3(v2);
}

uint64_t __101__SBMainDisplaySceneLayoutStatusBarView__animateHidden_withAnimation_transitionHandler_applyHandler___block_invoke_2(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 32);
  if (*(a1 + 96) == 1)
  {
    a2.n128_u64[0] = *(a1 + 40);
    v4 = *(a1 + 64);
    v7 = *(a1 + 48);
    v8 = v4;
    v9 = *(a1 + 80);
  }

  else
  {
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    v7 = *MEMORY[0x277CBF2C0];
    v8 = v5;
    a2 = *(MEMORY[0x277CBF2C0] + 32);
    v9 = a2;
    a2.n128_u64[0] = 1.0;
  }

  return (*(v3 + 16))(v3, &v7, a2);
}

uint64_t __101__SBMainDisplaySceneLayoutStatusBarView__animateHidden_withAnimation_transitionHandler_applyHandler___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    (*(*(result + 40) + 16))();
    v3 = *(*(v2 + 48) + 16);
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    v5 = *MEMORY[0x277CBF2C0];
    v6 = v4;
    v7 = *(MEMORY[0x277CBF2C0] + 32);
    return v3(1.0);
  }

  return result;
}

- (CGAffineTransform)_hiddenTransformForAnimation:(SEL)a3
{
  if (a4 == 2)
  {
    [*&self[8].ty frame];
    v5 = -CGRectGetMaxY(v9);

    return CGAffineTransformMakeTranslation(retstr, 0.0, v5);
  }

  else
  {
    v6 = MEMORY[0x277CBF2C0];
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v7;
    *&retstr->tx = *(v6 + 32);
  }

  return self;
}

- (double)_hiddenAlphaForAnimation:(int64_t)a3
{
  result = 0.0;
  if (a3 == 2)
  {
    return 1.0;
  }

  return result;
}

- (id)_reusePool
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];
  v4 = [v3 statusBarManager];
  v5 = [v4 reusePool];

  return v5;
}

- (void)_setupDebugging
{
  v3 = +[SBMedusaDomain rootSettings];
  medusaSettings = self->_medusaSettings;
  self->_medusaSettings = v3;

  [(PTSettings *)self->_medusaSettings addKeyObserver:self];
  self->_debugBackgroundColorEnabled = [(SBMedusaSettings *)self->_medusaSettings statusBarDebugBackgroundColorsEnabled];
  self->_debugOffsetEnabled = [(SBMedusaSettings *)self->_medusaSettings statusBarDebugOffsettingEnabled];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_medusaSettings == a3)
  {
    v9 = v6;
    if ([v6 isEqualToString:@"statusBarDebugBackgroundColorsEnabled"])
    {
      self->_debugBackgroundColorEnabled = [(SBMedusaSettings *)self->_medusaSettings statusBarDebugBackgroundColorsEnabled];
      [(SBMainDisplaySceneLayoutStatusBarView *)self _updateDebugBackgroundColor];
    }

    else
    {
      v8 = [v9 isEqualToString:@"statusBarDebugOffsettingEnabled"];
      v7 = v9;
      if (!v8)
      {
        goto LABEL_7;
      }

      self->_debugOffsetEnabled = [(SBMedusaSettings *)self->_medusaSettings statusBarDebugOffsettingEnabled];
      [(SBMainDisplaySceneLayoutStatusBarView *)self _updateDebugOffset];
    }

    v7 = v9;
  }

LABEL_7:
}

- (void)_setDebugBackgroundColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_debugBackgroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_debugBackgroundColor, a3);
    [(SBMainDisplaySceneLayoutStatusBarView *)self _updateDebugBackgroundColor];
  }
}

- (void)_setDebugOffsetIndex:(unint64_t)a3
{
  if (self->_debugOffsetIndex != a3)
  {
    self->_debugOffsetIndex = a3;
    [(SBMainDisplaySceneLayoutStatusBarView *)self _updateDebugOffset];
  }
}

- (void)_updateDebugBackgroundColor
{
  if (self->_debugBackgroundColorEnabled)
  {
    v3 = self->_debugBackgroundColor;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [(UIStatusBar *)self->_statusBar setBackgroundColor:v3];
}

- (void)_updateDebugOffset
{
  statusBar = self->_statusBar;
  [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarFrameForOrientation:[(UIStatusBar *)statusBar orientation]];

  [(UIStatusBar *)statusBar setFrame:?];
}

- (void)setRealStyleDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_realStyleDelegate, obj);
    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFFFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFFFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFFF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFFEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFFDF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFFBF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 128;
    }

    else
    {
      v11 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFF7F | v11;
  }
}

- (int64_t)statusBar:(id)a3 styleForRequestedStyle:(int64_t)a4 overrides:(unint64_t)a5
{
  if ((*&self->_conformanceFlags & 1) == 0)
  {
    return a4;
  }

  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);
  v11 = [WeakRetained statusBar:v9 styleForRequestedStyle:a4 overrides:a5];

  return v11;
}

- (void)statusBar:(id)a3 willAnimateFromHeight:(double)a4 toHeight:(double)a5 duration:(double)a6 animation:(int)a7
{
  if ((*&self->_conformanceFlags & 2) != 0)
  {
    v8 = *&a7;
    v13 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);
    [WeakRetained statusBar:v13 willAnimateFromHeight:v8 toHeight:a4 duration:a5 animation:a6];
  }
}

- (void)statusBar:(id)a3 didAnimateFromHeight:(double)a4 toHeight:(double)a5 animation:(int)a6
{
  if ((*&self->_conformanceFlags & 4) != 0)
  {
    v7 = *&a6;
    v11 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);
    [WeakRetained statusBar:v11 didAnimateFromHeight:v7 toHeight:a4 animation:a5];
  }
}

- (id)statusBarSystemNavigationAction:(id)a3
{
  if ((*&self->_conformanceFlags & 8) != 0)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);
    v3 = [WeakRetained statusBarSystemNavigationAction:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)statusBar:(id)a3 didTriggerButtonType:(int64_t)a4 withAction:(int64_t)a5
{
  if ((*&self->_conformanceFlags & 0x10) != 0)
  {
    [(SBMainDisplaySceneLayoutStatusBarView *)self statusBar:a3 didTriggerButtonType:a4 withAction:a5];
  }
}

- (void)statusBar:(id)a3 didTriggerButtonType:(int64_t)a4 withAction:(int64_t)a5 context:(id)a6
{
  if ((*&self->_conformanceFlags & 0x20) != 0)
  {
    [(SBMainDisplaySceneLayoutStatusBarView *)self statusBar:a3 didTriggerButtonType:a4 withAction:a5 context:a6];
  }
}

- (unint64_t)statusBar:(id)a3 effectiveStyleOverridesForRequestedStyle:(int64_t)a4 overrides:(unint64_t)a5
{
  if ((*&self->_conformanceFlags & 0x40) != 0)
  {
    v8 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);
    a5 = [WeakRetained statusBar:v8 effectiveStyleOverridesForRequestedStyle:a4 overrides:a5];
  }

  return a5 & ~[(SBMainDisplaySceneLayoutStatusBarView *)self _effectiveStatusBarStyleOverridesToSuppress:a3];
}

- (int64_t)overriddenRequestedStyleFromStyle:(int64_t)a3
{
  if ((*&self->_conformanceFlags & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);
    a3 = [WeakRetained overriddenRequestedStyleFromStyle:a3];
  }

  return a3;
}

- (UIStatusBarStyleDelegate_SpringBoardOnly)realStyleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);

  return WeakRetained;
}

void __99__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarHidden_withAnimation_toSceneWithIdentifier___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = v5;
  v7 = NSStringFromBOOL();
  v8 = 138412802;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = v7;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "(%@) %@ changing hidden to %@ for whole bar", &v8, 0x20u);
}

- (void)sceneWithIdentifier:(uint64_t)a1 didChangeStatusBarOrientationTo:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainDisplaySceneLayoutStatusBarView.m" lineNumber:699 description:{@"Invalid parameter not satisfying: %@", @"[statusBarParts isEqualToArray:[self allValidStatusBarPartIdentifiers]]"}];
}

- (void)sceneWithIdentifier:(uint64_t)a1 didChangeStatusBarOrientationTo:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainDisplaySceneLayoutStatusBarView.m" lineNumber:701 description:{@"Invalid parameter not satisfying: %@", @"[sceneIdentifier isEqualToString:[[self _statusBarDescriberForPrimaryApplicationIfAny] statusBarSceneIdentifier]]"}];
}

@end