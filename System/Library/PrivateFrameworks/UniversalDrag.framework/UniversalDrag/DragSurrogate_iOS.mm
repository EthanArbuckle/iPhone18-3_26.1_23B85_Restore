@interface DragSurrogate_iOS
- (void)dragRelaySession:(id)a3 didEndDragWithDrop:(BOOL)a4;
- (void)dragRelaySession:(id)a3 didUpdateDragPresentation:(id)a4;
- (void)dragRelaySessionDidBegin:(id)a3;
- (void)dragRelaySessionDidEndDataTransfer:(id)a3;
- (void)dragRelaySessionDidFail:(id)a3;
@end

@implementation DragSurrogate_iOS

- (void)dragRelaySessionDidBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27068C850();
}

- (void)dragRelaySession:(id)a3 didEndDragWithDrop:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_27068C93C(v7, a4);
}

- (void)dragRelaySessionDidFail:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27068CE40();
}

- (void)dragRelaySessionDidEndDataTransfer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27068D04C();
}

- (void)dragRelaySession:(id)a3 didUpdateDragPresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_27068D164(v8, v7);
}

@end