@interface UIStatusBarWindow
+ (CGRect)_convertRect:(CGRect)a3 fromSceneReferenceSpaceToSceneSpaceWithOrientation:(int64_t)a4;
+ (CGRect)_defaultStatusBarSceneReferenceBounds;
+ (CGRect)_defaultStatusBarSceneReferenceBoundsForOrientation:(int64_t)a3;
+ (CGRect)statusBarWindowFrame;
- (CGRect)_defaultStatusBarSceneBoundsForOrientation:(int64_t)a3;
- (CGRect)_statusBarFrameForOrientation:(int64_t)a3;
- (CGRect)statusBarWindowFrame;
- (UIEdgeInsets)safeAreaInsets;
- (UIStatusBarWindow)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_didMoveFromScene:(id)a3 toScene:(id)a4;
- (void)_rotate;
- (void)setOrientation:(int64_t)a3 animationParameters:(id)a4;
- (void)setStatusBar:(id)a3;
@end

@implementation UIStatusBarWindow

+ (CGRect)_defaultStatusBarSceneReferenceBounds
{
  v2 = [objc_opt_self() mainScreen];
  [v2 _referenceBounds];
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

+ (CGRect)_convertRect:(CGRect)a3 fromSceneReferenceSpaceToSceneSpaceWithOrientation:(int64_t)a4
{
  v4 = _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace(a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a3.size.width, a3.size.height);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)_defaultStatusBarSceneReferenceBoundsForOrientation:(int64_t)a3
{
  [a1 _defaultStatusBarSceneReferenceBounds];

  [a1 _convertRect:a3 fromSceneReferenceSpaceToSceneSpaceWithOrientation:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (CGRect)statusBarWindowFrame
{
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"UIStatusBarWindow.m" lineNumber:58 description:@"Deprecated SPI only supported for SpringBoard"];
  }

  v4 = [UIApp statusBarWindow];
  if (!v4)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"UIStatusBarWindow.m" lineNumber:63 description:@"+[UIApp statusBarWindow] should have created a window"];
  }

  v5 = [v4 windowScene];
  [a1 _defaultStatusBarSceneReferenceBoundsForOrientation:{objc_msgSend(v5, "_interfaceOrientation")}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_defaultStatusBarSceneBoundsForOrientation:(int64_t)a3
{
  v5 = objc_opt_class();
  [(UIWindow *)self _sceneReferenceBounds];

  [v5 _convertRect:a3 fromSceneReferenceSpaceToSceneSpaceWithOrientation:?];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)statusBarWindowFrame
{
  [(UIStatusBarWindow *)self _defaultStatusBarSceneBoundsForOrientation:self->_orientation];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIStatusBarWindow)initWithFrame:(CGRect)a3
{
  viewOrientation = self->super._viewOrientation;
  v8.receiver = self;
  v8.super_class = UIStatusBarWindow;
  v4 = [(UIWindow *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    if (viewOrientation <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = viewOrientation;
    }

    v4->_orientation = v6;
    [(UIStatusBarWindow *)v4 _defaultStatusBarSceneBoundsForOrientation:?];
    [(UIWindow *)v5 setFrame:?];
    [(UIView *)v5 setOpaque:0];
  }

  return v5;
}

- (void)setStatusBar:(id)a3
{
  v5 = a3;
  statusBar = self->_statusBar;
  if (statusBar != v5)
  {
    v7 = v5;
    [(UIView *)statusBar removeFromSuperview];
    objc_storeStrong(&self->_statusBar, a3);
    [(UIView *)self->_statusBar frame];
    [(UIView *)self bounds];
    [(UIView *)self->_statusBar setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    [(UIView *)self->_statusBar setAutoresizingMask:34];
    [(UIView *)self addSubview:self->_statusBar];
    v5 = v7;
  }
}

- (void)setOrientation:(int64_t)a3 animationParameters:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && (v8 = [v6 orientationAnimation]) != 0)
  {
    if (self->_orientation != a3)
    {
      self->_orientation = a3;
      if (v8 == 2)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __56__UIStatusBarWindow_setOrientation_animationParameters___block_invoke;
        v15[3] = &unk_1E70F3590;
        v15[4] = self;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __56__UIStatusBarWindow_setOrientation_animationParameters___block_invoke_2;
        v14[3] = &unk_1E70F5AC0;
        v14[4] = self;
        [UIStatusBarAnimationParameters animateWithParameters:v7 fromCurrentState:1 animations:v15 completion:v14];
      }

      else
      {
        [v7 duration];
        v10 = v9 * 0.5;
        [v7 delay];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __56__UIStatusBarWindow_setOrientation_animationParameters___block_invoke_3;
        v13[3] = &unk_1E70F3590;
        v13[4] = self;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __56__UIStatusBarWindow_setOrientation_animationParameters___block_invoke_4;
        v12[3] = &unk_1E70F9B38;
        v12[4] = self;
        *&v12[5] = v10;
        [UIView animateWithDuration:0x10000 delay:v13 options:v12 animations:v10 completion:v11];
      }
    }
  }

  else
  {
    self->_orientation = a3;
    [(UIStatusBarWindow *)self _rotate];
  }
}

