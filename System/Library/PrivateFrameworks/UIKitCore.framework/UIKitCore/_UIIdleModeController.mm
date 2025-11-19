@interface _UIIdleModeController
- (BOOL)_recordLayoutAttributesStartingAtView:(id)a3;
- (_UIIdleModeController)initWithScreen:(id)a3;
- (double)_dimmingOverlayWhiteValueForUserInterfaceStyle:(int64_t)a3;
- (double)_dismissalAnimationDuration;
- (double)_presentationAnimationDuration;
- (double)_vignetteAlphaForUserInterfaceStyle:(int64_t)a3;
- (id)_originalAttributesForView:(id)a3 comparedToIdleModeAttributes:(id)a4;
- (id)_vignetteImageAroundFocusedFrame:(CGRect)a3;
- (void)_animateDismissal;
- (void)_animatePresentation;
- (void)_applyDismissalLayoutAttributesToViews;
- (void)_applyLayoutAttributes:(id)a3 toView:(id)a4;
- (void)_applyPresentationLayoutAttributesToViews;
- (void)_completeDismissal;
- (void)_enterIdleMode;
- (void)_enterIdleModeWithOptions:(unint64_t)a3;
- (void)_exitIdleMode;
- (void)_exitIdleModeWithOptions:(unint64_t)a3;
- (void)_postWillEnterNotification;
- (void)_postWillExitNotification;
- (void)_prepareForPresentationWithKeyWindow:(id)a3 focusedView:(id)a4;
- (void)dealloc;
- (void)setIdleModeEnabled:(BOOL)a3;
- (void)setStyle:(unint64_t)a3;
@end

@implementation _UIIdleModeController

- (_UIIdleModeController)initWithScreen:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIIdleModeController;
  v6 = [(_UIIdleModeController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_screen, a3);
    v7->_style = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(_UIIdleModeController *)self _completeDismissal];
  v3.receiver = self;
  v3.super_class = _UIIdleModeController;
  [(_UIIdleModeController *)&v3 dealloc];
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    if (a3 == 1 && self->_idleModeEnabled)
    {
      [(_UIIdleModeController *)self _exitIdleModeWithOptions:1];
    }
  }
}

- (void)setIdleModeEnabled:(BOOL)a3
{
  if (self->_idleModeEnabled != a3)
  {
    if (a3)
    {
      [(_UIIdleModeController *)self _enterIdleMode];
    }

    else
    {
      [(_UIIdleModeController *)self _exitIdleMode];
    }

    self->_idleModeEnabled = a3;
  }
}

- (void)_enterIdleMode
{
  if (self->_style == 1)
  {
    [(_UIIdleModeController *)self _postWillEnterNotification];
  }

  else
  {
    [(_UIIdleModeController *)self _enterIdleModeWithOptions:0];
  }
}

- (void)_exitIdleMode
{
  if (self->_style == 1)
  {
    [(_UIIdleModeController *)self _postWillExitNotification];
  }

  else
  {
    [(_UIIdleModeController *)self _exitIdleModeWithOptions:0];
  }
}

- (void)_enterIdleModeWithOptions:(unint64_t)a3
{
  [(_UIIdleModeController *)self _completeDismissal];
  v5 = +[UIWindow _applicationKeyWindow];
  v6 = [v5 _focusSystem];
  v7 = [v6 focusedItem];
  v8 = _UIFocusEnvironmentContainingView(v7);

  if ([(_UIIdleModeController *)self _recordLayoutAttributesStartingAtView:v8])
  {
    self->_didApplyVisualEffects = 1;
    [(_UIIdleModeController *)self _prepareForPresentationWithKeyWindow:v5 focusedView:v8];
    [(_UIIdleModeController *)self _presentationAnimationDuration];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51___UIIdleModeController__enterIdleModeWithOptions___block_invoke;
    v9[3] = &unk_1E70F32F0;
    v9[4] = self;
    v9[5] = a3;
    [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:327686 options:v9 animations:0 completion:?];
  }

  else
  {
    self->_didApplyVisualEffects = 0;
  }
}

