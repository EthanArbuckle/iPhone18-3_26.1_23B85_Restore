@interface SCRCGestureFactory
- ($59F5B3D3FC56264B602E56EF9D3D8816)captureCurrentState;
- ($59F5B3D3FC56264B602E56EF9D3D8816)handleGestureEvent:(SEL)event;
- (BOOL)_handleSplitEvent:(id)event;
- (BOOL)_handleSplitTap;
- (CGPoint)endLocation;
- (CGPoint)rawAverageLocation;
- (CGPoint)rawLocation;
- (CGPoint)splitTapPrimaryFingerPoint;
- (CGPoint)startLocation;
- (CGPoint)tapPoint;
- (CGPoint)tapPointWeightedToSides;
- (CGRect)_currentTapRect;
- (CGRect)mainFrame;
- (CGRect)multiTapFrame;
- (CGRect)tapFrame;
- (SCRCGestureFactory)initWithSize:(CGSize)size delegate:(id)delegate threadKey:(id)key;
- (double)distance;
- (double)vector;
- (double)velocity;
- (int64_t)direction;
- (int64_t)gestureState;
- (void)_down:(id)_down;
- (void)_drag:(id)_drag;
- (void)_enterTrackingMode:(id)mode;
- (void)_handleTap;
- (void)_processUpAndPost:(BOOL)post;
- (void)_resetSplit;
- (void)_up;
- (void)_updateMultiTapFrame;
- (void)_updateStartWithPoint:(CGPoint)point time:(double)time;
- (void)_updateTapState;
- (void)dealloc;
- (void)reset;
- (void)setFlickSpeed:(double)speed;
- (void)setOrientation:(int64_t)orientation;
- (void)setTapSpeed:(double)speed;
- (void)setTapSpeedTimeThreshold:(double)threshold forRegion:(CGRect)region fingerCount:(int64_t)count;
@end

@implementation SCRCGestureFactory

