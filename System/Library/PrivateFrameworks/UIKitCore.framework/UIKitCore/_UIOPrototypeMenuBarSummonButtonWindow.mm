@interface _UIOPrototypeMenuBarSummonButtonWindow
- (BOOL)isMenuBarPresented;
- (_UIOPrototypeMenuBarSummonButtonWindow)initWithWindowScene:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setMenuBarPresented:(BOOL)a3;
@end

@implementation _UIOPrototypeMenuBarSummonButtonWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIWindow *)self rootViewController];
  v14.receiver = self;
  v14.super_class = _UIOPrototypeMenuBarSummonButtonWindow;
  v9 = [(UIView *)&v14 hitTest:v7 withEvent:x, y];

  v10 = [v8 button];
  v11 = [v9 isDescendantOfView:v10];

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

- (_UIOPrototypeMenuBarSummonButtonWindow)initWithWindowScene:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UIOPrototypeMenuBarSummonButtonWindow;
  v3 = [(UIWindow *)&v8 initWithWindowScene:a3];
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
  v2 = [(UIWindow *)self rootViewController];
  v3 = [v2 isMenuBarPresented];

  return v3;
}

- (void)setMenuBarPresented:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIWindow *)self rootViewController];
  [v4 setMenuBarPresented:v3];
}

@end