@interface _UIKBProductivityPinchGestureRecognizer
+ (id)productivityPinchGestureRecognizerWithTarget:(id)target action:(SEL)action delegate:(id)delegate;
- (BOOL)sufficientMotionInDirection:(int64_t)direction withLocation:(CGPoint)location withScale:(double)scale withAngle:(double)angle;
- (CGPoint)beginCentroid;
- (CGPoint)centroidOfTouches:(id)touches;
- (_UIKBProductivityPinchGestureRecognizer)initWithCoder:(id)coder;
- (_UIKBProductivityPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (double)avgDistanceToCentroid:(id)centroid;
- (double)perimeterOfTouches:(id)touches;
- (int64_t)pinchDirectionWithCurrentTime:(double)time perimeter:(double)perimeter;
- (void)_updateTransformAnalyzerWeights;
- (void)clearMultitouchTimer;
- (void)multitouchExpired:(id)expired;
- (void)reset;
- (void)startMultitouchTimer:(double)timer;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIKBProductivityPinchGestureRecognizer

- (void)clearMultitouchTimer
{
  if (self->_multitouchTimerEnabled)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_multitouchExpired_ object:0];
  }

  self->_multitouchTimerEnabled = 0;
}

- (void)reset
{
  v7.receiver = self;
  v7.super_class = _UIKBProductivityPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v7 reset];
  activeTouches = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
  [activeTouches removeAllObjects];

  [(_UIKBProductivityPinchGestureRecognizer *)self setActiveTouches:0];
  beginTouchLocations = [(_UIKBProductivityPinchGestureRecognizer *)self beginTouchLocations];
  [beginTouchLocations removeAllObjects];

  [(_UIKBProductivityPinchGestureRecognizer *)self setBeginTouchLocations:0];
  [(_UIKBProductivityPinchGestureRecognizer *)self setBeginPinchTimestamp:0.0];
  [(_UIKBProductivityPinchGestureRecognizer *)self setBeforeReductionTimeInterval:0.0];
  [(_UIKBProductivityPinchGestureRecognizer *)self setBeginPerimeter:0.0];
  [(_UIKBProductivityPinchGestureRecognizer *)self setBeginCentroid:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(_UIKBProductivityPinchGestureRecognizer *)self setTooMuchSingleMovement:0];
  self->_pinchDirection = 0;
  self->_recognized = 0;
  self->_hasFailedOnOtherDominantMotion = 0;
  [(_UIKBProductivityPinchGestureRecognizer *)self clearMultitouchTimer];
  [self->_transformAnalyzer reset];
  [(_UIKBProductivityPinchGestureRecognizer *)self _updateTransformAnalyzerWeights];
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&self->_transform.a = *MEMORY[0x1E695EFD0];
  *&self->_transform.c = v6;
  *&self->_transform.tx = *(v5 + 32);
}

- (void)_updateTransformAnalyzerWeights
{
  transformAnalyzer = self->_transformAnalyzer;
  _state = [(UIGestureRecognizer *)self _state];
  v4 = 0.330000013;
  if ((_state - 1) < 3)
  {
    v4 = 1.0;
  }

  [transformAnalyzer setPinchingWeight:v4];
}

+ (id)productivityPinchGestureRecognizerWithTarget:(id)target action:(SEL)action delegate:(id)delegate
{
  delegateCopy = delegate;
  targetCopy = target;
  v9 = [[_UIKBProductivityPinchGestureRecognizer alloc] initWithTarget:targetCopy action:action];

  if (v9)
  {
    [(UIGestureRecognizer *)v9 setAllowedTouchTypes:&unk_1EFE2C040];
    [(UIGestureRecognizer *)v9 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v9 setDelaysTouchesEnded:0];
    if (_systemGesturesDontCancelTouches(delegateCopy))
    {
      [(UIGestureRecognizer *)v9 setCancelsTouchesInView:0];
    }

    [(UIGestureRecognizer *)v9 setName:@"com.apple.UIKit.kbProductivity.threeFingerPinch"];
    [(UIGestureRecognizer *)v9 setDelegate:delegateCopy];
    [(_UIKBProductivityPinchGestureRecognizer *)v9 setAllowableElapsedTimeForAllRequiredTouches:0.08];
    v10 = v9;
  }

  return v9;
}

