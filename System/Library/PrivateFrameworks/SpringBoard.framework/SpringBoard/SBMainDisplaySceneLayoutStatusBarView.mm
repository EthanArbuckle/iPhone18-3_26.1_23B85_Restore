@interface SBMainDisplaySceneLayoutStatusBarView
- (BOOL)_allowChangingIndividualStatusBarParts;
- (BOOL)_statusBarNeedsSpecialLayoutForClassic;
- (BOOL)isStatusBarEffectivelyHidden;
- (CGAffineTransform)_hiddenTransformForAnimation:(SEL)animation;
- (CGRect)_statusBarAvoidanceFrame;
- (CGRect)_statusBarFrameForOrientation:(int64_t)orientation;
- (SBMainDisplaySceneLayoutStatusBarView)initWithFrame:(CGRect)frame;
- (SBMainDisplaySceneLayoutStatusBarViewDataSource)dataSource;
- (UIStatusBarStyleDelegate_SpringBoardOnly)realStyleDelegate;
- (double)_hiddenAlphaForAnimation:(int64_t)animation;
- (id)_anyAppViewControllerOwningInterfaceOrientation;
- (id)_currentlyValidStatusBarPartIdentifiers;
- (id)_effectiveBackgroundActivityIdentifiersToSuppress;
- (id)_reusePool;
- (id)_sceneHandleForClassicApplicationIfAny;
- (id)_statusBarDescriberForPrimaryApplicationIfAny;
- (id)_validStatusBarPartIdentifiersForSceneWithIdentifier:(id)identifier;
- (id)allValidStatusBarPartIdentifiers;
- (id)createStatusBarWithFrame:(CGRect)frame interfaceOrientation:(int64_t)orientation reason:(id)reason;
- (id)statusBarStyleRequestForStatusBarPart:(id)part;
- (id)statusBarSystemNavigationAction:(id)action;
- (int64_t)_effectiveStyleForPartIdentifier:(id)identifier;
- (int64_t)overriddenRequestedStyleFromStyle:(int64_t)style;
- (int64_t)statusBar:(id)bar styleForRequestedStyle:(int64_t)style overrides:(unint64_t)overrides;
- (unint64_t)_effectiveStatusBarStyleOverridesToSuppress;
- (unint64_t)statusBar:(id)bar effectiveStyleOverridesForRequestedStyle:(int64_t)style overrides:(unint64_t)overrides;
- (void)_addStatusBarIfNeeded;
- (void)_animateHidden:(BOOL)hidden withAnimation:(int64_t)animation transitionHandler:(id)handler applyHandler:(id)applyHandler;
- (void)_applyBackgroundActivitiesToSuppress:(id)suppress toSceneWithIdentifier:(id)identifier;
- (void)_applyStatusBarAlpha:(double)alpha toSceneWithIdentifier:(id)identifier;
- (void)_applyStatusBarAvoidanceFrame:(CGRect)frame toSceneWithIdentifier:(id)identifier;
- (void)_applyStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation toSceneWithIdentifier:(id)identifier;
- (void)_applyStatusBarStyle:(int64_t)style toPartIdentifier:(id)identifier ofSceneWithIdentifier:(id)withIdentifier;
- (void)_applyStatusBarStyle:(int64_t)style toSceneWithIdentifier:(id)identifier;
- (void)_enumerateValidStatusBarPartIdentifiersForSceneWithIdentifier:(id)identifier withBlock:(id)block;
- (void)_layoutStatusBarForOrientation:(int64_t)orientation;
- (void)_setDebugBackgroundColor:(id)color;
- (void)_setDebugOffsetIndex:(unint64_t)index;
- (void)_setupDebugging;
- (void)_statusBarTapped:(id)tapped type:(int64_t)type;
- (void)_tearDownStatusBar;
- (void)_updateDebugBackgroundColor;
- (void)_updateDebugOffset;
- (void)_updateHitTestLayers;
- (void)applyStatusBarStylesForDescriber:(id)describer;
- (void)beginRequiringStatusBarForReason:(id)reason;
- (void)dealloc;
- (void)didInvalidateStatusBarDescriptionForSceneWithIdentifier:(id)identifier;
- (void)endRequiringStatusBarForReason:(id)reason;
- (void)layoutStatusBarForSpringBoardRotationToOrientation:(int64_t)orientation;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarOrientationTo:(int64_t)to;
- (void)setDataSource:(id)source;
- (void)setRealStyleDelegate:(id)delegate;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)statusBar:(id)bar didAnimateFromHeight:(double)height toHeight:(double)toHeight animation:(int)animation;
- (void)statusBar:(id)bar didTriggerButtonType:(int64_t)type withAction:(int64_t)action;
- (void)statusBar:(id)bar didTriggerButtonType:(int64_t)type withAction:(int64_t)action context:(id)context;
- (void)statusBar:(id)bar willAnimateFromHeight:(double)height toHeight:(double)toHeight duration:(double)duration animation:(int)animation;
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

