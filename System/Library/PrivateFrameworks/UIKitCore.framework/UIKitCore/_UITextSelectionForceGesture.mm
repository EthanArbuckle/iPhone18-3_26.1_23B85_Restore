@interface _UITextSelectionForceGesture
- (BOOL)_shouldDelayUntilForceLevelRequirementIsMet;
- (BOOL)forceHasIncreasedForTimeInterval:(double)interval;
- (BOOL)shouldResetRangeForVelocity:(CGPoint)velocity previousVelocity:(CGPoint)previousVelocity;
- (CGPoint)_adjustSceneReferenceLocation:(CGPoint)result;
- (CGPoint)_centroidInView:(id)view;
- (CGPoint)_convertVelocitySample:(id)sample fromSceneReferenceCoordinatesToView:(id)view;
- (CGPoint)_locationOfTouches:(id)touches;
- (CGPoint)_shiftPanLocationToNewSceneReferenceLocation:(CGPoint)location;
- (CGPoint)lastSceneReferenceLocation;
- (CGPoint)lastUnadjustedSceneReferenceLocation;
- (CGPoint)velocityInView:(id)view;
- (CGRect)velocityRange;
- (UIOffset)_offsetInViewFromSceneReferenceLocation:(CGPoint)location toSceneReferenceLocation:(CGPoint)referenceLocation;
- (_UITextSelectionForceGesture)initWithTarget:(id)target action:(SEL)action;
- (void)_centroidMovedTo:(CGPoint)to atTime:(double)time physicalTouch:(id)touch;
- (void)_resetVelocitySamples;
- (void)_updateLiftOffState;
- (void)enoughTimeElapsed:(id)elapsed;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UITextSelectionForceGesture

- (_UITextSelectionForceGesture)initWithTarget:(id)target action:(SEL)action
{
  v14.receiver = self;
  v14.super_class = _UITextSelectionForceGesture;
  v4 = [(UILongPressGestureRecognizer *)&v14 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setAllowedTouchTypes:&unk_1EFE2CE50];
    [(UIGestureRecognizer *)v5 setName:@"com.apple.UIKit.textSelectionForce"];
    [(UILongPressGestureRecognizer *)v5 set_prefersToBeExclusiveWithCompetingLongPressGestureRecognizers:1];
    v6 = objc_alloc_init(UIKBPanGestureVelocitySample);
    velocitySample = v5->_velocitySample;
    v5->_velocitySample = v6;

    v8 = objc_alloc_init(UIKBPanGestureVelocitySample);
    previousVelocitySample = v5->_previousVelocitySample;
    v5->_previousVelocitySample = v8;

    v10 = objc_alloc_init(UIKBPanGestureVelocitySample);
    liftOffSample = v5->_liftOffSample;
    v5->_liftOffSample = v10;

    v12 = *(MEMORY[0x1E695F058] + 16);
    v5->_velocityRange.origin = *MEMORY[0x1E695F058];
    v5->_velocityRange.size = v12;
    v5->_touchEclipsesVelocity = 0;
  }

  return v5;
}

- (void)enoughTimeElapsed:(id)elapsed
{
  elapsedCopy = elapsed;
  if (![(_UITextSelectionForceGesture *)self shouldFailWithoutForce]|| self && self->super.super._forcePressCount)
  {
    [(_UITextSelectionForceGesture *)self setDidLongPress:1];
    v5.receiver = self;
    v5.super_class = _UITextSelectionForceGesture;
    [(UILongPressGestureRecognizer *)&v5 enoughTimeElapsed:elapsedCopy];
  }

  else
  {
    [(UIGestureRecognizer *)self setState:5];
  }
}

- (BOOL)_shouldDelayUntilForceLevelRequirementIsMet
{
  shouldFailWithoutForce = [(_UITextSelectionForceGesture *)self shouldFailWithoutForce];
  if (shouldFailWithoutForce)
  {
    v5.receiver = self;
    v5.super_class = _UITextSelectionForceGesture;
    LOBYTE(shouldFailWithoutForce) = [(UIGestureRecognizer *)&v5 _shouldDelayUntilForceLevelRequirementIsMet];
  }

  return shouldFailWithoutForce;
}

- (void)_resetVelocitySamples
{
  _velocitySample = [(_UITextSelectionForceGesture *)self _velocitySample];
  [_velocitySample resetValues];

  _previousVelocitySample = [(_UITextSelectionForceGesture *)self _previousVelocitySample];
  [_previousVelocitySample resetValues];

  _liftOffSample = [(_UITextSelectionForceGesture *)self _liftOffSample];
  [_liftOffSample resetValues];
}