uint64_t __56__UIStatusBarWindow_setOrientation_animationParameters___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 920) _statusBarWillAnimateRotation];
  v2 = *(a1 + 32);

  return [v2 _rotate];
}

uint64_t __56__UIStatusBarWindow_setOrientation_animationParameters___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _rotate];
  result = [*(*(a1 + 32) + 920) isHidden];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __56__UIStatusBarWindow_setOrientation_animationParameters___block_invoke_5;
    v4[3] = &unk_1E70F3590;
    v4[4] = *(a1 + 32);
    return [UIView animateWithDuration:0x20000 delay:v4 options:0 animations:v3 completion:0.0];
  }

  return result;
}

- (CGRect)_statusBarFrameForOrientation:(int64_t)a3
{
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(UIView *)self->_statusBar frame];
  Height = CGRectGetHeight(v14);
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = Height;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_rotate
{
  [(UIStatusBar *)self->_statusBar setOrientation:self->_orientation];
  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    orientation = self->_orientation;

    [(UIWindow *)self _rotateWindowToOrientation:orientation updateStatusBar:0 duration:0 skipCallbacks:0.0];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
    v4 = self->_orientation;
    switch(v4)
    {
      case 1:
        v5 = 0.0;
        break;
      case 3:
        v5 = 1.57079633;
        break;
      case 4:
        v5 = -1.57079633;
        break;
      default:
        v5 = 3.14159265;
        if (v4 != 2)
        {
          v5 = 0.0;
        }

        break;
    }

    CGAffineTransformMakeRotation(&v7, v5);
    *&v7.a = vrndaq_f64(*&v7.a);
    *&v7.c = vrndaq_f64(*&v7.c);
    *&v7.tx = vrndaq_f64(*&v7.tx);
    v6 = v7;
    [(UIView *)self setTransform:&v6];
    [(UIStatusBarWindow *)self statusBarWindowFrame];
    [(UIWindow *)self setFrame:?];
  }
}

- (UIEdgeInsets)safeAreaInsets
{
  v3 = dyld_program_sdk_at_least();
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if ((v3 & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = UIStatusBarWindow;
    [(UIWindow *)&v8 safeAreaInsets:0.0];
  }

  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

- (void)_didMoveFromScene:(id)a3 toScene:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = UIStatusBarWindow;
  v7 = a4;
  [(UIWindow *)&v12 _didMoveFromScene:v6 toScene:v7];
  [UIApp _statusBarWindow:self didMoveFromScene:v6 toScene:{v7, v12.receiver, v12.super_class}];
  v8 = UIApp;
  v9 = [v7 _interfaceOrientation];

  if (v6)
  {
    v10 = [v6 _interfaceOrientation];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(UIWindow *)self windowScene];
  [v8 setStatusBarOrientation:v9 fromOrientation:v10 windowScene:v11 animationParameters:0 updateBlock:0];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = UIStatusBarWindow;
  v5 = [(UIView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end