- (SBMainDisplaySceneLayoutStatusBarView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBMainDisplaySceneLayoutStatusBarView;
  v3 = [(SBMainDisplaySceneLayoutStatusBarView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)beginRequiringStatusBarForReason:(id)reason
{
  reasonCopy = reason;
  statusBarRequiringReasons = self->_statusBarRequiringReasons;
  if (!statusBarRequiringReasons)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = self->_statusBarRequiringReasons;
    self->_statusBarRequiringReasons = v5;

    statusBarRequiringReasons = self->_statusBarRequiringReasons;
  }

  v7 = [(NSMutableSet *)statusBarRequiringReasons count];
  [(NSMutableSet *)self->_statusBarRequiringReasons addObject:reasonCopy];
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

- (void)endRequiringStatusBarForReason:(id)reason
{
  statusBarRequiringReasons = self->_statusBarRequiringReasons;
  reasonCopy = reason;
  v6 = [(NSMutableSet *)statusBarRequiringReasons count];
  [(NSMutableSet *)self->_statusBarRequiringReasons removeObject:reasonCopy];

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

- (id)createStatusBarWithFrame:(CGRect)frame interfaceOrientation:(int64_t)orientation reason:(id)reason
{
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  reasonCopy = reason;
  _defaultStatusBarStyleRequest = [(SBMainDisplaySceneLayoutStatusBarView *)self _defaultStatusBarStyleRequest];
  [MEMORY[0x277D75A78] heightForStyle:objc_msgSend(_defaultStatusBarStyleRequest orientation:{"style"), orientation}];
  v13 = v12;
  _reusePool = [(SBMainDisplaySceneLayoutStatusBarView *)self _reusePool];
  v15 = [_reusePool getReusableStatusBarWithReason:reasonCopy withFrame:{x, y, width, v13}];

  [v15 setBounds:{x, y, width, v13}];
  UIRectGetCenter();
  [v15 setCenter:?];
  [v15 setStyleDelegate:self];
  [v15 setAutoresizingMask:34];
  [v15 setOrientation:orientation];
  [v15 setLegibilityStyle:0];
  [v15 setForegroundColor:0];

  return v15;
}

- (void)_addStatusBarIfNeeded
{
  v60 = *MEMORY[0x277D85DE8];
  if (!self->_statusBar)
  {
    selfCopy = self;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_dataSource);
    v5 = objc_alloc(MEMORY[0x277CF0D78]);
    [(SBMainDisplaySceneLayoutStatusBarView *)selfCopy bounds];
    v6 = [v5 initWithFrame:?];
    statusBarContainerView = selfCopy->_statusBarContainerView;
    selfCopy->_statusBarContainerView = v6;

    -[BSUIOrientationTransformWrapperView setContentOrientation:](selfCopy->_statusBarContainerView, "setContentOrientation:", [WeakRetained statusBarOrientation]);
    [(BSUIOrientationTransformWrapperView *)selfCopy->_statusBarContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBMainDisplaySceneLayoutStatusBarView *)selfCopy addSubview:selfCopy->_statusBarContainerView];
    leftAnchor = [(BSUIOrientationTransformWrapperView *)selfCopy->_statusBarContainerView leftAnchor];
    leftAnchor2 = [(SBMainDisplaySceneLayoutStatusBarView *)selfCopy leftAnchor];
    v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v10 setActive:1];

    rightAnchor = [(BSUIOrientationTransformWrapperView *)selfCopy->_statusBarContainerView rightAnchor];
    rightAnchor2 = [(SBMainDisplaySceneLayoutStatusBarView *)selfCopy rightAnchor];
    v13 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v13 setActive:1];

    topAnchor = [(BSUIOrientationTransformWrapperView *)selfCopy->_statusBarContainerView topAnchor];
    topAnchor2 = [(SBMainDisplaySceneLayoutStatusBarView *)selfCopy topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v16 setActive:1];

    bottomAnchor = [(BSUIOrientationTransformWrapperView *)selfCopy->_statusBarContainerView bottomAnchor];
    bottomAnchor2 = [(SBMainDisplaySceneLayoutStatusBarView *)selfCopy bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v19 setActive:1];

    v20 = selfCopy->_statusBarContainerView;
    [(SBMainDisplaySceneLayoutStatusBarView *)selfCopy bounds];
    [(BSUIOrientationTransformWrapperView *)v20 convertRectFromContainerInterfaceOrientationToContentInterfaceOrientation:?];
    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v21, v22, v23, v24}];
    statusBarWrapperView = selfCopy->_statusBarWrapperView;
    selfCopy->_statusBarWrapperView = v25;

    statusBarOrientation = [WeakRetained statusBarOrientation];
    [(SBMainDisplaySceneLayoutStatusBarView *)selfCopy _statusBarFrameForOrientation:statusBarOrientation];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %p", objc_opt_class(), selfCopy];
    v36 = [(SBMainDisplaySceneLayoutStatusBarView *)selfCopy createStatusBarWithFrame:statusBarOrientation interfaceOrientation:v29 reason:v31, v33, v35];
    statusBar = self->_statusBar;
    self->_statusBar = v36;

    [(UIStatusBar *)self->_statusBar requestResolvedStyle:0];
    statusBar = [(UIStatusBar *)self->_statusBar statusBar];
    statusBarUnderlyingViewAccessor = selfCopy->_statusBarUnderlyingViewAccessor;
    selfCopy->_statusBarUnderlyingViewAccessor = statusBar;

    if (![(SBMainDisplaySceneLayoutStatusBarView *)selfCopy _allowChangingIndividualStatusBarParts])
    {
      layer = [(UIStatusBar *)self->_statusBar layer];
      [layer setHitTestsAsOpaque:1];
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = WeakRetained;
    statusBarDescribers = [WeakRetained statusBarDescribers];
    v42 = [statusBarDescribers countByEnumeratingWithState:&v55 objects:v59 count:16];
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
            objc_enumerationMutation(statusBarDescribers);
          }

          [(SBMainDisplaySceneLayoutStatusBarView *)selfCopy applyStatusBarStylesForDescriber:*(*(&v55 + 1) + 8 * v45++)];
        }

        while (v43 != v45);
        v43 = [statusBarDescribers countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v43);
    }

    actionGestureRecognizer = [(_UIStatusBar *)selfCopy->_statusBarUnderlyingViewAccessor actionGestureRecognizer];
    v47 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:selfCopy action:sel__statusBarScrollToTop_];
    scrollToTopGestureRecognizer = selfCopy->_scrollToTopGestureRecognizer;
    selfCopy->_scrollToTopGestureRecognizer = v47;

    [(UITapGestureRecognizer *)selfCopy->_scrollToTopGestureRecognizer requireGestureRecognizerToFail:actionGestureRecognizer];
    [(_UIStatusBar *)selfCopy->_statusBarUnderlyingViewAccessor addGestureRecognizer:selfCopy->_scrollToTopGestureRecognizer];
    v49 = +[SBPlatformController sharedInstance];
    isInternalInstall = [v49 isInternalInstall];

    if (isInternalInstall)
    {
      v51 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:selfCopy action:sel__statusBarShowDebug_];
      showDebugGestureRecognizer = selfCopy->_showDebugGestureRecognizer;
      selfCopy->_showDebugGestureRecognizer = v51;

      [(UITapGestureRecognizer *)selfCopy->_showDebugGestureRecognizer setNumberOfTouchesRequired:2];
      [(UITapGestureRecognizer *)selfCopy->_showDebugGestureRecognizer requireGestureRecognizerToFail:actionGestureRecognizer];
      [(_UIStatusBar *)selfCopy->_statusBarUnderlyingViewAccessor addGestureRecognizer:selfCopy->_showDebugGestureRecognizer];
    }

    [(UIView *)selfCopy->_statusBarWrapperView addSubview:self->_statusBar];
    [(BSUIOrientationTransformWrapperView *)selfCopy->_statusBarContainerView addContentView:selfCopy->_statusBarWrapperView];
    [(BSUIOrientationTransformWrapperView *)selfCopy->_statusBarContainerView addHitTestView:self->_statusBar];
    [(SBMainDisplaySceneLayoutStatusBarView *)selfCopy _updateHitTestLayers];
    [(SBMainDisplaySceneLayoutStatusBarView *)selfCopy _updateDebugBackgroundColor];
  }
}