- (BOOL)sufficientMotionInDirection:(int64_t)direction withLocation:(CGPoint)location withScale:(double)scale withAngle:(double)angle
{
  if (direction == 3)
  {
    v11 = fabs(angle);
    v12 = 0.314159265;
    goto LABEL_8;
  }

  if (direction == 2)
  {
    v11 = vabdd_f64(1.0, scale);
    v12 = 0.08;
LABEL_8:
    v13 = v11 <= v12;
    return !v13;
  }

  if (direction != 1)
  {
    return 0;
  }

  y = location.y;
  x = location.x;
  [(_UIKBProductivityPinchGestureRecognizer *)self beginCentroid:location.x];
  if (vabdd_f64(x, v9) > 10.0)
  {
    return 1;
  }

  [(_UIKBProductivityPinchGestureRecognizer *)self beginCentroid];
  v13 = vabdd_f64(y, v14) <= 10.0;
  return !v13;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v43 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  [eventCopy timestamp];
  [(_UIKBProductivityPinchGestureRecognizer *)self setBeginPinchTimestamp:?];
  v36 = [(UIGestureRecognizer *)self _activeTouchesForEvent:eventCopy];
  activeTouches = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];

  if (!activeTouches)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(_UIKBProductivityPinchGestureRecognizer *)self setActiveTouches:array];
  }

  activeTouches2 = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
  v37 = beganCopy;
  allObjects = [beganCopy allObjects];
  [activeTouches2 addObjectsFromArray:allObjects];

  beginTouchLocations = [(_UIKBProductivityPinchGestureRecognizer *)self beginTouchLocations];

  if (!beginTouchLocations)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(_UIKBProductivityPinchGestureRecognizer *)self setBeginTouchLocations:dictionary];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  activeTouches3 = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
  v15 = [activeTouches3 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(activeTouches3);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        beginTouchLocations2 = [(_UIKBProductivityPinchGestureRecognizer *)self beginTouchLocations];
        v21 = [beginTouchLocations2 objectForKey:v19];

        if (!v21)
        {
          beginTouchLocations3 = [(_UIKBProductivityPinchGestureRecognizer *)self beginTouchLocations];
          v23 = MEMORY[0x1E696B098];
          [v19 locationInView:0];
          v24 = [v23 valueWithCGPoint:?];
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v19, "_touchIdentifier")}];
          [beginTouchLocations3 setObject:v24 forKey:v25];
        }
      }

      v16 = [activeTouches3 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v16);
  }

  activeTouches4 = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
  v27 = [activeTouches4 count];

  numberOfTouchesRequired = self->_numberOfTouchesRequired;
  if (v27 >= numberOfTouchesRequired)
  {
    v30 = eventCopy;
    v29 = v37;
    v31 = v36;
    if (!self->_recognized)
    {
      self->_hasFailedOnOtherDominantMotion = 0;
      self->_recognized = 0;
      activeTouches5 = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
      [(_UIKBProductivityPinchGestureRecognizer *)self perimeterOfTouches:activeTouches5];
      [(_UIKBProductivityPinchGestureRecognizer *)self setBeginPerimeter:?];

      [(UIGestureRecognizer *)self _centroidOfTouches:v36 excludingEnded:1];
      [(_UIKBProductivityPinchGestureRecognizer *)self setBeginCentroid:?];
      [(_UIKBProductivityPinchGestureRecognizer *)self setBeforeReductionTimeInterval:0.0];
      [(UIGestureRecognizer *)self setState:1];
      self->_pinchDirection = 0;
      activeTouches6 = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
      [(_UIKBProductivityPinchGestureRecognizer *)self avgDistanceToCentroid:activeTouches6];
      self->_avgTouchesToCentroidDistance = v35;

      goto LABEL_23;
    }
  }

  else
  {
    v30 = eventCopy;
    v29 = v37;
    v31 = v36;
    if (!self->_recognized)
    {
      [(_UIKBProductivityPinchGestureRecognizer *)self allowableElapsedTimeForAllRequiredTouches];
      if (v32 > 0.0)
      {
        [(_UIKBProductivityPinchGestureRecognizer *)self allowableElapsedTimeForAllRequiredTouches];
        [(_UIKBProductivityPinchGestureRecognizer *)self startMultitouchTimer:?];
        goto LABEL_23;
      }

      numberOfTouchesRequired = self->_numberOfTouchesRequired;
    }
  }

  if (v27 == numberOfTouchesRequired)
  {
    [(_UIKBProductivityPinchGestureRecognizer *)self clearMultitouchTimer];
  }

