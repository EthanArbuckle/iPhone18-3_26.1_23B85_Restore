@interface BlueprintLiveResizingView
- (void)didBeginLiveResizing;
- (void)didEndLiveResizing;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)a3;
@end

@implementation BlueprintLiveResizingView

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D7E4A440(a3);
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1D7E4BCD8();
}

- (void)didBeginLiveResizing
{
  v2 = self;
  sub_1D80CF604();
}

- (void)didEndLiveResizing
{
  v2 = self;
  sub_1D80CF654();
}

@end