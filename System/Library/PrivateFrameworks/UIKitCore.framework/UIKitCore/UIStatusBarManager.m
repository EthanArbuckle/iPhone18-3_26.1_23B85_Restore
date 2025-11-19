@interface UIStatusBarManager
+ (id)_implicitStatusBarAnimationParametersWithClass:(Class)a3;
- (BOOL)_updateAlpha;
- (BOOL)_updateStyleForWindow:(id)a3 animationParameters:(id *)a4;
- (BOOL)_updateVisibilityForWindow:(id)a3 targetOrientation:(int64_t)a4 animationParameters:(id *)a5;
- (CGPoint)_adjustedLocationForXPosition:(double)a3;
- (CGRect)_statusBarFrameIgnoringVisibility;
- (CGRect)statusBarFrame;
- (CGRect)statusBarFrameForStatusBarHeight:(double)a3;
- (CGRect)statusBarFrameForStatusBarHeight:(double)a3 inOrientation:(int64_t)a4;
- (UIStatusBarManager)initWithScene:(id)a3;
- (double)defaultStatusBarHeight;
- (double)defaultStatusBarHeightInOrientation:(int64_t)a3;
- (double)statusBarHeight;
- (id)_settingsDiffActionsForScene:(id)a3;
- (id)_updateStatusBarAppearanceWithClientSettings:(id)a3 transitionContext:(id)a4 animationParameters:(id)a5;
- (id)updateStatusBarAppearanceWithClientSettings:(id)a3 transitionContext:(id)a4;
- (void)_handleScrollToTopAtXPosition:(double)a3;
- (void)_setOverridingStatusBarHidden:(BOOL)a3;
- (void)_setOverridingStatusBarHidden:(BOOL)a3 animationParameters:(id)a4;
- (void)_setScene:(id)a3;
- (void)_visibilityChangedWithOriginalOrientation:(int64_t)a3 targetOrientation:(int64_t)a4 animationParameters:(id)a5;
- (void)handleTapAction:(id)a3;
@end

@implementation UIStatusBarManager

- (double)statusBarHeight
{
  if ([(UIStatusBarManager *)self isStatusBarHidden])
  {
    return 0.0;
  }

  [(UIStatusBarManager *)self defaultStatusBarHeight];
  return result;
}

- (double)defaultStatusBarHeight
{
  if ([UIApp _isSpringBoard])
  {
    v3 = [UIApp statusBar];
    [v3 currentHeight];
    v5 = v4;

    return v5;
  }

  else
  {
    v7 = [(UIWindowScene *)self->_windowScene _interfaceOrientation];

    [(UIStatusBarManager *)self defaultStatusBarHeightInOrientation:v7];
  }

  return result;
}

- (BOOL)_updateAlpha
{
  v3 = [UIApp _isSpringBoard];
  v4 = 1.0;
  if ((v3 & 1) == 0 && self->_overriddingStatusBarHidden)
  {
    v4 = 0.0;
  }

  statusBarAlpha = self->_statusBarAlpha;
  if (v4 != statusBarAlpha)
  {
    self->_statusBarAlpha = v4;
  }

  return v4 != statusBarAlpha;
}

- (CGRect)statusBarFrame
{
  if ([(UIStatusBarManager *)self isStatusBarHidden])
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(UIStatusBarManager *)self statusBarHeight];
    [(UIStatusBarManager *)self statusBarFrameForStatusBarHeight:?];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UIStatusBarManager)initWithScene:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIStatusBarManager;
  v5 = [(UIStatusBarManager *)&v10 init];
  [(UIStatusBarManager *)v5 _setScene:v4];
  v5->_statusBarStyle = -1;
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    v6 = [v4 _FBSScene];
    v7 = [v6 uiClientSettings];

    v5->_statusBarHidden = [v7 statusBarHidden];
    [v7 statusBarAlpha];
    v5->_statusBarAlpha = v8;
  }

  return v5;
}

- (void)_setOverridingStatusBarHidden:(BOOL)a3
{
  if (self->_overriddingStatusBarHidden != a3)
  {
    self->_overriddingStatusBarHidden = a3;
    [(UIStatusBarManager *)self updateStatusBarAppearanceWithAnimationParameters:0];
  }
}

- (void)_setOverridingStatusBarHidden:(BOOL)a3 animationParameters:(id)a4
{
  if (self->_overriddingStatusBarHidden != a3)
  {
    self->_overriddingStatusBarHidden = a3;
    [(UIStatusBarManager *)self updateStatusBarAppearanceWithAnimationParameters:a4];
  }
}

