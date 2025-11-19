@interface ICUserNotificationContext
- (void)clearRunLoop;
@end

@implementation ICUserNotificationContext

- (void)clearRunLoop
{
  runLoopSourceRef = self->_runLoopSourceRef;
  if (runLoopSourceRef)
  {
    CFRelease(runLoopSourceRef);
    self->_runLoopSourceRef = 0;
  }
}

@end