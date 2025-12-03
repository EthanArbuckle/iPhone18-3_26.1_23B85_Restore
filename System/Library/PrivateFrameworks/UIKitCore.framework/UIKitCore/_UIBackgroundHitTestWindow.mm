@interface _UIBackgroundHitTestWindow
- (_UIBackgroundHitTestWindow)initWithWindowScene:(id)scene;
@end

@implementation _UIBackgroundHitTestWindow

- (_UIBackgroundHitTestWindow)initWithWindowScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = _UIBackgroundHitTestWindow;
  v3 = [(UIWindow *)&v7 initWithWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    [(UIWindow *)v3 setWindowLevel:-1.79769313e308];
    layer = [(UIView *)v4 layer];
    [layer setHitTestsAsOpaque:1];
  }

  return v4;
}

@end