- (void)_setScene:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"UIStatusBarManager.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"scene == nil || [scene isKindOfClass:[UIWindowScene class]]"}];
    }
  }

  windowScene = self->_windowScene;
  self->_windowScene = v5;
}

- (id)_settingsDiffActionsForScene:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (CGRect)statusBarFrameForStatusBarHeight:(double)a3 inOrientation:(int64_t)a4
{
  [(UIWindowScene *)self->_windowScene _referenceBoundsForOrientation:a4];
  v8 = a3;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)statusBarFrameForStatusBarHeight:(double)a3
{
  v4 = [(UIWindowScene *)self->_windowScene _coordinateSpace];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v6;
  v12 = v8;
  v13 = v10;
  v14 = a3;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_statusBarFrameIgnoringVisibility
{
  [(UIStatusBarManager *)self defaultStatusBarHeight];

  [(UIStatusBarManager *)self statusBarFrameForStatusBarHeight:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)defaultStatusBarHeightInOrientation:(int64_t)a3
{
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    v6 = [(UIScene *)self->_windowScene _effectiveUISettings];
    [v6 defaultStatusBarHeightForOrientation:a3];
    goto LABEL_5;
  }

  v5 = 0.0;
  if (([UIApp _isStatusBarForcedHiddenForOrientation:a3] & 1) == 0)
  {
    v6 = [(UIWindowScene *)&self->_windowScene->super.super.super.isa _keyWindow];
    [(UIStatusBar_Base *)UIStatusBar heightForStyle:0 orientation:a3 inWindow:v6];
LABEL_5:
    v5 = v7;
  }

  return v5;
}

- (id)updateStatusBarAppearanceWithClientSettings:(id)a3 transitionContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[UIStatusBarAnimationParameters alloc] initWithDefaultParameters];
  v9 = [v6 animationSettings];
  [v9 duration];
  [(UIStatusBarAnimationParameters *)v8 setDuration:?];

  v10 = [(UIStatusBarManager *)self _updateStatusBarAppearanceWithClientSettings:v7 transitionContext:v6 animationParameters:v8];

  return v10;
}

- (id)_updateStatusBarAppearanceWithClientSettings:(id)a3 transitionContext:(id)a4 animationParameters:(id)a5
{
  v83 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:self->_windowScene];
  if ([UIApp _viewControllerBasedStatusBarAppearance])
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v14 = 0;
    goto LABEL_55;
  }

  if ([v8 interfaceOrientation])
  {
    v13 = [v8 interfaceOrientation];
  }

  else
  {
    v15 = [v11 _orientationTransactionToken];
    v16 = [v15 state];

    if ((v16 - 1) < 2)
    {
      v17 = [(UIStatusBarManager *)self windowScene];
      v18 = [v17 _interfaceOrientation];

      goto LABEL_12;
    }

    v13 = [v11 _windowInterfaceOrientation];
  }

  v18 = v13;
