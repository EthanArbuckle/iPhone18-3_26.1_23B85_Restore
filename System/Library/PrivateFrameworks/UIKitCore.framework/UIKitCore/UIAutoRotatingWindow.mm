@interface UIAutoRotatingWindow
- (id)_initWithFrame:(CGRect)frame attached:(BOOL)attached;
- (id)_initWithFrame:(CGRect)frame debugName:(id)name windowScene:(id)scene;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_didRemoveSubview:(id)subview;
- (void)commonInit;
- (void)updateForOrientation:(int64_t)orientation;
@end

@implementation UIAutoRotatingWindow

- (void)commonInit
{
  self->_interfaceOrientation = 1;
  self->_unknownOrientation = 1;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_matchDeviceOrientation_ name:@"UIApplicationDidChangeStatusBarOrientationNotification" object:0];

  if ([(UIWindow *)self _isHostedInAnotherProcess])
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_matchDeviceOrientation_ name:@"_UIWindowWillBecomeApplicationKeyNotification" object:0];
  }
}

- (id)_initWithFrame:(CGRect)frame attached:(BOOL)attached
{
  v6.receiver = self;
  v6.super_class = UIAutoRotatingWindow;
  v4 = [(UIApplicationRotationFollowingWindow *)&v6 _initWithFrame:attached attached:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [v4 commonInit];
  return v4;
}

- (id)_initWithFrame:(CGRect)frame debugName:(id)name windowScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = UIAutoRotatingWindow;
  v5 = [(UIApplicationRotationFollowingWindow *)&v7 _initWithFrame:name debugName:scene windowScene:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [v5 commonInit];
  return v5;
}

- (void)updateForOrientation:(int64_t)orientation
{
  if (self->_interfaceOrientation != orientation || self->_unknownOrientation)
  {
    v5.receiver = self;
    v5.super_class = UIAutoRotatingWindow;
    [(UIWindow *)&v5 setupForOrientation:orientation];
    self->_interfaceOrientation = orientation;
    self->_unknownOrientation = [(UIWindow *)self inhibitTextEffectsRotation];
  }
}

- (void)_didRemoveSubview:(id)subview
{
  v6.receiver = self;
  v6.super_class = UIAutoRotatingWindow;
  [(UIView *)&v6 _didRemoveSubview:subview];
  if (![(UIWindow *)self _isTextEffectsWindow])
  {
    subviews = [(UIView *)self subviews];
    v5 = [subviews count];

    if (!v5)
    {
      [(UIWindow *)self setHidden:1];
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = UIAutoRotatingWindow;
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