- (void)reset
{
  [(_UITextSelectionForceGesture *)self setTouchEclipsesVelocity:0];
  [(_UITextSelectionForceGesture *)self setVelocityRange:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(_UITextSelectionForceGesture *)self setLiftOffState:0];
  [(_UITextSelectionForceGesture *)self setIncreasingForceState:0];
  [(_UITextSelectionForceGesture *)self setIncreasingForceTimestamp:0.0];
  [(_UITextSelectionForceGesture *)self setDidLongPress:0];
  [(_UITextSelectionForceGesture *)self _resetVelocitySamples];
  v3.receiver = self;
  v3.super_class = _UITextSelectionForceGesture;
  [(UIGestureRecognizer *)&v3 reset];
}

- (CGPoint)_convertVelocitySample:(id)sample fromSceneReferenceCoordinatesToView:(id)view
{
  sampleCopy = sample;
  viewCopy = view;
  [sampleCopy dt];
  if (v8 >= 0.001)
  {
    [sampleCopy start];
    [(UIGestureRecognizer *)self _convertPoint:viewCopy fromSceneReferenceCoordinatesToView:?];
    v12 = v11;
    v14 = v13;
    [sampleCopy end];
    [(UIGestureRecognizer *)self _convertPoint:viewCopy fromSceneReferenceCoordinatesToView:?];
    v16 = v15;
    v18 = v17 - v12;
    [sampleCopy dt];
    v9 = v18 / v19;
    [sampleCopy dt];
    v10 = (v16 - v14) / v20;
  }

  else
  {
    v9 = *MEMORY[0x1E695EFF8];
    v10 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v21 = v9;
  v22 = v10;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGPoint)velocityInView:(id)view
{
  viewCopy = view;
  [(_UITextSelectionForceGesture *)self _convertVelocitySample:self->_velocitySample fromSceneReferenceCoordinatesToView:viewCopy];
  v6 = v5;
  v8 = v7;
  _previousVelocitySample = [(_UITextSelectionForceGesture *)self _previousVelocitySample];
  [_previousVelocitySample dt];
  v11 = v10;

  if (v11 > 0.00000011920929)
  {
    [(_UITextSelectionForceGesture *)self _convertVelocitySample:self->_previousVelocitySample fromSceneReferenceCoordinatesToView:viewCopy];
    v6 = v6 * 0.25 + v12 * 0.75;
    v8 = v8 * 0.25 + v13 * 0.75;
  }

  v14 = v6;
  v15 = v8;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)_locationOfTouches:(id)touches
{
  anyObject = [touches anyObject];
  window = [anyObject window];
  [anyObject locationInView:0];
  [window _convertPointToSceneReferenceSpace:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (UIOffset)_offsetInViewFromSceneReferenceLocation:(CGPoint)location toSceneReferenceLocation:(CGPoint)referenceLocation
{
  y = referenceLocation.y;
  x = referenceLocation.x;
  v6 = location.y;
  v7 = location.x;
  view = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:v7, v6];
  v11 = v10;
  v13 = v12;

  view2 = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:view2 fromSceneReferenceCoordinatesToView:x, y];
  v16 = v15;
  v18 = v17;

  v19 = v16 - v11;
  v20 = v18 - v13;
  result.vertical = v20;
  result.horizontal = v19;
  return result;
}

- (CGPoint)_shiftPanLocationToNewSceneReferenceLocation:(CGPoint)location
{
  [(_UITextSelectionForceGesture *)self _offsetInViewFromSceneReferenceLocation:self->_lastUnadjustedSceneReferenceLocation.x toSceneReferenceLocation:self->_lastUnadjustedSceneReferenceLocation.y, location.x, location.y];
  v5 = v4;
  v7 = v6;
  view = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:self->_lastSceneReferenceLocation.x, self->_lastSceneReferenceLocation.y];
  v10 = v9;
  v12 = v11;

  view2 = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:view2 toSceneReferenceCoordinatesFromView:v5 + v10, v7 + v12];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)_adjustSceneReferenceLocation:(CGPoint)result
{
  if (self->_lastSceneReferenceLocation.x != self->_lastUnadjustedSceneReferenceLocation.x || self->_lastSceneReferenceLocation.y != self->_lastUnadjustedSceneReferenceLocation.y)
  {
    [(_UITextSelectionForceGesture *)self _shiftPanLocationToNewSceneReferenceLocation:result.x, result.y, v3, v4];
  }

  return result;
}

