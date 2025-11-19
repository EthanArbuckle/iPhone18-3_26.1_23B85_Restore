@interface _SBInteractiveScreenshotGestureSession
- (_SBInteractiveScreenshotGestureSession)initWithSessionID:(id)a3;
@end

@implementation _SBInteractiveScreenshotGestureSession

- (_SBInteractiveScreenshotGestureSession)initWithSessionID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SBInteractiveScreenshotGestureSession;
  v5 = [(_SBInteractiveScreenshotGestureSession *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sessionID = v5->_sessionID;
    v5->_sessionID = v6;
  }

  return v5;
}

@end