LABEL_23:
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v51 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v6 = MEMORY[0x1E695DFD8];
  activeTouches = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
  v8 = [v6 setWithArray:activeTouches];

  [eventCopy timestamp];
  v10 = v9;
  [(_UIKBProductivityPinchGestureRecognizer *)self beginPinchTimestamp];
  v12 = 344;
  if (!self->_hasFailedOnOtherDominantMotion)
  {
    v13 = v11;
    if ([v8 count] == self->_numberOfTouchesRequired)
    {
      [self->_transformAnalyzer analyzeTouches:v8];
      allObjects = [v8 allObjects];
      [(_UIKBProductivityPinchGestureRecognizer *)self perimeterOfTouches:allObjects];
      v16 = v15;

      [(_UIKBProductivityPinchGestureRecognizer *)self beginPerimeter];
      memset(&v49, 0, sizeof(v49));
      CGAffineTransformMakeScale(&v49, v16 / v17, v16 / v17);
      dominantComponent = [self->_transformAnalyzer dominantComponent];
      [(UIGestureRecognizer *)self _centroidOfTouches:v8 excludingEnded:1];
      v19 = ![_UIKBProductivityPinchGestureRecognizer sufficientMotionInDirection:"sufficientMotionInDirection:withLocation:withScale:withAngle:" withLocation:dominantComponent withScale:? withAngle:?];
      if (!self->_recognized && (v19 & 1) == 0 && [self->_transformAnalyzer dominantComponent] != 2)
      {
        [(UIGestureRecognizer *)self setState:5];
        self->_hasFailedOnOtherDominantMotion = 1;
      }

      if ([self->_transformAnalyzer dominantComponent] == 2)
      {
        v20 = *&v49.c;
        *&self->_transform.a = *&v49.a;
        *&self->_transform.c = v20;
        *&self->_transform.tx = *&v49.tx;
        recognized = self->_recognized;
        if (((recognized | v19) & 1) == 0)
        {
          self->_recognized = 1;
          [(_UIKBProductivityPinchGestureRecognizer *)self _updateTransformAnalyzerWeights];
          [(UIGestureRecognizer *)self setState:1];
          [eventCopy timestamp];
          self->_pinchDirection = [_UIKBProductivityPinchGestureRecognizer pinchDirectionWithCurrentTime:"pinchDirectionWithCurrentTime:perimeter:" perimeter:?];
          activeTouches2 = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
          [(_UIKBProductivityPinchGestureRecognizer *)self avgDistanceToCentroid:activeTouches2];
          self->_avgTouchesToCentroidDistance = v23;

          LOBYTE(recognized) = self->_recognized;
        }

        if (recognized || [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged)
        {
          [(UIGestureRecognizer *)self setState:2];
          [eventCopy timestamp];
          self->_pinchDirection = [_UIKBProductivityPinchGestureRecognizer pinchDirectionWithCurrentTime:"pinchDirectionWithCurrentTime:perimeter:" perimeter:?];
          activeTouches3 = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
          [(_UIKBProductivityPinchGestureRecognizer *)self avgDistanceToCentroid:activeTouches3];
          self->_avgTouchesToCentroidDistance = v25;
        }
      }

      else if (!self->_recognized)
      {
        [(_UIKBProductivityPinchGestureRecognizer *)self setBeginPerimeter:v16 / self->_transform.a];
      }
    }

    else if ([(UIGestureRecognizer *)self state]<= UIGestureRecognizerStatePossible)
    {
      v43 = 344;
      v44 = eventCopy;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v26 = v8;
      v27 = [v26 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v46;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v46 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v45 + 1) + 8 * i);
            [v31 locationInView:{0, v43, v44, v45}];
            v33 = v32;
            v35 = v34;
            beginTouchLocations = [(_UIKBProductivityPinchGestureRecognizer *)self beginTouchLocations];
            v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v31, "_touchIdentifier")}];
            v38 = [beginTouchLocations objectForKey:v37];
            [v38 CGPointValue];
            v40 = v39;
            v42 = v41;

            if (sqrt((v40 - v33) * (v40 - v33) + (v42 - v35) * (v42 - v35)) > 20.0)
            {
              [(_UIKBProductivityPinchGestureRecognizer *)self setTooMuchSingleMovement:1];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v28);
      }

      v12 = v43;
      eventCopy = v44;
    }

    if ([(_UIKBProductivityPinchGestureRecognizer *)self tooMuchSingleMovement:v43]|| v10 - v13 > 0.05 && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
    {
      [(UIGestureRecognizer *)self setState:5];
      *(&self->super.super.isa + v12) = 1;
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  self->_hasFailedOnOtherDominantMotion = 0;
  endedCopy = ended;
  activeTouches = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
  allObjects = [endedCopy allObjects];

  [activeTouches removeObjectsInArray:allObjects];
  activeTouches2 = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
  v9 = [activeTouches2 count];
  v10 = self->_numberOfTouchesRequired - 1;

  if (v9 < v10)
  {
    if (self->_recognized)
    {
      self->_recognized = 0;
      v11 = 3;
    }

    else
    {
      v11 = 5;
    }

    [(UIGestureRecognizer *)self setState:v11];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  self->_recognized = 0;
  self->_hasFailedOnOtherDominantMotion = 0;
  cancelledCopy = cancelled;
  activeTouches = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
  allObjects = [cancelledCopy allObjects];

  [activeTouches removeObjectsInArray:allObjects];
  activeTouches2 = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
  v9 = [activeTouches2 count];
  numberOfTouchesRequired = self->_numberOfTouchesRequired;

  if (v9 < numberOfTouchesRequired)
  {
    self->_pinchDirection = 0;
    if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan)
    {
      v11 = 4;
    }

    else if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged)
    {
      v11 = 4;
    }

    else
    {
      v11 = 5;
    }

    [(UIGestureRecognizer *)self setState:v11];
  }
}

