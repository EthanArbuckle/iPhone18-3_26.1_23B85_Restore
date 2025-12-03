@interface SUICAutoDismissalStrategy
- (SUICAutoDismissalStrategy)initWithIdleTimeout:(double)timeout extendedIdleTimeout:(double)idleTimeout deviceSupportsFaceDetection:(BOOL)detection deviceSupportsRaiseGestureDetection:(BOOL)gestureDetection;
- (SUICAutoDismissalStrategyDelegate)delegate;
- (void)_notifyDelegateOfAutoDismissalDecisionChangeIfNeededPermanent:(BOOL)permanent;
- (void)setLatestDeviceMotionEvent:(int64_t)event;
- (void)setLatestFaceAwarenessEvent:(int64_t)event;
- (void)setUserInteractedWithTouchIDSensor:(BOOL)sensor;
- (void)setUserInteractedWithTouchScreen:(BOOL)screen;
- (void)setVideoPlaying:(BOOL)playing;
- (void)setViewRequiringExtendedTimeoutVisible:(BOOL)visible;
@end

@implementation SUICAutoDismissalStrategy

- (SUICAutoDismissalStrategy)initWithIdleTimeout:(double)timeout extendedIdleTimeout:(double)idleTimeout deviceSupportsFaceDetection:(BOOL)detection deviceSupportsRaiseGestureDetection:(BOOL)gestureDetection
{
  v11.receiver = self;
  v11.super_class = SUICAutoDismissalStrategy;
  result = [(SUICAutoDismissalStrategy *)&v11 init];
  if (result)
  {
    result->_idleTimeout = timeout;
    result->_extendedIdleTimeout = idleTimeout;
    result->_deviceSupportsFaceDetection = detection;
    result->_deviceSupportsRaiseGestureDetection = gestureDetection;
    *&result->_userInteractedWithTouchScreen = 0;
    result->_viewRequiringExtendedTimeoutVisible = 0;
    result->_allowsDismissalWithFaceAttention = 0;
    result->_latestFaceAwarenessEvent = 1;
    result->_latestDeviceMotionEvent = 0;
    result->_autoDismissalReason = 0;
  }

  return result;
}

- (void)setUserInteractedWithTouchScreen:(BOOL)screen
{
  if (self->_userInteractedWithTouchScreen != screen)
  {
    self->_userInteractedWithTouchScreen = screen;
    [(SUICAutoDismissalStrategy *)self _notifyDelegateOfAutoDismissalDecisionChangeIfNeededPermanent:0];
  }
}

- (void)setUserInteractedWithTouchIDSensor:(BOOL)sensor
{
  if (self->_userInteractedWithTouchIDSensor != sensor)
  {
    self->_userInteractedWithTouchIDSensor = sensor;
    [(SUICAutoDismissalStrategy *)self _notifyDelegateOfAutoDismissalDecisionChangeIfNeededPermanent:0];
  }
}

- (void)setLatestFaceAwarenessEvent:(int64_t)event
{
  if (self->_latestFaceAwarenessEvent != event)
  {
    self->_latestFaceAwarenessEvent = event;
    [(SUICAutoDismissalStrategy *)self _notifyDelegateOfAutoDismissalDecisionChangeIfNeeded];
  }
}

- (void)setLatestDeviceMotionEvent:(int64_t)event
{
  if (self->_latestDeviceMotionEvent != event)
  {
    self->_latestDeviceMotionEvent = event;
    [(SUICAutoDismissalStrategy *)self _notifyDelegateOfAutoDismissalDecisionChangeIfNeeded];
  }
}

- (void)setVideoPlaying:(BOOL)playing
{
  if (self->_videoPlaying != playing)
  {
    self->_videoPlaying = playing;
    [(SUICAutoDismissalStrategy *)self _notifyDelegateOfAutoDismissalDecisionChangeIfNeeded];
  }
}

- (void)setViewRequiringExtendedTimeoutVisible:(BOOL)visible
{
  if (self->_viewRequiringExtendedTimeoutVisible != visible)
  {
    self->_viewRequiringExtendedTimeoutVisible = visible;
    if (visible)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      self->_viewRequiringExtendedTimeoutStartTime = v4;

      [(SUICAutoDismissalStrategy *)self _notifyDelegateOfAutoDismissalDecisionChangeIfNeeded];
    }
  }
}

- (void)_notifyDelegateOfAutoDismissalDecisionChangeIfNeededPermanent:(BOOL)permanent
{
  permanentCopy = permanent;
  shouldDismiss = [(SUICAutoDismissalStrategy *)self shouldDismiss];
  lastShouldDismissValue = self->_lastShouldDismissValue;
  if (!lastShouldDismissValue || shouldDismiss != [(NSNumber *)lastShouldDismissValue BOOLValue])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:shouldDismiss];
    v8 = self->_lastShouldDismissValue;
    self->_lastShouldDismissValue = v7;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained autoDismissalStrategyDidChangeAutoDismissalDecision:self dismissalReason:-[SUICAutoDismissalStrategy autoDismissalReason](self permanent:{"autoDismissalReason"), permanentCopy}];
  }
}

- (SUICAutoDismissalStrategyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end