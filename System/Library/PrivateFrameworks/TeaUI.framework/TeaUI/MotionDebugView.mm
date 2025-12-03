@interface MotionDebugView
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
@end

@implementation MotionDebugView

- (void)didMoveToWindow
{
  selfCopy = self;
  MotionDebugView.didMoveToWindow()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  MotionDebugView.layoutSubviews()();
}

- (void)safeAreaInsetsDidChange
{
  selfCopy = self;
  MotionDebugView.safeAreaInsetsDidChange()();
}

@end