- (void)_statusBarTapped:(id)tapped type:(int64_t)type
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v16 = *MEMORY[0x277CBF348];
  if ((*(&self->_conformanceFlags + 1) & 4) == 0)
  {
    _statusBarDescriberForPrimaryApplicationIfAny = [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarDescriberForPrimaryApplicationIfAny];
    sceneToHandleStatusBarTapIfExists = [_statusBarDescriberForPrimaryApplicationIfAny sceneToHandleStatusBarTapIfExists];

    [tappedCopy locationInView:self->_statusBarUnderlyingViewAccessor];
    *&v16 = v10;
    *(&v16 + 1) = v11;
    if (!sceneToHandleStatusBarTapIfExists)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [tappedCopy locationInView:self];
  v12 = [WeakRetained statusBarDescriberAtPoint:self inView:&v16 pointInSceneLayoutSpace:?];
  sceneToHandleStatusBarTapIfExists = [v12 sceneToHandleStatusBarTapIfExists];

  if (sceneToHandleStatusBarTapIfExists)
  {
LABEL_5:
    v13 = objc_alloc(MEMORY[0x277D75AB0]);
    v14 = [v13 initWithType:type xPosition:*&v16];
    v15 = [MEMORY[0x277CBEB98] setWithObject:v14];
    [sceneToHandleStatusBarTapIfExists sendActions:v15];
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
  statusBarDescribers = [WeakRetained statusBarDescribers];

  v4 = [statusBarDescribers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(statusBarDescribers);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 sceneWantsDeviceOrientationEventsEnabled])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [statusBarDescribers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  _statusBarDescriberForPrimaryApplicationIfAny = [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarDescriberForPrimaryApplicationIfAny];
  classicApplicationSceneHandleIfExists = [_statusBarDescriberForPrimaryApplicationIfAny classicApplicationSceneHandleIfExists];

  return classicApplicationSceneHandleIfExists;
}

- (void)layoutStatusBarForSpringBoardRotationToOrientation:(int64_t)orientation
{
  _anyAppViewControllerOwningInterfaceOrientation = [(SBMainDisplaySceneLayoutStatusBarView *)self _anyAppViewControllerOwningInterfaceOrientation];

  if (!_anyAppViewControllerOwningInterfaceOrientation)
  {

    [(SBMainDisplaySceneLayoutStatusBarView *)self _layoutStatusBarForOrientation:orientation];
  }
}

- (void)updateStatusBarOrientationForLegacyApp
{
  _anyAppViewControllerOwningInterfaceOrientation = [(SBMainDisplaySceneLayoutStatusBarView *)self _anyAppViewControllerOwningInterfaceOrientation];

  if (_anyAppViewControllerOwningInterfaceOrientation)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained statusBarDescriberForStatusBarPart:*MEMORY[0x277D775D0]];

    -[SBMainDisplaySceneLayoutStatusBarView _layoutStatusBarForOrientation:](self, "_layoutStatusBarForOrientation:", [v5 statusBarOrientation]);
  }
}

