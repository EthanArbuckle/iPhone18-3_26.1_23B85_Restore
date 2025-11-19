@interface SUICAutoDismissalStrategy
- (SUICAutoDismissalStrategy)initWithIdleTimeout:(double)a3 extendedIdleTimeout:(double)a4 deviceSupportsFaceDetection:(BOOL)a5 deviceSupportsRaiseGestureDetection:(BOOL)a6;
- (SUICAutoDismissalStrategyDelegate)delegate;
- (void)_notifyDelegateOfAutoDismissalDecisionChangeIfNeededPermanent:(BOOL)a3;
- (void)setLatestDeviceMotionEvent:(int64_t)a3;
- (void)setLatestFaceAwarenessEvent:(int64_t)a3;
- (void)setUserInteractedWithTouchIDSensor:(BOOL)a3;
- (void)setUserInteractedWithTouchScreen:(BOOL)a3;
- (void)setVideoPlaying:(BOOL)a3;
- (void)setViewRequiringExtendedTimeoutVisible:(BOOL)a3;
@end

@implementation SUICAutoDismissalStrategy

- (SUICAutoDismissalStrategy)initWithIdleTimeout:(double)a3 extendedIdleTimeout:(double)a4 deviceSupportsFaceDetection:(BOOL)a5 deviceSupportsRaiseGestureDetection:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = SUICAutoDismissalStrategy;
  result = [(SUICAutoDismissalStrategy *)&v11 init];
  if (result)
  {
    result->_idleTimeout = a3;
    result->_extendedIdleTimeout = a4;
    result->_deviceSupportsFaceDetection = a5;
    result->_deviceSupportsRaiseGestureDetection = a6;
    *&result->_userInteractedWithTouchScreen = 0;
    result->_viewRequiringExtendedTimeoutVisible = 0;
    result->_allowsDismissalWithFaceAttention = 0;
    result->_latestFaceAwarenessEvent = 1;
    result->_latestDeviceMotionEvent = 0;
    result->_autoDismissalReason = 0;
  }

  return result;
}

- (void)setUserInteractedWithTouchScreen:(BOOL)a3
{
  if (self->_userInteractedWithTouchScreen != a3)
  {
    self->_userInteractedWithTouchScreen = a3;
    [(SUICAutoDismissalStrategy *)self _notifyDelegateOfAutoDismissalDecisionChangeIfNeededPermanent:0];
  }
}

- (void)setUserInteractedWithTouchIDSensor:(BOOL)a3
{
  if (self->_userInteractedWithTouchIDSensor != a3)
  {
    self->_userInteractedWithTouchIDSensor = a3;
    [(SUICAutoDismissalStrategy *)self _notifyDelegateOfAutoDismissalDecisionChangeIfNeededPermanent:0];
  }
}

- (void)setLatestFaceAwarenessEvent:(int64_t)a3
{
  if (self->_latestFaceAwarenessEvent != a3)
  {
    self->_latestFaceAwarenessEvent = a3;
    [(SUICAutoDismissalStrategy *)self _notifyDelegateOfAutoDismissalDecisionChangeIfNeeded];
  }
}

- (void)setLatestDeviceMotionEvent:(int64_t)a3
{
  if (self->_latestDeviceMotionEvent != a3)
  {
    self->_latestDeviceMotionEvent = a3;
    [(SUICAutoDismissalStrategy *)self _notifyDelegateOfAutoDismissalDecisionChangeIfNeeded];
  }
}

- (void)setVideoPlaying:(BOOL)a3
{
  if (self->_videoPlaying != a3)
  {
    self->_videoPlaying = a3;
    [(SUICAutoDismissalStrategy *)self _notifyDelegateOfAutoDismissalDecisionChangeIfNeeded];
  }
}

- (void)setViewRequiringExtendedTimeoutVisible:(BOOL)a3
{
  if (self->_viewRequiringExtendedTimeoutVisible != a3)
  {
    self->_viewRequiringExtendedTimeoutVisible = a3;
    if (a3)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      self->_viewRequiringExtendedTimeoutStartTime = v4;

      [(SUICAutoDismissalStrategy *)self _notifyDelegateOfAutoDismissalDecisionChangeIfNeeded];
    }
  }
}

- (void)_notifyDelegateOfAutoDismissalDecisionChangeIfNeededPermanent:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUICAutoDismissalStrategy *)self shouldDismiss];
  lastShouldDismissValue = self->_lastShouldDismissValue;
  if (!lastShouldDismissValue || v5 != [(NSNumber *)lastShouldDismissValue BOOLValue])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v8 = self->_lastShouldDismissValue;
    self->_lastShouldDismissValue = v7;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained autoDismissalStrategyDidChangeAutoDismissalDecision:self dismissalReason:-[SUICAutoDismissalStrategy autoDismissalReason](self permanent:{"autoDismissalReason"), v3}];
  }
}

- (SUICAutoDismissalStrategyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end