LABEL_12:
  v68 = 0;
  v19 = [(UIStatusBarManager *)self _updateVisibilityForWindow:v11 targetOrientation:v18 animationParameters:&v68];
  v20 = v68;
  if (self->_statusBarHidden)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v67 = 0;
    v21 = [(UIStatusBarManager *)self _updateStyleForWindow:v11 animationParameters:&v67];
    v23 = v67;
    v22 = [(UIStatusBarManager *)self _updateAlpha];
    if (v19)
    {
      goto LABEL_19;
    }
  }

  if (v21 || v22)
  {
LABEL_19:
    v50 = v22;
    v51 = v21;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &_updateStatusBarAppearanceWithClientSettings_transitionContext_animationParameters____s_category);
    if (*CategoryCachedImpl)
    {
      v42 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = @"NO";
        statusBarStyle = self->_statusBarStyle;
        if (v19)
        {
          v45 = @"YES";
        }

        else
        {
          v45 = @"NO";
        }

        statusBarPartStyles = self->_statusBarPartStyles;
        statusBarAlpha = self->_statusBarAlpha;
        if (self->_statusBarHidden)
        {
          v48 = @"YES";
        }

        else
        {
          v48 = @"NO";
        }

        *buf = 138413826;
        if (v51)
        {
          v49 = @"YES";
        }

        else
        {
          v49 = @"NO";
        }

        v70 = v45;
        if (v50)
        {
          v43 = @"YES";
        }

        v71 = 2112;
        v72 = v48;
        v73 = 2112;
        v74 = v49;
        v75 = 2048;
        v76 = statusBarStyle;
        v77 = 2112;
        v78 = statusBarPartStyles;
        v79 = 2112;
        v80 = v43;
        v81 = 2048;
        v82 = statusBarAlpha;
        _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "UIStatusBarManager visibilityUpdated: %@ hidden: %@, styleUpdated: %@ style: %ld partStyles: %@, alphaUpdated: %@ alpha: %.2f", buf, 0x48u);
      }
    }

    if (v10)
    {
      if (v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (v23)
        {
LABEL_31:
          v26 = v23;
          goto LABEL_32;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v26 = 0;
LABEL_32:
          v53 = v26;
          if (v19)
          {
            v27 = [(UIStatusBarManager *)self windowScene];
            v28 = [v27 _interfaceOrientation];

            if (v8)
            {
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __105__UIStatusBarManager__updateStatusBarAppearanceWithClientSettings_transitionContext_animationParameters___block_invoke;
              aBlock[3] = &unk_1E70F9780;
              aBlock[4] = self;
              v65 = v28;
              v66 = v18;
              v64 = v20;
              v29 = _Block_copy(aBlock);
            }

            else
            {
              [(UIStatusBarManager *)self _visibilityChangedWithOriginalOrientation:v28 targetOrientation:v18 animationParameters:v20];
              v29 = 0;
            }

            if ([UIApp _isSpringBoard])
            {
              v30 = [UIApp statusBar];
              [v30 setHidden:self->_statusBarHidden animationParameters:v20];

              goto LABEL_40;
            }
          }

          else
          {
            v29 = 0;
            if ([UIApp _isSpringBoard])
            {
LABEL_40:
              if (v51)
              {
                v31 = [UIApp statusBar];
                [v31 requestStyle:self->_statusBarResolvedStyle partStyles:self->_statusBarPartStyles animationParameters:v53 forced:0];
              }

              if (v50)
              {
                v32 = self->_statusBarAlpha;
                v33 = [UIApp statusBar];
                [v33 setAlpha:v32];
              }
            }
          }

          if (([UIApp _isSpringBoard] & 1) == 0)
          {
            v34 = [(UIStatusBarManager *)self windowScene];
            v35 = [v34 _viewControllerAppearanceComponent];

            [v35 setPreferredStatusBarVisibility:self->_statusBarVisibility];
            v58[0] = MEMORY[0x1E69E9820];
            v58[1] = 3221225472;
            v58[2] = __105__UIStatusBarManager__updateStatusBarAppearanceWithClientSettings_transitionContext_animationParameters___block_invoke_2;
            v58[3] = &unk_1E70FA1C0;
            v60 = v19;
            v58[4] = self;
            v59 = v20;
            v61 = v51;
            v62 = v50;
            v36 = _Block_copy(v58);
            v37 = v36;
            if (v8)
            {
              (*(v36 + 2))(v36, v8, v9);
            }

            else
            {
              if (v10)
              {
                v52 = [v10 bsAnimationSettings];
                v38 = [v10 skipFencing] ^ 1;
              }

              else
              {
                v52 = 0;
                v38 = 0;
              }

              windowScene = self->_windowScene;
              v54[0] = MEMORY[0x1E69E9820];
              v54[1] = 3221225472;
              v54[2] = __105__UIStatusBarManager__updateStatusBarAppearanceWithClientSettings_transitionContext_animationParameters___block_invoke_3;
              v54[3] = &unk_1E70FA1E8;
              v55 = v52;
              v56 = v37;
              v57 = v38;
              v40 = v52;
              [(UIScene *)windowScene _updateUIClientSettingsWithUITransitionBlock:v54];
            }
          }

          v14 = _Block_copy(v29);

          v23 = v53;
          goto LABEL_54;
        }

        v25 = v10;
        v23 = v10;
      }

      else
      {
        v25 = v10;
        v20 = v10;
      }
    }

    else if (v20)
    {
      v25 = v20;
    }

    else
    {
      v26 = 0;
      v10 = 0;
      v25 = v23;
      if (!v23)
      {
        goto LABEL_32;
      }
    }

    v10 = v25;
    goto LABEL_31;
  }

  v14 = 0;
LABEL_54:

LABEL_55:

  return v14;
}

void __105__UIStatusBarManager__updateStatusBarAppearanceWithClientSettings_transitionContext_animationParameters___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 48) == 1)
  {
    [v7 setStatusBarHidden:*(*(a1 + 32) + 13)];
    v6 = *(a1 + 40);
    if (v6)
    {
      [v5 setStatusBarAnimation:{objc_msgSend(v6, "hideAnimation")}];
    }
  }

  if (*(a1 + 49) == 1)
  {
    [v7 setStatusBarStyle:*(*(a1 + 32) + 16)];
    [v7 setStatusBarModernStyle:*(*(a1 + 32) + 32)];
    [v7 setStatusBarPartStyles:*(*(a1 + 32) + 40)];
  }

  if (*(a1 + 50) == 1)
  {
    [v7 setStatusBarAlpha:*(*(a1 + 32) + 48)];
  }
}

