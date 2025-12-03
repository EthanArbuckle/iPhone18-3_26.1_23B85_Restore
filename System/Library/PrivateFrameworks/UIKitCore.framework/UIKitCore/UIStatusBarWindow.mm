@interface UIStatusBarWindow
+ (CGRect)_convertRect:(CGRect)rect fromSceneReferenceSpaceToSceneSpaceWithOrientation:(int64_t)orientation;
+ (CGRect)_defaultStatusBarSceneReferenceBounds;
+ (CGRect)_defaultStatusBarSceneReferenceBoundsForOrientation:(int64_t)orientation;
+ (CGRect)statusBarWindowFrame;
- (CGRect)_defaultStatusBarSceneBoundsForOrientation:(int64_t)orientation;
- (CGRect)_statusBarFrameForOrientation:(int64_t)orientation;
- (CGRect)statusBarWindowFrame;
- (UIEdgeInsets)safeAreaInsets;
- (UIStatusBarWindow)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_didMoveFromScene:(id)scene toScene:(id)toScene;
- (void)_rotate;
- (void)setOrientation:(int64_t)orientation animationParameters:(id)parameters;
- (void)setStatusBar:(id)bar;
@end

@implementation UIStatusBarWindow

+ (CGRect)_defaultStatusBarSceneReferenceBounds
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _referenceBounds];
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

+ (CGRect)_convertRect:(CGRect)rect fromSceneReferenceSpaceToSceneSpaceWithOrientation:(int64_t)orientation
{
  v4 = _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace(orientation, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, rect.size.width, rect.size.height);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)_defaultStatusBarSceneReferenceBoundsForOrientation:(int64_t)orientation
{
  [self _defaultStatusBarSceneReferenceBounds];

  [self _convertRect:orientation fromSceneReferenceSpaceToSceneSpaceWithOrientation:?];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIStatusBarWindow.m" lineNumber:58 description:@"Deprecated SPI only supported for SpringBoard"];
  }

  statusBarWindow = [UIApp statusBarWindow];
  if (!statusBarWindow)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIStatusBarWindow.m" lineNumber:63 description:@"+[UIApp statusBarWindow] should have created a window"];
  }

  windowScene = [statusBarWindow windowScene];
  [self _defaultStatusBarSceneReferenceBoundsForOrientation:{objc_msgSend(windowScene, "_interfaceOrientation")}];
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

- (CGRect)_defaultStatusBarSceneBoundsForOrientation:(int64_t)orientation
{
  v5 = objc_opt_class();
  [(UIWindow *)self _sceneReferenceBounds];

  [v5 _convertRect:orientation fromSceneReferenceSpaceToSceneSpaceWithOrientation:?];
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

- (UIStatusBarWindow)initWithFrame:(CGRect)frame
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

- (void)setStatusBar:(id)bar
{
  barCopy = bar;
  statusBar = self->_statusBar;
  if (statusBar != barCopy)
  {
    v7 = barCopy;
    [(UIView *)statusBar removeFromSuperview];
    objc_storeStrong(&self->_statusBar, bar);
    [(UIView *)self->_statusBar frame];
    [(UIView *)self bounds];
    [(UIView *)self->_statusBar setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    [(UIView *)self->_statusBar setAutoresizingMask:34];
    [(UIView *)self addSubview:self->_statusBar];
    barCopy = v7;
  }
}

- (void)setOrientation:(int64_t)orientation animationParameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = parametersCopy;
  if (parametersCopy && (v8 = [parametersCopy orientationAnimation]) != 0)
  {
    if (self->_orientation != orientation)
    {
      self->_orientation = orientation;
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
    self->_orientation = orientation;
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

- (CGRect)_statusBarFrameForOrientation:(int64_t)orientation
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

- (void)_didMoveFromScene:(id)scene toScene:(id)toScene
{
  sceneCopy = scene;
  v12.receiver = self;
  v12.super_class = UIStatusBarWindow;
  toSceneCopy = toScene;
  [(UIWindow *)&v12 _didMoveFromScene:sceneCopy toScene:toSceneCopy];
  [UIApp _statusBarWindow:self didMoveFromScene:sceneCopy toScene:{toSceneCopy, v12.receiver, v12.super_class}];
  v8 = UIApp;
  _interfaceOrientation = [toSceneCopy _interfaceOrientation];

  if (sceneCopy)
  {
    _interfaceOrientation2 = [sceneCopy _interfaceOrientation];
  }

  else
  {
    _interfaceOrientation2 = 0;
  }

  windowScene = [(UIWindow *)self windowScene];
  [v8 setStatusBarOrientation:_interfaceOrientation fromOrientation:_interfaceOrientation2 windowScene:windowScene animationParameters:0 updateBlock:0];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = UIStatusBarWindow;
  v5 = [(UIView *)&v9 hitTest:event withEvent:test.x, test.y];
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