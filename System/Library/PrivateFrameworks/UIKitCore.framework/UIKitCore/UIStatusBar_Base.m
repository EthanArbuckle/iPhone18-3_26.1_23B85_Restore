@interface UIStatusBar_Base
+ (CGRect)_frameInSceneReferenceSpaceForStyle:(int64_t)a3 orientation:(int64_t)a4 inSceneWithReferenceSize:(CGSize)a5;
+ (Class)_implementationClass;
+ (int64_t)_defaultStyleForRequestedStyle:(int64_t)a3 styleOverrides:(unint64_t)a4 activeStyleOverride:(unint64_t *)a5;
- (BOOL)_shouldSeekHigherPriorityTouchTarget;
- (BOOL)_usesModernBar;
- (BOOL)showsContentsOnScreen;
- (CGAffineTransform)_hiddenTransformForHideAnimationParameters:(SEL)a3;
- (CGRect)avoidanceFrame;
- (CGRect)currentFrame;
- (CGRect)frameForOrientation:(int64_t)a3;
- (CGRect)frameForPartWithIdentifier:(id)a3;
- (CGSize)intrinsicContentSize;
- (UIOffset)offsetForPartWithIdentifier:(id)a3;
- (UIStatusBarCarPlayDockDataProviding)dockDataProvider;
- (UIStatusBarManager)manager;
- (UIStatusBarStyleDelegate)styleDelegate;
- (UIStatusBarWindow)statusBarWindow;
- (UIStatusBar_Base)initWithFrame:(CGRect)a3 showForegroundView:(BOOL)a4 inProcessStateProvider:(id)a5;
- (UIViewControllerTransitionCoordinator)_transitionCoordinator;
- (double)_hiddenAlphaForHideAnimationParameters:(id)a3;
- (double)currentHeight;
- (double)heightForOrientation:(int64_t)a3 isAzulBLinked:(BOOL)a4;
- (id)_initWithFrame:(CGRect)a3 showForegroundView:(BOOL)a4 wantsServer:(BOOL)a5 inProcessStateProvider:(id)a6;
- (int64_t)styleForRequestedStyle:(int64_t)a3;
- (void)_evaluateServerRegistration;
- (void)_getStyle:(int64_t *)a3 andActiveOverride:(unint64_t *)a4 forRequestedStyle:(int64_t)a5;
- (void)_performAnimations:(id)a3 withParameters:(id)a4 completion:(id)a5;
- (void)_performBlockWhileIgnoringForegroundViewChanges:(id)a3;
- (void)_setHidden:(BOOL)a3 animationParameters:(id)a4;
- (void)_styleOverridesDidChange:(id)a3;
- (void)dealloc;
- (void)forceUpdateStyleOverrides:(BOOL)a3;
- (void)requestStyle:(int64_t)a3 animated:(BOOL)a4 forced:(BOOL)a5;
- (void)requestStyle:(int64_t)a3 partStyles:(id)a4 animationParameters:(id)a5 forced:(BOOL)a6;
- (void)setAlpha:(double)a3;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setLocalDataOverrides:(id *)a3;
- (void)setServerUpdatesDisabled:(BOOL)a3;
- (void)setStyleRequest:(id)a3 animationParameters:(id)a4;
- (void)setSuppressesHiddenSideEffects:(BOOL)a3;
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
  v3 = [(UIStatusBar_Base *)self orientation];

  [(UIStatusBar_Base *)self heightForOrientation:v3];
  return result;
}

