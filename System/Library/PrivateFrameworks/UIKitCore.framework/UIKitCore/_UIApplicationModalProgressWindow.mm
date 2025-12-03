@interface _UIApplicationModalProgressWindow
- (_UIApplicationModalProgressWindow)initWithFrame:(CGRect)frame;
@end

@implementation _UIApplicationModalProgressWindow

- (_UIApplicationModalProgressWindow)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIApplicationModalProgressWindow;
  v3 = [(UIWindow *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIWindow *)v3 setWindowLevel:2000.0];
  v4 = +[UIColor clearColor];
  [(UIView *)v3 setBackgroundColor:v4];

  [(UIWindow *)v3 _setWindowControlsStatusBarOrientation:0];
  return v3;
}

@end