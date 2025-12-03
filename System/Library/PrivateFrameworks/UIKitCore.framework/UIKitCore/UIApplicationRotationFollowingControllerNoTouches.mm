@interface UIApplicationRotationFollowingControllerNoTouches
- (void)_finishRotationFromInterfaceOrientation:(int64_t)orientation;
- (void)_prepareForRotationToOrientation:(int64_t)orientation duration:(double)duration;
- (void)_rotateToOrientation:(int64_t)orientation duration:(double)duration;
- (void)loadView;
@end

@implementation UIApplicationRotationFollowingControllerNoTouches

- (void)loadView
{
  v3 = objc_alloc_init(UIApplicationRotationFollowingControllerView);
  [(UIViewController *)self setView:v3];
}

- (void)_prepareForRotationToOrientation:(int64_t)orientation duration:(double)duration
{
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    view = [(UIViewController *)self view];
    window = [view window];
    [(UIViewController *)self window:window willRotateToInterfaceOrientation:orientation duration:duration];
  }
}

- (void)_rotateToOrientation:(int64_t)orientation duration:(double)duration
{
  _isSpringBoard = [UIApp _isSpringBoard];
  view = [(UIViewController *)self view];
  window = [view window];
  v10 = window;
  if (_isSpringBoard)
  {
    _isTextEffectsWindow = [window _isTextEffectsWindow];

    if (!_isTextEffectsWindow)
    {
      return;
    }

    view2 = [(UIViewController *)self view];
    window2 = [view2 window];
    [window2 updateForOrientation:orientation];
  }

  else
  {
    [(UIViewController *)self window:window willAnimateRotationToInterfaceOrientation:orientation duration:duration];

    view2 = [(UIViewController *)self view];
    [view2 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    window2 = [(UIViewController *)self view];
    [window2 setFrame:{v14, v16, v18, v20}];
  }
}

- (void)_finishRotationFromInterfaceOrientation:(int64_t)orientation
{
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    view = [(UIViewController *)self view];
    window = [view window];
    [(UIViewController *)self window:window didRotateFromInterfaceOrientation:orientation];
  }
}

@end