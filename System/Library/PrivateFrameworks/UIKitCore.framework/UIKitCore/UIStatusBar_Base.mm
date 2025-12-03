@interface UIStatusBar_Base
+ (CGRect)_frameInSceneReferenceSpaceForStyle:(int64_t)style orientation:(int64_t)orientation inSceneWithReferenceSize:(CGSize)size;
+ (Class)_implementationClass;
+ (int64_t)_defaultStyleForRequestedStyle:(int64_t)style styleOverrides:(unint64_t)overrides activeStyleOverride:(unint64_t *)override;
- (BOOL)_shouldSeekHigherPriorityTouchTarget;
- (BOOL)_usesModernBar;
- (BOOL)showsContentsOnScreen;
- (CGAffineTransform)_hiddenTransformForHideAnimationParameters:(SEL)parameters;
- (CGRect)avoidanceFrame;
- (CGRect)currentFrame;
- (CGRect)frameForOrientation:(int64_t)orientation;
- (CGRect)frameForPartWithIdentifier:(id)identifier;
- (CGSize)intrinsicContentSize;
- (UIOffset)offsetForPartWithIdentifier:(id)identifier;
- (UIStatusBarCarPlayDockDataProviding)dockDataProvider;
- (UIStatusBarManager)manager;
- (UIStatusBarStyleDelegate)styleDelegate;
- (UIStatusBarWindow)statusBarWindow;
- (UIStatusBar_Base)initWithFrame:(CGRect)frame showForegroundView:(BOOL)view inProcessStateProvider:(id)provider;
- (UIViewControllerTransitionCoordinator)_transitionCoordinator;
- (double)_hiddenAlphaForHideAnimationParameters:(id)parameters;
- (double)currentHeight;
- (double)heightForOrientation:(int64_t)orientation isAzulBLinked:(BOOL)linked;
- (id)_initWithFrame:(CGRect)frame showForegroundView:(BOOL)view wantsServer:(BOOL)server inProcessStateProvider:(id)provider;
- (int64_t)styleForRequestedStyle:(int64_t)style;
- (void)_evaluateServerRegistration;
- (void)_getStyle:(int64_t *)style andActiveOverride:(unint64_t *)override forRequestedStyle:(int64_t)requestedStyle;
- (void)_performAnimations:(id)animations withParameters:(id)parameters completion:(id)completion;
- (void)_performBlockWhileIgnoringForegroundViewChanges:(id)changes;
- (void)_setHidden:(BOOL)hidden animationParameters:(id)parameters;
- (void)_styleOverridesDidChange:(id)change;
- (void)dealloc;
- (void)forceUpdateStyleOverrides:(BOOL)overrides;
- (void)requestStyle:(int64_t)style animated:(BOOL)animated forced:(BOOL)forced;
- (void)requestStyle:(int64_t)style partStyles:(id)styles animationParameters:(id)parameters forced:(BOOL)forced;
- (void)setAlpha:(double)alpha;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setLocalDataOverrides:(id *)overrides;
- (void)setServerUpdatesDisabled:(BOOL)disabled;
- (void)setStyleRequest:(id)request animationParameters:(id)parameters;
- (void)setSuppressesHiddenSideEffects:(BOOL)effects;
@end

@implementation UIStatusBar_Base

+ (Class)_implementationClass
{
  v2 = _MergedGlobals_7_6;
  if (!_MergedGlobals_7_6)
  {
    if ([UIApp _isSpringBoard])
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x2050000000;
      v2 = qword_1ED49ACF8;
      v10 = qword_1ED49ACF8;
      if (!qword_1ED49ACF8)
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __getSTUIStatusBar_WrapperClass_block_invoke;
        v6[3] = &unk_1E70F2F20;
        v6[4] = &v7;
        __getSTUIStatusBar_WrapperClass_block_invoke(v6);
        v2 = v8[3];
      }

      v3 = v2;
      _Block_object_dispose(&v7, 8);
    }

    else
    {
      v2 = objc_opt_class();
    }

    v4 = v2;
    _MergedGlobals_7_6 = v2;
  }

  return v2;
}

