@interface UIApplicationRotationFollowingControllerNoTouches
- (void)_finishRotationFromInterfaceOrientation:(int64_t)a3;
- (void)_prepareForRotationToOrientation:(int64_t)a3 duration:(double)a4;
- (void)_rotateToOrientation:(int64_t)a3 duration:(double)a4;
- (void)loadView;
@end

@implementation UIApplicationRotationFollowingControllerNoTouches

- (void)loadView
{
  v3 = objc_alloc_init(UIApplicationRotationFollowingControllerView);
  [(UIViewController *)self setView:v3];
}

- (void)_prepareForRotationToOrientation:(int64_t)a3 duration:(double)a4
{
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    v8 = [(UIViewController *)self view];
    v7 = [v8 window];
    [(UIViewController *)self window:v7 willRotateToInterfaceOrientation:a3 duration:a4];
  }
}

- (void)_rotateToOrientation:(int64_t)a3 duration:(double)a4
{
  v7 = [UIApp _isSpringBoard];
  v8 = [(UIViewController *)self view];
  v9 = [v8 window];
  v10 = v9;
  if (v7)
  {
    v11 = [v9 _isTextEffectsWindow];

    if (!v11)
    {
      return;
    }

    v21 = [(UIViewController *)self view];
    v12 = [v21 window];
    [v12 updateForOrientation:a3];
  }

  else
  {
    [(UIViewController *)self window:v9 willAnimateRotationToInterfaceOrientation:a3 duration:a4];

    v21 = [(UIViewController *)self view];
    [v21 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v12 = [(UIViewController *)self view];
    [v12 setFrame:{v14, v16, v18, v20}];
  }
}

- (void)_finishRotationFromInterfaceOrientation:(int64_t)a3
{
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    v6 = [(UIViewController *)self view];
    v5 = [v6 window];
    [(UIViewController *)self window:v5 didRotateFromInterfaceOrientation:a3];
  }
}

@end