- (BOOL)_statusBarNeedsSpecialLayoutForClassic
{
  _sceneHandleForClassicApplicationIfAny = [(SBMainDisplaySceneLayoutStatusBarView *)self _sceneHandleForClassicApplicationIfAny];
  if (_sceneHandleForClassicApplicationIfAny && ([MEMORY[0x277D75418] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, (v4 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    application = [_sceneHandleForClassicApplicationIfAny application];
    if ([application classicAppNonFullScreenWithHomeAffordance])
    {
      v6 = [application classicAppPhoneAppRunningOnPad] ^ 1;
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

- (CGRect)_statusBarFrameForOrientation:(int64_t)orientation
{
  statusBarContainerView = self->_statusBarContainerView;
  [(SBMainDisplaySceneLayoutStatusBarView *)self bounds];
  [(BSUIOrientationTransformWrapperView *)statusBarContainerView convertRectFromContainerInterfaceOrientationToContentInterfaceOrientation:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  _defaultStatusBarStyleRequest = [(SBMainDisplaySceneLayoutStatusBarView *)self _defaultStatusBarStyleRequest];
  if ([(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarNeedsSpecialLayoutForClassic])
  {
    _sceneHandleForClassicApplicationIfAny = [(SBMainDisplaySceneLayoutStatusBarView *)self _sceneHandleForClassicApplicationIfAny];
    displayIdentity = [_sceneHandleForClassicApplicationIfAny displayIdentity];
    currentConfiguration = [displayIdentity currentConfiguration];
    [SBUIController statusBarFrameForDeviceApplicationSceneHandle:_sceneHandleForClassicApplicationIfAny displayConfiguration:currentConfiguration interfaceOrientation:orientation statusBarStyleRequest:_defaultStatusBarStyleRequest withinBounds:0 inReferenceSpace:v7, v9, v11, v13];
    v7 = v18;
    v9 = v19;
    v11 = v20;
  }

  [MEMORY[0x277D75A78] heightForStyle:objc_msgSend(_defaultStatusBarStyleRequest orientation:{"style"), orientation}];
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

- (void)_layoutStatusBarForOrientation:(int64_t)orientation
{
  v27 = *MEMORY[0x277D85DE8];
  orientation = [(UIStatusBar *)self->_statusBar orientation];
  statusBarLaidOutForClassic = self->_statusBarLaidOutForClassic;
  _statusBarNeedsSpecialLayoutForClassic = [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarNeedsSpecialLayoutForClassic];
  v8 = orientation != orientation;
  if (statusBarLaidOutForClassic != _statusBarNeedsSpecialLayoutForClassic)
  {
    self->_statusBarLaidOutForClassic = _statusBarNeedsSpecialLayoutForClassic;
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
    v26 = orientation != orientation;
    _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "%@ statusBar laying out for orientation %@ (was %@) needsFrameUpdate = %{BOOL}u, needsOrientationUpdate = %{BOOL}u", buf, 0x2Cu);
  }

  if (v8)
  {
    [(BSUIOrientationTransformWrapperView *)self->_statusBarContainerView setContentOrientation:orientation];
    statusBar = self->_statusBar;
    [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarFrameForOrientation:orientation];
    [(UIStatusBar *)statusBar setFrame:?];
    _sbWindowScene = [(UIView *)self _sbWindowScene];
    statusBarManager = [_sbWindowScene statusBarManager];
    [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarAvoidanceFrame];
    [statusBarManager setAvoidanceFrame:@"SBMainDisplaySceneLayoutStatusBarView _layoutStatusBarForOrientation" reason:self->_statusBar statusBar:0 animationSettings:?];
  }

  if (orientation != orientation)
  {
    [(UIStatusBar *)self->_statusBar setOrientation:orientation];
  }

  [(SBMainDisplaySceneLayoutStatusBarView *)self _updateHitTestLayers];
}

- (void)_tearDownStatusBar
{
  view = [(UITapGestureRecognizer *)self->_scrollToTopGestureRecognizer view];
  [view removeGestureRecognizer:self->_scrollToTopGestureRecognizer];

  scrollToTopGestureRecognizer = self->_scrollToTopGestureRecognizer;
  self->_scrollToTopGestureRecognizer = 0;

  view2 = [(UITapGestureRecognizer *)self->_showDebugGestureRecognizer view];
  [view2 removeGestureRecognizer:self->_showDebugGestureRecognizer];

  showDebugGestureRecognizer = self->_showDebugGestureRecognizer;
  self->_showDebugGestureRecognizer = 0;

  _reusePool = [(SBMainDisplaySceneLayoutStatusBarView *)self _reusePool];
  [_reusePool recycleStatusBar:self->_statusBar];

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
    enabledPartIdentifiers = [(_UIStatusBar *)self->_statusBarUnderlyingViewAccessor enabledPartIdentifiers];
    v4 = [enabledPartIdentifiers count] == 0;

    return v4;
  }

  statusBar = self->_statusBar;

  return [(UIStatusBar *)statusBar isHidden];
}

- (BOOL)_allowChangingIndividualStatusBarParts
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  allowsConfiguringIndividualStatusBarParts = [WeakRetained allowsConfiguringIndividualStatusBarParts];

  return allowsConfiguringIndividualStatusBarParts;
}

- (void)updateBreadcrumbActionIfNecessary
{
  _statusBarDescriberForPrimaryApplicationIfAny = [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarDescriberForPrimaryApplicationIfAny];
  statusBarSceneIdentifier = [_statusBarDescriberForPrimaryApplicationIfAny statusBarSceneIdentifier];
  overlayStatusBarData = [_statusBarDescriberForPrimaryApplicationIfAny overlayStatusBarData];
  if (!BSEqualStrings() || ([(_UIStatusBar *)self->_statusBarUnderlyingViewAccessor currentData], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != overlayStatusBarData))
  {
    breadcrumbProvider = [_statusBarDescriberForPrimaryApplicationIfAny breadcrumbProvider];
    if (breadcrumbProvider && self->_statusBarUnderlyingViewAccessor)
    {
      v8 = MEMORY[0x277D75D18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __74__SBMainDisplaySceneLayoutStatusBarView_updateBreadcrumbActionIfNecessary__block_invoke;
      v15[3] = &unk_2783A92D8;
      v15[4] = self;
      v9 = overlayStatusBarData;
      v16 = v9;
      [v8 performWithoutAnimation:v15];
      if (v9 && [breadcrumbProvider hasBreadcrumb])
      {
        statusBarUnderlyingViewAccessor = self->_statusBarUnderlyingViewAccessor;
        v11 = MEMORY[0x277D76290];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __74__SBMainDisplaySceneLayoutStatusBarView_updateBreadcrumbActionIfNecessary__block_invoke_2;
        v13[3] = &unk_2783B2BF8;
        v14 = breadcrumbProvider;
        v12 = [v11 actionWithBlock:v13];
        [(_UIStatusBar *)statusBarUnderlyingViewAccessor setAction:v12 forPartWithIdentifier:*MEMORY[0x277D775A0]];
      }
    }

    objc_storeStrong(&self->_statusBarBreadcrumbSceneIdentifier, statusBarSceneIdentifier);
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
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      hitTestLayers = self->_hitTestLayers;
      self->_hitTestLayers = dictionary;
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
          layer2 = [(NSMutableDictionary *)self->_hitTestLayers objectForKeyedSubscript:v10];
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
                layer = [(UIStatusBar *)self->_statusBar layer];
                [layer bounds];
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
            [layer2 removeFromSuperlayer];
          }

          else
          {
            if (!layer2)
            {
              layer2 = [MEMORY[0x277CD9ED0] layer];
              [layer2 setHitTestsAsOpaque:1];
              [(NSMutableDictionary *)self->_hitTestLayers setObject:layer2 forKeyedSubscript:v10];
            }

            superlayer = [layer2 superlayer];

            if (!superlayer)
            {
              layer3 = [(UIStatusBar *)self->_statusBar layer];
              [layer3 addSublayer:layer2];
            }

            [layer2 setFrame:{x, y, width, height}];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v7);
    }
  }
}

- (id)statusBarStyleRequestForStatusBarPart:(id)part
{
  if (part)
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

- (void)applyStatusBarStylesForDescriber:(id)describer
{
  v24 = *MEMORY[0x277D85DE8];
  describerCopy = describer;
  statusBarSceneIdentifier = [describerCopy statusBarSceneIdentifier];
  v6 = SBLogAppStatusBars();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = v10;
    *buf = 138413058;
    v17 = statusBarSceneIdentifier;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = objc_opt_class();
    v22 = 2048;
    v23 = describerCopy;
    v12 = v21;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "(%@) %@ applying styles for <%@ %p>", buf, 0x2Au);
  }

  -[SBMainDisplaySceneLayoutStatusBarView _applyStatusBarHidden:withAnimation:toSceneWithIdentifier:](self, "_applyStatusBarHidden:withAnimation:toSceneWithIdentifier:", [describerCopy statusBarHidden], 0, statusBarSceneIdentifier);
  backgroundActivitiesToSuppress = [describerCopy backgroundActivitiesToSuppress];
  [(SBMainDisplaySceneLayoutStatusBarView *)self _applyBackgroundActivitiesToSuppress:backgroundActivitiesToSuppress toSceneWithIdentifier:statusBarSceneIdentifier];

  -[SBMainDisplaySceneLayoutStatusBarView _applyStatusBarStyle:toSceneWithIdentifier:](self, "_applyStatusBarStyle:toSceneWithIdentifier:", [describerCopy statusBarStyle], statusBarSceneIdentifier);
  [describerCopy statusBarAlpha];
  [(SBMainDisplaySceneLayoutStatusBarView *)self _applyStatusBarAlpha:statusBarSceneIdentifier toSceneWithIdentifier:?];
  [describerCopy statusBarAvoidanceFrame];
  [(SBMainDisplaySceneLayoutStatusBarView *)self _applyStatusBarAvoidanceFrame:statusBarSceneIdentifier toSceneWithIdentifier:?];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SBMainDisplaySceneLayoutStatusBarView_applyStatusBarStylesForDescriber___block_invoke;
  v13[3] = &unk_2783B2C20;
  v13[4] = self;
  v14 = describerCopy;
  v15 = statusBarSceneIdentifier;
  v8 = statusBarSceneIdentifier;
  v9 = describerCopy;
  [(SBMainDisplaySceneLayoutStatusBarView *)self _enumerateValidStatusBarPartIdentifiersForSceneWithIdentifier:v8 withBlock:v13];
}

void __74__SBMainDisplaySceneLayoutStatusBarView_applyStatusBarStylesForDescriber___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 _applyStatusBarStyle:objc_msgSend(v4 toPartIdentifier:"statusBarStyleForPartWithIdentifier:" ofSceneWithIdentifier:{v5), v5, a1[6]}];
}

- (void)_applyStatusBarStyle:(int64_t)style toSceneWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (self->_statusBarUnderlyingViewAccessor)
  {
    if ([(SBMainDisplaySceneLayoutStatusBarView *)self _allowChangingIndividualStatusBarParts])
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __84__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarStyle_toSceneWithIdentifier___block_invoke;
      v11[3] = &unk_2783B2C48;
      v11[4] = self;
      styleCopy = style;
      v12 = identifierCopy;
      [(SBMainDisplaySceneLayoutStatusBarView *)self _enumerateValidStatusBarPartIdentifiersForSceneWithIdentifier:v12 withBlock:v11];
    }

    else
    {
      v7 = SBLogAppStatusBars();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = objc_opt_class();
        v9 = v8;
        v10 = _SBStringFromStatusBarStyle(style);
        *buf = 138412802;
        v15 = identifierCopy;
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v10;
        _os_log_debug_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEBUG, "(%@) %@ changing style for whole bar to %@", buf, 0x20u);
      }

      [(UIStatusBar *)self->_statusBar requestResolvedStyle:style];
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

- (void)_applyStatusBarStyle:(int64_t)style toPartIdentifier:(id)identifier ofSceneWithIdentifier:(id)withIdentifier
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  if (self->_statusBarUnderlyingViewAccessor)
  {
    if ([(SBMainDisplaySceneLayoutStatusBarView *)self _allowChangingIndividualStatusBarParts])
    {
      v10 = [(SBMainDisplaySceneLayoutStatusBarView *)self _validStatusBarPartIdentifiersForSceneWithIdentifier:withIdentifierCopy];
      v11 = [v10 containsObject:identifierCopy];

      if (v11)
      {
        if (style == 4)
        {
          v12 = [(NSMutableDictionary *)self->_partIdentifiersDefaultStyles objectForKeyedSubscript:identifierCopy];
          style = [v12 integerValue];

          partIdentifiersCustomStyles = self->_partIdentifiersCustomStyles;
          if (partIdentifiersCustomStyles)
          {
            [(NSMutableDictionary *)partIdentifiersCustomStyles removeObjectForKey:identifierCopy];
          }
        }

        else
        {
          if (!self->_partIdentifiersCustomStyles)
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
            v15 = self->_partIdentifiersCustomStyles;
            self->_partIdentifiersCustomStyles = dictionary;
          }

          v16 = [MEMORY[0x277CCABB0] numberWithInteger:style];
          [(NSMutableDictionary *)self->_partIdentifiersCustomStyles setObject:v16 forKeyedSubscript:identifierCopy];
        }

        v17 = SBLogAppStatusBars();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = objc_opt_class();
          v19 = v18;
          v20 = _SBStringFromStatusBarStyle(style);
          v21 = 138413058;
          v22 = withIdentifierCopy;
          v23 = 2112;
          v24 = v18;
          v25 = 2112;
          v26 = identifierCopy;
          v27 = 2112;
          v28 = v20;
          _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, "(%@) %@ changing style for %@ to %@", &v21, 0x2Au);
        }

        [(_UIStatusBar *)self->_statusBarUnderlyingViewAccessor setStyle:style forPartWithIdentifier:identifierCopy];
      }
    }
  }
}

