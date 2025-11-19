@interface _UITextSelectionForceGesture
- (BOOL)_shouldDelayUntilForceLevelRequirementIsMet;
- (BOOL)forceHasIncreasedForTimeInterval:(double)a3;
- (BOOL)shouldResetRangeForVelocity:(CGPoint)a3 previousVelocity:(CGPoint)a4;
- (CGPoint)_adjustSceneReferenceLocation:(CGPoint)result;
- (CGPoint)_centroidInView:(id)a3;
- (CGPoint)_convertVelocitySample:(id)a3 fromSceneReferenceCoordinatesToView:(id)a4;
- (CGPoint)_locationOfTouches:(id)a3;
- (CGPoint)_shiftPanLocationToNewSceneReferenceLocation:(CGPoint)a3;
- (CGPoint)lastSceneReferenceLocation;
- (CGPoint)lastUnadjustedSceneReferenceLocation;
- (CGPoint)velocityInView:(id)a3;
- (CGRect)velocityRange;
- (UIOffset)_offsetInViewFromSceneReferenceLocation:(CGPoint)a3 toSceneReferenceLocation:(CGPoint)a4;
- (_UITextSelectionForceGesture)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_centroidMovedTo:(CGPoint)a3 atTime:(double)a4 physicalTouch:(id)a5;
- (void)_resetVelocitySamples;
- (void)_updateLiftOffState;
- (void)enoughTimeElapsed:(id)a3;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UITextSelectionForceGesture

- (_UITextSelectionForceGesture)initWithTarget:(id)a3 action:(SEL)a4
{
  v14.receiver = self;
  v14.super_class = _UITextSelectionForceGesture;
  v4 = [(UILongPressGestureRecognizer *)&v14 initWithTarget:a3 action:a4];
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

- (void)enoughTimeElapsed:(id)a3
{
  v4 = a3;
  if (![(_UITextSelectionForceGesture *)self shouldFailWithoutForce]|| self && self->super.super._forcePressCount)
  {
    [(_UITextSelectionForceGesture *)self setDidLongPress:1];
    v5.receiver = self;
    v5.super_class = _UITextSelectionForceGesture;
    [(UILongPressGestureRecognizer *)&v5 enoughTimeElapsed:v4];
  }

  else
  {
    [(UIGestureRecognizer *)self setState:5];
  }
}

- (BOOL)_shouldDelayUntilForceLevelRequirementIsMet
{
  v3 = [(_UITextSelectionForceGesture *)self shouldFailWithoutForce];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = _UITextSelectionForceGesture;
    LOBYTE(v3) = [(UIGestureRecognizer *)&v5 _shouldDelayUntilForceLevelRequirementIsMet];
  }

  return v3;
}

- (void)_resetVelocitySamples
{
  v3 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [v3 resetValues];

  v4 = [(_UITextSelectionForceGesture *)self _previousVelocitySample];
  [v4 resetValues];

  v5 = [(_UITextSelectionForceGesture *)self _liftOffSample];
  [v5 resetValues];
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

- (CGPoint)_convertVelocitySample:(id)a3 fromSceneReferenceCoordinatesToView:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 dt];
  if (v8 >= 0.001)
  {
    [v6 start];
    [(UIGestureRecognizer *)self _convertPoint:v7 fromSceneReferenceCoordinatesToView:?];
    v12 = v11;
    v14 = v13;
    [v6 end];
    [(UIGestureRecognizer *)self _convertPoint:v7 fromSceneReferenceCoordinatesToView:?];
    v16 = v15;
    v18 = v17 - v12;
    [v6 dt];
    v9 = v18 / v19;
    [v6 dt];
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

- (CGPoint)velocityInView:(id)a3
{
  v4 = a3;
  [(_UITextSelectionForceGesture *)self _convertVelocitySample:self->_velocitySample fromSceneReferenceCoordinatesToView:v4];
  v6 = v5;
  v8 = v7;
  v9 = [(_UITextSelectionForceGesture *)self _previousVelocitySample];
  [v9 dt];
  v11 = v10;

  if (v11 > 0.00000011920929)
  {
    [(_UITextSelectionForceGesture *)self _convertVelocitySample:self->_previousVelocitySample fromSceneReferenceCoordinatesToView:v4];
    v6 = v6 * 0.25 + v12 * 0.75;
    v8 = v8 * 0.25 + v13 * 0.75;
  }

  v14 = v6;
  v15 = v8;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)_locationOfTouches:(id)a3
{
  v3 = [a3 anyObject];
  v4 = [v3 window];
  [v3 locationInView:0];
  [v4 _convertPointToSceneReferenceSpace:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (UIOffset)_offsetInViewFromSceneReferenceLocation:(CGPoint)a3 toSceneReferenceLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:v9 fromSceneReferenceCoordinatesToView:v7, v6];
  v11 = v10;
  v13 = v12;

  v14 = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:v14 fromSceneReferenceCoordinatesToView:x, y];
  v16 = v15;
  v18 = v17;

  v19 = v16 - v11;
  v20 = v18 - v13;
  result.vertical = v20;
  result.horizontal = v19;
  return result;
}

