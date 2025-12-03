@interface DragSurrogate_iOS
- (void)dragRelaySession:(id)session didEndDragWithDrop:(BOOL)drop;
- (void)dragRelaySession:(id)session didUpdateDragPresentation:(id)presentation;
- (void)dragRelaySessionDidBegin:(id)begin;
- (void)dragRelaySessionDidEndDataTransfer:(id)transfer;
- (void)dragRelaySessionDidFail:(id)fail;
@end

@implementation DragSurrogate_iOS

- (void)dragRelaySessionDidBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  sub_27068C850();
}

- (void)dragRelaySession:(id)session didEndDragWithDrop:(BOOL)drop
{
  sessionCopy = session;
  selfCopy = self;
  sub_27068C93C(selfCopy, drop);
}

- (void)dragRelaySessionDidFail:(id)fail
{
  failCopy = fail;
  selfCopy = self;
  sub_27068CE40();
}

- (void)dragRelaySessionDidEndDataTransfer:(id)transfer
{
  transferCopy = transfer;
  selfCopy = self;
  sub_27068D04C();
}

- (void)dragRelaySession:(id)session didUpdateDragPresentation:(id)presentation
{
  sessionCopy = session;
  presentationCopy = presentation;
  selfCopy = self;
  sub_27068D164(selfCopy, presentationCopy);
}

@end