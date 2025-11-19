@interface _UIBackgroundHitTestWindow
- (_UIBackgroundHitTestWindow)initWithWindowScene:(id)a3;
@end

@implementation _UIBackgroundHitTestWindow

- (_UIBackgroundHitTestWindow)initWithWindowScene:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIBackgroundHitTestWindow;
  v3 = [(UIWindow *)&v7 initWithWindowScene:a3];
  v4 = v3;
  if (v3)
  {
    [(UIWindow *)v3 setWindowLevel:-1.79769313e308];
    v5 = [(UIView *)v4 layer];
    [v5 setHitTestsAsOpaque:1];
  }

  return v4;
}

@end