- (CGPoint)_shiftPanLocationToNewSceneReferenceLocation:(CGPoint)a3
{
  [(_UITextSelectionForceGesture *)self _offsetInViewFromSceneReferenceLocation:self->_lastUnadjustedSceneReferenceLocation.x toSceneReferenceLocation:self->_lastUnadjustedSceneReferenceLocation.y, a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  v8 = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:v8 fromSceneReferenceCoordinatesToView:self->_lastSceneReferenceLocation.x, self->_lastSceneReferenceLocation.y];
  v10 = v9;
  v12 = v11;

  v13 = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:v13 toSceneReferenceCoordinatesFromView:v5 + v10, v7 + v12];
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

- (void)_centroidMovedTo:(CGPoint)a3 atTime:(double)a4 physicalTouch:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  [(_UITextSelectionForceGesture *)self _adjustSceneReferenceLocation:x, y];
  v11 = v10;
  v13 = v12;
  v14 = a4 - self->_lastTouchTime;
  v15 = [(_UITextSelectionForceGesture *)self _previousVelocitySample];
  v16 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [v15 pullValuesFrom:v16];

  v17 = self->_lastSceneReferenceLocation.x;
  v18 = self->_lastSceneReferenceLocation.y;
  v19 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [v19 setStart:{v17, v18}];

  v20 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [v20 setEnd:{v11, v13}];

  v21 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [v21 setDt:v14];

  [v9 force];
  v23 = v22;
  v24 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [v24 setForce:v23];

  [v9 majorRadius];
  v26 = v25;

  v27 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [v27 setMajorRadius:v26];

  self->_lastUnadjustedSceneReferenceLocation.x = x;
  self->_lastUnadjustedSceneReferenceLocation.y = y;
  self->_lastSceneReferenceLocation.x = v11;
  self->_lastSceneReferenceLocation.y = v13;
  self->_lastTouchTime = a4;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UILongPressGestureRecognizer *)self touches];
  v9 = [v8 count];

  v13.receiver = self;
  v13.super_class = _UITextSelectionForceGesture;
  [(UILongPressGestureRecognizer *)&v13 touchesBegan:v6 withEvent:v7];
  if (!v9)
  {
    [(_UITextSelectionForceGesture *)self _locationOfTouches:v6];
    self->_lastSceneReferenceLocation.x = v10;
    self->_lastSceneReferenceLocation.y = v11;
    self->_lastUnadjustedSceneReferenceLocation = self->_lastSceneReferenceLocation;
    [v7 timestamp];
    self->_lastTouchTime = v12;
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIGestureRecognizer *)self view];
  [(_UITextSelectionForceGesture *)self velocityInView:v8];
  v10 = v9;
  v12 = v11;

  v46.receiver = self;
  v46.super_class = _UITextSelectionForceGesture;
  [(UILongPressGestureRecognizer *)&v46 touchesMoved:v7 withEvent:v6];
  [(_UITextSelectionForceGesture *)self _locationOfTouches:v7];
  v14 = v13;
  v16 = v15;
  [v6 timestamp];
  v18 = v17;

  v19 = [v7 anyObject];

  [(_UITextSelectionForceGesture *)self _centroidMovedTo:v19 atTime:v14 physicalTouch:v16, v18];
  if (!self || ([(UIGestureRecognizer *)self _state]- 1) > 2 || (*(&self->super.super._gestureFlags + 6) & 8) != 0)
  {
    v20 = floor(v10);
    v21 = floor(v12);
    v22 = [(UIGestureRecognizer *)self view];
    [(_UITextSelectionForceGesture *)self velocityInView:v22];
    v24 = floor(v23);
    v26 = floor(v25);

    v27 = [(UIGestureRecognizer *)self view];
    [(UILongPressGestureRecognizer *)self locationInView:v27];
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
    v34 = [(_UITextSelectionForceGesture *)self _velocitySample];
    [v34 majorRadius];
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
    v44 = [(_UITextSelectionForceGesture *)self increasingForceState];
    if (v41 >= v43)
    {
      if (v44)
      {
        return;
      }

      [(_UITextSelectionForceGesture *)self setIncreasingForceTimestamp:CFAbsoluteTimeGetCurrent()];
      v45 = 1;
    }

    else
    {
      if (v44 != 1)
      {
        return;
      }

      v45 = 0;
    }

    [(_UITextSelectionForceGesture *)self setIncreasingForceState:v45];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v31.receiver = self;
  v31.super_class = _UITextSelectionForceGesture;
  v6 = a4;
  v7 = a3;
  [(UILongPressGestureRecognizer *)&v31 touchesEnded:v7 withEvent:v6];
  [(_UITextSelectionForceGesture *)self _locationOfTouches:v7, v31.receiver, v31.super_class];
  v9 = v8;
  v11 = v10;
  [v6 timestamp];
  v13 = v12;

  v14 = [v7 anyObject];

  [(_UITextSelectionForceGesture *)self _centroidMovedTo:v14 atTime:v9 physicalTouch:v11, v13];
  if ([(_UITextSelectionForceGesture *)self liftOffState]== 1)
  {
    v15 = [(UIGestureRecognizer *)self view];
    [(_UITextSelectionForceGesture *)self velocityInView:v15];
    v17 = v16;
    v19 = v18;

    v20 = [(_UITextSelectionForceGesture *)self _liftOffSample];
    [v20 majorRadius];
    v22 = v21;

    if (v17 * v17 + v19 * v19 >= v22 * v22)
    {
      v23 = atan2(-v19, -v17);
      v24 = [(_UITextSelectionForceGesture *)self _liftOffSample];
      [v24 end];
      v26 = v25;
      v28 = v27;

      v29 = __sincos_stret(v23);
      v30 = [(_UITextSelectionForceGesture *)self _liftOffSample];
      [v30 setEnd:{v22 * v29.__cosval * 0.1 + v26, v22 * v29.__sinval * 0.1 + v28}];
    }
  }
}

