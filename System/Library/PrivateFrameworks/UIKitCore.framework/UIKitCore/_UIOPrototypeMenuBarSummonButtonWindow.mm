@interface _UIOPrototypeMenuBarSummonButtonWindow
- (BOOL)isMenuBarPresented;
- (_UIOPrototypeMenuBarSummonButtonWindow)initWithWindowScene:(id)scene;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setMenuBarPresented:(BOOL)presented;
@end

@implementation _UIOPrototypeMenuBarSummonButtonWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  rootViewController = [(UIWindow *)self rootViewController];
  v14.receiver = self;
  v14.super_class = _UIOPrototypeMenuBarSummonButtonWindow;
  v9 = [(UIView *)&v14 hitTest:eventCopy withEvent:x, y];

  button = [rootViewController button];
  v11 = [v9 isDescendantOfView:button];

  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_UIOPrototypeMenuBarSummonButtonWindow)initWithWindowScene:(id)scene
{
  v8.receiver = self;
  v8.super_class = _UIOPrototypeMenuBarSummonButtonWindow;
  v3 = [(UIWindow *)&v8 initWithWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    v5 = +[UIColor clearColor];
    [(UIView *)v4 setBackgroundColor:v5];

    [(UIWindow *)v4 setWindowLevel:2200.0];
    v6 = objc_opt_new();
    [(UIWindow *)v4 setRootViewController:v6];
  }

  return v4;
}

- (BOOL)isMenuBarPresented
{
  rootViewController = [(UIWindow *)self rootViewController];
  isMenuBarPresented = [rootViewController isMenuBarPresented];

  return isMenuBarPresented;
}

- (void)setMenuBarPresented:(BOOL)presented
{
  presentedCopy = presented;
  rootViewController = [(UIWindow *)self rootViewController];
  [rootViewController setMenuBarPresented:presentedCopy];
}

@end