- (double)currentHeight
{
  orientation = [(UIStatusBar_Base *)self orientation];

  [(UIStatusBar_Base *)self heightForOrientation:orientation];
  return result;
}

- (void)_evaluateServerRegistration
{
  if (self->_statusBarServer)
  {
    superview = [(UIView *)self superview];
    if (self->_hidden && !self->_suppressesHiddenSideEffects || (self->_foreground ? (v4 = superview == 0) : (v4 = 1), v4))
    {
      v5 = 0;
    }

    else
    {
      v7 = superview;
      v5 = ![(UIStatusBar_Base *)self serverUpdatesDisabled];
      superview = v7;
    }

    if (self->_registered != v5)
    {
      v8 = superview;
      [(UIStatusBar_Base *)self setRegistered:?];
      statusBarServer = self->_statusBarServer;
      if (self->_registered)
      {
        [(UIStatusBarServer *)statusBarServer setStatusBar:self];
        [(UIStatusBar_Base *)self forceUpdateData:0];
        [(UIStatusBar_Base *)self forceUpdateStyleOverrides:0];
        [(UIStatusBar_Base *)self forceUpdateDoubleHeightStatus];
        [(UIStatusBar_Base *)self forgetEitherSideHistory];
      }

      else
      {
        [(UIStatusBarServer *)statusBarServer setStatusBar:0];
      }

      superview = v8;
    }
  }
}

- (UIStatusBarManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (UIStatusBarStyleDelegate)styleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_styleDelegate);

  return WeakRetained;
}

- (UIViewControllerTransitionCoordinator)_transitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->__transitionCoordinator);

  return WeakRetained;
}

- (void)dealloc
{
  statusBarServer = self->_statusBarServer;
  if (statusBarServer)
  {
    [(UIStatusBarServer *)statusBarServer setStatusBar:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter removeObserver:self name:0x1EFB9C730 object:0];
  }

  inProcessStateProvider = self->_inProcessStateProvider;
  if (inProcessStateProvider)
  {
    [(UIStatusBarStateProvider *)inProcessStateProvider removeStatusBarStateObserver:self];
  }

  localDataOverrides = self->_localDataOverrides;
  if (localDataOverrides)
  {
    free(localDataOverrides);
    self->_localDataOverrides = 0;
  }

  v7.receiver = self;
  v7.super_class = UIStatusBar_Base;
  [(UIView *)&v7 dealloc];
}

- (id)_initWithFrame:(CGRect)frame showForegroundView:(BOOL)view wantsServer:(BOOL)server inProcessStateProvider:(id)provider
{
  serverCopy = server;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = UIStatusBar_Base;
  height = [(UIView *)&v19 initWithFrame:x, y, width, height];
  height->_persistentAnimationsEnabled = 1;
  height->_requestedStyle = -1;
  height->_foreground = [UIApp applicationState] != 2;
  objc_storeStrong(&height->_inProcessStateProvider, provider);
  if (providerCopy)
  {
    [providerCopy addStatusBarStateObserver:height];
  }

  else if (serverCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:height selector:sel__didEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:UIApp];
    [defaultCenter addObserver:height selector:sel__willEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:UIApp];
    [defaultCenter addObserver:height selector:sel__styleOverridesDidChange_ name:0x1EFB9C730 object:0];
    height->_styleOverrides = +[UIStatusBarServer getStyleOverrides];
    v16 = [[UIStatusBarServer alloc] initWithStatusBar:0];
    statusBarServer = height->_statusBarServer;
    height->_statusBarServer = v16;
  }

  return height;
}

- (UIStatusBar_Base)initWithFrame:(CGRect)frame showForegroundView:(BOOL)view inProcessStateProvider:(id)provider
{
  viewCopy = view;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  providerCopy = provider;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  if (providerCopy || v12 != v13)
  {
    height = [(UIStatusBar_Base *)self _initWithFrame:viewCopy showForegroundView:1 wantsServer:providerCopy inProcessStateProvider:x, y, width, height];
    self = height;
  }

  else
  {
    height = [objc_alloc(objc_msgSend(objc_opt_class() "_implementationClass"))];
  }

  v15 = height;

  return v15;
}