- (SCRCGestureFactory)initWithSize:(CGSize)size delegate:(id)delegate threadKey:(id)key
{
  height = size.height;
  width = size.width;
  delegateCopy = delegate;
  keyCopy = key;
  v11 = [(SCRCGestureFactory *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_mainFrame.origin.x = 0.0;
    v11->_mainFrame.origin.y = 0.0;
    v11->_mainFrame.size.width = width;
    v11->_mainFrame.size.height = height;
    *&v11->_flickVelocityThreshold = xmmword_2648FE160;
    v11->_echoWaitTime = 0.35;
    v11->_potentialTrackingStartTimestamp = -3061152000.0;
    v11->_split.fingerDownTime = -3061152000.0;
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = width;
    v22.size.height = height;
    v11->_gutterFrame = CGRectInset(v22, 7.5, 7.5);
    [(SCRCGestureFactory *)v12 setOrientation:0];
    v13 = v12->_mainFrame.size.width;
    v14 = v12->_mainFrame.size.height;
    if (v13 <= v14)
    {
      v13 = v12->_mainFrame.size.height;
    }

    v12->_stallDistance = 10.0 / v13;
    v12->_maxDimension = v13;
    v12->_thumbRegion = v14 * 0.333333333;
    v15 = [[SCRCTargetSelectorTimer alloc] initWithTarget:v12 selector:sel__enterTrackingMode_ threadKey:keyCopy];
    trackingTimer = v12->_trackingTimer;
    v12->_trackingTimer = v15;

    if (objc_opt_respondsToSelector())
    {
      objc_storeWeak(&v12->_trackDelegate, delegateCopy);
    }

    if (objc_opt_respondsToSelector())
    {
      objc_storeWeak(&v12->_tapDelegate, delegateCopy);
      v17 = [[SCRCTargetSelectorTimer alloc] initWithTarget:v12 selector:sel__handleTap threadKey:keyCopy];
      tapTimer = v12->_tapTimer;
      v12->_tapTimer = v17;
    }

    if (objc_opt_respondsToSelector())
    {
      objc_storeWeak(&v12->_didBeginSplitGestureDelegate, delegateCopy);
    }

    if (objc_opt_respondsToSelector())
    {
      objc_storeWeak(&v12->_splitTapDelegate, delegateCopy);
      height = [[SCRCGestureFactory alloc] initWithSize:0 delegate:keyCopy threadKey:width, height];
      splitFactory = v12->_splitFactory;
      v12->_splitFactory = height;

      if (objc_opt_respondsToSelector())
      {
        objc_storeWeak(&v12->_canSplitTapDelegate, delegateCopy);
      }
    }
  }

  return v12;
}

- (void)setFlickSpeed:(double)speed
{
  speedCopy = 1.0;
  if (speed <= 1.0)
  {
    speedCopy = speed;
  }

  if (speed >= -1.0)
  {
    v4 = speedCopy;
  }

  else
  {
    v4 = -1.0;
  }

  self->_flickVelocityThreshold = v4 * 0.6 + 0.9;
}

- (void)setTapSpeed:(double)speed
{
  speedCopy = 1.0;
  if (speed <= 1.0)
  {
    speedCopy = speed;
  }

  if (speed >= -1.0)
  {
    v4 = speedCopy;
  }

  else
  {
    v4 = -1.0;
  }

  v5 = v4 * -0.15 + 0.35;
  self->_tapVelocityThreshold = v5;
  self->_echoWaitTime = v5;
}

- (void)setTapSpeedTimeThreshold:(double)threshold forRegion:(CGRect)region fingerCount:(int64_t)count
{
  self->_tapSpeedRegion = region;
  self->_tapSpeedFingerCount = count;
  self->_tapVelocityThresholdForRegion = threshold;
}

- (void)setOrientation:(int64_t)orientation
{
  [(SCRCGestureFactory *)self->_splitFactory setOrientation:?];
  self->_orientation = orientation;
  self->_directions[0] = 0;
  v5 = orientation - 1;
  if ((orientation - 1) > 2)
  {
    v12 = 1.0;
    v11 = 6;
    v10 = 5;
    v9 = 4;
    v8 = 3;
    v7 = 2;
    v13 = 1.0;
    v6 = 1;
  }

  else
  {
    v6 = orientation + 1;
    v7 = qword_2648FE260[v5];
    v8 = qword_2648FE278[v5];
    v9 = qword_2648FE290[v5];
    v10 = qword_2648FE2A8[v5];
    v11 = qword_2648FE2C0[v5];
    v12 = dbl_2648FE2D8[v5];
    v13 = dbl_2648FE2F0[v5];
  }

  self->_directions[1] = v6;
  self->_directions[2] = v7;
  self->_directions[3] = v8;
  self->_directions[4] = v9;
  self->_directions[5] = v10;
  self->_directions[6] = v11;
  self->_axisFlipper.horizontal = v12;
  self->_axisFlipper.vertical = v13;
}

- (void)dealloc
{
  [(SCRCTargetSelectorTimer *)self->_trackingTimer invalidate];
  [(SCRCTargetSelectorTimer *)self->_tapTimer invalidate];
  v3.receiver = self;
  v3.super_class = SCRCGestureFactory;
  [(SCRCGestureFactory *)&v3 dealloc];
}

- (CGRect)mainFrame
{
  x = self->_mainFrame.origin.x;
  y = self->_mainFrame.origin.y;
  width = self->_mainFrame.size.width;
  height = self->_mainFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_currentTapRect
{
  v2 = self->_tap.locationPerTap[0].x + -5.0;
  v3 = self->_tap.locationPerTap[0].y + -5.0;
  v4 = 10.0;
  if (self->_tap.numFingersInCurrentGestureEvent < 2)
  {
    v7 = 10.0;
  }

  else
  {
    p_y = &self->_tap.locationPerTap[1].y;
    v7 = 10.0;
    v8 = 1;
    do
    {
      v10.origin.x = *(p_y - 1) + -5.0;
      v10.origin.y = *p_y + -5.0;
      v10.size.width = 10.0;
      v10.size.height = 10.0;
      *&v2 = CGRectUnion(*&v2, v10);
      ++v8;
      p_y += 2;
    }

    while (v8 < self->_tap.numFingersInCurrentGestureEvent);
  }

  result.size.height = v7;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_updateMultiTapFrame
{
  p_tapMultiFrame = &self->_tapMultiFrame;
  if (self->_tap.dead)
  {
    p_frame = MEMORY[0x277CBF3A0];
LABEL_5:
    size = p_frame->size;
    p_tapMultiFrame->origin = p_frame->origin;
    p_tapMultiFrame->size = size;
    return;
  }

  if (CGRectEqualToRect(self->_tapMultiFrame, *MEMORY[0x277CBF3A0]))
  {
    p_frame = &self->_tap.frame;
    goto LABEL_5;
  }

  self->_tapMultiFrame = CGRectUnion(self->_tapMultiFrame, self->_tap.frame);
}

- (void)_updateTapState
{
  p_pressure = &self->_finger[1].pressure;
  p_tap = &self->_tap;
  if (self->_tap.dead)
  {
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    self->_tapMultiFrame.origin = *MEMORY[0x277CBF3A0];
    self->_tapMultiFrame.size = v5;
    *&p_tap->isFingerCurrentlyDown = 0u;
    *&self->_tap.totalNumFingersInGesture = 0u;
    self->_tap.frame.origin = 0u;
    self->_tap.frame.size = 0u;
    self->_tap.location[0] = 0u;
    self->_tap.location[1] = 0u;
    self->_tap.location[2] = 0u;
    self->_tap.location[3] = 0u;
    self->_tap.location[4] = 0u;
    self->_tap.location[5] = 0u;
    self->_tap.location[6] = 0u;
    self->_tap.location[7] = 0u;
    self->_tap.locationPerTap[0] = 0u;
    self->_tap.locationPerTap[1] = 0u;
    self->_tap.locationPerTap[2] = 0u;
    self->_tap.locationPerTap[3] = 0u;
    self->_tap.locationPerTap[4] = 0u;
    self->_tap.locationPerTap[5] = 0u;
    self->_tap.locationPerTap[6] = 0u;
    self->_tap.locationPerTap[7] = 0u;
    *&self->_tap.thisTime = 0u;
  }

  else
  {
    p_tap->isFingerCurrentlyDown = 0;
    if (self->_tap.numFingersInCurrentGestureEvent)
    {
      [(SCRCGestureFactory *)self _currentTapRect];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      if (CGRectIsEmpty(self->_tap.frame))
      {
        self->_tap.frame.origin.x = v7;
        self->_tap.frame.origin.y = v9;
        self->_tap.frame.size.width = v11;
        self->_tap.frame.size.height = v13;
      }

      else
      {
        v15.origin.x = v7;
        v15.origin.y = v9;
        v15.size.width = v11;
        v15.size.height = v13;
        if (CGRectIntersectsRect(self->_tap.frame, v15) || self->_tap.thisTime - self->_tap.lastTime <= 0.05)
        {
          v16.origin.x = v7;
          v16.origin.y = v9;
          v16.size.width = v11;
          v16.size.height = v13;
          self->_tap.frame = CGRectUnion(self->_tap.frame, v16);
        }

        else
        {
          *(p_pressure + 177) = 1;
        }
      }

      [(SCRCGestureFactory *)self _updateMultiTapFrame];
    }
  }
}

- (void)_handleTap
{
  p_tap = &self->_tap;
  if (!self->_tap.dead)
  {
    totalNumFingersInGesture = self->_tap.totalNumFingersInGesture;
    if (totalNumFingersInGesture)
    {
      if (totalNumFingersInGesture != 1 || !self->_tap.gutterHasBeenTouched)
      {
        if (totalNumFingersInGesture == 1 && p_tap->isFingerCurrentlyDown)
        {
          count = self->_tap.count;
          if (count == 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          count = self->_tap.count;
          if (totalNumFingersInGesture == 2 && count == 1)
          {
            if (self->_split.isTapping)
            {
              goto LABEL_18;
            }

            count = 1;
          }
        }

        self->_state = 7;
        self->_fingerCount = totalNumFingersInGesture;
        self->_tapCount = count;
        x = self->_tap.location[0].x;
        v7 = 1.0;
        y = self->_tap.location[0].y;
        if (totalNumFingersInGesture == 1)
        {
          v9 = 1.0;
        }

        else
        {
          p_y = &self->_tap.location[1].y;
          v9 = 1.0;
          v11 = 1;
          do
          {
            v15.origin.x = *(p_y - 1);
            v15.origin.y = *p_y;
            v15.size.width = 1.0;
            v15.size.height = 1.0;
            *&x = CGRectUnion(*&x, v15);
            ++v11;
            p_y += 2;
          }

          while (v11 < self->_tap.totalNumFingersInGesture);
        }

        self->_tapFrame.origin.x = x;
        self->_tapFrame.origin.y = y;
        self->_tapFrame.size.width = v7;
        self->_tapFrame.size.height = v9;
        size = self->_tapFrame.size;
        self->_tap.frame.origin = self->_tapFrame.origin;
        self->_tap.frame.size = size;
        [(SCRCGestureFactory *)self _updateMultiTapFrame];
        WeakRetained = objc_loadWeakRetained(&self->_tapDelegate);
        [WeakRetained gestureTappingCallbackWithFactory:self];

        [(SCRCGestureFactory *)self _resetSplit];
        [(SCRCGestureFactory *)self reset];
      }
    }
  }

LABEL_18:
  p_tap->locationPerTap[7] = 0u;
  *&p_tap->thisTime = 0u;
  p_tap->locationPerTap[5] = 0u;
  p_tap->locationPerTap[6] = 0u;
  p_tap->locationPerTap[3] = 0u;
  p_tap->locationPerTap[4] = 0u;
  p_tap->locationPerTap[1] = 0u;
  p_tap->locationPerTap[2] = 0u;
  p_tap->location[7] = 0u;
  p_tap->locationPerTap[0] = 0u;
  p_tap->location[5] = 0u;
  p_tap->location[6] = 0u;
  p_tap->location[3] = 0u;
  p_tap->location[4] = 0u;
  p_tap->location[1] = 0u;
  p_tap->location[2] = 0u;
  p_tap->frame.size = 0u;
  p_tap->location[0] = 0u;
  *&p_tap->totalNumFingersInGesture = 0u;
  p_tap->frame.origin = 0u;
  *&p_tap->isFingerCurrentlyDown = 0u;
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  self->_tapMultiFrame.origin = *MEMORY[0x277CBF3A0];
  self->_tapMultiFrame.size = v14;
}

- (void)_enterTrackingMode:(id)mode
{
  modeCopy = mode;
  self->_tap.dead = 1;
  if ((self->_state | 2) == 3 || [modeCopy BOOLValue])
  {
    self->_state = 2;
    WeakRetained = objc_loadWeakRetained(&self->_trackDelegate);
    [WeakRetained gestureTrackingCallbackWithFactory:self];
  }
}

- (void)_processUpAndPost:(BOOL)post
{
  lastFingerCount = self->_lastFingerCount;
  self->_tap.numFingersInCurrentGestureEvent = 0;
  self->_potentialTrackingStartTimestamp = -3061152000.0;
  if (lastFingerCount)
  {
    postCopy = post;
    self->_tap.lastTime = self->_tap.thisTime;
    self->_lastFingerCount = 0;
    [(SCRCGestureFactory *)self _up];
    if (postCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_gutterUpDelegate);
      [WeakRetained gestureGutterUpCallbackWithFactory:self];
    }
  }

  [(SCRCGestureFactory *)self _updateTapState];
  if (self->_inTapSpeedRegionForDownEvent && self->_tapVelocityThresholdForRegion == 0.0 && self->_tapSpeedFingerCount >= lastFingerCount)
  {
    [(SCRCGestureFactory *)self _handleTap];
  }

  self->_inTapSpeedRegionForDownEvent = 0;
}

- (void)_updateStartWithPoint:(CGPoint)point time:(double)time
{
  if (self->_finger[0].dragStalled)
  {
    self->_lastDownTime = time;
  }

  if (self->_finger[0].distancePerSample.current >= self->_stallDistance || time - self->_lastDownTime <= 0.2)
  {
    v4 = 0;
  }

  else
  {
    self->_finger[0].distancePerSample.current = 0.0;
    *&self->_finger[0].distancePerSample.fifo[49] = 0u;
    *&self->_finger[0].distancePerSample.sum = 0u;
    *&self->_finger[0].distancePerSample.fifo[45] = 0u;
    *&self->_finger[0].distancePerSample.fifo[47] = 0u;
    *&self->_finger[0].distancePerSample.fifo[41] = 0u;
    *&self->_finger[0].distancePerSample.fifo[43] = 0u;
    *&self->_finger[0].distancePerSample.fifo[37] = 0u;
    *&self->_finger[0].distancePerSample.fifo[39] = 0u;
    *&self->_finger[0].distancePerSample.fifo[33] = 0u;
    *&self->_finger[0].distancePerSample.fifo[35] = 0u;
    *&self->_finger[0].distancePerSample.fifo[29] = 0u;
    *&self->_finger[0].distancePerSample.fifo[31] = 0u;
    *&self->_finger[0].distancePerSample.fifo[25] = 0u;
    *&self->_finger[0].distancePerSample.fifo[27] = 0u;
    *&self->_finger[0].distancePerSample.fifo[21] = 0u;
    *&self->_finger[0].distancePerSample.fifo[23] = 0u;
    *&self->_finger[0].distancePerSample.fifo[17] = 0u;
    *&self->_finger[0].distancePerSample.fifo[19] = 0u;
    *&self->_finger[0].distancePerSample.fifo[13] = 0u;
    *&self->_finger[0].distancePerSample.fifo[15] = 0u;
    *&self->_finger[0].distancePerSample.fifo[9] = 0u;
    *&self->_finger[0].distancePerSample.fifo[11] = 0u;
    *&self->_finger[0].distancePerSample.fifo[5] = 0u;
    *&self->_finger[0].distancePerSample.fifo[7] = 0u;
    *&self->_finger[0].distancePerSample.fifo[1] = 0u;
    *&self->_finger[0].distancePerSample.fifo[3] = 0u;
    *&self->_finger[0].distancePerSample.samples = 0u;
    self->_finger[0].normalizedVelocityPerSample.current = 0.0;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[49] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.sum = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[45] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[47] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[41] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[43] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[37] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[39] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[33] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[35] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[29] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[31] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[25] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[27] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[21] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[23] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[17] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[19] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[13] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[15] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[9] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[11] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[5] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[7] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[1] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.fifo[3] = 0u;
    *&self->_finger[0].normalizedVelocityPerSample.samples = 0u;
    self->_finger[0].lastDownPoint = point;
    self->_finger[0].startTouchPoint = point;
    self->_lastDownTime = time;
    v4 = 1;
    self->_finger[0].distanceTraveledWithInertiaApplied = 0.0;
  }

  self->_finger[0].dragStalled = v4;
}

- (BOOL)_handleSplitTap
{
  if (self->_split.isTapping && self->_state <= 2 && SCRCMathGetDistanceBetweenPoints(self->_split.startTapLocation.x, self->_split.startTapLocation.y, self->_split.lastTapLocation.x, self->_split.lastTapLocation.y) * self->_maxDimension < 5.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_splitTapDelegate);
    [WeakRetained gestureSplitTappingCallbackWithFactory:self];

    result = 1;
  }

  else
  {
    result = 0;
  }

  self->_split.isTapping = 0;
  v5 = *MEMORY[0x277CBF348];
  self->_split.lastTapLocation = *MEMORY[0x277CBF348];
  self->_split.startTapLocation = v5;
  return result;
}

- (BOOL)_handleSplitEvent:(id)event
{
  eventCopy = event;
  fingerCount = [eventCopy fingerCount];
  if (fingerCount)
  {
    v6 = fingerCount;
    if (self->_split.isSplitting)
    {
      v7 = [eventCopy fingerWithIdentifier:self->_split.fingerIdentifier];

      if (v7)
      {
        v8 = [eventCopy fingerWithIdentifier:self->_split.fingerIdentifier];
        [v8 location];
        v10 = v9;
        v12 = v11;

        [eventCopy removeFingerWithIdentifier:self->_split.fingerIdentifier];
        [(SCRCGestureFactory *)self->_splitFactory handleGestureEvent:eventCopy];
        gestureState = [(SCRCGestureFactory *)self->_splitFactory gestureState];
        if (gestureState > 7)
        {
          if (gestureState > 10)
          {
            if (gestureState == 11)
            {
              v14 = 1;
              v15 = 18;
              goto LABEL_67;
            }

            if (gestureState == 12)
            {
              v14 = 1;
              v15 = 19;
              goto LABEL_67;
            }
          }

          else
          {
            if (gestureState == 8)
            {
              v14 = 1;
              v15 = 21;
              goto LABEL_67;
            }

            if (gestureState == 10)
            {
              v14 = 1;
              v15 = 17;
              goto LABEL_67;
            }
          }
        }

        else if (gestureState > 4)
        {
          if (gestureState == 5)
          {
            v14 = 1;
            v15 = 15;
            goto LABEL_67;
          }

          if (gestureState == 6)
          {
            v14 = 1;
            v15 = 16;
            goto LABEL_67;
          }
        }

        else
        {
          if (gestureState == 3)
          {
            v14 = 1;
            v15 = 20;
            goto LABEL_67;
          }

          if (gestureState == 4)
          {
            v14 = 1;
            v15 = 14;
            goto LABEL_67;
          }
        }

        v14 = 0;
        v15 = 13;
LABEL_67:
        self->_split.state = v15;
        if (v6 == 2)
        {
          if (!self->_splitFlickEnabled)
          {
            if (((v14 | self->_split.isTapping) & 1) == 0)
            {
              self->_split.isTapping = 1;
            }

            goto LABEL_78;
          }
        }

        else if (!self->_splitFlickEnabled)
        {
          v37 = 2;
          goto LABEL_74;
        }

        v37 = 1;
LABEL_74:
        if (v6 > v37)
        {
          self->_split.isTapping = 0;
          self->_split.primaryFingerLocation.x = v10;
          self->_split.primaryFingerLocation.y = v12;
          goto LABEL_76;
        }

        if (v6 != 1)
        {
          goto LABEL_78;
        }

        if (self->_split.isTapping)
        {
          v39 = [eventCopy fingerWithoutIdentifier:self->_split.fingerIdentifier];
          [v39 location];
          self->_split.startTapLocation.x = v40;
          self->_split.startTapLocation.y = v41;
          self->_split.lastTapLocation = self->_split.startTapLocation;

          [(SCRCGestureFactory *)self _handleSplitTap];
        }

        else if (SCRCMathGetDistanceBetweenPoints(self->_split.primaryFingerLocation.x, self->_split.primaryFingerLocation.y, v10, v12) * self->_maxDimension > 5.0)
        {
          self->_split.primaryFingerLocation.x = v10;
          self->_split.primaryFingerLocation.y = v12;
          self->_split.isSplitting = 0;
          *&self->_split.tapDead = 0;
          isSplitting = 1;
          goto LABEL_79;
        }

LABEL_57:
        *&self->_split.tapDead = 0;
        goto LABEL_78;
      }

      *&self->_split.isSplitting = 0;
      self->_split.fingerIdentifier = 0;
      self->_state = 1;
      [(SCRCGestureFactory *)self _resetSplit];
      [(SCRCGestureFactory *)self->_splitFactory reset];
LABEL_56:
      if (v6 != 1)
      {
        goto LABEL_76;
      }

      goto LABEL_57;
    }

    [eventCopy time];
    v18 = v17;
    gestureState2 = [(SCRCGestureFactory *)self gestureState];
    if (!self->_split.isTapping && !self->_split.fingerIdentifier)
    {
      v20 = [eventCopy fingerAtIndex:0];
      self->_split.fingerIdentifier = [v20 identifier];
      if (self->_split.fingerDownTime == -3061152000.0)
      {
        self->_split.fingerDownTime = v18;
        [v20 location];
        self->_split.primaryFingerLocation.x = v21;
        self->_split.primaryFingerLocation.y = v22;
      }
    }

    fingerDownTime = self->_split.fingerDownTime;
    v24 = v18 - fingerDownTime > 0.15 && fingerDownTime != -3061152000.0;
    if (v6 == 1 && !self->_split.timedOut && (v24 & ~self->_split.didNotify & 1) != 0 && gestureState2 <= 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_didBeginSplitGestureDelegate);
      [WeakRetained gestureFactoryDidBeginSplitGesture:self];

      self->_split.didNotify = 1;
    }

    v26 = 1;
    if (!self->_splitFlickEnabled)
    {
      v26 = 2;
    }

    if (v6 > v26 && !self->_split.timedOut)
    {
      if (v24)
      {
        if (gestureState2 <= 2)
        {
          [(SCRCGestureFactory *)self velocity];
          if (v32 < 0.15)
          {
            self->_split.tapDead = 1;
            *&self->_split.isSplitting = 1;
            self->_tap.dead = 1;
            [eventCopy removeFingerWithIdentifier:self->_split.fingerIdentifier];
          }
        }
      }

      else
      {
        self->_split.timedOut = 1;
      }

LABEL_76:
      if (v6 >= 3)
      {
        goto LABEL_77;
      }

LABEL_78:
      isSplitting = self->_split.isSplitting;
      goto LABEL_79;
    }

    if (v6 != 2 || self->_splitFlickEnabled)
    {
      if (!self->_split.isTapping)
      {
        goto LABEL_56;
      }
    }

    else if (!self->_split.isTapping)
    {
      if ((v24 & ~self->_split.tapDead & 1) == 0)
      {
        goto LABEL_78;
      }

      self->_split.isTapping = 1;
      v27 = [eventCopy fingerWithoutIdentifier:self->_split.fingerIdentifier];
      [v27 location];
      self->_split.startTapLocation.x = v28;
      self->_split.startTapLocation.y = v29;
      self->_split.lastTapLocation = self->_split.startTapLocation;
      goto LABEL_61;
    }

    v30 = [eventCopy fingerWithIdentifier:self->_split.fingerIdentifier];

    if (!v30)
    {
      self->_lastFingerCount = 0;
      v33 = [eventCopy fingerAtIndex:0];
      self->_split.fingerIdentifier = [v33 identifier];

      self->_split.isTapping = 0;
      if (self->_state == 1)
      {
        v34 = -3061152000.0;
      }

      else
      {
        v34 = v18;
      }

      self->_split.fastTrack = self->_state == 1;
      self->_potentialTrackingStartTimestamp = v34;
      self->_state = 1;
      goto LABEL_56;
    }

    if (v6 == 1)
    {
      state = self->_state;
      [(SCRCGestureFactory *)self _handleSplitTap];
      [(SCRCGestureFactory *)self reset];
      self->_tap.dead = 1;
      *&self->_fingerCount = 65537;
      if (state == 1)
      {
        self->_state = 2;
        self->_split.fastTrack = 1;
        self->_potentialTrackingStartTimestamp = -3061152000.0;
      }

      else
      {
        self->_state = 1;
      }

      goto LABEL_57;
    }

    if (v6 != 2)
    {
LABEL_77:
      self->_split.tapDead = 1;
      goto LABEL_78;
    }

    v27 = [eventCopy fingerWithoutIdentifier:self->_split.fingerIdentifier];
    [v27 location];
    self->_split.lastTapLocation.x = v35;
    self->_split.lastTapLocation.y = v36;
LABEL_61:

    goto LABEL_78;
  }

  [(SCRCGestureFactory *)self _resetSplit];
  [(SCRCGestureFactory *)self->_splitFactory reset];
  isSplitting = 0;
LABEL_79:

  return isSplitting;
}

- ($59F5B3D3FC56264B602E56EF9D3D8816)handleGestureEvent:(SEL)event
{
  v19 = a4;
  [v19 time];
  v6 = v5;
  fingerCount = [v19 fingerCount];
  self->_absoluteFingerCount = fingerCount;
  if (self->_requireUp && fingerCount != 0)
  {
    [(SCRCGestureFactory *)self captureCurrentState];
    goto LABEL_17;
  }

  v9 = fingerCount;
  self->_split.fastTrack = 0;
  WeakRetained = objc_loadWeakRetained(&self->_canSplitTapDelegate);
  v11 = WeakRetained;
  if (self->_splitFactory && WeakRetained && ([WeakRetained shouldBlockSplitTapGestureWithFactory:self] & 1) == 0 && -[SCRCGestureFactory _handleSplitEvent:](self, "_handleSplitEvent:", v19))
  {
    self->_split.active = 1;
    goto LABEL_16;
  }

  self->_split.active = 0;
  if (!v9 || [v19 isCancelEvent])
  {
    if ([v19 isCancelEvent])
    {
      self->_tap.dead = 1;
    }

    [(SCRCGestureFactory *)self _processUpAndPost:0];
    self->_requireUp = 0;
    goto LABEL_16;
  }

  if (v9 <= 8)
  {
    v13 = v6 - self->_potentialTrackingStartTimestamp;
    if ((v13 > 0.25 || self->_lastFingerCount) && (v9 != 1 || v13 > 0.25))
    {
      self->_tap.numFingersInCurrentGestureEvent = v9;
      echoWaitTime = 0.0;
      if (!self->_split.fastTrack)
      {
        echoWaitTime = self->_echoWaitTime;
      }

      self->_potentialTrackingStartTimestamp = -3061152000.0;
      lastFingerCount = self->_lastFingerCount;
      if (v9 == lastFingerCount)
      {
        self->_fingerCount = v9;
        self->_lastFingerCount = v9;
        if (v9 != 1)
        {
          self->_potentialTrackingStartTimestamp = v6;
        }

        [(SCRCGestureFactory *)self _drag:v19];
        goto LABEL_16;
      }

      if (!self->_lastFingerCount || v9 >= lastFingerCount)
      {
        self->_fingerCount = v9;
        self->_lastFingerCount = v9;
        [(SCRCGestureFactory *)self _down:v19];
        goto LABEL_16;
      }

      state = self->_state;
      if (state != 1)
      {
        if (state == 3)
        {
LABEL_38:
          self->_potentialTrackingStartTimestamp = v6;
          [(SCRCGestureFactory *)self _up];
          self->_lastFingerCount = 0;
          goto LABEL_16;
        }

        if ((state - 4) > 2)
        {
          goto LABEL_16;
        }
      }

      if (v9 == 1)
      {
        [(SCRCGestureFactory *)self _up];
        *&self->_fingerCount = 65537;
        self->_setTrackingTimer = 1;
        trackingTimer = self->_trackingTimer;
        v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [(SCRCTargetSelectorTimer *)trackingTimer dispatchAfterDelay:v18 withObject:echoWaitTime];

        goto LABEL_16;
      }

      self->_requireUp = 1;
      goto LABEL_38;
    }
  }

LABEL_16:
  [(SCRCGestureFactory *)self captureCurrentState];

LABEL_17:

  return result;
}

- (void)_down:(id)_down
{
  p_pressure = &self->_finger[1].pressure;
  _downCopy = _down;
  bzero(self->_finger, 0xEB0uLL);
  self->_tap.locationPerTap[7] = 0u;
  self->_tap.locationPerTap[6] = 0u;
  self->_tap.locationPerTap[5] = 0u;
  self->_tap.locationPerTap[4] = 0u;
  self->_tap.locationPerTap[3] = 0u;
  self->_tap.locationPerTap[2] = 0u;
  self->_tap.locationPerTap[1] = 0u;
  self->_tap.locationPerTap[0] = 0u;
  [_downCopy time];
  v6 = v5;
  v7 = 0;
  self->_tap.thisTime = v5;
  *(p_pressure + 177) = 0;
  v8 = 1;
  while (1)
  {
    v9 = v8;
    if (v7 >= self->_fingerCount)
    {
      break;
    }

    v10 = [_downCopy fingerAtIndex:v7];
    v11 = v10;
    if (v10)
    {
      v12 = &self->_finger[v7];
      [v10 location];
      height = self->_mainFrame.size.height;
      v15 = v14 * self->_mainFrame.size.width;
      [v11 location];
      v17 = height - v16 * self->_mainFrame.size.height;
      v12->mostRecentTouchPoint.x = v15;
      v12->mostRecentTouchPoint.y = v17;
      mostRecentTouchPoint = v12->mostRecentTouchPoint;
      v12->lastDownPoint = mostRecentTouchPoint;
      v12->startTouchPoint = mostRecentTouchPoint;
      v12->identifier = [v11 identifier];
      v12->type = [v11 type];
      [v11 pressure];
      v12->pressure = v19;
      if ([v11 type] == 1)
      {
        [v11 altitude];
      }

      else
      {
        v20 = 0x7FF8000000000000;
      }

      *&v12->altitude = v20;
      if ([v11 type] == 1)
      {
        [v11 azimuth];
      }

      else
      {
        v21 = 0x7FF8000000000000;
      }

      *&v12->azimuth = v21;
      lastDownPoint = v12->lastDownPoint;
      self->_tap.location[v7] = lastDownPoint;
      self->_tap.locationPerTap[v7] = lastDownPoint;
    }

    v8 = 0;
    v7 = 1;
    if ((v9 & 1) == 0)
    {
      v7 = 2;
      break;
    }
  }

  if (v7 < self->_tap.numFingersInCurrentGestureEvent)
  {
    p_y = &self->_tap.locationPerTap[v7].y;
    while (1)
    {
      v24 = [_downCopy fingerAtIndex:v7];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      [v24 location];
      v26 = self->_mainFrame.size.height;
      v28 = v27 * self->_mainFrame.size.width;
      [v25 location];
      v30 = v26 - v29 * self->_mainFrame.size.height;
      *(p_y - 17) = v28;
      *(p_y - 16) = v30;
      [v25 location];
      v31 = self->_mainFrame.size.height;
      v33 = v32 * self->_mainFrame.size.width;
      [v25 location];
      v35 = v31 - v34 * self->_mainFrame.size.height;
      *(p_y - 1) = v33;
      *p_y = v35;

      ++v7;
      p_y += 2;
      if (v7 >= self->_tap.numFingersInCurrentGestureEvent)
      {
        goto LABEL_19;
      }
    }

    *(p_pressure + 177) = 1;
  }

LABEL_19:
  *&self->_state = xmmword_2648FE170;
  self->_distance = 0.0;
  self->_scaledTrackingDistance = 0.0;
  self->_setTrackingTimer = 0;
  self->_startDegrees = 0.0;
  self->_startDistance = 0.0;
  self->_lastDegrees = 0.0;
  if ((p_pressure[22] & 1) == 0)
  {
    count = self->_tap.count;
    if (count <= 3)
    {
      self->_tap.count = count + 1;
    }

    *(p_pressure + 176) = 1;
  }

  numFingersInCurrentGestureEvent = self->_tap.numFingersInCurrentGestureEvent;
  if (numFingersInCurrentGestureEvent > self->_tap.totalNumFingersInGesture)
  {
    self->_tap.totalNumFingersInGesture = numFingersInCurrentGestureEvent;
  }

  tapVelocityThreshold = self->_tapVelocityThreshold;
  if (!CGRectEqualToRect(*MEMORY[0x277CBF3A0], self->_tapSpeedRegion))
  {
    if (self->_tap.numFingersInCurrentGestureEvent)
    {
      v39 = 0;
      while (1)
      {
        v40 = [_downCopy fingerAtIndex:v39];
        [v40 location];
        v63.x = v41;
        v63.y = v42;
        v43 = CGRectContainsPoint(self->_tapSpeedRegion, v63);

        if (!v43)
        {
          break;
        }

        if (++v39 >= self->_tap.numFingersInCurrentGestureEvent)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_30:
      tapVelocityThreshold = self->_tapVelocityThresholdForRegion;
      self->_inTapSpeedRegionForDownEvent = 1;
    }
  }

  if (tapVelocityThreshold > 0.0)
  {
    [(SCRCTargetSelectorTimer *)self->_tapTimer dispatchAfterDelay:tapVelocityThreshold];
  }

  if (self->_fingerCount != 1)
  {
    [(SCRCTargetSelectorTimer *)self->_trackingTimer cancel];
    self->_setTrackingTimer = 0;
    if (self->_fingerCount != 2)
    {
      goto LABEL_66;
    }

    x = self->_finger[0].lastDownPoint.x;
    y = self->_finger[0].lastDownPoint.y;
    v51 = self->_finger[1].lastDownPoint.x;
    v52 = self->_finger[1].lastDownPoint.y;
    v53 = x - v51;
    v54 = vabdd_f64(x, v51);
    v55 = vabdd_f64(y, v52);
    self->_startDistance = hypot(v54, v55);
    if (v53 == 0.0)
    {
      v56 = 90.0;
    }

    else
    {
      v56 = atan(v55 / v54) * 57.2957795;
    }

    v57 = y - v52;
    if (v53 >= 0.0)
    {
      if (v57 > 0.0)
      {
        goto LABEL_54;
      }

      v56 = 90.0 - v56;
      v58 = 270.0;
    }

    else if (v57 <= 0.0)
    {
      v58 = 180.0;
    }

    else
    {
      v58 = 90.0;
      v56 = 90.0 - v56;
    }

    v56 = v56 + v58;
LABEL_54:
    startDegrees = self->_startDegrees;
    v60 = v56 + floor(startDegrees / 360.0) * 360.0;
    self->_startDegrees = v60;
    if (v56 <= 270.0)
    {
      if (v56 >= 90.0)
      {
LABEL_65:
        self->_lastDegrees = v60;
        goto LABEL_66;
      }

      if (startDegrees <= 180.0 || startDegrees >= 360.0)
      {
        if (startDegrees > 0.0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v56 = v60 + 360.0;
      }
    }

    else if (startDegrees <= 0.0 || startDegrees >= 180.0)
    {
      if (startDegrees <= 360.0 && startDegrees != 0.0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v56 = v56 + -360.0;
    }

    self->_startDegrees = v56;
    v60 = v56;
    goto LABEL_65;
  }

  v44 = self->_finger[0].mostRecentTouchPoint.y;
  thumbRegion = self->_thumbRegion;
  if (v44 < thumbRegion)
  {
    v46 = 1.0 - v44 / thumbRegion;
    v47 = 3.6;
    if (!self->_thumbRejectionEnabled)
    {
      v47 = 0.0;
    }

    self->_scaledTrackingDistance = v46 * v47;
  }

  if (*(p_pressure + 538) == 1)
  {
    *(p_pressure + 177) = 1;
    echoWaitTime = 0.0;
  }

  else
  {
    echoWaitTime = self->_echoWaitTime;
  }

  if (!self->_thumbRejectionEnabled)
  {
    self->_setTrackingTimer = 1;
    [(SCRCTargetSelectorTimer *)self->_trackingTimer dispatchAfterDelay:echoWaitTime];
  }

LABEL_66:
  self->_lastTime = v6;
  self->_lastDownTime = v6;
}

- (void)_drag:(id)_drag
{
  v116 = *MEMORY[0x277D85DE8];
  p_pressure = &self->_finger[1].pressure;
  _dragCopy = _drag;
  v5 = [_dragCopy fingerWithIdentifier:self->_finger[0].identifier];
  v6 = _dragCopy;
  if (!v5)
  {
    if (![_dragCopy fingerCount])
    {
      *(p_pressure + 177) = 1;
      goto LABEL_150;
    }

    v5 = [_dragCopy fingerAtIndex:0];
    v6 = _dragCopy;
  }

  [v6 time];
  v112 = v7;
  [v5 location];
  v9 = v8;
  width = self->_mainFrame.size.width;
  height = self->_mainFrame.size.height;
  [v5 location];
  v13 = v12;
  v14 = self->_mainFrame.size.height;
  type = [v5 type];
  [v5 pressure];
  v17 = v16;
  if (type == 1)
  {
    [v5 altitude];
    v19 = v18;
    [v5 azimuth];
    v21 = v20;
  }

  else
  {
    v19 = 0x7FF8000000000000;
    v21 = 0x7FF8000000000000;
  }

  v22 = 0;
  v23 = 0;
  finger = self->_finger;
  v25 = v9 * width;
  v26 = height - v13 * v14;
  v114 = 0u;
  v115 = 0u;
  v27 = &v114;
  v110 = v26;
  v111 = v25;
  while (1)
  {
    v28 = v22;
    v29 = &finger[v23];
    v30 = v25 - v29->mostRecentTouchPoint.x;
    v31 = v26 - v29->mostRecentTouchPoint.y;
    v32 = fabs(hypot(v30, v31));
    SCRCMathUpdateAverage(&v29->distancePerSample, 0x32u, v32);
    SCRCMathUpdateAverage(&v29->deltaXPerSample, 0x32u, v30);
    SCRCMathUpdateAverage(&v29->deltaYPerSample, 0x32u, v31);
    v33 = v112 - self->_lastTime;
    if (v33 == 0.0)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = v32 / self->_maxDimension / v33;
    }

    SCRCMathUpdateAverage(&v29->normalizedVelocityPerSample, 0x32u, v34);
    v29->distanceTraveledWithInertiaApplied = v29->distancePerSample.average + v29->distanceTraveledWithInertiaApplied;
    v35.f64[0] = v29->deltaXPerSample.average;
    v36.f64[0] = 0.0;
    v36.f64[1] = v29->deltaYPerSample.average;
    v37 = vcgtq_f64(v36, v35);
    *&v29->xDirection = vorrq_s8(vandq_s8(v37, xmmword_2648FE190), vandq_s8(vbicq_s8(vcgtq_f64(v35, v36), v37), xmmword_2648FE180));
    v29->mostRecentTouchPoint.x = v25;
    v29->mostRecentTouchPoint.y = v26;
    v29->pressure = v17;
    *&v29->altitude = v19;
    *&v29->azimuth = v21;
    *v27 = v25;
    v27[1] = v26;
    v38 = [_dragCopy fingerWithIdentifier:finger[v23 + 1].identifier];

    v5 = v38;
    if (v38)
    {
      goto LABEL_14;
    }

    if ([_dragCopy fingerCount] < 2)
    {
      break;
    }

    v5 = [_dragCopy fingerAtIndex:1];
LABEL_14:
    [v5 location];
    v40 = v39;
    v41 = self->_mainFrame.size.width;
    v42 = self->_mainFrame.size.height;
    [v5 location];
    v44 = v43;
    v45 = self->_mainFrame.size.height;
    type2 = [v5 type];
    [v5 pressure];
    v17 = v47;
    if (type2 == 1)
    {
      [v5 altitude];
      v19 = v48;
      [v5 azimuth];
      v21 = v49;
    }

    else
    {
      v21 = 0x7FF8000000000000;
      v19 = 0x7FF8000000000000;
    }

    v25 = v40 * v41;
    v26 = v42 - v44 * v45;
    v22 = 1;
    v27 = &v115;
    v23 = 1;
    if (v28)
    {
      goto LABEL_20;
    }
  }

  v5 = 0;
LABEL_20:
  fingerCount = self->_fingerCount;
  if (fingerCount == 2)
  {
    v58 = *(&v114 + 1);
    v59 = *(&v115 + 1);
    v60 = *&v114 - *&v115;
    v61 = vabdd_f64(*&v114, *&v115);
    v62 = vabdd_f64(*(&v114 + 1), *(&v115 + 1));
    v63 = hypot(v61, v62);
    if (v60 == 0.0)
    {
      v64 = 90.0;
    }

    else
    {
      v64 = atan(v62 / v61) * 57.2957795;
    }

    v74 = v58 - v59;
    if (v60 >= 0.0)
    {
      if (v74 > 0.0)
      {
        goto LABEL_58;
      }

      v64 = 90.0 - v64;
      v75 = 270.0;
    }

    else if (v74 <= 0.0)
    {
      v75 = 180.0;
    }

    else
    {
      v75 = 90.0;
      v64 = 90.0 - v64;
    }

    v64 = v64 + v75;
LABEL_58:
    lastDegrees = self->_lastDegrees;
    v77 = v64 + floor(lastDegrees / 360.0) * 360.0;
    self->_lastDegrees = v77;
    if (v64 <= 270.0)
    {
      if (v64 >= 90.0)
      {
        goto LABEL_69;
      }

      if (lastDegrees > 180.0 && lastDegrees < 360.0)
      {
        v64 = v77 + 360.0;
        goto LABEL_68;
      }

      if (lastDegrees <= 0.0)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (lastDegrees > 0.0 && lastDegrees < 180.0)
      {
        v64 = v64 + -360.0;
LABEL_68:
        self->_lastDegrees = v64;
        v77 = v64;
        goto LABEL_69;
      }

      if (lastDegrees > 360.0 || lastDegrees == 0.0)
      {
        goto LABEL_68;
      }
    }

LABEL_69:
    v78 = self->_startDegrees - v77;
    state = self->_state;
    if (state == 4)
    {
      v66 = 0;
    }

    else
    {
      x = self->_finger[0].lastDownPoint.x;
      y = self->_finger[0].lastDownPoint.y;
      if (state == 6)
      {
        direction = self->_direction;
        if (direction == 6)
        {
          v66 = 0;
          goto LABEL_142;
        }

        if (direction != 5)
        {
          goto LABEL_89;
        }

        v66 = 0;
        goto LABEL_105;
      }

      v82 = v63 - self->_startDistance;
      if (state == 5)
      {
        v66 = 0;
LABEL_73:
        v83 = v82 / self->_maxDimension;
LABEL_144:
        self->_distance = v83;
        goto LABEL_145;
      }

      v85 = self->_finger[0].mostRecentTouchPoint.x - x;
      v86 = self->_finger[0].mostRecentTouchPoint.y - y;
      v87 = vsubq_f64(self->_finger[1].mostRecentTouchPoint, self->_finger[1].lastDownPoint);
      if (v85 == 0.0 || fabs(v86 / v85) < 1.2)
      {
        v97 = v87.f64[0] == 0.0;
        v98 = fabs(v85);
        if (fabs(v87.f64[1] / v87.f64[0]) < 1.2)
        {
          v97 = 1;
        }

        if (v98 > 8.0 && fabs(v87.f64[0]) > 8.0 && v97 && ((*&v87.f64[0] ^ *&v85) & 0x8000000000000000) == 0)
        {
          v66 = 0;
          *&self->_state = xmmword_2648FE1A0;
LABEL_105:
          v67 = v111 - x;
LABEL_114:
          v101 = v67 / self->_maxDimension;
          horizontal = self->_axisFlipper.horizontal;
LABEL_143:
          v83 = v101 * horizontal;
          goto LABEL_144;
        }
      }

      if (v86 == 0.0 || fabs(v85 / v86) < 0.8)
      {
        v103 = fabs(v87.f64[0] / v87.f64[1]);
        v104 = v87.f64[1] == 0.0;
        v105 = fabs(v86);
        if (v103 < 0.8)
        {
          v104 = 1;
        }

        if (v105 > 4.0 && fabs(v87.f64[1]) > 4.0 && v104 && ((*&v87.f64[1] ^ *&v86) & 0x8000000000000000) == 0)
        {
          goto LABEL_129;
        }
      }

      v88 = fabs(v82);
      usesAbsoluteDistanceForPinch = [(SCRCGestureFactory *)self usesAbsoluteDistanceForPinch];
      v90 = fabs(v63);
      if (usesAbsoluteDistanceForPinch)
      {
        v91 = 7.8;
      }

      else
      {
        v91 = v90 / 2.75;
      }

      v108 = v88 <= v91;
      v109 = fabs(v78);
      if (!v108 && v109 < 750.0 / (v90 + 25.0) + 4.0)
      {
        v66 = 0;
        self->_state = 5;
        goto LABEL_73;
      }

      if (v63 <= 17.0 || v109 <= 650.0 / v63 + 4.0)
      {
        v66 = v88 > 7.8 || v109 > 12.0;
        goto LABEL_145;
      }

      v66 = 0;
      self->_state = 4;
    }

    v83 = v78 / 360.0;
    goto LABEL_144;
  }

  if (fingerCount != 1)
  {
    if (fingerCount < 3)
    {
      goto LABEL_89;
    }

    if (self->_state == 6)
    {
      v65 = self->_direction;
      if (v65 != 6)
      {
        if (v65 != 5)
        {
          goto LABEL_89;
        }

        v66 = 0;
        v67 = v111 - self->_finger[0].lastDownPoint.x;
        goto LABEL_114;
      }

      v66 = 0;
      y = self->_finger[0].lastDownPoint.y;
LABEL_142:
      v101 = (v110 - y) / self->_maxDimension;
      horizontal = self->_axisFlipper.vertical;
      goto LABEL_143;
    }

    v92 = self->_finger[0].lastDownPoint.x;
    y = self->_finger[0].lastDownPoint.y;
    v93 = self->_finger[0].mostRecentTouchPoint.x - v92;
    v94 = self->_finger[0].mostRecentTouchPoint.y - y;
    v95 = vsubq_f64(self->_finger[1].mostRecentTouchPoint, self->_finger[1].lastDownPoint);
    if (v93 == 0.0 || fabs(v94 / v93) < 1.2)
    {
      v99 = fabs(v93);
      v100 = fabs(v95.f64[1] / v95.f64[0]) < 1.2 || v95.f64[0] == 0.0;
      if (v99 > 8.0 && fabs(v95.f64[0]) > 8.0 && v100 && ((*&v95.f64[0] ^ *&v93) & 0x8000000000000000) == 0)
      {
        v66 = 0;
        *&self->_state = xmmword_2648FE1A0;
        v67 = v111 - v92;
        goto LABEL_114;
      }
    }

    if (v94 != 0.0 && fabs(v93 / v94) >= 0.8)
    {
      goto LABEL_89;
    }

    v66 = 0;
    v106 = fabs(v94);
    v107 = fabs(v95.f64[0] / v95.f64[1]) < 0.8 || v95.f64[1] == 0.0;
    if (v106 <= 4.0 || fabs(v95.f64[1]) <= 4.0 || !v107)
    {
      goto LABEL_145;
    }

    if (((*&v95.f64[1] ^ *&v94) & 0x8000000000000000) != 0)
    {
      goto LABEL_89;
    }

LABEL_129:
    v66 = 0;
    *&self->_state = vdupq_n_s64(6uLL);
    goto LABEL_142;
  }

  [(SCRCGestureFactory *)self _updateStartWithPoint:v111 time:v110, v112];
  v51 = self->_state;
  if (v51 != 2 && self->_finger[0].normalizedVelocityPerSample.average > self->_flickVelocityThreshold)
  {
    v51 = 3;
    self->_state = 3;
  }

  maxDimension = self->_maxDimension;
  self->_distance = self->_finger[0].distancePerSample.average / maxDimension;
  v53 = self->_finger[0].lastDownPoint.x;
  v54 = self->_finger[0].lastDownPoint.y;
  v55 = self->_finger[0].mostRecentTouchPoint.x - v53;
  v56 = self->_finger[0].mostRecentTouchPoint.y - v54;
  v57 = hypot(v55, v56);
  if (!self->_setTrackingTimer)
  {
    if (v51 != 3)
    {
      if (v51 == 2)
      {
        goto LABEL_45;
      }

      if (v51 != 1)
      {
        goto LABEL_89;
      }
    }

    echoWaitTime = 0.0;
    if (*(p_pressure + 538))
    {
LABEL_43:
      self->_setTrackingTimer = 1;
      [(SCRCTargetSelectorTimer *)self->_trackingTimer dispatchAfterDelay:echoWaitTime, *&v110];
      goto LABEL_89;
    }

    v69 = fabs(v57);
    scaledTrackingDistance = self->_scaledTrackingDistance;
    if (v69 > scaledTrackingDistance && self->_finger[0].normalizedVelocityPerSample.average > 0.2 || v69 > scaledTrackingDistance + scaledTrackingDistance)
    {
      echoWaitTime = self->_echoWaitTime;
      goto LABEL_43;
    }

LABEL_89:
    v66 = 0;
    goto LABEL_145;
  }

  if (v51 != 2)
  {
    goto LABEL_89;
  }

LABEL_45:
  v71 = v55 == 0.0;
  if (fabs(v56 / v55) < 1.2)
  {
    v71 = 1;
  }

  if (fabs(v55) > 8.0 && v71)
  {
    v66 = 0;
    self->_direction = 5;
    v72 = (v111 - v53) / maxDimension;
    vertical = self->_axisFlipper.horizontal;
    goto LABEL_95;
  }

  v66 = 0;
  v96 = v56 == 0.0;
  if (fabs(v55 / v56) < 0.8)
  {
    v96 = 1;
  }

  if (fabs(v56) > 8.0 && v96)
  {
    v66 = 0;
    self->_direction = 6;
    v72 = (v110 - v54) / maxDimension;
    vertical = self->_axisFlipper.vertical;
LABEL_95:
    self->_distance = vertical * v72;
    self->_finger[0].lastDownPoint = self->_finger[0].mostRecentTouchPoint;
  }

LABEL_145:
  if ((*(p_pressure + 177) & 1) == 0 && (v66 || (self->_state | 2) != 3))
  {
    *(p_pressure + 539) = self->_fingerCount != 1;
    *(p_pressure + 177) = 1;
  }

  self->_lastTime = v112;

LABEL_150:
}

- (void)_up
{
  fingerCount = self->_fingerCount;
  self->_tapTotalFingerCount += fingerCount;
  if (fingerCount)
  {
    if (fingerCount == 1)
    {
      self->_direction = 0;
      state = self->_state;
      if (state == 1)
      {
        [(SCRCTargetSelectorTimer *)self->_trackingTimer cancel];
        self->_setTrackingTimer = 0;
        goto LABEL_20;
      }

      if (state != 3)
      {
        if (state != 2)
        {
          return;
        }

LABEL_20:
        self->_state = 0;
        return;
      }

      [(SCRCTargetSelectorTimer *)self->_trackingTimer cancel];
      self->_setTrackingTimer = 0;
      self->_state = 0;
      x = self->_finger[0].mostRecentTouchPoint.x;
      v8 = self->_finger[0].lastDownPoint.x;
      v9 = self->_finger[0].mostRecentTouchPoint.y - self->_finger[0].lastDownPoint.y;
      v10 = fabs(v9 / (x - v8));
      if (x - v8 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v10;
      }

      v12 = fabs((x - v8) / v9);
      if (v9 == 0.0)
      {
        v12 = 0.0;
      }

      if (vabdd_f64(x, v8) <= 3.6 || v11 >= 1.2)
      {
        if (v12 < 0.8 && fabs(v9) > 3.6)
        {
          self->_tap.dead = 1;
          yDirection = self->_finger[0].yDirection;
          self->_state = 8;
          self->_direction = yDirection;
          self->_directionalSlope = v12;
        }
      }

      else
      {
        self->_tap.dead = 1;
        xDirection = self->_finger[0].xDirection;
        self->_state = 8;
        self->_direction = xDirection;
        self->_directionalSlope = v11;
      }
    }

    else
    {
      v5 = self->_state;
      switch(v5)
      {
        case 6:
          v6 = 12;
          break;
        case 5:
          v6 = 11;
          break;
        case 4:
          v6 = 10;
          break;
        default:
          return;
      }

      self->_state = v6;
    }
  }
}

- (void)reset
{
  [(SCRCGestureFactory *)self->_splitFactory reset];
  *&self->_fingerCount = 0;
  self->_tapTotalFingerCount = 0;
  self->_requireUp = 0;
  self->_state = 0;
  self->_direction = 0;
  tapTimer = self->_tapTimer;

  [(SCRCTargetSelectorTimer *)tapTimer cancel];
}

- (void)_resetSplit
{
  *&self->_split.tapDead = 0;
  self->_split.fingerDownTime = -3061152000.0;
  self->_split.fingerIdentifier = 0;
  self->_split.isSplitting = 0;
  self->_split.didNotify = 0;
}

- ($59F5B3D3FC56264B602E56EF9D3D8816)captureCurrentState
{
  *&retstr->var19.y = 0u;
  *&retstr->var20.y = 0u;
  p_pressure = &self->_finger[0].pressure;
  *&retstr->var18.origin.y = 0u;
  *&retstr->var18.size.height = 0u;
  *&retstr->var17.origin.y = 0u;
  *&retstr->var17.size.height = 0u;
  *&retstr->var15.y = 0u;
  *&retstr->var16.y = 0u;
  *&retstr->var13 = 0u;
  *&retstr->var14.y = 0u;
  retstr->var10 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  v72 = 0;
  memset(v71, 0, 24);
  v70 = 0;
  average = 0.0;
  distance = 0.0;
  if (self->_split.active)
  {
    splitFactory = self->_splitFactory;
    if (!splitFactory)
    {
      retstr->var0 = self->_split.state;
      retstr->var2 = self->_directionalSlope;
      goto LABEL_23;
    }

    [(SCRCGestureFactory *)splitFactory captureCurrentState];
    average = v64;
    v72 = v66;
    distance = v65;
    *(&v71[0] + 1) = v67;
    *&v71[1] = v68;
    v70 = v69;
    if (*(p_pressure + 2421))
    {
      retstr->var0 = self->_split.state;
      retstr->var1 = v62;
      retstr->var2 = self->_directionalSlope;
      retstr->var3 = v63;
LABEL_23:
      v21 = 1;
      goto LABEL_25;
    }
  }

  v9 = self->_directions[self->_direction];
  retstr->var0 = self->_state;
  retstr->var1 = v9;
  retstr->var2 = self->_directionalSlope;
  [(SCRCGestureFactory *)self startLocation];
  v11 = v10;
  v13 = v12;
  [(SCRCGestureFactory *)self endLocation];
  v15 = 1.0 - v11 + v14 + -1.0;
  v17 = v13 - v16;
  if (v15 == 0.0)
  {
    v18 = 90.0;
  }

  else
  {
    v18 = atan(fabs(v17 / v15)) * 57.2957795;
  }

  if (v15 >= 0.0)
  {
    if (v17 > 0.0)
    {
      goto LABEL_16;
    }

    v18 = 90.0 - v18;
    v19 = 270.0;
  }

  else if (v17 <= 0.0)
  {
    v19 = 180.0;
  }

  else
  {
    v19 = 90.0;
    v18 = 90.0 - v18;
  }

  v18 = v18 + v19;
LABEL_16:
  if (v18 >= 90.0 && v18 <= 270.0)
  {
    v18 = v18 + 0.0;
  }

  retstr->var3 = v18;
  if (*(p_pressure + 2421))
  {
    goto LABEL_23;
  }

  v21 = 0;
  average = self->_finger[0].normalizedVelocityPerSample.average;
  distance = self->_distance;
LABEL_25:
  retstr->var4 = average;
  retstr->var5 = distance;
  fingerCount = self->_fingerCount;
  retstr->var6 = self->_absoluteFingerCount;
  retstr->var7 = fingerCount;
  retstr->var8 = self->_tapCount;
  retstr->var9 = *(p_pressure + 2056);
  if (v21)
  {
    v23 = *p_pressure;
    retstr->var10 = v72;
    *&retstr->var11 = v23;
    retstr->var13 = self->_finger[0].azimuth;
    retstr->var14 = v72;
    retstr->var15 = *(v71 + 8);
LABEL_41:
    retstr->var16 = v70;
    goto LABEL_42;
  }

  width = self->_mainFrame.size.width;
  height = self->_mainFrame.size.height;
  v26 = (height - self->_finger[0].mostRecentTouchPoint.y) / height;
  retstr->var10.x = self->_finger[0].mostRecentTouchPoint.x / width;
  retstr->var10.y = v26;
  *&retstr->var11 = *p_pressure;
  v27 = MEMORY[0x277CBF348];
  retstr->var13 = self->_finger[0].azimuth;
  v29 = *v27;
  v28 = v27[1];
  v30 = 2;
  if (fingerCount < 2)
  {
    v30 = fingerCount;
  }

  if (!fingerCount)
  {
    retstr->var14.x = v29 / width;
    retstr->var14.y = (height - v28) / height;
    goto LABEL_40;
  }

  p_y = &self->_finger[0].mostRecentTouchPoint.y;
  do
  {
    v29 = v29 + *(p_y - 1);
    v28 = v28 + *p_y;
    p_y += 235;
    --v30;
  }

  while (v30);
  retstr->var14.x = v29 / fingerCount / width;
  retstr->var14.y = (height - v28 / fingerCount) / height;
  if (fingerCount != 2)
  {
LABEL_40:
    v39 = (height - self->_finger[0].startTouchPoint.y) / height;
    retstr->var15.x = self->_finger[0].startTouchPoint.x / width;
    retstr->var15.y = v39;
    if (!v21)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v32 = self->_directions[self->_direction];
  x = self->_finger[0].startTouchPoint.x;
  v73.origin.y = self->_finger[0].startTouchPoint.y;
  v83.origin.x = self->_finger[1].startTouchPoint.x;
  v83.origin.y = self->_finger[1].startTouchPoint.y;
  v73.size.width = 1.0;
  v73.size.height = 1.0;
  v83.size.width = 1.0;
  v83.size.height = 1.0;
  v73.origin.x = x;
  v74 = CGRectUnion(v73, v83);
  if (v32 == 5)
  {
    x = v74.origin.x + v74.origin.x / (width - v74.size.width) * v74.size.width;
  }

  v34 = self->_directions[self->_direction];
  v35 = self->_mainFrame.size.height;
  v75.origin.x = self->_finger[0].startTouchPoint.x;
  y = self->_finger[0].startTouchPoint.y;
  v84.origin.x = self->_finger[1].startTouchPoint.x;
  v84.origin.y = self->_finger[1].startTouchPoint.y;
  v37 = x / self->_mainFrame.size.width;
  v75.size.width = 1.0;
  v75.size.height = 1.0;
  v84.size.width = 1.0;
  v84.size.height = 1.0;
  v75.origin.y = y;
  v76 = CGRectUnion(v75, v84);
  if (v34 == 6)
  {
    y = v76.origin.y + v76.origin.y / (v35 - v76.size.height) * v76.size.height;
  }

  v38 = (v35 - y) / self->_mainFrame.size.height;
  retstr->var15.x = v37;
  retstr->var15.y = v38;
  if (*(p_pressure + 2421))
  {
    goto LABEL_41;
  }

LABEL_42:
  if (self->_fingerCount == 2)
  {
    v40 = self->_directions[self->_direction];
    v41 = self->_finger[0].mostRecentTouchPoint.x;
    v77.origin.y = self->_finger[0].mostRecentTouchPoint.y;
    v85.origin.x = self->_finger[1].mostRecentTouchPoint.x;
    v85.origin.y = self->_finger[1].mostRecentTouchPoint.y;
    v42 = self->_mainFrame.size.width;
    v77.size.width = 1.0;
    v77.size.height = 1.0;
    v85.size.width = 1.0;
    v85.size.height = 1.0;
    v77.origin.x = v41;
    v78 = CGRectUnion(v77, v85);
    if (v40 == 5)
    {
      v41 = v78.origin.x + v78.origin.x / (v42 - v78.size.width) * v78.size.width;
    }

    v43 = self->_directions[self->_direction];
    v44 = self->_mainFrame.size.height;
    v79.origin.x = self->_finger[0].mostRecentTouchPoint.x;
    v45 = self->_finger[0].mostRecentTouchPoint.y;
    v86.origin.x = self->_finger[1].mostRecentTouchPoint.x;
    v86.origin.y = self->_finger[1].mostRecentTouchPoint.y;
    v46 = v41 / self->_mainFrame.size.width;
    v79.size.width = 1.0;
    v79.size.height = 1.0;
    v86.size.width = 1.0;
    v86.size.height = 1.0;
    v79.origin.y = v45;
    v80 = CGRectUnion(v79, v86);
    if (v43 == 6)
    {
      v45 = v80.origin.y + v80.origin.y / (v44 - v80.size.height) * v80.size.height;
    }

    size = self->_mainFrame.size;
    v48 = (v44 - v45) / self->_mainFrame.size.height;
    retstr->var16.x = v46;
    retstr->var16.y = v48;
  }

  else
  {
    v49.f64[0] = self->_finger[0].mostRecentTouchPoint.x;
    size = self->_mainFrame.size;
    v49.f64[1] = self->_mainFrame.size.height - self->_finger[0].mostRecentTouchPoint.y;
    retstr->var16 = vdivq_f64(v49, size);
  }

  v50.f64[0] = self->_tapFrame.origin.x;
  v50.f64[1] = size.height - (self->_tapFrame.origin.y + p_pressure[245]);
  retstr->var17.size = vdivq_f64(*(p_pressure + 244), size);
  retstr->var17.origin = vdivq_f64(v50, size);
  v50.f64[0] = self->_tapMultiFrame.origin.x;
  v51 = self->_tapMultiFrame.size;
  v50.f64[1] = size.height - (self->_tapMultiFrame.origin.y + v51.height);
  retstr->var18.size = vdivq_f64(v51, size);
  retstr->var18.origin = vdivq_f64(v50, size);
  [(SCRCGestureFactory *)self tapFrame];
  v52 = v81.origin.x;
  v53 = v81.origin.y;
  v54 = v81.size.width;
  v55 = v81.size.height;
  MidX = CGRectGetMidX(v81);
  v82.origin.x = v52;
  v82.origin.y = v53;
  v82.size.width = v54;
  v82.size.height = v55;
  MidY = CGRectGetMidY(v82);
  retstr->var19.x = MidX;
  retstr->var19.y = MidY;
  v59 = self->_mainFrame.size.height;
  v60 = self->_tapFrame.origin.y;
  v61 = self->_tapFrame.size.height;
  retstr->var20.x = (self->_tapFrame.origin.x + self->_tapFrame.origin.x / (self->_mainFrame.size.width - self->_tapFrame.size.width) * self->_tapFrame.size.width) / self->_mainFrame.size.width;
  retstr->var20.y = (v59 - (v60 + v60 / (v59 - v61) * v61)) / v59;
  retstr->var21 = self->_tap.thisTime - self->_tap.lastTime;
  return result;
}

- (int64_t)gestureState
{
  v2 = 336;
  if (self->_split.active)
  {
    v2 = 4712;
  }

  return *(&self->super.isa + v2);
}

- (int64_t)direction
{
  if (self->_split.active)
  {
    return [(SCRCGestureFactory *)self->_splitFactory direction];
  }

  else
  {
    return self->_directions[self->_direction];
  }
}

- (double)vector
{
  if (self->_split.active)
  {
    splitFactory = self->_splitFactory;

    [(SCRCGestureFactory *)splitFactory vector];
    return result;
  }

  [(SCRCGestureFactory *)self startLocation];
  v6 = v5;
  v8 = v7;
  [(SCRCGestureFactory *)self endLocation];
  v10 = 1.0 - v6 + v9 + -1.0;
  v12 = v8 - v11;
  if (v10 == 0.0)
  {
    result = 90.0;
  }

  else
  {
    result = atan(fabs(v12 / v10)) * 57.2957795;
  }

  if (v10 >= 0.0)
  {
    if (v12 > 0.0)
    {
      goto LABEL_15;
    }

    result = 90.0 - result;
    v13 = 270.0;
  }

  else if (v12 <= 0.0)
  {
    v13 = 180.0;
  }

  else
  {
    v13 = 90.0;
    result = 90.0 - result;
  }

  result = result + v13;
LABEL_15:
  if (result >= 90.0 && result <= 270.0)
  {
    return result + 0.0;
  }

  return result;
}

- (double)velocity
{
  if (!self->_split.active)
  {
    return self->_finger[0].normalizedVelocityPerSample.average;
  }

  [(SCRCGestureFactory *)self->_splitFactory velocity];
  return result;
}

- (double)distance
{
  if (!self->_split.active)
  {
    return self->_distance;
  }

  [(SCRCGestureFactory *)self->_splitFactory distance];
  return result;
}

- (CGPoint)rawLocation
{
  if (self->_split.active)
  {
    [(SCRCGestureFactory *)self->_splitFactory rawLocation];
  }

  else
  {
    v2 = self->_finger[0].mostRecentTouchPoint.x / self->_mainFrame.size.width;
    v3 = (self->_mainFrame.size.height - self->_finger[0].mostRecentTouchPoint.y) / self->_mainFrame.size.height;
  }

  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)rawAverageLocation
{
  p_mostRecentTouchPoint = &self->_finger[0].mostRecentTouchPoint;
  if (self->_split.active)
  {
    [(SCRCGestureFactory *)self->_splitFactory rawLocation];
  }

  else
  {
    v5 = *MEMORY[0x277CBF348];
    fingerCount = self->_fingerCount;
    if (fingerCount >= 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = self->_fingerCount;
    }

    if (self->_fingerCount)
    {
      do
      {
        v5 = vaddq_f64(v5, *p_mostRecentTouchPoint);
        p_mostRecentTouchPoint = (p_mostRecentTouchPoint + 1880);
        --v7;
      }

      while (v7);
      v5 = vdivq_f64(v5, vdupq_lane_s64(COERCE__INT64(fingerCount), 0));
    }

    v3 = v5.f64[0] / self->_mainFrame.size.width;
    v4 = (self->_mainFrame.size.height - v5.f64[1]) / self->_mainFrame.size.height;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)startLocation
{
  if (self->_split.active)
  {
    splitFactory = self->_splitFactory;

    [(SCRCGestureFactory *)splitFactory startLocation];
  }

  else
  {
    if (self->_fingerCount == 2)
    {
      v6 = self->_directions[self->_direction];
      x = self->_finger[0].startTouchPoint.x;
      v15.origin.y = self->_finger[0].startTouchPoint.y;
      v19.origin.x = self->_finger[1].startTouchPoint.x;
      v19.origin.y = self->_finger[1].startTouchPoint.y;
      width = self->_mainFrame.size.width;
      v15.size.width = 1.0;
      v15.size.height = 1.0;
      v19.size.width = 1.0;
      v19.size.height = 1.0;
      v15.origin.x = x;
      v16 = CGRectUnion(v15, v19);
      if (v6 == 5)
      {
        x = v16.origin.x + v16.origin.x / (width - v16.size.width) * v16.size.width;
      }

      v9 = self->_directions[self->_direction];
      height = self->_mainFrame.size.height;
      v17.origin.x = self->_finger[0].startTouchPoint.x;
      y = self->_finger[0].startTouchPoint.y;
      v20.origin.x = self->_finger[1].startTouchPoint.x;
      v20.origin.y = self->_finger[1].startTouchPoint.y;
      v12 = x / self->_mainFrame.size.width;
      v17.size.width = 1.0;
      v17.size.height = 1.0;
      v20.size.width = 1.0;
      v20.size.height = 1.0;
      v17.origin.y = y;
      v18 = CGRectUnion(v17, v20);
      if (v9 == 6)
      {
        y = v18.origin.y + v18.origin.y / (height - v18.size.height) * v18.size.height;
      }

      v5 = (height - y) / self->_mainFrame.size.height;
    }

    else
    {
      v12 = self->_finger[0].startTouchPoint.x / self->_mainFrame.size.width;
      v5 = (self->_mainFrame.size.height - self->_finger[0].startTouchPoint.y) / self->_mainFrame.size.height;
    }

    v4 = v12;
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)endLocation
{
  if (self->_split.active)
  {
    splitFactory = self->_splitFactory;

    [(SCRCGestureFactory *)splitFactory endLocation];
  }

  else
  {
    if (self->_fingerCount == 2)
    {
      v6 = self->_directions[self->_direction];
      x = self->_finger[0].mostRecentTouchPoint.x;
      v15.origin.y = self->_finger[0].mostRecentTouchPoint.y;
      v19.origin.x = self->_finger[1].mostRecentTouchPoint.x;
      v19.origin.y = self->_finger[1].mostRecentTouchPoint.y;
      width = self->_mainFrame.size.width;
      v15.size.width = 1.0;
      v15.size.height = 1.0;
      v19.size.width = 1.0;
      v19.size.height = 1.0;
      v15.origin.x = x;
      v16 = CGRectUnion(v15, v19);
      if (v6 == 5)
      {
        x = v16.origin.x + v16.origin.x / (width - v16.size.width) * v16.size.width;
      }

      v9 = self->_directions[self->_direction];
      height = self->_mainFrame.size.height;
      v17.origin.x = self->_finger[0].mostRecentTouchPoint.x;
      y = self->_finger[0].mostRecentTouchPoint.y;
      v20.origin.x = self->_finger[1].mostRecentTouchPoint.x;
      v20.origin.y = self->_finger[1].mostRecentTouchPoint.y;
      v12 = x / self->_mainFrame.size.width;
      v17.size.width = 1.0;
      v17.size.height = 1.0;
      v20.size.width = 1.0;
      v20.size.height = 1.0;
      v17.origin.y = y;
      v18 = CGRectUnion(v17, v20);
      if (v9 == 6)
      {
        y = v18.origin.y + v18.origin.y / (height - v18.size.height) * v18.size.height;
      }

      v5 = (height - y) / self->_mainFrame.size.height;
    }

    else
    {
      v12 = self->_finger[0].mostRecentTouchPoint.x / self->_mainFrame.size.width;
      v5 = (self->_mainFrame.size.height - self->_finger[0].mostRecentTouchPoint.y) / self->_mainFrame.size.height;
    }

    v4 = v12;
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)tapFrame
{
  width = self->_mainFrame.size.width;
  height = self->_mainFrame.size.height;
  v4 = self->_tapFrame.origin.x / width;
  v5 = self->_tapFrame.size.height;
  v6 = (height - (self->_tapFrame.origin.y + v5)) / height;
  v7 = self->_tapFrame.size.width / width;
  v8 = v5 / height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

- (CGRect)multiTapFrame
{
  width = self->_mainFrame.size.width;
  height = self->_mainFrame.size.height;
  v4 = self->_tapMultiFrame.origin.x / width;
  v5 = self->_tapMultiFrame.size.height;
  v6 = (height - (self->_tapMultiFrame.origin.y + v5)) / height;
  v7 = self->_tapMultiFrame.size.width / width;
  v8 = v5 / height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

- (CGPoint)tapPoint
{
  [(SCRCGestureFactory *)self tapFrame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidY = CGRectGetMidY(v11);
  v8 = MidX;
  result.y = MidY;
  result.x = v8;
  return result;
}

- (CGPoint)tapPointWeightedToSides
{
  v2 = (self->_tapFrame.origin.x + self->_tapFrame.origin.x / (self->_mainFrame.size.width - self->_tapFrame.size.width) * self->_tapFrame.size.width) / self->_mainFrame.size.width;
  v3 = (self->_mainFrame.size.height - (self->_tapFrame.origin.y + self->_tapFrame.origin.y / (self->_mainFrame.size.height - self->_tapFrame.size.height) * self->_tapFrame.size.height)) / self->_mainFrame.size.height;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)splitTapPrimaryFingerPoint
{
  x = self->_split.primaryFingerLocation.x;
  y = self->_split.primaryFingerLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end