- (void)_evaluateServerRegistration
{
  if (self->_statusBarServer)
  {
    v3 = [(UIView *)self superview];
    if (self->_hidden && !self->_suppressesHiddenSideEffects || (self->_foreground ? (v4 = v3 == 0) : (v4 = 1), v4))
    {
      v5 = 0;
    }

    else
    {
      v7 = v3;
      v5 = ![(UIStatusBar_Base *)self serverUpdatesDisabled];
      v3 = v7;
    }

    if (self->_registered != v5)
    {
      v8 = v3;
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

      v3 = v8;
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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [v4 removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [v4 removeObserver:self name:0x1EFB9C730 object:0];
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

- (id)_initWithFrame:(CGRect)a3 showForegroundView:(BOOL)a4 wantsServer:(BOOL)a5 inProcessStateProvider:(id)a6
{
  v7 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = UIStatusBar_Base;
  v14 = [(UIView *)&v19 initWithFrame:x, y, width, height];
  v14->_persistentAnimationsEnabled = 1;
  v14->_requestedStyle = -1;
  v14->_foreground = [UIApp applicationState] != 2;
  objc_storeStrong(&v14->_inProcessStateProvider, a6);
  if (v13)
  {
    [v13 addStatusBarStateObserver:v14];
  }

  else if (v7)
  {
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v14 selector:sel__didEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:UIApp];
    [v15 addObserver:v14 selector:sel__willEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:UIApp];
    [v15 addObserver:v14 selector:sel__styleOverridesDidChange_ name:0x1EFB9C730 object:0];
    v14->_styleOverrides = +[UIStatusBarServer getStyleOverrides];
    v16 = [[UIStatusBarServer alloc] initWithStatusBar:0];
    statusBarServer = v14->_statusBarServer;
    v14->_statusBarServer = v16;
  }

  return v14;
}

- (UIStatusBar_Base)initWithFrame:(CGRect)a3 showForegroundView:(BOOL)a4 inProcessStateProvider:(id)a5
{
  v5 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  if (v11 || v12 != v13)
  {
    v14 = [(UIStatusBar_Base *)self _initWithFrame:v5 showForegroundView:1 wantsServer:v11 inProcessStateProvider:x, y, width, height];
    self = v14;
  }

  else
  {
    v14 = [objc_alloc(objc_msgSend(objc_opt_class() "_implementationClass"))];
  }

  v15 = v14;

  return v15;
}

- (BOOL)_shouldSeekHigherPriorityTouchTarget
{
  v2 = [UIApp _systemNavigationAction];
  v3 = v2 == 0;

  return v3;
}

- (void)setServerUpdatesDisabled:(BOOL)a3
{
  if (self->_serverUpdatesDisabled != a3)
  {
    self->_serverUpdatesDisabled = a3;
    [(UIStatusBar_Base *)self _evaluateServerRegistration];
  }
}

- (void)_styleOverridesDidChange:(id)a3
{
  v4 = [(UIStatusBar_Base *)self _requestStyle];

  [(UIStatusBar_Base *)self requestStyle:v4 animated:0];
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
  v3 = [(UIView *)self window];
  [(UIStatusBar_Base *)self frameForOrientation:[(UIStatusBar_Base *)self orientation]];
  [v3 _convertRectFromSceneReferenceSpace:?];
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

- (CGRect)frameForOrientation:(int64_t)a3
{
  [objc_msgSend(objc_opt_class() "_statusBarWindowClass")];
  v6 = v5;
  v8 = v7;
  v9 = objc_opt_class();
  v10 = [(UIStatusBar_Base *)self currentStyle];

  [v9 _frameInSceneReferenceSpaceForStyle:v10 orientation:a3 inSceneWithReferenceSize:{v6, v8}];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)heightForOrientation:(int64_t)a3 isAzulBLinked:(BOOL)a4
{
  v4 = a4;
  v6 = objc_opt_class();

  [v6 heightForStyle:0 orientation:a3 inWindow:0 isAzulBLinked:v4];
  return result;
}

- (void)_getStyle:(int64_t *)a3 andActiveOverride:(unint64_t *)a4 forRequestedStyle:(int64_t)a5
{
  v15 = [(UIStatusBar_Base *)self styleDelegate];
  v9 = [(UIStatusBar_Base *)self styleDelegate];
  if (v15)
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
        v14 = [v9 overriddenRequestedStyleFromStyle:a5];
        a5 = [objc_opt_class() _defaultStyleForRequestedStyle:v14 styleOverrides:objc_msgSend(v9 activeStyleOverride:{"statusBar:effectiveStyleOverridesForRequestedStyle:overrides:", self, v14, -[UIStatusBar_Base styleOverrides](self, "styleOverrides")), a4}];
        goto LABEL_12;
      }
    }

    else if (!v12)
    {
      goto LABEL_12;
    }

    a5 = [v15 statusBar:self styleForRequestedStyle:a5 overrides:{-[UIStatusBar_Base styleOverrides](self, "styleOverrides")}];
    if (a4)
    {
      *a4 = 0;
    }
  }

  else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    goto LABEL_8;
  }

LABEL_12:
  if (a3)
  {
    *a3 = a5;
  }
}