- (void)_exitIdleModeWithOptions:(unint64_t)a3
{
  if (self->_didApplyVisualEffects)
  {
    dismissalTransactionID = self->_dismissalTransactionID;
    objc_initWeak(&location, self);
    [(_UIIdleModeController *)self _dismissalAnimationDuration];
    v7 = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50___UIIdleModeController__exitIdleModeWithOptions___block_invoke;
    v10[3] = &unk_1E70F32F0;
    v10[4] = self;
    v10[5] = a3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50___UIIdleModeController__exitIdleModeWithOptions___block_invoke_2;
    v8[3] = &unk_1E7109558;
    objc_copyWeak(v9, &location);
    v9[1] = dismissalTransactionID;
    [UIView animateWithDuration:327686 delay:v10 options:v8 animations:v7 completion:0.0];
    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

- (void)_postWillEnterNotification
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_UIApplicationWillEnterIdleModeNotification" object:UIApp];
}

- (void)_postWillExitNotification
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_UIApplicationWillExitIdleModeNotification" object:UIApp];
}

- (double)_presentationAnimationDuration
{
  v2 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_IdleModePresentationDuration, @"IdleModePresentationDuration");
  result = *&qword_1EA95E4E0;
  if (v2)
  {
    return 3.0;
  }

  return result;
}

- (double)_dismissalAnimationDuration
{
  v2 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_IdleModeDismissalDuration, @"IdleModeDismissalDuration");
  result = *&qword_1EA95E4F0;
  if (v2)
  {
    return 1.0;
  }

  return result;
}

- (double)_vignetteAlphaForUserInterfaceStyle:(int64_t)a3
{
  v3 = a3 == 1000 || a3 == 2;
  result = 0.35;
  if (v3)
  {
    return 0.65;
  }

  return result;
}

- (double)_dimmingOverlayWhiteValueForUserInterfaceStyle:(int64_t)a3
{
  v3 = a3 == 1000 || a3 == 2;
  result = 0.55;
  if (v3)
  {
    return 0.4;
  }

  return result;
}

- (id)_vignetteImageAroundFocusedFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIScreen *)self->_screen traitCollection];
  v9 = [(_UIIdleModeController *)self _imageForTraitCollection:v8];

  [v9 size];
  v11 = v10;
  v13 = v12;
  [(UIScreen *)self->_screen bounds];
  v15 = v14;
  v17 = v16;
  [(UIScreen *)self->_screen scale];
  _UIGraphicsBeginImageContextWithOptions(0, 0, v15, v17, v18);
  v19 = +[UIColor blackColor];
  [v19 setFill];

  UIRectFillUsingOperation(1, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v15, v17);
  [v9 drawAtPoint:17 blendMode:x + width * 0.5 - v11 * 0.5 alpha:{y + height * 0.5 - v13 * 0.5, 1.0}];
  v20 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();

  return v20;
}