uint64_t __105__UIStatusBarManager__updateStatusBarAppearanceWithClientSettings_transitionContext_animationParameters___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a3;
  v6(v5, a2, v7);
  [v7 setAnimationSettings:*(a1 + 32)];

  return *(a1 + 48);
}

- (void)_visibilityChangedWithOriginalOrientation:(int64_t)a3 targetOrientation:(int64_t)a4 animationParameters:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  [(UIStatusBarManager *)self defaultStatusBarHeightInOrientation:a3];
  v10 = v9;
  [(UIStatusBarManager *)self defaultStatusBarHeightInOrientation:a4];
  v12 = v11;
  self->_inStatusBarFadeAnimation = [v8 hideAnimation] == 1;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __102__UIStatusBarManager__visibilityChangedWithOriginalOrientation_targetOrientation_animationParameters___block_invoke;
  v21[3] = &unk_1E70F9780;
  v21[4] = self;
  v23 = v10;
  v24 = v12;
  v13 = v8;
  v22 = v13;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__UIStatusBarManager__visibilityChangedWithOriginalOrientation_targetOrientation_animationParameters___block_invoke_2;
  v20[3] = &unk_1E70F5AC0;
  v20[4] = self;
  [UIStatusBarAnimationParameters animateWithParameters:v13 animations:v21 completion:v20];
  if (([UIApp _isSpringBoard] & 1) == 0 && (dyld_program_sdk_at_least() & 1) == 0)
  {
    v14 = [(UIStatusBarManager *)self windowScene];
    v15 = [v14 _systemAppearanceManager];
    [v15 updateScreenEdgesDeferringSystemGestures];
  }

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  v17 = UIApp;
  v25 = @"statusBarIsHidden";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_statusBarHidden];
  v26[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  [v16 postNotificationName:@"_UIApplicationStatusBarHiddenStateChangedNotification" object:v17 userInfo:v19];
}

