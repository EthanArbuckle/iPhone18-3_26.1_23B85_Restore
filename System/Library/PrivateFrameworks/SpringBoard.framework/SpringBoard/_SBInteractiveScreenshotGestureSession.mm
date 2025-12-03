@interface _SBInteractiveScreenshotGestureSession
- (_SBInteractiveScreenshotGestureSession)initWithSessionID:(id)d;
@end

@implementation _SBInteractiveScreenshotGestureSession

- (_SBInteractiveScreenshotGestureSession)initWithSessionID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = _SBInteractiveScreenshotGestureSession;
  v5 = [(_SBInteractiveScreenshotGestureSession *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    sessionID = v5->_sessionID;
    v5->_sessionID = v6;
  }

  return v5;
}

@end