- (void)_applyStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation toSceneWithIdentifier:(id)identifier
{
  hiddenCopy = hidden;
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (self->_statusBarUnderlyingViewAccessor)
  {
    v9 = SBLogAppStatusBars();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = NSStringFromBOOL();
      *buf = 138413058;
      v29 = identifierCopy;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v18;
      v34 = 2048;
      animationCopy = animation;
      _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "(%@) %@ begin to change status bar hidden to %@ with animation %ld", buf, 0x2Au);
    }

    _sbWindowScene = [(UIView *)self _sbWindowScene];
    recordingIndicatorManager = [_sbWindowScene recordingIndicatorManager];
    if ([(SBMainDisplaySceneLayoutStatusBarView *)self _allowChangingIndividualStatusBarParts])
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __99__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarHidden_withAnimation_toSceneWithIdentifier___block_invoke_45;
      v22[3] = &unk_2783B2C98;
      v22[4] = self;
      v12 = &v23;
      v23 = identifierCopy;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __99__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarHidden_withAnimation_toSceneWithIdentifier___block_invoke_2_46;
      v19[3] = &unk_2783A9940;
      v19[4] = self;
      v13 = &v20;
      v20 = v23;
      v21 = recordingIndicatorManager;
      v14 = recordingIndicatorManager;
      [(SBMainDisplaySceneLayoutStatusBarView *)self _animateHidden:hiddenCopy withAnimation:animation transitionHandler:v22 applyHandler:v19];
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
      v25[0] = identifierCopy;
      v25[1] = self;
      v13 = &v26;
      v26 = recordingIndicatorManager;
      v15 = recordingIndicatorManager;
      [(SBMainDisplaySceneLayoutStatusBarView *)self _animateHidden:hiddenCopy withAnimation:animation transitionHandler:v27 applyHandler:v24];
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