- (void)_centroidMovedTo:(CGPoint)to atTime:(double)time physicalTouch:(id)touch
{
  y = to.y;
  x = to.x;
  touchCopy = touch;
  [(_UITextSelectionForceGesture *)self _adjustSceneReferenceLocation:x, y];
  v11 = v10;
  v13 = v12;
  v14 = time - self->_lastTouchTime;
  _previousVelocitySample = [(_UITextSelectionForceGesture *)self _previousVelocitySample];
  _velocitySample = [(_UITextSelectionForceGesture *)self _velocitySample];
  [_previousVelocitySample pullValuesFrom:_velocitySample];

  v17 = self->_lastSceneReferenceLocation.x;
  v18 = self->_lastSceneReferenceLocation.y;
  _velocitySample2 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [_velocitySample2 setStart:{v17, v18}];

  _velocitySample3 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [_velocitySample3 setEnd:{v11, v13}];

  _velocitySample4 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [_velocitySample4 setDt:v14];

  [touchCopy force];
  v23 = v22;
  _velocitySample5 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [_velocitySample5 setForce:v23];

  [touchCopy majorRadius];
  v26 = v25;

  _velocitySample6 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [_velocitySample6 setMajorRadius:v26];

  self->_lastUnadjustedSceneReferenceLocation.x = x;
  self->_lastUnadjustedSceneReferenceLocation.y = y;
  self->_lastSceneReferenceLocation.x = v11;
  self->_lastSceneReferenceLocation.y = v13;
  self->_lastTouchTime = time;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  touches = [(UILongPressGestureRecognizer *)self touches];
  v9 = [touches count];

  v13.receiver = self;
  v13.super_class = _UITextSelectionForceGesture;
  [(UILongPressGestureRecognizer *)&v13 touchesBegan:beganCopy withEvent:eventCopy];
  if (!v9)
  {
    [(_UITextSelectionForceGesture *)self _locationOfTouches:beganCopy];
    self->_lastSceneReferenceLocation.x = v10;
    self->_lastSceneReferenceLocation.y = v11;
    self->_lastUnadjustedSceneReferenceLocation = self->_lastSceneReferenceLocation;
    [eventCopy timestamp];
    self->_lastTouchTime = v12;
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  view = [(UIGestureRecognizer *)self view];
  [(_UITextSelectionForceGesture *)self velocityInView:view];
  v10 = v9;
  v12 = v11;

  v46.receiver = self;
  v46.super_class = _UITextSelectionForceGesture;
  [(UILongPressGestureRecognizer *)&v46 touchesMoved:movedCopy withEvent:eventCopy];
  [(_UITextSelectionForceGesture *)self _locationOfTouches:movedCopy];
  v14 = v13;
  v16 = v15;
  [eventCopy timestamp];
  v18 = v17;

  anyObject = [movedCopy anyObject];

  [(_UITextSelectionForceGesture *)self _centroidMovedTo:anyObject atTime:v14 physicalTouch:v16, v18];
  if (!self || ([(UIGestureRecognizer *)self _state]- 1) > 2 || (*(&self->super.super._gestureFlags + 6) & 8) != 0)
  {
    v20 = floor(v10);
    v21 = floor(v12);
    view2 = [(UIGestureRecognizer *)self view];
    [(_UITextSelectionForceGesture *)self velocityInView:view2];
    v24 = floor(v23);
    v26 = floor(v25);

    view3 = [(UIGestureRecognizer *)self view];
    [(UILongPressGestureRecognizer *)self locationInView:view3];
    x = v28;
    y = v30;
    width = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);

    if (![(_UITextSelectionForceGesture *)self shouldResetRangeForVelocity:v24 previousVelocity:v26, v20, v21])
    {
      [(_UITextSelectionForceGesture *)self velocityRange];
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v48 = CGRectUnion(v47, v49);
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
    }

    [(_UITextSelectionForceGesture *)self setVelocityRange:x, y, width, height];
    _velocitySample = [(_UITextSelectionForceGesture *)self _velocitySample];
    [_velocitySample majorRadius];
    v36 = v35 * 0.3;

    [(_UITextSelectionForceGesture *)self velocityRange];
    if (v37 <= v36)
    {
      [(_UITextSelectionForceGesture *)self velocityRange];
      v38 = v39 <= v36;
    }

    else
    {
      v38 = 0;
    }

    [(_UITextSelectionForceGesture *)self setTouchEclipsesVelocity:v38];
    [(UIKBPanGestureVelocitySample *)self->_velocitySample force];
    v41 = v40;
    [(UIKBPanGestureVelocitySample *)self->_previousVelocitySample force];
    v43 = v42;
    increasingForceState = [(_UITextSelectionForceGesture *)self increasingForceState];
    if (v41 >= v43)
    {
      if (increasingForceState)
      {
        return;
      }

      [(_UITextSelectionForceGesture *)self setIncreasingForceTimestamp:CFAbsoluteTimeGetCurrent()];
      v45 = 1;
    }

    else
    {
      if (increasingForceState != 1)
      {
        return;
      }

      v45 = 0;
    }

    [(_UITextSelectionForceGesture *)self setIncreasingForceState:v45];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v31.receiver = self;
  v31.super_class = _UITextSelectionForceGesture;
  eventCopy = event;
  endedCopy = ended;
  [(UILongPressGestureRecognizer *)&v31 touchesEnded:endedCopy withEvent:eventCopy];
  [(_UITextSelectionForceGesture *)self _locationOfTouches:endedCopy, v31.receiver, v31.super_class];
  v9 = v8;
  v11 = v10;
  [eventCopy timestamp];
  v13 = v12;

  anyObject = [endedCopy anyObject];

  [(_UITextSelectionForceGesture *)self _centroidMovedTo:anyObject atTime:v9 physicalTouch:v11, v13];
  if ([(_UITextSelectionForceGesture *)self liftOffState]== 1)
  {
    view = [(UIGestureRecognizer *)self view];
    [(_UITextSelectionForceGesture *)self velocityInView:view];
    v17 = v16;
    v19 = v18;

    _liftOffSample = [(_UITextSelectionForceGesture *)self _liftOffSample];
    [_liftOffSample majorRadius];
    v22 = v21;

    if (v17 * v17 + v19 * v19 >= v22 * v22)
    {
      v23 = atan2(-v19, -v17);
      _liftOffSample2 = [(_UITextSelectionForceGesture *)self _liftOffSample];
      [_liftOffSample2 end];
      v26 = v25;
      v28 = v27;

      v29 = __sincos_stret(v23);
      _liftOffSample3 = [(_UITextSelectionForceGesture *)self _liftOffSample];
      [_liftOffSample3 setEnd:{v22 * v29.__cosval * 0.1 + v26, v22 * v29.__sinval * 0.1 + v28}];
    }
  }
}

- (BOOL)shouldResetRangeForVelocity:(CGPoint)velocity previousVelocity:(CGPoint)previousVelocity
{
  y = velocity.y;
  x = velocity.x;
  if (previousVelocity.x == 0.0 && velocity.x != 0.0 || previousVelocity.y == 0.0 && velocity.y != 0.0)
  {
    return 1;
  }

  v7 = atan2(previousVelocity.y, previousVelocity.x) + 3.14159265 + 3.14159265;
  v8 = atan2(y, x) + 3.14159265 + 3.14159265;
  return v8 >= v7 + 0.785398163 || v8 <= v7 + -0.785398163;
}

- (void)_updateLiftOffState
{
  _velocitySample = [(_UITextSelectionForceGesture *)self _velocitySample];
  [_velocitySample majorRadius];
  v5 = v4;
  _previousVelocitySample = [(_UITextSelectionForceGesture *)self _previousVelocitySample];
  [_previousVelocitySample majorRadius];
  v8 = v7;

  liftOffState = [(_UITextSelectionForceGesture *)self liftOffState];
  if (liftOffState == 1)
  {

    [(_UITextSelectionForceGesture *)self setLiftOffState:v5 < v8];
  }

  else if (!liftOffState && v5 < v8)
  {
    [(_UITextSelectionForceGesture *)self setLiftOffState:1];
    _liftOffSample = [(_UITextSelectionForceGesture *)self _liftOffSample];
    _previousVelocitySample2 = [(_UITextSelectionForceGesture *)self _previousVelocitySample];
    [_liftOffSample pullValuesFrom:_previousVelocitySample2];
  }
}

- (CGPoint)_centroidInView:(id)view
{
  viewCopy = view;
  if ([(_UITextSelectionForceGesture *)self liftOffState]== 1)
  {
    _liftOffSample = [(_UITextSelectionForceGesture *)self _liftOffSample];
    [_liftOffSample end];
    [(UIGestureRecognizer *)self _convertPoint:viewCopy fromSceneReferenceCoordinatesToView:?];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UITextSelectionForceGesture;
    [(UILongPressGestureRecognizer *)&v14 _centroidInView:viewCopy];
    v7 = v10;
    v9 = v11;
  }

  v12 = v7;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)forceHasIncreasedForTimeInterval:(double)interval
{
  if ([(_UITextSelectionForceGesture *)self increasingForceState]!= 1 || [(UIGestureRecognizer *)self currentPreviewForceState]< 1)
  {
    return 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(_UITextSelectionForceGesture *)self increasingForceTimestamp];
  return Current - v6 >= interval;
}

- (CGPoint)lastSceneReferenceLocation
{
  x = self->_lastSceneReferenceLocation.x;
  y = self->_lastSceneReferenceLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastUnadjustedSceneReferenceLocation
{
  x = self->_lastUnadjustedSceneReferenceLocation.x;
  y = self->_lastUnadjustedSceneReferenceLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)velocityRange
{
  x = self->_velocityRange.origin.x;
  y = self->_velocityRange.origin.y;
  width = self->_velocityRange.size.width;
  height = self->_velocityRange.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end