- (int64_t)styleForRequestedStyle:(int64_t)a3
{
  v4 = 0;
  [(UIStatusBar_Base *)self _getStyle:&v4 andActiveOverride:0 forRequestedStyle:a3];
  return v4;
}

- (void)requestStyle:(int64_t)a3 partStyles:(id)a4 animationParameters:(id)a5 forced:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  [(UIStatusBar_Base *)self _setRequestedStyle:a3];
  [(UIStatusBar_Base *)self _requestStyle:a3 partStyles:v11 animationParameters:v10 forced:v6];
}

- (void)requestStyle:(int64_t)a3 animated:(BOOL)a4 forced:(BOOL)a5
{
  v5 = a5;
  if (a4)
  {
    v8 = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [(UIStatusBar_Base *)self requestStyle:a3 animationParameters:v8 forced:v5];
}

- (void)_setHidden:(BOOL)a3 animationParameters:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_hidden != v4)
  {
    self->_hidden = v4;
    [(UIStatusBar_Base *)self _evaluateServerRegistration];
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    [(UIStatusBar_Base *)self _hiddenTransformForHideAnimationParameters:v6];
    [(UIStatusBar_Base *)self _hiddenAlphaForHideAnimationParameters:v6];
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
    if ([v6 shouldAnimate] && !v4)
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
    v13 = v4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__UIStatusBar_Base__setHidden_animationParameters___block_invoke_4;
    v10[3] = &unk_1E70F5AC0;
    v9 = v8;
    [UIStatusBarAnimationParameters animateWithParameters:v6 animations:v11 completion:v10];
  }
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    v6 = [[UIStatusBarHideAnimationParameters alloc] initWithDefaultParameters];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(UIStatusBar_Base *)self setHidden:v4 animationParameters:v6];
}