- (BOOL)_shouldSeekHigherPriorityTouchTarget
{
  _systemNavigationAction = [UIApp _systemNavigationAction];
  v3 = _systemNavigationAction == 0;

  return v3;
}

- (void)setServerUpdatesDisabled:(BOOL)disabled
{
  if (self->_serverUpdatesDisabled != disabled)
  {
    self->_serverUpdatesDisabled = disabled;
    [(UIStatusBar_Base *)self _evaluateServerRegistration];
  }
}

- (void)_styleOverridesDidChange:(id)change
{
  _requestStyle = [(UIStatusBar_Base *)self _requestStyle];

  [(UIStatusBar_Base *)self requestStyle:_requestStyle animated:0];
}

- (CGSize)intrinsicContentSize
{
  [(UIStatusBar_Base *)self currentHeight];
  v3 = v2;
  v4 = -1.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (CGRect)currentFrame
{
  window = [(UIView *)self window];
  [(UIStatusBar_Base *)self frameForOrientation:[(UIStatusBar_Base *)self orientation]];
  [window _convertRectFromSceneReferenceSpace:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)frameForOrientation:(int64_t)orientation
{
  [objc_msgSend(objc_opt_class() "_statusBarWindowClass")];
  v6 = v5;
  v8 = v7;
  v9 = objc_opt_class();
  currentStyle = [(UIStatusBar_Base *)self currentStyle];

  [v9 _frameInSceneReferenceSpaceForStyle:currentStyle orientation:orientation inSceneWithReferenceSize:{v6, v8}];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)heightForOrientation:(int64_t)orientation isAzulBLinked:(BOOL)linked
{
  linkedCopy = linked;
  v6 = objc_opt_class();

  [v6 heightForStyle:0 orientation:orientation inWindow:0 isAzulBLinked:linkedCopy];
  return result;
}

- (void)_getStyle:(int64_t *)style andActiveOverride:(unint64_t *)override forRequestedStyle:(int64_t)requestedStyle
{
  styleDelegate = [(UIStatusBar_Base *)self styleDelegate];
  styleDelegate2 = [(UIStatusBar_Base *)self styleDelegate];
  if (styleDelegate)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = [objc_opt_class() instanceMethodForSelector:sel_statusBar_styleForRequestedStyle_overrides_];
    v12 = isKindOfClass & (v11 != [objc_opt_class() instanceMethodForSelector:sel_statusBar_styleForRequestedStyle_overrides_]);
    if (objc_opt_respondsToSelector())
    {
      v13 = objc_opt_respondsToSelector();
      if ((v12 & 1) == 0)
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_8:
        v14 = [styleDelegate2 overriddenRequestedStyleFromStyle:requestedStyle];
        requestedStyle = [objc_opt_class() _defaultStyleForRequestedStyle:v14 styleOverrides:objc_msgSend(styleDelegate2 activeStyleOverride:{"statusBar:effectiveStyleOverridesForRequestedStyle:overrides:", self, v14, -[UIStatusBar_Base styleOverrides](self, "styleOverrides")), override}];
        goto LABEL_12;
      }
    }

    else if (!v12)
    {
      goto LABEL_12;
    }

    requestedStyle = [styleDelegate statusBar:self styleForRequestedStyle:requestedStyle overrides:{-[UIStatusBar_Base styleOverrides](self, "styleOverrides")}];
    if (override)
    {
      *override = 0;
    }
  }

  else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    goto LABEL_8;
  }

LABEL_12:
  if (style)
  {
    *style = requestedStyle;
  }
}

- (int64_t)styleForRequestedStyle:(int64_t)style
{
  v4 = 0;
  [(UIStatusBar_Base *)self _getStyle:&v4 andActiveOverride:0 forRequestedStyle:style];
  return v4;
}

