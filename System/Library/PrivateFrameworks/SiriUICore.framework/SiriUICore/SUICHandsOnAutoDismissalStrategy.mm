@interface SUICHandsOnAutoDismissalStrategy
- (BOOL)shouldDismiss;
- (double)idleTimeInterval;
- (id)_mapsNavigationStatusIsActiveBlock;
- (void)_setMapsNavigationStatusIsActiveBlock:(id)block;
@end

@implementation SUICHandsOnAutoDismissalStrategy

- (double)idleTimeInterval
{
  [(SUICAutoDismissalStrategy *)self minimumIdleTimeInterval];
  v4 = v3;
  [(SUICAutoDismissalStrategy *)self idleTimeout];
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
    LOBYTE(v3) = 0;
    v4 = 0;
  }

  else
  {
    _mapsNavigationStatusIsActiveBlock = [(SUICHandsOnAutoDismissalStrategy *)self _mapsNavigationStatusIsActiveBlock];
    v3 = _mapsNavigationStatusIsActiveBlock[2]();

    v4 = v3;
  }

  [(SUICAutoDismissalStrategy *)self setAutoDismissalReason:v4];
  return v3;
}

- (id)_mapsNavigationStatusIsActiveBlock
{
  mapsNavigationStatusIsActiveBlock = self->_mapsNavigationStatusIsActiveBlock;
  if (!mapsNavigationStatusIsActiveBlock)
  {
    self->_mapsNavigationStatusIsActiveBlock = &__block_literal_global_3;

    mapsNavigationStatusIsActiveBlock = self->_mapsNavigationStatusIsActiveBlock;
  }

  v4 = MEMORY[0x1C6937B00](mapsNavigationStatusIsActiveBlock, a2);

  return v4;
}

- (void)_setMapsNavigationStatusIsActiveBlock:(id)block
{
  self->_mapsNavigationStatusIsActiveBlock = MEMORY[0x1C6937B00](block, a2);

  MEMORY[0x1EEE66BB8]();
}

@end