void __102__UIStatusBarManager__visibilityChangedWithOriginalOrientation_targetOrientation_animationParameters___block_invoke(double *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 4);
  if (v2[13] == 1)
  {
    v3 = a1[6];
    v4 = 0.0;
  }

  else
  {
    v4 = a1[7];
    v3 = 0.0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v2 windowScene];
  v6 = [v5 _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (([v11 _isStatusBarWindow] & 1) == 0)
        {
          [v11 handleStatusBarChangeFromHeight:v3 toHeight:v4];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = *(a1 + 5);
  if (!v12 || ([v12 duration], v13 == 0.0))
  {
    v16 = 0;
  }

  else
  {
    v14 = MEMORY[0x1E695DF20];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v16 = [v14 dictionaryWithObject:v15 forKey:@"UIApplicationStatusBarHeightChangedDurationKey"];
  }

  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  [v17 postNotificationName:@"UIApplicationStatusBarHeightChangedNotification" object:UIApp userInfo:v16];
}

+ (id)_implicitStatusBarAnimationParametersWithClass:(Class)a3
{
  v4 = +[UIView _currentAnimationAttributes];
  if (v4)
  {
    v5 = [[a3 alloc] initWithDefaultParameters];
    [v4 _duration];
    [v5 setDuration:?];
    [v4 _delay];
    [v5 setDelay:?];
    [v5 setCurve:{objc_msgSend(v4, "_curve")}];
  }

  else
  {
    v5 = [(objc_class *)a3 fencingAnimation];
  }

  return v5;
}

- (BOOL)_updateVisibilityForWindow:(id)a3 targetOrientation:(int64_t)a4 animationParameters:(id *)a5
{
  v15 = 0;
  v7 = [UIWindow _preferredStatusBarVisibilityForWindow:a3 targetOrientation:a4 animationProvider:&v15];
  v8 = v15;
  v9 = v8;
  statusBarVisibility = self->_statusBarVisibility;
  if (statusBarVisibility != v7)
  {
    self->_statusBarVisibility = v7;
    self->_statusBarHidden = v7 == 1;
    if (a5)
    {
      if (v8)
      {
        v11 = [v8 _preferredStatusBarHideAnimationParameters];
        if (!v11)
        {
          v12 = objc_opt_class();
          v11 = [v12 _implicitStatusBarAnimationParametersWithClass:objc_opt_class()];
          if (v11)
          {
            [v11 setHideAnimation:{objc_msgSend(v9, "preferredStatusBarUpdateAnimation")}];
          }
        }

        v13 = v11;
        *a5 = v11;
      }
    }
  }

  return statusBarVisibility != v7;
}

- (BOOL)_updateStyleForWindow:(id)a3 animationParameters:(id *)a4
{
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v6 = [UIWindow _preferredStatusBarStyleInWindow:a3 resolvedStyle:&v21 withPartStyles:&v20 animationProvider:&v19];
  v7 = v20;
  v8 = v20;
  v9 = v19;
  if (v21 == self->_statusBarResolvedStyle && v6 == self->_statusBarStyle)
  {
    statusBarPartStyles = self->_statusBarPartStyles;
    v11 = v8;
    v12 = statusBarPartStyles;
    v13 = v12;
    if (v11 == v12)
    {

      v15 = 0;
LABEL_15:

      goto LABEL_16;
    }

    if (v11 && v12)
    {
      v14 = [(NSDictionary *)v11 isEqual:v12];

      if (v14)
      {
        v15 = 0;
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  self->_statusBarResolvedStyle = v21;
  self->_statusBarStyle = v6;
  objc_storeStrong(&self->_statusBarPartStyles, v7);
  v15 = 1;
  if (a4 && v9)
  {
    v11 = [v9 _preferredStatusBarStyleAnimationParameters];
    if (!v11)
    {
      v16 = objc_opt_class();
      v11 = [v16 _implicitStatusBarAnimationParametersWithClass:objc_opt_class()];
      [(NSDictionary *)v11 setStyleAnimation:1];
    }

    v17 = v11;
    *a4 = v11;
    goto LABEL_15;
  }

LABEL_16:

  return v15;
}

- (void)handleTapAction:(id)a3
{
  v6 = a3;
  v4 = [v6 type];
  if (v4 == 1)
  {
    debugMenuHandler = self->_debugMenuHandler;
    if (debugMenuHandler)
    {
      debugMenuHandler[2]();
    }
  }

  else if (!v4)
  {
    [v6 xPosition];
    [(UIStatusBarManager *)self _handleScrollToTopAtXPosition:?];
  }
}

- (CGPoint)_adjustedLocationForXPosition:(double)a3
{
  [(UIStatusBarManager *)self statusBarFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    goto LABEL_2;
  }

  v15 = [(UIWindowScene *)self->_windowScene screen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;

  v20 = [(UIWindowScene *)self->_windowScene _interfaceOrientation];
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      v27.origin.x = v6;
      v27.origin.y = v8;
      v27.size.width = v10;
      v27.size.height = v12;
      Width = CGRectGetWidth(v27);
      v13 = a3;
      a3 = v17 - (Width + 1.0);
      goto LABEL_3;
    }

    if (v20 == 4)
    {
      v26.origin.x = v6;
      v26.origin.y = v8;
      v26.size.width = v10;
      v26.size.height = v12;
      v21 = CGRectGetWidth(v26);
      v13 = a3;
      a3 = v21 + 1.0;
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  if (v20 != 1)
  {
    if (v20 == 2)
    {
      v25.origin.x = v6;
      v25.origin.y = v8;
      v25.size.width = v10;
      v25.size.height = v12;
      v13 = v19 - (CGRectGetHeight(v25) + 1.0);
      goto LABEL_3;
    }

LABEL_11:
    v13 = a3;
    goto LABEL_3;
  }

LABEL_2:
  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  v13 = CGRectGetHeight(v24) + 1.0;
LABEL_3:
  v14 = a3;
  result.y = v13;
  result.x = v14;
  return result;
}

- (void)_handleScrollToTopAtXPosition:(double)a3
{
  v5 = [(UIWindowScene *)&self->_windowScene->super.super.super.isa _keyWindow];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(UIWindowScene *)self->_windowScene screen];
    windowScene = self->_windowScene;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__UIStatusBarManager__handleScrollToTopAtXPosition___block_invoke;
    v10[3] = &unk_1E70FA210;
    v11 = v7;
    v9 = v7;
    v6 = [(UIWindowScene *)windowScene _topVisibleWindowPassingTest:v10];

    if (!v6)
    {
      return;
    }
  }

  [(UIStatusBarManager *)self _adjustedLocationForXPosition:a3];
  [v6 _scrollToTopViewsUnderScreenPointIfNecessary:0 resultHandler:?];
}

@end