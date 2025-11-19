@interface UIAutoRotatingWindow
- (id)_initWithFrame:(CGRect)a3 attached:(BOOL)a4;
- (id)_initWithFrame:(CGRect)a3 debugName:(id)a4 windowScene:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_didRemoveSubview:(id)a3;
- (void)commonInit;
- (void)updateForOrientation:(int64_t)a3;
@end

@implementation UIAutoRotatingWindow

- (void)commonInit
{
  self->_interfaceOrientation = 1;
  self->_unknownOrientation = 1;
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_matchDeviceOrientation_ name:@"UIApplicationDidChangeStatusBarOrientationNotification" object:0];

  if ([(UIWindow *)self _isHostedInAnotherProcess])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel_matchDeviceOrientation_ name:@"_UIWindowWillBecomeApplicationKeyNotification" object:0];
  }
}

- (id)_initWithFrame:(CGRect)a3 attached:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = UIAutoRotatingWindow;
  v4 = [(UIApplicationRotationFollowingWindow *)&v6 _initWithFrame:a4 attached:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [v4 commonInit];
  return v4;
}

- (id)_initWithFrame:(CGRect)a3 debugName:(id)a4 windowScene:(id)a5
{
  v7.receiver = self;
  v7.super_class = UIAutoRotatingWindow;
  v5 = [(UIApplicationRotationFollowingWindow *)&v7 _initWithFrame:a4 debugName:a5 windowScene:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [v5 commonInit];
  return v5;
}

- (void)updateForOrientation:(int64_t)a3
{
  if (self->_interfaceOrientation != a3 || self->_unknownOrientation)
  {
    v5.receiver = self;
    v5.super_class = UIAutoRotatingWindow;
    [(UIWindow *)&v5 setupForOrientation:a3];
    self->_interfaceOrientation = a3;
    self->_unknownOrientation = [(UIWindow *)self inhibitTextEffectsRotation];
  }
}

- (void)_didRemoveSubview:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIAutoRotatingWindow;
  [(UIView *)&v6 _didRemoveSubview:a3];
  if (![(UIWindow *)self _isTextEffectsWindow])
  {
    v4 = [(UIView *)self subviews];
    v5 = [v4 count];

    if (!v5)
    {
      [(UIWindow *)self setHidden:1];
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = UIAutoRotatingWindow;
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