- (void)_applyStatusBarAlpha:(double)alpha toSceneWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (self->_statusBarUnderlyingViewAccessor)
  {
    _sbWindowScene = [(UIView *)self _sbWindowScene];
    recordingIndicatorManager = [_sbWindowScene recordingIndicatorManager];
    if ([(SBMainDisplaySceneLayoutStatusBarView *)self _allowChangingIndividualStatusBarParts])
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __84__SBMainDisplaySceneLayoutStatusBarView__applyStatusBarAlpha_toSceneWithIdentifier___block_invoke;
      v11[3] = &unk_2783B2CC0;
      v11[4] = self;
      alphaCopy = alpha;
      v12 = identifierCopy;
      v13 = recordingIndicatorManager;
      [(SBMainDisplaySceneLayoutStatusBarView *)self _enumerateValidStatusBarPartIdentifiersForSceneWithIdentifier:v12 withBlock:v11];
    }

    else
    {
      v9 = SBLogAppStatusBars();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v16 = identifierCopy;
        v17 = 2112;
        v18 = objc_opt_class();
        v19 = 2048;
        alphaCopy2 = alpha;
        v10 = v18;
        _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "(%@) %@ changing alpha for whole bar to %f", buf, 0x20u);
      }

      [(_UIStatusBar *)self->_statusBarUnderlyingViewAccessor setAlpha:alpha];
      [recordingIndicatorManager updateRecordingIndicatorForStatusBarChanges];
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