- (void)startMultitouchTimer:(double)timer
{
  [(_UIKBProductivityPinchGestureRecognizer *)self clearMultitouchTimer];
  self->_multitouchTimerEnabled = 1;

  [(_UIKBProductivityPinchGestureRecognizer *)self performSelector:sel_multitouchExpired_ withObject:0 afterDelay:timer];
}

- (void)multitouchExpired:(id)expired
{
  activeTouches = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
  v5 = [activeTouches count];
  numberOfTouchesRequired = self->_numberOfTouchesRequired;

  if (v5 < numberOfTouchesRequired)
  {
    [(_UIKBProductivityPinchGestureRecognizer *)self clearMultitouchTimer];

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (_UIKBProductivityPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = _UIKBProductivityPinchGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    _UIUndoPinchGestureRecognizerCommonInit(v4);
    v6 = v5;
  }

  return v5;
}

- (_UIKBProductivityPinchGestureRecognizer)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIKBProductivityPinchGestureRecognizer;
  v3 = [(UIGestureRecognizer *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    _UIUndoPinchGestureRecognizerCommonInit(v3);
    v5 = v4;
  }

  return v4;
}

- (int64_t)pinchDirectionWithCurrentTime:(double)time perimeter:(double)perimeter
{
  [(_UIKBProductivityPinchGestureRecognizer *)self beginPinchTimestamp];
  activeTouches = [(_UIKBProductivityPinchGestureRecognizer *)self activeTouches];
  [(_UIKBProductivityPinchGestureRecognizer *)self centroidOfTouches:activeTouches];
  v8 = v7;
  v10 = v9;

  [(_UIKBProductivityPinchGestureRecognizer *)self beginCentroid];
  v12 = vabdd_f64(v8, v11);
  [(_UIKBProductivityPinchGestureRecognizer *)self beginCentroid];
  if (v12 <= vabdd_f64(v10, v13) * 5.0)
  {
    [(_UIKBProductivityPinchGestureRecognizer *)self beginCentroid];
    v17 = vabdd_f64(v10, v16);
    [(_UIKBProductivityPinchGestureRecognizer *)self beginCentroid];
    v19 = vabdd_f64(v8, v18) * 5.0;
    v15 = v17 > v19;
    [(_UIKBProductivityPinchGestureRecognizer *)self beginPerimeter];
    if (v20 <= perimeter)
    {
      goto LABEL_7;
    }

    if (v17 <= v19)
    {
      return 8;
    }

LABEL_6:
    [(_UIKBProductivityPinchGestureRecognizer *)self beginPerimeter];
    return 8 * (v21 * 0.8 >= perimeter);
  }

  [(_UIKBProductivityPinchGestureRecognizer *)self beginPerimeter];
  if (v14 > perimeter)
  {
    goto LABEL_6;
  }

  v15 = 1;
LABEL_7:
  [(_UIKBProductivityPinchGestureRecognizer *)self beginPerimeter];
  if (v23 >= perimeter)
  {
    result = 0;
  }

  else
  {
    result = 10;
  }

  if (v23 < perimeter && v15)
  {
    [(_UIKBProductivityPinchGestureRecognizer *)self beginPerimeter];
    if (v24 * 1.2 <= perimeter)
    {
      return 10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (double)perimeterOfTouches:(id)touches
{
  v26[2] = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  v5 = 0.0;
  if ([touchesCopy count] >= 2)
  {
    v6 = [touchesCopy objectAtIndexedSubscript:0];
    v26[0] = v6;
    v7 = [touchesCopy objectAtIndexedSubscript:1];
    v26[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v9 = v8;
    v10 = 0.0;
    if (self)
    {
      _UIGestureRecognizerDistanceBetweenTouches(v8);
      v5 = v11;
    }

    if ([touchesCopy count] == 3)
    {
      v12 = [touchesCopy objectAtIndexedSubscript:1];
      v25[0] = v12;
      v13 = [touchesCopy objectAtIndexedSubscript:2];
      v25[1] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      v15 = v14;
      if (self)
      {
        _UIGestureRecognizerDistanceBetweenTouches(v14);
        v10 = v16;
      }
    }

    v17 = 0.0;
    if ([touchesCopy count] == 3)
    {
      v18 = [touchesCopy objectAtIndexedSubscript:0];
      v24[0] = v18;
      v19 = [touchesCopy objectAtIndexedSubscript:2];
      v24[1] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      v21 = v20;
      if (self)
      {
        _UIGestureRecognizerDistanceBetweenTouches(v20);
        v17 = v22;
      }
    }

    v5 = v5 + v10 + v17;
  }

  return v5;
}

- (CGPoint)centroidOfTouches:(id)touches
{
  touchesCopy = touches;
  if ([touchesCopy count] > 1)
  {
    v6 = [touchesCopy objectAtIndexedSubscript:0];
    [v6 locationInView:0];
    v8 = v7;
    v10 = v9;

    v11 = [touchesCopy objectAtIndexedSubscript:1];
    [v11 locationInView:0];
    v13 = v12;
    v15 = v14;

    if ([touchesCopy count] == 3)
    {
      v16 = [touchesCopy objectAtIndexedSubscript:2];
      [v16 locationInView:0];
      v18 = v17;
      v20 = v19;
    }

    else
    {
      v18 = *MEMORY[0x1E695EFF8];
      v20 = *(MEMORY[0x1E695EFF8] + 8);
    }

    v5 = (v8 + v13 + v18) / 3.0;
    v4 = (v10 + v15 + v20) / 3.0;
  }

  else
  {
    v5 = *MEMORY[0x1E695EFF8];
    v4 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v21 = v5;
  v22 = v4;
  result.y = v22;
  result.x = v21;
  return result;
}

- (double)avgDistanceToCentroid:(id)centroid
{
  centroidCopy = centroid;
  v5 = 0.0;
  if ([centroidCopy count] >= 2)
  {
    [(_UIKBProductivityPinchGestureRecognizer *)self centroidOfTouches:centroidCopy];
    v7 = v6;
    v9 = v8;
    if ([centroidCopy count] > 2)
    {
      v10 = 3;
    }

    else
    {
      v10 = [centroidCopy count];
      if (!v10)
      {
        v5 = NAN;
        goto LABEL_9;
      }
    }

    v11 = 0;
    v12 = 0.0;
    do
    {
      v13 = [centroidCopy objectAtIndexedSubscript:v11];
      [v13 locationInView:0];
      v12 = v12 + sqrt((v14 - v7) * (v14 - v7) + (v15 - v9) * (v15 - v9));

      ++v11;
    }

    while (v10 != v11);
    v5 = v12 / v10;
  }

LABEL_9:

  return v5;
}

- (CGPoint)beginCentroid
{
  x = self->_beginCentroid.x;
  y = self->_beginCentroid.y;
  result.y = y;
  result.x = x;
  return result;
}

@end