@interface TVRStandardTouchProcessor
- (void)_tap:(id)_tap;
- (void)_touchpadClickVirtualizerTimerFired:(id)fired;
- (void)setTouchpadView:(id)view;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation TVRStandardTouchProcessor

- (void)setTouchpadView:(id)view
{
  viewCopy = view;
  touchpadView = [(TVRTouchProcessor *)self touchpadView];
  [touchpadView removeGestureRecognizer:self->_tapGestureRecognizer];

  v9.receiver = self;
  v9.super_class = TVRStandardTouchProcessor;
  [(TVRTouchProcessor *)&v9 setTouchpadView:viewCopy];
  if (viewCopy)
  {
    tapGestureRecognizer = self->_tapGestureRecognizer;
    if (!tapGestureRecognizer)
    {
      v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tap_];
      v8 = self->_tapGestureRecognizer;
      self->_tapGestureRecognizer = v7;

      [(UITapGestureRecognizer *)self->_tapGestureRecognizer setCancelsTouchesInView:0];
      [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelaysTouchesBegan:0];
      [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelaysTouchesEnded:0];
      tapGestureRecognizer = self->_tapGestureRecognizer;
    }

    [viewCopy addGestureRecognizer:tapGestureRecognizer];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  clickVirtualizerTimer = self->_clickVirtualizerTimer;
  eventCopy = event;
  beganCopy = began;
  [(NSTimer *)clickVirtualizerTimer invalidate];
  anyObject = [beganCopy anyObject];
  self->_clickVirtualizerState = 1;
  touchpadView = [(TVRTouchProcessor *)self touchpadView];
  [anyObject preciseLocationInView:touchpadView];
  self->_touchBeganLocation.x = v11;
  self->_touchBeganLocation.y = v12;

  v13 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__touchpadClickVirtualizerTimerFired_ selector:0 userInfo:0 repeats:0.25];
  v14 = self->_clickVirtualizerTimer;
  self->_clickVirtualizerTimer = v13;

  v15.receiver = self;
  v15.super_class = TVRStandardTouchProcessor;
  [(TVRTouchProcessor *)&v15 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  anyObject = [movedCopy anyObject];
  touchpadView = [(TVRTouchProcessor *)self touchpadView];
  [anyObject preciseLocationInView:touchpadView];
  v12 = hypot(v10 - self->_touchBeganLocation.x, v11 - self->_touchBeganLocation.y);
  if (_TVRCGetTouchToSelectTravelDistance_onceToken != -1)
  {
    [TVRStandardTouchProcessor touchesMoved:withEvent:];
  }

  if ((__hasCachedTouchToSelectTravelDistance & 1) == 0)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [standardUserDefaults objectForKey:@"TouchToSelectTravelDistance"];

    if (v14)
    {
      [v14 doubleValue];
    }

    else
    {
      v15 = 10.0;
    }

    __cachedTouchToSelectTravelDistance = *&v15;
    __hasCachedTouchToSelectTravelDistance = 1;
  }

  if (self->_clickVirtualizerState == 1 && v12 > *&__cachedTouchToSelectTravelDistance)
  {
    self->_clickVirtualizerState = 0;
  }

  v17.receiver = self;
  v17.super_class = TVRStandardTouchProcessor;
  [(TVRTouchProcessor *)&v17 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  [(NSTimer *)self->_clickVirtualizerTimer invalidate];
  anyObject = [endedCopy anyObject];
  touchpadView = [(TVRTouchProcessor *)self touchpadView];
  [anyObject preciseLocationInView:touchpadView];
  v12 = hypot(v10 - self->_touchBeganLocation.x, v11 - self->_touchBeganLocation.y);
  if (_TVRCGetTouchToSelectTravelDistance_onceToken != -1)
  {
    [TVRStandardTouchProcessor touchesMoved:withEvent:];
  }

  if ((__hasCachedTouchToSelectTravelDistance & 1) == 0)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [standardUserDefaults objectForKey:@"TouchToSelectTravelDistance"];

    if (v14)
    {
      [v14 doubleValue];
    }

    else
    {
      v15 = 10.0;
    }

    __cachedTouchToSelectTravelDistance = *&v15;
    __hasCachedTouchToSelectTravelDistance = 1;
  }

  clickVirtualizerState = self->_clickVirtualizerState;
  if (clickVirtualizerState == 1)
  {
    if (v12 <= *&__cachedTouchToSelectTravelDistance)
    {
      self->_clickVirtualizerState = 0;
      [(TVRTouchProcessor *)self sendPressBegan:1];
      goto LABEL_13;
    }
  }

  else if (clickVirtualizerState == 2)
  {
    self->_clickVirtualizerState = 0;
LABEL_13:
    [(TVRTouchProcessor *)self sendPressEnded:1];
  }

  v17.receiver = self;
  v17.super_class = TVRStandardTouchProcessor;
  [(TVRTouchProcessor *)&v17 touchesEnded:endedCopy withEvent:eventCopy];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  clickVirtualizerTimer = self->_clickVirtualizerTimer;
  eventCopy = event;
  cancelledCopy = cancelled;
  [(NSTimer *)clickVirtualizerTimer invalidate];
  v9.receiver = self;
  v9.super_class = TVRStandardTouchProcessor;
  [(TVRTouchProcessor *)&v9 touchesCancelled:cancelledCopy withEvent:eventCopy];
}

- (void)_touchpadClickVirtualizerTimerFired:(id)fired
{
  if (self->_clickVirtualizerState == 1)
  {
    self->_clickVirtualizerState = 2;
    [(TVRTouchProcessor *)self sendPressBegan:1];
  }
}

- (void)_tap:(id)_tap
{
  if ([_tap state] == 3)
  {

    [(TVRTouchProcessor *)self markCurrentTouchToBeCancelled];
  }
}

@end