@interface _UIBannerWindow
- (_UIBannerWindow)init;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _UIBannerWindow

- (_UIBannerWindow)init
{
  v5.receiver = self;
  v5.super_class = _UIBannerWindow;
  v2 = [(UIWindow *)&v5 init];
  [(UIView *)v2 setOpaque:0];
  [(UIWindow *)v2 setWindowLevel:1000.0];
  v3 = objc_alloc_init(UIViewController);
  [(UIWindow *)v2 setRootViewController:v3];

  [(UIView *)v2 setBackgroundColor:0];
  return v2;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = _UIBannerWindow;
  v5 = [(UIView *)&v10 hitTest:event withEvent:test.x, test.y];
  if (v5 == self || (-[UIWindow rootViewController](self, "rootViewController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 view], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5 == v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

@end