- (void)requestStyle:(int64_t)style partStyles:(id)styles animationParameters:(id)parameters forced:(BOOL)forced
{
  forcedCopy = forced;
  parametersCopy = parameters;
  stylesCopy = styles;
  [(UIStatusBar_Base *)self _setRequestedStyle:style];
  [(UIStatusBar_Base *)self _requestStyle:style partStyles:stylesCopy animationParameters:parametersCopy forced:forcedCopy];
}

- (void)requestStyle:(int64_t)style animated:(BOOL)animated forced:(BOOL)forced
{
  forcedCopy = forced;
  if (animated)
  {
    initWithDefaultParameters = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
  }

  else
  {
    initWithDefaultParameters = 0;
  }

  v9 = initWithDefaultParameters;
  [(UIStatusBar_Base *)self requestStyle:style animationParameters:initWithDefaultParameters forced:forcedCopy];
}

- (void)_setHidden:(BOOL)hidden animationParameters:(id)parameters
{
  hiddenCopy = hidden;
  parametersCopy = parameters;
  if (self->_hidden != hiddenCopy)
  {
    self->_hidden = hiddenCopy;
    [(UIStatusBar_Base *)self _evaluateServerRegistration];
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    [(UIStatusBar_Base *)self _hiddenTransformForHideAnimationParameters:parametersCopy];
    [(UIStatusBar_Base *)self _hiddenAlphaForHideAnimationParameters:parametersCopy];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__UIStatusBar_Base__setHidden_animationParameters___block_invoke;
    aBlock[3] = &unk_1E71226F0;
    aBlock[4] = self;
    aBlock[5] = v7;
    v17 = v20;
    v18 = v21;
    v19 = v22;
    v8 = _Block_copy(aBlock);
    if ([parametersCopy shouldAnimate] && !hiddenCopy)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __51__UIStatusBar_Base__setHidden_animationParameters___block_invoke_2;
      v14[3] = &unk_1E70F0F78;
      v15 = v8;
      [UIView performWithoutAnimation:v14];
    }

    v10[4] = self;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__UIStatusBar_Base__setHidden_animationParameters___block_invoke_3;
    v11[3] = &unk_1E7101B70;
    v12 = v8;
    v13 = hiddenCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__UIStatusBar_Base__setHidden_animationParameters___block_invoke_4;
    v10[3] = &unk_1E70F5AC0;
    v9 = v8;
    [UIStatusBarAnimationParameters animateWithParameters:parametersCopy animations:v11 completion:v10];
  }
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  hiddenCopy = hidden;
  if (animated)
  {
    initWithDefaultParameters = [[UIStatusBarHideAnimationParameters alloc] initWithDefaultParameters];
  }

  else
  {
    initWithDefaultParameters = 0;
  }

  v7 = initWithDefaultParameters;
  [(UIStatusBar_Base *)self setHidden:hiddenCopy animationParameters:initWithDefaultParameters];
}

