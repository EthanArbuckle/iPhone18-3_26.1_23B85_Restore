@interface SUICHandsOffAutoDismissalStrategy
- (BOOL)shouldDismiss;
- (double)idleTimeInterval;
@end

@implementation SUICHandsOffAutoDismissalStrategy

- (double)idleTimeInterval
{
  [(SUICAutoDismissalStrategy *)self minimumIdleTimeInterval];
  v4 = v3;
  if ([(SUICAutoDismissalStrategy *)self isViewRequiringExtendedTimeoutVisible])
  {
    [(SUICAutoDismissalStrategy *)self extendedIdleTimeout];
  }

  else
  {
    [(SUICAutoDismissalStrategy *)self idleTimeout];
  }

  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

- (BOOL)shouldDismiss
{
  if ([(SUICAutoDismissalStrategy *)self isVideoPlaying]|| [(SUICAutoDismissalStrategy *)self userInteractedWithTouchScreen]|| [(SUICAutoDismissalStrategy *)self userInteractedWithTouchIDSensor]|| ![(SUICAutoDismissalStrategy *)self deviceSupportsFaceDetection]&& [(SUICAutoDismissalStrategy *)self deviceSupportsRaiseGestureDetection]&& [(SUICAutoDismissalStrategy *)self latestDeviceMotionEvent]== 1 || [(SUICAutoDismissalStrategy *)self deviceSupportsFaceDetection]&& [(SUICAutoDismissalStrategy *)self latestFaceAwarenessEvent]== 1 && ![(SUICAutoDismissalStrategy *)self allowsDismissalWithFaceAttention])
  {
    v3 = 0;
    v4 = 0;
  }

  else if ([(SUICAutoDismissalStrategy *)self isViewRequiringExtendedTimeoutVisible])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v7 = v6;
    [(SUICAutoDismissalStrategy *)self viewRequiringExtendedTimeoutStartTime];
    v9 = v7 - v8;
    [(SUICAutoDismissalStrategy *)self extendedIdleTimeout];
    v4 = v9 > v10;
    v3 = 4 * (v9 > v10);
  }

  else
  {
    v4 = 1;
    v3 = 3;
  }

  [(SUICAutoDismissalStrategy *)self setAutoDismissalReason:v3];
  return v4;
}

@end