- (BOOL)shouldResetRangeForVelocity:(CGPoint)a3 previousVelocity:(CGPoint)a4
{
  y = a3.y;
  x = a3.x;
  if (a4.x == 0.0 && a3.x != 0.0 || a4.y == 0.0 && a3.y != 0.0)
  {
    return 1;
  }

  v7 = atan2(a4.y, a4.x) + 3.14159265 + 3.14159265;
  v8 = atan2(y, x) + 3.14159265 + 3.14159265;
  return v8 >= v7 + 0.785398163 || v8 <= v7 + -0.785398163;
}

- (void)_updateLiftOffState
{
  v3 = [(_UITextSelectionForceGesture *)self _velocitySample];
  [v3 majorRadius];
  v5 = v4;
  v6 = [(_UITextSelectionForceGesture *)self _previousVelocitySample];
  [v6 majorRadius];
  v8 = v7;

  v9 = [(_UITextSelectionForceGesture *)self liftOffState];
  if (v9 == 1)
  {

    [(_UITextSelectionForceGesture *)self setLiftOffState:v5 < v8];
  }

  else if (!v9 && v5 < v8)
  {
    [(_UITextSelectionForceGesture *)self setLiftOffState:1];
    v11 = [(_UITextSelectionForceGesture *)self _liftOffSample];
    v10 = [(_UITextSelectionForceGesture *)self _previousVelocitySample];
    [v11 pullValuesFrom:v10];
  }
}

- (CGPoint)_centroidInView:(id)a3
{
  v4 = a3;
  if ([(_UITextSelectionForceGesture *)self liftOffState]== 1)
  {
    v5 = [(_UITextSelectionForceGesture *)self _liftOffSample];
    [v5 end];
    [(UIGestureRecognizer *)self _convertPoint:v4 fromSceneReferenceCoordinatesToView:?];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UITextSelectionForceGesture;
    [(UILongPressGestureRecognizer *)&v14 _centroidInView:v4];
    v7 = v10;
    v9 = v11;
  }

  v12 = v7;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)forceHasIncreasedForTimeInterval:(double)a3
{
  if ([(_UITextSelectionForceGesture *)self increasingForceState]!= 1 || [(UIGestureRecognizer *)self currentPreviewForceState]< 1)
  {
    return 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(_UITextSelectionForceGesture *)self increasingForceTimestamp];
  return Current - v6 >= a3;
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