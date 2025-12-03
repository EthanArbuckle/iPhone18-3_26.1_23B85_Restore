@interface BlueprintLiveResizingView
- (void)didBeginLiveResizing;
- (void)didEndLiveResizing;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)window;
@end

@implementation BlueprintLiveResizingView

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_1D7E4A440(window);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1D7E4BCD8();
}

- (void)didBeginLiveResizing
{
  selfCopy = self;
  sub_1D80CF604();
}

- (void)didEndLiveResizing
{
  selfCopy = self;
  sub_1D80CF654();
}

@end