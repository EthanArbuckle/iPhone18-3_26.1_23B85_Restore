@interface UIDragMonitorSessionLifecyleListener
@end

@implementation UIDragMonitorSessionLifecyleListener

void __82___UIDragMonitorSessionLifecyleListener_dragDidBeginWithSession_identifier_reply___block_invoke(uint64_t a1)
{
  v4 = [[_UIDragMonitorSession alloc] initWithSessionIdentifier:*(a1 + 56) remoteControlProxy:*(a1 + 32)];
  v2 = [*(a1 + 40) delegate];
  v3 = [*(a1 + 40) dragMonitor];
  [v2 dragMonitor:v3 didBeginDragSession:v4];

  if ([(_UIDragMonitorSession *)v4 shouldHideLocalDragDisplay])
  {
    [*(a1 + 32) disableDragDisplay];
  }

  (*(*(a1 + 48) + 16))();
  [(_UIDragMonitorSession *)v4 connect];
}

void __74___UIDragMonitorSessionLifecyleListener_dragDidEndWithSession_identifier___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) dragMonitor];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
  [v4 dragMonitor:v2 didEndDragSessionWithIdentifier:v3];
}

@end