- (void)_applyBackgroundActivitiesToSuppress:(id)suppress toSceneWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  suppressCopy = suppress;
  identifierCopy = identifier;
  if (self->_statusBarUnderlyingViewAccessor)
  {
    [(UIStatusBar *)self->_statusBar requestResolvedStyle:[(UIStatusBar *)self->_statusBar currentResolvedStyle]];
    v8 = SBLogAppStatusBars();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = STBackgroundActivityIdentifiersDescription();
      _effectiveBackgroundActivityIdentifiersToSuppress = [(SBMainDisplaySceneLayoutStatusBarView *)self _effectiveBackgroundActivityIdentifiersToSuppress];
      v12 = STBackgroundActivityIdentifiersDescription();

      v13 = SBLogAppStatusBars();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138413058;
        v16 = identifierCopy;
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

- (void)_applyStatusBarAvoidanceFrame:(CGRect)frame toSceneWithIdentifier:(id)identifier
{
  if (self->_statusBarUnderlyingViewAccessor)
  {
    v6 = [(UIView *)self _sbWindowScene:identifier];
    statusBarManager = [v6 statusBarManager];
    [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarAvoidanceFrame];
    [statusBarManager setAvoidanceFrame:@"SBMainDisplaySceneLayoutStatusBarView _applyStatusBarAvoidanceFrame" reason:self->_statusBar statusBar:0 animationSettings:?];
  }
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarOrientationTo:(int64_t)to
{
  identifierCopy = identifier;
  _anyAppViewControllerOwningInterfaceOrientation = [(SBMainDisplaySceneLayoutStatusBarView *)self _anyAppViewControllerOwningInterfaceOrientation];

  if (_anyAppViewControllerOwningInterfaceOrientation)
  {
    v8 = SBLogAppStatusBars();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      if ((*&self->_conformanceFlags & 0x100) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        v11 = [WeakRetained statusBarPartsForSceneWithIdentifier:identifierCopy];

        allValidStatusBarPartIdentifiers = [(SBMainDisplaySceneLayoutStatusBarView *)self allValidStatusBarPartIdentifiers];
        v13 = [v11 isEqualToArray:allValidStatusBarPartIdentifiers];

        if ((v13 & 1) == 0)
        {
          [SBMainDisplaySceneLayoutStatusBarView sceneWithIdentifier:a2 didChangeStatusBarOrientationTo:self];
        }
      }

      _statusBarDescriberForPrimaryApplicationIfAny = [(SBMainDisplaySceneLayoutStatusBarView *)self _statusBarDescriberForPrimaryApplicationIfAny];
      statusBarSceneIdentifier = [_statusBarDescriberForPrimaryApplicationIfAny statusBarSceneIdentifier];
      v16 = [identifierCopy isEqualToString:statusBarSceneIdentifier];

      if ((v16 & 1) == 0)
      {
        [SBMainDisplaySceneLayoutStatusBarView sceneWithIdentifier:a2 didChangeStatusBarOrientationTo:self];
      }
    }

    [(SBMainDisplaySceneLayoutStatusBarView *)self _layoutStatusBarForOrientation:to];
    [(BSUIOrientationTransformWrapperView *)self->_statusBarContainerView setNeedsLayout];
    [(BSUIOrientationTransformWrapperView *)self->_statusBarContainerView layoutIfNeeded];
  }
}

- (void)didInvalidateStatusBarDescriptionForSceneWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dataSource = [(SBMainDisplaySceneLayoutStatusBarView *)self dataSource];
  statusBarDescribers = [dataSource statusBarDescribers];

  v7 = [statusBarDescribers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(statusBarDescribers);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        statusBarSceneIdentifier = [v11 statusBarSceneIdentifier];
        v13 = [statusBarSceneIdentifier isEqual:identifierCopy];

        if (v13)
        {
          [(SBMainDisplaySceneLayoutStatusBarView *)self applyStatusBarStylesForDescriber:v11];
        }
      }

      v8 = [statusBarDescribers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)setDataSource:(id)source
{
  obj = source;
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

- (id)_validStatusBarPartIdentifiersForSceneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if ((*&self->_conformanceFlags & 0x100) != 0)
  {
    [WeakRetained statusBarPartsForSceneWithIdentifier:identifierCopy];
  }

  else
  {
    [(SBMainDisplaySceneLayoutStatusBarView *)self allValidStatusBarPartIdentifiers];
  }
  v7 = ;

  return v7;
}

- (int64_t)_effectiveStyleForPartIdentifier:(id)identifier
{
  identifierCopy = identifier;
  integerValue = _SBStatusBarStyleFromLegacyStyle([(UIStatusBar *)self->_statusBar currentStyle]);
  if ([(SBMainDisplaySceneLayoutStatusBarView *)self _allowChangingIndividualStatusBarParts])
  {
    v6 = [(NSMutableDictionary *)self->_partIdentifiersDefaultStyles objectForKeyedSubscript:identifierCopy];
    v7 = [(NSMutableDictionary *)self->_partIdentifiersCustomStyles objectForKeyedSubscript:identifierCopy];
    v8 = v7;
    if (v7 || (v7 = v6) != 0)
    {
      integerValue = [v7 integerValue];
    }
  }

  return integerValue;
}

- (void)_enumerateValidStatusBarPartIdentifiersForSceneWithIdentifier:(id)identifier withBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(SBMainDisplaySceneLayoutStatusBarView *)self _validStatusBarPartIdentifiersForSceneWithIdentifier:identifier, 0];
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

          blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v11++));
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
  _effectiveBackgroundActivityIdentifiersToSuppress = [(SBMainDisplaySceneLayoutStatusBarView *)self _effectiveBackgroundActivityIdentifiersToSuppress];
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
  dataSource = [(SBMainDisplaySceneLayoutStatusBarView *)self dataSource];
  statusBarDescribers = [dataSource statusBarDescribers];

  v6 = [statusBarDescribers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(statusBarDescribers);
        }

        backgroundActivitiesToSuppress = [*(*(&v12 + 1) + 8 * i) backgroundActivitiesToSuppress];
        [v3 unionSet:backgroundActivitiesToSuppress];
      }

      v7 = [statusBarDescribers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_animateHidden:(BOOL)hidden withAnimation:(int64_t)animation transitionHandler:(id)handler applyHandler:(id)applyHandler
{
  handlerCopy = handler;
  applyHandlerCopy = applyHandler;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  [(SBMainDisplaySceneLayoutStatusBarView *)self _hiddenTransformForAnimation:animation];
  [(SBMainDisplaySceneLayoutStatusBarView *)self _hiddenAlphaForAnimation:animation];
  v13 = v12;
  self->_lastHiddenValueForAnimation = hidden;
  _isInAnimationBlock = [MEMORY[0x277D75D18] _isInAnimationBlock];
  if (animation && _isInAnimationBlock)
  {
    if (!hidden)
    {
      v15 = MEMORY[0x277D75D18];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __101__SBMainDisplaySceneLayoutStatusBarView__animateHidden_withAnimation_transitionHandler_applyHandler___block_invoke;
      v32[3] = &unk_2783B2CE8;
      v33 = applyHandlerCopy;
      v34 = handlerCopy;
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
    v27[0] = handlerCopy;
    hiddenCopy = hidden;
    v27[1] = v13;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __101__SBMainDisplaySceneLayoutStatusBarView__animateHidden_withAnimation_transitionHandler_applyHandler___block_invoke_3;
    v23[3] = &unk_2783B2D38;
    v23[4] = self;
    v24 = applyHandlerCopy;
    v25 = v27[0];
    v18 = applyHandlerCopy;
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
    v22 = applyHandlerCopy;
    v20 = applyHandlerCopy;
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

- (CGAffineTransform)_hiddenTransformForAnimation:(SEL)animation
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

- (double)_hiddenAlphaForAnimation:(int64_t)animation
{
  result = 0.0;
  if (animation == 2)
  {
    return 1.0;
  }

  return result;
}

- (id)_reusePool
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  statusBarManager = [embeddedDisplayWindowScene statusBarManager];
  reusePool = [statusBarManager reusePool];

  return reusePool;
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

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  v7 = keyCopy;
  if (self->_medusaSettings == settings)
  {
    v9 = keyCopy;
    if ([keyCopy isEqualToString:@"statusBarDebugBackgroundColorsEnabled"])
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

- (void)_setDebugBackgroundColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_debugBackgroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_debugBackgroundColor, color);
    [(SBMainDisplaySceneLayoutStatusBarView *)self _updateDebugBackgroundColor];
  }
}

- (void)_setDebugOffsetIndex:(unint64_t)index
{
  if (self->_debugOffsetIndex != index)
  {
    self->_debugOffsetIndex = index;
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

- (void)setRealStyleDelegate:(id)delegate
{
  obj = delegate;
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

- (int64_t)statusBar:(id)bar styleForRequestedStyle:(int64_t)style overrides:(unint64_t)overrides
{
  if ((*&self->_conformanceFlags & 1) == 0)
  {
    return style;
  }

  barCopy = bar;
  WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);
  v11 = [WeakRetained statusBar:barCopy styleForRequestedStyle:style overrides:overrides];

  return v11;
}

- (void)statusBar:(id)bar willAnimateFromHeight:(double)height toHeight:(double)toHeight duration:(double)duration animation:(int)animation
{
  if ((*&self->_conformanceFlags & 2) != 0)
  {
    v8 = *&animation;
    barCopy = bar;
    WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);
    [WeakRetained statusBar:barCopy willAnimateFromHeight:v8 toHeight:height duration:toHeight animation:duration];
  }
}

- (void)statusBar:(id)bar didAnimateFromHeight:(double)height toHeight:(double)toHeight animation:(int)animation
{
  if ((*&self->_conformanceFlags & 4) != 0)
  {
    v7 = *&animation;
    barCopy = bar;
    WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);
    [WeakRetained statusBar:barCopy didAnimateFromHeight:v7 toHeight:height animation:toHeight];
  }
}

- (id)statusBarSystemNavigationAction:(id)action
{
  if ((*&self->_conformanceFlags & 8) != 0)
  {
    actionCopy = action;
    WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);
    v3 = [WeakRetained statusBarSystemNavigationAction:actionCopy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)statusBar:(id)bar didTriggerButtonType:(int64_t)type withAction:(int64_t)action
{
  if ((*&self->_conformanceFlags & 0x10) != 0)
  {
    [(SBMainDisplaySceneLayoutStatusBarView *)self statusBar:bar didTriggerButtonType:type withAction:action];
  }
}

- (void)statusBar:(id)bar didTriggerButtonType:(int64_t)type withAction:(int64_t)action context:(id)context
{
  if ((*&self->_conformanceFlags & 0x20) != 0)
  {
    [(SBMainDisplaySceneLayoutStatusBarView *)self statusBar:bar didTriggerButtonType:type withAction:action context:context];
  }
}

- (unint64_t)statusBar:(id)bar effectiveStyleOverridesForRequestedStyle:(int64_t)style overrides:(unint64_t)overrides
{
  if ((*&self->_conformanceFlags & 0x40) != 0)
  {
    barCopy = bar;
    WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);
    overrides = [WeakRetained statusBar:barCopy effectiveStyleOverridesForRequestedStyle:style overrides:overrides];
  }

  return overrides & ~[(SBMainDisplaySceneLayoutStatusBarView *)self _effectiveStatusBarStyleOverridesToSuppress:bar];
}

- (int64_t)overriddenRequestedStyleFromStyle:(int64_t)style
{
  if ((*&self->_conformanceFlags & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_realStyleDelegate);
    style = [WeakRetained overriddenRequestedStyleFromStyle:style];
  }

  return style;
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