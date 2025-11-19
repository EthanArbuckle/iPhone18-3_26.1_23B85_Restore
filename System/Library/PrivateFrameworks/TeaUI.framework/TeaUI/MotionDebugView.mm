@interface MotionDebugView
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
@end

@implementation MotionDebugView

- (void)didMoveToWindow
{
  v2 = self;
  MotionDebugView.didMoveToWindow()();
}

- (void)layoutSubviews
{
  v2 = self;
  MotionDebugView.layoutSubviews()();
}

- (void)safeAreaInsetsDidChange
{
  v2 = self;
  MotionDebugView.safeAreaInsetsDidChange()();
}

@end