- (void)setAlpha:(double)a3
{
  v5 = [(UIStatusBar_Base *)self manager];
  if (!v5 || (v6 = v5, -[UIStatusBar_Base manager](self, "manager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 statusBar:self shouldSetAlpha:a3], v7, v6, v8))
  {
    v9.receiver = self;
    v9.super_class = UIStatusBar_Base;
    [(UIView *)&v9 setAlpha:a3];
  }
}

- (void)setSuppressesHiddenSideEffects:(BOOL)a3
{
  if (self->_suppressesHiddenSideEffects != a3)
  {
    self->_suppressesHiddenSideEffects = a3;
    [(UIStatusBar_Base *)self _evaluateServerRegistration];
  }
}

- (void)forceUpdateStyleOverrides:(BOOL)a3
{
  v3 = a3;
  self->_styleOverrides = +[UIStatusBarServer getStyleOverrides];
  v5 = [(UIStatusBar_Base *)self _requestStyle];

  [(UIStatusBar_Base *)self requestStyle:v5 animated:v3 forced:1];
}

- (void)setLocalDataOverrides:(id *)a3
{
  localDataOverrides = self->_localDataOverrides;
  if (a3)
  {
    if (localDataOverrides || (localDataOverrides = malloc_type_malloc(0xF68uLL, 0x100004064C31AF5uLL), (self->_localDataOverrides = localDataOverrides) != 0))
    {

      memcpy(localDataOverrides, a3, sizeof($38BCDC8E708A2560E43DD4D455FC8F47));
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
  v3 = [(UIStatusBar_Base *)self enabledPartIdentifiers];
  if (v3)
  {
    v4 = [(UIStatusBar_Base *)self enabledPartIdentifiers];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setStyleRequest:(id)a3 animationParameters:(id)a4
{
  v5 = a3;
  self->_requestedStyle = [v5 style];
  v6 = [v5 foregroundColor];
  foregroundColor = self->_foregroundColor;
  self->_foregroundColor = v6;

  v8 = [v5 legibilityStyle];
  self->_legibilityStyle = v8;
}

- (UIOffset)offsetForPartWithIdentifier:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (CGRect)frameForPartWithIdentifier:(id)a3
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

+ (CGRect)_frameInSceneReferenceSpaceForStyle:(int64_t)a3 orientation:(int64_t)a4 inSceneWithReferenceSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  [a1 heightForStyle:a3 orientation:a4 inWindow:0];
  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  v13 = width - v8;
  v14 = 0.0;
  if (a4 == 4)
  {
    v15 = height;
  }

  else
  {
    v15 = *(MEMORY[0x1E695F058] + 24);
  }

  if (a4 == 4)
  {
    v16 = v8;
  }

  else
  {
    v16 = *(MEMORY[0x1E695F058] + 16);
  }

  if (a4 == 4)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *(MEMORY[0x1E695F058] + 8);
  }

  if (a4 == 4)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = *MEMORY[0x1E695F058];
  }

  if (a4 == 3)
  {
    v15 = height;
    v16 = v8;
    v17 = 0.0;
  }

  else
  {
    v13 = v18;
  }

  if (a4 == 2)
  {
    v12 = v8;
    v11 = width;
    v10 = height - v8;
    v9 = 0.0;
  }

  if (a4 == 1)
  {
    v19 = width;
  }

  else
  {
    v8 = v12;
    v19 = v11;
  }

  if (a4 == 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v10;
  }

  if (a4 != 1)
  {
    v14 = v9;
  }

  if (a4 <= 2)
  {
    v21 = v8;
  }

  else
  {
    v21 = v15;
  }

  if (a4 <= 2)
  {
    v22 = v19;
  }

  else
  {
    v22 = v16;
  }

  if (a4 <= 2)
  {
    v23 = v20;
  }

  else
  {
    v23 = v17;
  }

  if (a4 <= 2)
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

- (CGAffineTransform)_hiddenTransformForHideAnimationParameters:(SEL)a3
{
  v6 = a4;
  v7 = MEMORY[0x1E695EFD0];
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v8;
  *&retstr->tx = *(v7 + 32);
  v19 = v6;
  v9 = [v6 hideAnimation];
  if (v9 == 3)
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
    if (v9 != 2)
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

- (double)_hiddenAlphaForHideAnimationParameters:(id)a3
{
  v3 = [a3 hideAnimation];
  result = 0.0;
  if ((v3 & 0xFFFFFFFE) == 2)
  {
    return 1.0;
  }

  return result;
}

+ (int64_t)_defaultStyleForRequestedStyle:(int64_t)a3 styleOverrides:(unint64_t)a4 activeStyleOverride:(unint64_t *)a5
{
  if ((a3 - 108) < 2 || a3 == 306)
  {
    if ((a4 & 0x20000000) != 0)
    {
      v6 = 0x20000000;
      result = 1017;
      goto LABEL_132;
    }

    if ((a4 & 0x800000000) != 0)
    {
      v6 = 0x800000000;
      result = 1018;
      goto LABEL_132;
    }

    if ((a4 & 0x2000) != 0)
    {
      v6 = 0x2000;
      result = 1003;
      goto LABEL_132;
    }

    if ((a4 & 0x100000) != 0)
    {
      v6 = 0x100000;
      result = 1016;
      goto LABEL_132;
    }

    if ((a4 & 0x10000000) != 0)
    {
      v6 = 0x10000000;
      result = 1010;
      goto LABEL_132;
    }

    if ((a4 & 0x8000000) != 0)
    {
      v6 = 0x8000000;
      result = 1011;
      goto LABEL_132;
    }

    if ((a4 & 0x10) != 0)
    {
      v6 = 16;
      result = 1012;
      goto LABEL_132;
    }

    if (a4)
    {
      v6 = 1;
      result = 1013;
      goto LABEL_132;
    }

    if ((a4 & 0x1000000000) != 0)
    {
      v6 = 0x1000000000;
      result = 1023;
      goto LABEL_132;
    }

    if ((a4 & 0x4000000000) != 0)
    {
      v6 = 0x4000000000;
      result = 1026;
      goto LABEL_132;
    }

    if ((a4 & 0x8000000000) != 0)
    {
      v6 = 0x8000000000;
      result = 1025;
      goto LABEL_132;
    }

    if ((a4 & 0x80000) != 0)
    {
      v6 = 0x80000;
      result = 1014;
      goto LABEL_132;
    }

    if ((a4 & 0x40000) != 0)
    {
      v6 = 0x40000;
      result = 1015;
      goto LABEL_132;
    }

    if ((a4 & 8) != 0)
    {
      v6 = 8;
      result = 1001;
      goto LABEL_132;
    }

    if ((a4 & 0x40000000) != 0)
    {
      v6 = 0x40000000;
      result = 1019;
      goto LABEL_132;
    }

    if ((a4 & 0x80000000) != 0)
    {
      v6 = 0x80000000;
      result = 1020;
      goto LABEL_132;
    }

    if ((a4 & 0x20) == 0)
    {
      if ((a4 & 0x10000000000) != 0)
      {
        v6 = 0x10000000000;
        result = 1021;
      }

      else if ((a4 & 0x10000) != 0)
      {
        v6 = 0x10000;
        result = 1005;
      }

      else if ((a4 & 0x20000) != 0)
      {
        v6 = 0x20000;
        result = 1006;
      }

      else if ((a4 & 0x1000000) != 0)
      {
        v6 = 0x1000000;
        result = 1007;
      }

      else if ((a4 & 0x2000000) != 0)
      {
        v6 = 0x2000000;
        result = 1008;
      }

      else if ((a4 & 0x4000000) != 0)
      {
        v6 = 0x4000000;
        result = 1009;
      }

      else if ((a4 & 4) != 0)
      {
        v6 = 4;
        result = 1004;
      }

      else if ((a4 & 0x800) != 0)
      {
        v6 = 2048;
        result = 1002;
      }

      else if ((a4 & 0x20000000000) != 0)
      {
        v6 = 0x20000000000;
        result = 1027;
      }

      else
      {
        if ((a4 & 0x400000000) == 0)
        {
          v6 = a4 & 0x2000000000;
          v5 = (a4 & 0x2000000000) == 0;
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

  if ((a4 & 0x20000000) != 0)
  {
    v6 = 0x20000000;
    result = 222;
    goto LABEL_132;
  }

  if ((a4 & 0x800000000) != 0)
  {
    v6 = 0x800000000;
    result = 223;
    goto LABEL_132;
  }

  if ((a4 & 0x8000) != 0)
  {
    v6 = 0x8000;
    result = 215;
    goto LABEL_132;
  }

  if ((a4 & 0x2000) != 0)
  {
    v6 = 0x2000;
    result = 213;
    goto LABEL_132;
  }

  if ((a4 & 0x4000) != 0)
  {
    v6 = 0x4000;
    result = 214;
    goto LABEL_132;
  }

  if ((a4 & 0x100000) != 0)
  {
    v6 = 0x100000;
    result = 111;
    goto LABEL_132;
  }

  if ((a4 & 0x10000000) != 0)
  {
    v6 = 0x10000000;
    result = 221;
    goto LABEL_132;
  }

  if ((a4 & 0x8000000) != 0)
  {
    v6 = 0x8000000;
    result = 220;
    goto LABEL_132;
  }

  if ((a4 & 0x10) != 0)
  {
    v6 = 16;
    result = 208;
    goto LABEL_132;
  }

  if (a4)
  {
    v6 = 1;
    result = 200;
    goto LABEL_132;
  }

  if ((a4 & 0x1000000000) != 0)
  {
    v6 = 0x1000000000;
    result = 226;
    goto LABEL_132;
  }

  if ((a4 & 0x4000000000) != 0)
  {
    v6 = 0x4000000000;
    result = 228;
    goto LABEL_132;
  }

  if ((a4 & 0x8000000000) != 0)
  {
    v6 = 0x8000000000;
    result = 229;
    goto LABEL_132;
  }

  if ((a4 & 0x40) != 0)
  {
    v6 = 64;
    result = 209;
    goto LABEL_132;
  }

  if ((a4 & 0x80) != 0)
  {
    v6 = 128;
    result = 210;
    goto LABEL_132;
  }

  if ((a4 & 0x10000) != 0)
  {
    v6 = 0x10000;
    result = 217;
    goto LABEL_132;
  }

  if ((a4 & 0x80000) != 0)
  {
    v6 = 0x80000;
    result = 218;
    goto LABEL_132;
  }

  if ((a4 & 0x40000) != 0)
  {
    v6 = 0x40000;
    result = 219;
    goto LABEL_132;
  }

  if ((a4 & 0x20000) != 0)
  {
    v6 = 0x20000;
    result = 202;
    goto LABEL_132;
  }

  if ((a4 & 0x1000000) != 0)
  {
    v6 = 0x1000000;
    result = 203;
    goto LABEL_132;
  }

  if ((a4 & 0x2000000) != 0)
  {
    v6 = 0x2000000;
    result = 204;
    goto LABEL_132;
  }

  if ((a4 & 0x4000000) != 0)
  {
    v6 = 0x4000000;
    result = 205;
    goto LABEL_132;
  }

  if ((a4 & 4) != 0)
  {
    v6 = 4;
    result = 206;
    goto LABEL_132;
  }

  if ((a4 & 0x400) != 0)
  {
    v6 = 1024;
    result = 211;
    goto LABEL_132;
  }

  if ((a4 & 0x200000) != 0)
  {
    v6 = 0x200000;
    result = 216;
    goto LABEL_132;
  }

  if ((a4 & 8) != 0)
  {
    v6 = 8;
    result = 207;
    goto LABEL_132;
  }

  if ((a4 & 0x40000000) != 0)
  {
    v6 = 0x40000000;
LABEL_131:
    result = 224;
    goto LABEL_132;
  }

  if ((a4 & 0x80000000) != 0)
  {
    v6 = 0x80000000;
    goto LABEL_131;
  }

  if ((a4 & 0x10000000000) != 0)
  {
    v6 = 0x10000000000;
    goto LABEL_131;
  }

  if ((a4 & 0x20) != 0)
  {
LABEL_105:
    v6 = 32;
LABEL_106:
    result = 104;
    goto LABEL_132;
  }

  if ((a4 & 0x200) != 0)
  {
    v6 = 512;
    goto LABEL_106;
  }

  if ((a4 & 0x1000) != 0)
  {
    v6 = 4096;
    result = 112;
  }

  else if ((a4 & 0x400000) != 0)
  {
    v6 = 0x400000;
    result = 113;
  }

  else if ((a4 & 0x800000) != 0)
  {
    v6 = 0x800000;
    result = 114;
  }

  else if ((a4 & 0x100) != 0)
  {
    v6 = 256;
    result = 105;
  }

  else if ((a4 & 2) != 0)
  {
    v6 = 2;
    result = 201;
  }

  else if ((a4 & 0x800) != 0)
  {
    v6 = 2048;
    result = 212;
  }

  else if ((a4 & 0x20000000000) != 0)
  {
    v6 = 0x20000000000;
    result = 230;
  }

  else
  {
    if ((a4 & 0x400000000) == 0)
    {
      v6 = a4 & 0x2000000000;
      v5 = (a4 & 0x2000000000) == 0;
      v7 = 227;
LABEL_31:
      if (v5)
      {
        result = a3;
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
  if (a5)
  {
    *a5 = v6;
  }

  return result;
}

- (void)_performBlockWhileIgnoringForegroundViewChanges:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)_performAnimations:(id)a3 withParameters:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(UIStatusBar_Base *)self _transitionCoordinator];

  if (v12)
  {
    v13 = "_UIMonochromaticTreatment";
    if (v9)
    {
      v14 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __65__UIStatusBar_Base__performAnimations_withParameters_completion___block_invoke;
      v21[3] = &unk_1E70F3770;
      v5 = &v22;
      v22 = v9;
    }

    else
    {
      v14 = 0;
    }

    v15 = _Block_copy(v14);
    if (v11)
    {
      v16 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __65__UIStatusBar_Base__performAnimations_withParameters_completion___block_invoke_2;
      v19[3] = &unk_1E70F3770;
      v13 = &v20;
      v20 = v11;
    }

    else
    {
      v16 = 0;
    }

    v17 = _Block_copy(v16);
    v18 = [(UIStatusBar_Base *)self _transitionCoordinator];
    [v18 animateAlongsideTransitionInView:self animation:v15 completion:v17];

    if (v11)
    {
    }

    if (v9)
    {
    }
  }

  else
  {
    [UIStatusBarAnimationParameters animateWithParameters:v10 fromCurrentState:1 animations:v9 completion:v11];
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