- (void)_applyLayoutAttributes:(id)a3 toView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  memset(&v21, 0, sizeof(v21));
  if (v6)
  {
    [v6 transform];
  }

  if (v5)
  {
    [v5 transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v18 = v21;
  CGAffineTransformConcat(&v20, &v18, &t2);
  t2 = v20;
  [v7 setTransform:&t2];
  [v7 alpha];
  v9 = v8;
  [v5 alphaOffset];
  [v7 setAlpha:v9 + v10];
  [v7 center];
  v12 = v11;
  v14 = v13;
  [v5 centerOffset];
  v16 = v12 + v15;
  [v5 centerOffset];
  [v7 setCenter:{v16, v14 + v17}];
}

- (void)_applyPresentationLayoutAttributesToViews
{
  v3 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66___UIIdleModeController__applyPresentationLayoutAttributesToViews__block_invoke_2;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [UIView conditionallyAnimate:v3 withAnimation:&__block_literal_global_326 layout:v4 completion:0];
}

- (void)_applyDismissalLayoutAttributesToViews
{
  v3 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63___UIIdleModeController__applyDismissalLayoutAttributesToViews__block_invoke_2;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [UIView conditionallyAnimate:v3 withAnimation:&__block_literal_global_11_1 layout:v4 completion:0];
}

- (id)_originalAttributesForView:(id)a3 comparedToIdleModeAttributes:(id)a4
{
  v4 = a4;
  v5 = objc_alloc_init(_UIIdleModeLayoutAttributes);
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  CGAffineTransformInvert(&v12, &v11);
  v11 = v12;
  [(_UIIdleModeLayoutAttributes *)v5 setTransform:&v11];
  [v4 alphaOffset];
  [(_UIIdleModeLayoutAttributes *)v5 setAlphaOffset:-v6];
  [v4 centerOffset];
  v8 = -v7;
  [v4 centerOffset];
  [(_UIIdleModeLayoutAttributes *)v5 setCenterOffset:v8, -v9];

  return v5;
}

- (BOOL)_recordLayoutAttributesStartingAtView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    viewsToCAFilters = self->_viewsToCAFilters;
    self->_viewsToCAFilters = v5;

    v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    viewsToAttributes = self->_viewsToAttributes;
    self->_viewsToAttributes = v7;

    v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    viewsToOriginalAttributes = self->_viewsToOriginalAttributes;
    self->_viewsToOriginalAttributes = v9;

    v11 = [_UIViewBlockVisitor alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63___UIIdleModeController__recordLayoutAttributesStartingAtView___block_invoke;
    v20[3] = &unk_1E710D778;
    v20[4] = self;
    v12 = v4;
    v21 = v12;
    v22 = &v23;
    v13 = [(_UIViewBlockVisitor *)v11 initWithTraversalDirection:2 visitorBlock:v20];
    v14 = [v12 window];
    [v14 _receiveVisitor:v13];

    if (v24[3])
    {
      v15 = 1;
    }

    else
    {
      v16 = self->_viewsToCAFilters;
      self->_viewsToCAFilters = 0;

      v17 = self->_viewsToAttributes;
      self->_viewsToAttributes = 0;

      v18 = self->_viewsToOriginalAttributes;
      self->_viewsToOriginalAttributes = 0;

      v15 = *(v24 + 24);
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (void)_prepareForPresentationWithKeyWindow:(id)a3 focusedView:(id)a4
{
  v34 = a3;
  v7 = a4;
  objc_storeStrong(&self->_keyWindow, a3);
  v8 = [(UIView *)self->_keyWindow layer];
  self->_keyWindowAllowedGroupBlending = [v8 allowsGroupBlending];

  v9 = [(UIView *)self->_keyWindow layer];
  [v9 setAllowsGroupBlending:0];

  v10 = objc_alloc_init(UIWindow);
  backgroundWindow = self->_backgroundWindow;
  self->_backgroundWindow = v10;

  v12 = [v34 windowScene];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [v7 _window];
    v16 = [v15 windowScene];
    v17 = v16;
    if (v16)
    {
      v14 = v16;
    }

    else
    {
      v18 = [UIApp _defaultSceneIfExists];
      v14 = [(UIScene *)UIWindowScene _sceneForFBSScene:v18];
    }
  }

  [(UIWindow *)self->_backgroundWindow setWindowScene:v14];
  [(UIScreen *)self->_screen bounds];
  [(UIWindow *)self->_backgroundWindow setFrame:?];
  v19 = +[UIColor clearColor];
  [(UIView *)self->_backgroundWindow setBackgroundColor:v19];

  [(UIWindow *)self->_backgroundWindow setWindowLevel:-10.0];
  [(UIView *)self->_backgroundWindow setUserInteractionEnabled:0];
  [(UIWindow *)self->_backgroundWindow setHidden:0];
  v20 = [(UIView *)self->_backgroundWindow layer];
  [v20 setAllowsGroupBlending:0];

  v21 = self->_backgroundWindow;
  [v7 bounds];
  [(UIView *)v21 convertRect:v7 fromView:?];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [UIImageView alloc];
  v31 = [(_UIIdleModeController *)self _vignetteImageAroundFocusedFrame:v23, v25, v27, v29];
  v32 = [(UIImageView *)v30 initWithImage:v31];
  vignetteView = self->_vignetteView;
  self->_vignetteView = v32;

  [(UIView *)self->_vignetteView setAlpha:0.0];
  [(UIView *)self->_backgroundWindow addSubview:self->_vignetteView];
}

- (void)_animatePresentation
{
  v29 = *MEMORY[0x1E69E9840];
  [(_UIIdleModeController *)self _applyPresentationLayoutAttributesToViews];
  v3 = [(UIView *)self->_vignetteView traitCollection];
  v4 = [v3 userInterfaceStyle];

  [(_UIIdleModeController *)self _vignetteAlphaForUserInterfaceStyle:v4];
  [(UIView *)self->_vignetteView setAlpha:?];
  v5 = [UIColor colorWithWhite:1.0 alpha:1.0];
  v22 = [v5 CGColor];

  [(_UIIdleModeController *)self _dimmingOverlayWhiteValueForUserInterfaceStyle:v4];
  v6 = [UIColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
  v7 = [v6 CGColor];

  v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
  [v8 setValue:v7 forKey:@"inputColor"];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = self;
  obj = self->_viewsToCAFilters;
  v10 = [(NSMapTable *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    v13 = *MEMORY[0x1E6979EA0];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 layer];
        v27 = v8;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
        [v16 setFilters:v17];

        v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.multiplyColor.inputColor"];
        v19 = [MEMORY[0x1E69793D0] functionWithName:v13];
        [v18 setTimingFunction:v19];

        [v18 setFromValue:v22];
        [v18 setToValue:v7];
        [(_UIIdleModeController *)v9 _presentationAnimationDuration];
        [v18 setDuration:?];
        v20 = [v15 layer];
        [v20 addAnimation:v18 forKey:0];
      }

      v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v11);
  }
}

- (void)_animateDismissal
{
  v24 = *MEMORY[0x1E69E9840];
  [(UIView *)self->_vignetteView setAlpha:0.0];
  [(_UIIdleModeController *)self _dismissalAnimationDuration];
  v4 = v3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = self;
  obj = self->_viewsToCAFilters;
  v5 = [(NSMapTable *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = v4 * 0.5;
    v8 = *v20;
    v9 = *MEMORY[0x1E6979EA0];
    v10 = *MEMORY[0x1E69797E8];
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v19 + 1) + 8 * v11) layer];
        v13 = [UIColor colorWithWhite:1.0 alpha:1.0];
        v14 = [v13 CGColor];

        v15 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.multiplyColor.inputColor"];
        v16 = [MEMORY[0x1E69793D0] functionWithName:v9];
        [v15 setTimingFunction:v16];

        [v15 setToValue:v14];
        [v15 setDuration:v7];
        [v15 setFillMode:v10];
        [v15 setRemovedOnCompletion:0];
        [v12 addAnimation:v15 forKey:@"_UIIdleModeDismissal"];

        ++v11;
      }

      while (v6 != v11);
      v6 = [(NSMapTable *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [(_UIIdleModeController *)v17 _applyDismissalLayoutAttributesToViews];
}

- (void)_completeDismissal
{
  v25 = *MEMORY[0x1E69E9840];
  viewsToCAFilters = self->_viewsToCAFilters;
  if (viewsToCAFilters)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = viewsToCAFilters;
    v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [(NSMapTable *)self->_viewsToCAFilters objectForKey:v9, v20];
          v11 = [v9 layer];
          [v11 removeAnimationForKey:@"_UIIdleModeDismissal"];
          [v11 setFilters:v10];
        }

        v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    keyWindowAllowedGroupBlending = self->_keyWindowAllowedGroupBlending;
    v13 = [(UIView *)self->_keyWindow layer];
    [v13 setAllowsGroupBlending:keyWindowAllowedGroupBlending];

    keyWindow = self->_keyWindow;
    self->_keyWindow = 0;

    backgroundWindow = self->_backgroundWindow;
    self->_backgroundWindow = 0;

    vignetteView = self->_vignetteView;
    self->_vignetteView = 0;

    v17 = self->_viewsToCAFilters;
    self->_viewsToCAFilters = 0;

    viewsToAttributes = self->_viewsToAttributes;
    self->_viewsToAttributes = 0;

    viewsToOriginalAttributes = self->_viewsToOriginalAttributes;
    self->_viewsToOriginalAttributes = 0;

    ++self->_dismissalTransactionID;
  }
}

@end