- (void)setAlpha:(double)alpha
{
  manager = [(UIStatusBar_Base *)self manager];
  if (!manager || (v6 = manager, -[UIStatusBar_Base manager](self, "manager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 statusBar:self shouldSetAlpha:alpha], v7, v6, v8))
  {
    v9.receiver = self;
    v9.super_class = UIStatusBar_Base;
    [(UIView *)&v9 setAlpha:alpha];
  }
}

- (void)setSuppressesHiddenSideEffects:(BOOL)effects
{
  if (self->_suppressesHiddenSideEffects != effects)
  {
    self->_suppressesHiddenSideEffects = effects;
    [(UIStatusBar_Base *)self _evaluateServerRegistration];
  }
}

- (void)forceUpdateStyleOverrides:(BOOL)overrides
{
  overridesCopy = overrides;
  self->_styleOverrides = +[UIStatusBarServer getStyleOverrides];
  _requestStyle = [(UIStatusBar_Base *)self _requestStyle];

  [(UIStatusBar_Base *)self requestStyle:_requestStyle animated:overridesCopy forced:1];
}

- (void)setLocalDataOverrides:(id *)overrides
{
  localDataOverrides = self->_localDataOverrides;
  if (overrides)
  {
    if (localDataOverrides || (localDataOverrides = malloc_type_malloc(0xF68uLL, 0x100004064C31AF5uLL), (self->_localDataOverrides = localDataOverrides) != 0))
    {

      memcpy(localDataOverrides, overrides, sizeof($38BCDC8E708A2560E43DD4D455FC8F47));
    }
  }

  else if (localDataOverrides)
  {
    free(localDataOverrides);
    self->_localDataOverrides = 0;
  }
}

- (BOOL)showsContentsOnScreen
{
  enabledPartIdentifiers = [(UIStatusBar_Base *)self enabledPartIdentifiers];
  if (enabledPartIdentifiers)
  {
    enabledPartIdentifiers2 = [(UIStatusBar_Base *)self enabledPartIdentifiers];
    v5 = [enabledPartIdentifiers2 count] != 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setStyleRequest:(id)request animationParameters:(id)parameters
{
  requestCopy = request;
  self->_requestedStyle = [requestCopy style];
  foregroundColor = [requestCopy foregroundColor];
  foregroundColor = self->_foregroundColor;
  self->_foregroundColor = foregroundColor;

  legibilityStyle = [requestCopy legibilityStyle];
  self->_legibilityStyle = legibilityStyle;
}

- (UIOffset)offsetForPartWithIdentifier:(id)identifier
{
  v3 = 0.0;
  v4 = 0.0;
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (CGRect)frameForPartWithIdentifier:(id)identifier
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)_frameInSceneReferenceSpaceForStyle:(int64_t)style orientation:(int64_t)orientation inSceneWithReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [self heightForStyle:style orientation:orientation inWindow:0];
  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  v13 = width - v8;
  v14 = 0.0;
  if (orientation == 4)
  {
    v15 = height;
  }

  else
  {
    v15 = *(MEMORY[0x1E695F058] + 24);
  }

  if (orientation == 4)
  {
    v16 = v8;
  }

  else
  {
    v16 = *(MEMORY[0x1E695F058] + 16);
  }

  if (orientation == 4)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *(MEMORY[0x1E695F058] + 8);
  }

  if (orientation == 4)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = *MEMORY[0x1E695F058];
  }

  if (orientation == 3)
  {
    v15 = height;
    v16 = v8;
    v17 = 0.0;
  }

  else
  {
    v13 = v18;
  }

  if (orientation == 2)
  {
    v12 = v8;
    v11 = width;
    v10 = height - v8;
    v9 = 0.0;
  }

  if (orientation == 1)
  {
    v19 = width;
  }

  else
  {
    v8 = v12;
    v19 = v11;
  }

  if (orientation == 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v10;
  }

  if (orientation != 1)
  {
    v14 = v9;
  }

  if (orientation <= 2)
  {
    v21 = v8;
  }

  else
  {
    v21 = v15;
  }

  if (orientation <= 2)
  {
    v22 = v19;
  }

  else
  {
    v22 = v16;
  }

  if (orientation <= 2)
  {
    v23 = v20;
  }

  else
  {
    v23 = v17;
  }

  if (orientation <= 2)
  {
    v24 = v14;
  }

  else
  {
    v24 = v13;
  }

  result.size.height = v21;
  result.size.width = v22;
  result.origin.y = v23;
  result.origin.x = v24;
  return result;
}

- (CGAffineTransform)_hiddenTransformForHideAnimationParameters:(SEL)parameters
{
  v6 = a4;
  v7 = MEMORY[0x1E695EFD0];
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v8;
  *&retstr->tx = *(v7 + 32);
  v19 = v6;
  hideAnimation = [v6 hideAnimation];
  if (hideAnimation == 3)
  {
    [objc_msgSend(objc_opt_class() "_statusBarWindowClass")];
    v15 = v14;
    v17 = v16;
    if (([(UIStatusBar_Base *)self orientation]- 1) >= 2)
    {
      v13 = v15;
    }

    else
    {
      v13 = v17;
    }
  }

  else
  {
    if (hideAnimation != 2)
    {
      goto LABEL_8;
    }

    [(UIStatusBar_Base *)self currentHeight];
    v11 = v10;
    [v19 additionalSlideHeight];
    v13 = -(v11 + v12);
  }

  CGAffineTransformMakeTranslation(retstr, 0.0, v13);
LABEL_8:

  return result;
}

- (double)_hiddenAlphaForHideAnimationParameters:(id)parameters
{
  hideAnimation = [parameters hideAnimation];
  result = 0.0;
  if ((hideAnimation & 0xFFFFFFFE) == 2)
  {
    return 1.0;
  }

  return result;
}

+ (int64_t)_defaultStyleForRequestedStyle:(int64_t)style styleOverrides:(unint64_t)overrides activeStyleOverride:(unint64_t *)override
{
  if ((style - 108) < 2 || style == 306)
  {
    if ((overrides & 0x20000000) != 0)
    {
      v6 = 0x20000000;
      result = 1017;
      goto LABEL_132;
    }

    if ((overrides & 0x800000000) != 0)
    {
      v6 = 0x800000000;
      result = 1018;
      goto LABEL_132;
    }

    if ((overrides & 0x2000) != 0)
    {
      v6 = 0x2000;
      result = 1003;
      goto LABEL_132;
    }

    if ((overrides & 0x100000) != 0)
    {
      v6 = 0x100000;
      result = 1016;
      goto LABEL_132;
    }

    if ((overrides & 0x10000000) != 0)
    {
      v6 = 0x10000000;
      result = 1010;
      goto LABEL_132;
    }

    if ((overrides & 0x8000000) != 0)
    {
      v6 = 0x8000000;
      result = 1011;
      goto LABEL_132;
    }

    if ((overrides & 0x10) != 0)
    {
      v6 = 16;
      result = 1012;
      goto LABEL_132;
    }

    if (overrides)
    {
      v6 = 1;
      result = 1013;
      goto LABEL_132;
    }

    if ((overrides & 0x1000000000) != 0)
    {
      v6 = 0x1000000000;
      result = 1023;
      goto LABEL_132;
    }

    if ((overrides & 0x4000000000) != 0)
    {
      v6 = 0x4000000000;
      result = 1026;
      goto LABEL_132;
    }

    if ((overrides & 0x8000000000) != 0)
    {
      v6 = 0x8000000000;
      result = 1025;
      goto LABEL_132;
    }

    if ((overrides & 0x80000) != 0)
    {
      v6 = 0x80000;
      result = 1014;
      goto LABEL_132;
    }

    if ((overrides & 0x40000) != 0)
    {
      v6 = 0x40000;
      result = 1015;
      goto LABEL_132;
    }

    if ((overrides & 8) != 0)
    {
      v6 = 8;
      result = 1001;
      goto LABEL_132;
    }

    if ((overrides & 0x40000000) != 0)
    {
      v6 = 0x40000000;
      result = 1019;
      goto LABEL_132;
    }

    if ((overrides & 0x80000000) != 0)
    {
      v6 = 0x80000000;
      result = 1020;
      goto LABEL_132;
    }

    if ((overrides & 0x20) == 0)
    {
      if ((overrides & 0x10000000000) != 0)
      {
        v6 = 0x10000000000;
        result = 1021;
      }

      else if ((overrides & 0x10000) != 0)
      {
        v6 = 0x10000;
        result = 1005;
      }

      else if ((overrides & 0x20000) != 0)
      {
        v6 = 0x20000;
        result = 1006;
      }

      else if ((overrides & 0x1000000) != 0)
      {
        v6 = 0x1000000;
        result = 1007;
      }

      else if ((overrides & 0x2000000) != 0)
      {
        v6 = 0x2000000;
        result = 1008;
      }

      else if ((overrides & 0x4000000) != 0)
      {
        v6 = 0x4000000;
        result = 1009;
      }

      else if ((overrides & 4) != 0)
      {
        v6 = 4;
        result = 1004;
      }

      else if ((overrides & 0x800) != 0)
      {
        v6 = 2048;
        result = 1002;
      }

      else if ((overrides & 0x20000000000) != 0)
      {
        v6 = 0x20000000000;
        result = 1027;
      }

      else
      {
        if ((overrides & 0x400000000) == 0)
        {
          v6 = overrides & 0x2000000000;
          v5 = (overrides & 0x2000000000) == 0;
          v7 = 1024;
          goto LABEL_31;
        }

        v6 = 0x400000000;
        result = 1022;
      }

      goto LABEL_132;
    }

    goto LABEL_105;
  }

  if ((overrides & 0x20000000) != 0)
  {
    v6 = 0x20000000;
    result = 222;
    goto LABEL_132;
  }

  if ((overrides & 0x800000000) != 0)
  {
    v6 = 0x800000000;
    result = 223;
    goto LABEL_132;
  }

  if ((overrides & 0x8000) != 0)
  {
    v6 = 0x8000;
    result = 215;
    goto LABEL_132;
  }

  if ((overrides & 0x2000) != 0)
  {
    v6 = 0x2000;
    result = 213;
    goto LABEL_132;
  }

  if ((overrides & 0x4000) != 0)
  {
    v6 = 0x4000;
    result = 214;
    goto LABEL_132;
  }

  if ((overrides & 0x100000) != 0)
  {
    v6 = 0x100000;
    result = 111;
    goto LABEL_132;
  }

  if ((overrides & 0x10000000) != 0)
  {
    v6 = 0x10000000;
    result = 221;
    goto LABEL_132;
  }

  if ((overrides & 0x8000000) != 0)
  {
    v6 = 0x8000000;
    result = 220;
    goto LABEL_132;
  }

  if ((overrides & 0x10) != 0)
  {
    v6 = 16;
    result = 208;
    goto LABEL_132;
  }

  if (overrides)
  {
    v6 = 1;
    result = 200;
    goto LABEL_132;
  }

  if ((overrides & 0x1000000000) != 0)
  {
    v6 = 0x1000000000;
    result = 226;
    goto LABEL_132;
  }

  if ((overrides & 0x4000000000) != 0)
  {
    v6 = 0x4000000000;
    result = 228;
    goto LABEL_132;
  }

  if ((overrides & 0x8000000000) != 0)
  {
    v6 = 0x8000000000;
    result = 229;
    goto LABEL_132;
  }

  if ((overrides & 0x40) != 0)
  {
    v6 = 64;
    result = 209;
    goto LABEL_132;
  }

  if ((overrides & 0x80) != 0)
  {
    v6 = 128;
    result = 210;
    goto LABEL_132;
  }

  if ((overrides & 0x10000) != 0)
  {
    v6 = 0x10000;
    result = 217;
    goto LABEL_132;
  }

  if ((overrides & 0x80000) != 0)
  {
    v6 = 0x80000;
    result = 218;
    goto LABEL_132;
  }

  if ((overrides & 0x40000) != 0)
  {
    v6 = 0x40000;
    result = 219;
    goto LABEL_132;
  }

  if ((overrides & 0x20000) != 0)
  {
    v6 = 0x20000;
    result = 202;
    goto LABEL_132;
  }

  if ((overrides & 0x1000000) != 0)
  {
    v6 = 0x1000000;
    result = 203;
    goto LABEL_132;
  }

  if ((overrides & 0x2000000) != 0)
  {
    v6 = 0x2000000;
    result = 204;
    goto LABEL_132;
  }

  if ((overrides & 0x4000000) != 0)
  {
    v6 = 0x4000000;
    result = 205;
    goto LABEL_132;
  }

  if ((overrides & 4) != 0)
  {
    v6 = 4;
    result = 206;
    goto LABEL_132;
  }

  if ((overrides & 0x400) != 0)
  {
    v6 = 1024;
    result = 211;
    goto LABEL_132;
  }

  if ((overrides & 0x200000) != 0)
  {
    v6 = 0x200000;
    result = 216;
    goto LABEL_132;
  }

  if ((overrides & 8) != 0)
  {
    v6 = 8;
    result = 207;
    goto LABEL_132;
  }

  if ((overrides & 0x40000000) != 0)
  {
    v6 = 0x40000000;
LABEL_131:
    result = 224;
    goto LABEL_132;
  }

  if ((overrides & 0x80000000) != 0)
  {
    v6 = 0x80000000;
    goto LABEL_131;
  }

  if ((overrides & 0x10000000000) != 0)
  {
    v6 = 0x10000000000;
    goto LABEL_131;
  }

  if ((overrides & 0x20) != 0)
  {
LABEL_105:
    v6 = 32;
LABEL_106:
    result = 104;
    goto LABEL_132;
  }

  if ((overrides & 0x200) != 0)
  {
    v6 = 512;
    goto LABEL_106;
  }

  if ((overrides & 0x1000) != 0)
  {
    v6 = 4096;
    result = 112;
  }

  else if ((overrides & 0x400000) != 0)
  {
    v6 = 0x400000;
    result = 113;
  }

  else if ((overrides & 0x800000) != 0)
  {
    v6 = 0x800000;
    result = 114;
  }

  else if ((overrides & 0x100) != 0)
  {
    v6 = 256;
    result = 105;
  }

  else if ((overrides & 2) != 0)
  {
    v6 = 2;
    result = 201;
  }

  else if ((overrides & 0x800) != 0)
  {
    v6 = 2048;
    result = 212;
  }

  else if ((overrides & 0x20000000000) != 0)
  {
    v6 = 0x20000000000;
    result = 230;
  }

  else
  {
    if ((overrides & 0x400000000) == 0)
    {
      v6 = overrides & 0x2000000000;
      v5 = (overrides & 0x2000000000) == 0;
      v7 = 227;
LABEL_31:
      if (v5)
      {
        result = style;
      }

      else
      {
        result = v7;
      }

      goto LABEL_132;
    }

    v6 = 0x400000000;
    result = 225;
  }

LABEL_132:
  if (override)
  {
    *override = v6;
  }

  return result;
}

- (void)_performBlockWhileIgnoringForegroundViewChanges:(id)changes
{
  if (changes)
  {
    (*(changes + 2))(changes);
  }
}

- (void)_performAnimations:(id)animations withParameters:(id)parameters completion:(id)completion
{
  animationsCopy = animations;
  parametersCopy = parameters;
  completionCopy = completion;
  _transitionCoordinator = [(UIStatusBar_Base *)self _transitionCoordinator];

  if (_transitionCoordinator)
  {
    v13 = "_UIMonochromaticTreatment";
    if (animationsCopy)
    {
      v14 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __65__UIStatusBar_Base__performAnimations_withParameters_completion___block_invoke;
      v21[3] = &unk_1E70F3770;
      v5 = &v22;
      v22 = animationsCopy;
    }

    else
    {
      v14 = 0;
    }

    v15 = _Block_copy(v14);
    if (completionCopy)
    {
      v16 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __65__UIStatusBar_Base__performAnimations_withParameters_completion___block_invoke_2;
      v19[3] = &unk_1E70F3770;
      v13 = &v20;
      v20 = completionCopy;
    }

    else
    {
      v16 = 0;
    }

    v17 = _Block_copy(v16);
    _transitionCoordinator2 = [(UIStatusBar_Base *)self _transitionCoordinator];
    [_transitionCoordinator2 animateAlongsideTransitionInView:self animation:v15 completion:v17];

    if (completionCopy)
    {
    }

    if (animationsCopy)
    {
    }
  }

  else
  {
    [UIStatusBarAnimationParameters animateWithParameters:parametersCopy fromCurrentState:1 animations:animationsCopy completion:completionCopy];
  }
}

- (BOOL)_usesModernBar
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [v2 isSubclassOfClass:v3];
}

- (UIStatusBarCarPlayDockDataProviding)dockDataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dockDataProvider);

  return WeakRetained;
}

- (UIStatusBarWindow)statusBarWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarWindow);

  return WeakRetained;
}

- (CGRect)avoidanceFrame
{
  x = self->_avoidanceFrame.origin.x;
  y = self->_avoidanceFrame.origin.y;
  width = self->_avoidanceFrame.size.width;
  height = self->_avoidanceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end