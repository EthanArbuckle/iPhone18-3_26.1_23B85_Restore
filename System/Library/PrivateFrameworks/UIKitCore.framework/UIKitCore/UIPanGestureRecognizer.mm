@interface UIPanGestureRecognizer
- (BOOL)_shouldBeginHorizontally:(BOOL)a3 vertically:(BOOL)a4 withEvent:(id)a5;
- (BOOL)_shouldTryToBeginWithEvent:(id)a3;
- (BOOL)_touchesExceedAllowableSeparation;
- (BOOL)_updateMovingTouchesArraySavingOldArray:(id *)a3;
- (BOOL)_willScrollX;
- (BOOL)_willScrollY;
- (BOOL)shouldReceiveEvent:(id)a3;
- (CGPoint)_adjustSceneReferenceLocation:(CGPoint)result;
- (CGPoint)_convertPoint:(CGPoint)a3 fromSceneReferenceCoordinatesToView:(id)a4;
- (CGPoint)_convertPoint:(CGPoint)a3 toSceneReferenceCoordinatesFromView:(id)a4;
- (CGPoint)_convertVelocitySample:(id)a3 fromSceneReferenceCoordinatesToView:(id)a4;
- (CGPoint)_initialLocationInView:(id)a3;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)locationOfTouch:(unint64_t)a3 inView:(id)a4;
- (CGPoint)translationInView:(UIView *)view;
- (CGPoint)velocityInView:(UIView *)view;
- (UIPanGestureRecognizer)initWithCoder:(id)a3;
- (UIPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)_allowableSeparation;
- (double)_hysteresis;
- (double)_offsetInViewFromSceneReferenceLocation:(double)a3 toSceneReferenceLocation:(double)a4;
- (double)_shiftPanLocationToNewSceneReferenceLocation:(double)a3 lockingToAxis:(double)a4;
- (double)_translationDistanceInSceneInSelfAxis:(double)a3;
- (id)_activeTouches;
- (uint64_t)_scrollDeviceCategory;
- (void)_centroidMovedTo:(CGPoint)a3 atTime:(double)a4 affectingTranslation:(BOOL)a5;
- (void)_handleEndedTouches:(id)a3 withFinalStateAdjustments:(id)a4;
- (void)_ignoreTouchForTouchIdentifier:(unsigned int)a3;
- (void)_ignoreTouches:(uint64_t)a3 forEvent:;
- (void)_processScrollPhaseChanged:(id)a3;
- (void)_removeHysteresisFromTranslation;
- (void)_resetGestureRecognizer;
- (void)_resetVelocitySamples;
- (void)_scrollingChangedWithEvent:(id)a3;
- (void)_setCanPanVertically:(BOOL)a3;
- (void)_setFailsPastHysteresisWithoutMinTouches:(BOOL)a3;
- (void)_setIgnoresStationaryTouches:(BOOL)a3;
- (void)_setRequiresImmediateMultipleTouches:(BOOL)a3;
- (void)_setiOSMacScrollingEnabled:(BOOL)a3;
- (void)_touchesListChangedFrom:(id)a3 to:(id)a4;
- (void)_willBeginAfterSatisfyingFailureRequirements;
- (void)clearMultitouchTimer;
- (void)encodeWithCoder:(id)a3;
- (void)multitouchExpired:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setFailsPastMaxTouches:(BOOL)a3;
- (void)setTranslation:(CGPoint)translation inView:(UIView *)view;
- (void)startMultitouchTimer:(double)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UIPanGestureRecognizer

- (void)_resetGestureRecognizer
{
  [(UIPanGestureRecognizer *)self clearMultitouchTimer];
  [(UIPanGestureRecognizer *)self _resetVelocitySamples];
  self->_lastTouchCount = 0;
  [(NSMutableArray *)self->_touches removeAllObjects];
  [(NSMutableArray *)self->_movingTouches removeAllObjects];
  *&self->_panFlags = *&self->_panFlags & 0xF9C3 | 0xC;
  v3.receiver = self;
  v3.super_class = UIPanGestureRecognizer;
  [(UIGestureRecognizer *)&v3 _resetGestureRecognizer];
}

- (void)clearMultitouchTimer
{
  panFlags = self->_panFlags;
  if ((panFlags & 0x80) != 0)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_multitouchExpired_ object:0];
    panFlags = self->_panFlags;
  }

  *&self->_panFlags = panFlags & 0xFF7F;
}

- (void)_resetVelocitySamples
{
  if (a1)
  {
    v2 = *(a1 + 424);
    *(a1 + 424) = 0;

    v3 = *(a1 + 432);
    *(a1 + 432) = 0;
  }
}

- (BOOL)_touchesExceedAllowableSeparation
{
  v3 = _BoundingRectForTouches(self->_touches, 0);
  v5 = v4;
  v7 = v6;
  [(UIPanGestureRecognizer *)self _allowableSeparation];
  return v8 < sqrt(v5 * v5 + v7 * v7);
}

- (double)_allowableSeparation
{
  allowableSeparation = self->_allowableSeparation;
  v3 = [(UIGestureRecognizer *)self view];
  [v3 _touchSloppinessFactor];
  v5 = allowableSeparation * v4;

  return v5;
}

- (id)_activeTouches
{
  if (a1)
  {
    a1 = a1[40];
    v1 = vars8;
  }

  return a1;
}

- (BOOL)_willScrollX
{
  v3 = [(UIPanGestureRecognizer *)self _translationDistanceInSceneInSelfAxis:0.0];
  [(UIPanGestureRecognizer *)self _hysteresis];
  if (v3 >= v4)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    return (*&self->_panFlags >> 9) & 1;
  }

  return v5;
}

- (double)_hysteresis
{
  hysteresis = self->_hysteresis;
  v4 = [(UIGestureRecognizer *)self view];
  [v4 _touchSloppinessFactor];
  v6 = hysteresis * v5;

  v7 = [(UIGestureRecognizer *)self _activeEventOfType:10];
  v8 = v7;
  if (v7 && ![v7 _scrollType])
  {
    v9 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_DiscreteScrollHysteresisScale, @"DiscreteScrollHysteresisScale");
    v10 = *&qword_1EA95E4B8;
    if (v9)
    {
      v10 = 0.0001;
    }

    v6 = v6 * v10;
  }

  return v6;
}

- (BOOL)_willScrollY
{
  v3 = [(UIPanGestureRecognizer *)self _translationDistanceInSceneInSelfAxis:1.0];
  [(UIPanGestureRecognizer *)self _hysteresis];
  if (v3 >= v4)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    return (*&self->_panFlags >> 10) & 1;
  }

  return v5;
}

- (void)_removeHysteresisFromTranslation
{
  v34 = [(UIGestureRecognizer *)self view];
  [(UIPanGestureRecognizer *)self _hysteresis];
  v4 = v3;
  [(UIPanGestureRecognizer *)self translationInView:v34];
  v6 = v5;
  v8 = v7;
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIPanGestureRecognizer *)self _convertPoint:v34 toSceneReferenceCoordinatesFromView:*MEMORY[0x1E695EFF8], v10];
  v12 = v11;
  v14 = v13;
  [(UIPanGestureRecognizer *)self _convertPoint:v34 toSceneReferenceCoordinatesFromView:v6, v8];
  v16 = v15 - v12;
  v18 = v17 - v14;
  v19 = v4 + v16;
  if (v4 + v16 > 0.0)
  {
    v19 = 0.0;
  }

  v20 = fmax(v16 - v4, 0.0);
  if (v16 > 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v22 = v4 + v18;
  if (v4 + v18 > 0.0)
  {
    v22 = 0.0;
  }

  v23 = fmax(v18 - v4, 0.0);
  if (v18 > 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  [(UIPanGestureRecognizer *)self _convertPoint:v34 fromSceneReferenceCoordinatesToView:v9, v10];
  v26 = v25;
  v28 = v27;
  [(UIPanGestureRecognizer *)self _convertPoint:v34 fromSceneReferenceCoordinatesToView:v21, v24];
  v30 = v29 - v26;
  v32 = v31 - v28;
  panFlags = self->_panFlags;
  if ((panFlags & 4) == 0)
  {
    v30 = 0.0;
  }

  if ((panFlags & 8) == 0)
  {
    v32 = 0.0;
  }

  [(UIPanGestureRecognizer *)self setTranslation:v34 inView:v30, v32];
}

- (void)_willBeginAfterSatisfyingFailureRequirements
{
  v3 = [(UIGestureRecognizer *)self view];
  [(UIPanGestureRecognizer *)self setTranslation:v3 inView:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
}

- (UIPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = UIPanGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    _UIPanGestureRecognizerCommonInit(v4);
  }

  return v5;
}

- (UIPanGestureRecognizer)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = UIPanGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithCoder:?];
  v5 = v4;
  if (v4)
  {
    _UIPanGestureRecognizerCommonInit(v4);
    if ([a3 containsValueForKey:@"UIPanGestureRecognizer.minimumNumberOfTouches"])
    {
      v5->_minimumNumberOfTouches = [a3 decodeIntegerForKey:@"UIPanGestureRecognizer.minimumNumberOfTouches"];
    }

    if ([a3 containsValueForKey:@"UIPanGestureRecognizer.maximumNumberOfTouches"])
    {
      v5->_maximumNumberOfTouches = [a3 decodeIntegerForKey:@"UIPanGestureRecognizer.maximumNumberOfTouches"];
    }

    if ([a3 containsValueForKey:@"UIPanGestureRecognizer.allowedScrollTypesMask"])
    {
      v5->_allowedScrollTypesMask = [a3 decodeIntegerForKey:@"UIPanGestureRecognizer.allowedScrollTypesMask"];
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIPanGestureRecognizer;
  [(UIGestureRecognizer *)&v7 encodeWithCoder:?];
  minimumNumberOfTouches = self->_minimumNumberOfTouches;
  if (minimumNumberOfTouches != 1)
  {
    [a3 encodeInteger:minimumNumberOfTouches forKey:@"UIPanGestureRecognizer.minimumNumberOfTouches"];
  }

  maximumNumberOfTouches = self->_maximumNumberOfTouches;
  if (maximumNumberOfTouches != 0xFFFFFFFF)
  {
    [a3 encodeInteger:maximumNumberOfTouches forKey:@"UIPanGestureRecognizer.maximumNumberOfTouches"];
  }

  [a3 encodeInteger:self->_allowedScrollTypesMask forKey:@"UIPanGestureRecognizer.allowedScrollTypesMask"];
}

- (void)startMultitouchTimer:(double)a3
{
  [(UIPanGestureRecognizer *)self clearMultitouchTimer];
  *&self->_panFlags |= 0x80u;

  [(UIPanGestureRecognizer *)self performSelector:sel_multitouchExpired_ withObject:0 afterDelay:a3];
}

- (void)multitouchExpired:(id)a3
{
  if ([(NSMutableArray *)self->_touches count]< self->_minimumNumberOfTouches)
  {
    [(UIPanGestureRecognizer *)self clearMultitouchTimer];

    [(UIGestureRecognizer *)self _failWithReason:@"multitouchExpired"];
  }
}

- (void)setFailsPastMaxTouches:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_panFlags = *&self->_panFlags & 0xFFBF | v3;
}

- (void)_setFailsPastHysteresisWithoutMinTouches:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 392) = *(self + 392) & 0xF7 | v3;
}

- (void)_setRequiresImmediateMultipleTouches:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_panFlags = *&self->_panFlags & 0xFEFF | v3;
}

- (void)_setIgnoresStationaryTouches:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 393) = *(self + 393) & 0xFB | v3;
}

- (void)_setCanPanVertically:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_panFlags = *&self->_panFlags & 0xFFFD | v3;
}

- (CGPoint)_convertPoint:(CGPoint)a3 toSceneReferenceCoordinatesFromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v7 = [(UIGestureRecognizer *)self view];
    v6 = [v7 window];
  }

  v8 = [v6 _window];
  [v6 convertPoint:0 toView:{x, y}];
  v11 = v9;
  v12 = v10;
  if (v8)
  {
    [v8 _convertDoublePointToSceneReferenceSpace:{v9, v10}];
    v11 = v13;
    v12 = v14;
  }

  v15 = v11;
  v16 = v12;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)_convertPoint:(CGPoint)a3 fromSceneReferenceCoordinatesToView:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v7 = [(UIGestureRecognizer *)self view];
    v6 = [v7 _window];
  }

  v8 = [v6 _window];
  v9 = v8;
  if (v8)
  {
    [v8 _convertDoublePointFromSceneReferenceSpace:{x, y}];
    x = v10;
    y = v11;
  }

  [v6 convertPoint:0 fromView:{x, y}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)translationInView:(UIView *)view
{
  [(UIPanGestureRecognizer *)self _convertPoint:self->_firstSceneReferenceLocation.x fromSceneReferenceCoordinatesToView:self->_firstSceneReferenceLocation.y];
  v6 = v5;
  v8 = v7;
  [(UIPanGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:self->_lastSceneReferenceLocation.x, self->_lastSceneReferenceLocation.y];
  v10 = v9 - v6;
  v12 = v11 - v8;
  result.y = v12;
  result.x = v10;
  return result;
}

- (void)setTranslation:(CGPoint)translation inView:(UIView *)view
{
  if (self->_lastTouchCount)
  {
    y = translation.y;
    x = translation.x;
    [(UIPanGestureRecognizer *)self _convertPoint:self->_lastSceneReferenceLocation.x fromSceneReferenceCoordinatesToView:self->_lastSceneReferenceLocation.y];
    [(UIPanGestureRecognizer *)self _convertPoint:view toSceneReferenceCoordinatesFromView:v8 - x, v9 - y];
    self->_firstSceneReferenceLocation.x = v10;
    self->_firstSceneReferenceLocation.y = v11;
  }
}

- (CGPoint)_convertVelocitySample:(id)a3 fromSceneReferenceCoordinatesToView:(id)a4
{
  if (a3)
  {
    v5 = 0.0;
    v6 = 0.0;
    if (*(a3 + 5) >= 0.001)
    {
      [(UIPanGestureRecognizer *)self _convertPoint:a4 fromSceneReferenceCoordinatesToView:*(a3 + 1), *(a3 + 2)];
      v10 = v9;
      v12 = v11;
      [(UIPanGestureRecognizer *)self _convertPoint:a4 fromSceneReferenceCoordinatesToView:*(a3 + 3), *(a3 + 4)];
      v14 = *(a3 + 5);
      v5 = (v13 - v10) / v14;
      v6 = (v15 - v12) / v14;
    }
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)velocityInView:(UIView *)view
{
  [(UIPanGestureRecognizer *)self _convertVelocitySample:self->_velocitySample fromSceneReferenceCoordinatesToView:view];
  v5 = v4;
  v7 = v6;
  previousVelocitySample = self->_previousVelocitySample;
  if (previousVelocitySample && previousVelocitySample->dt > 0.00000011920929)
  {
    [UIPanGestureRecognizer _convertVelocitySample:"_convertVelocitySample:fromSceneReferenceCoordinatesToView:" fromSceneReferenceCoordinatesToView:?];
    v5 = v5 * 0.2 + v9 * 0.8;
    v7 = v7 * 0.2 + v10 * 0.8;
  }

  v11 = v5;
  v12 = v7;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_touchesListChangedFrom:(id)a3 to:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  [(UIGestureRecognizer *)self _centroidOfTouches:v6 excludingEnded:0];
  v8 = v7;
  v10 = v9;

  v11 = [MEMORY[0x1E695DFD8] setWithArray:a4];
  [(UIGestureRecognizer *)self _centroidOfTouches:v11 excludingEnded:1];
  v13 = v12;
  v15 = v14;

  v16 = v15 - v10 + self->_firstSceneReferenceLocation.y;
  self->_firstSceneReferenceLocation.x = v13 - v8 + self->_firstSceneReferenceLocation.x;
  self->_firstSceneReferenceLocation.y = v16;
  v17 = v15 - v10 + self->_lastSceneReferenceLocation.y;
  self->_lastSceneReferenceLocation.x = v13 - v8 + self->_lastSceneReferenceLocation.x;
  self->_lastSceneReferenceLocation.y = v17;
  v18 = v15 - v10 + self->_lastUnadjustedSceneReferenceLocation.y;
  self->_lastUnadjustedSceneReferenceLocation.x = v13 - v8 + self->_lastUnadjustedSceneReferenceLocation.x;
  self->_lastUnadjustedSceneReferenceLocation.y = v18;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = a4;
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v20)
  {
    v21 = 0;
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        if ([*(*(&v24 + 1) + 8 * v23) phase] < 3)
        {
          ++v21;
        }

        ++v23;
      }

      while (v20 != v23);
      v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
    v20 = v21;
  }

  self->_lastTouchCount = v20;
}

- (double)_offsetInViewFromSceneReferenceLocation:(double)a3 toSceneReferenceLocation:(double)a4
{
  if (!a1)
  {
    return 0.0;
  }

  v10 = [a1 view];
  [a1 _convertPoint:v10 fromSceneReferenceCoordinatesToView:{a2, a3}];
  v12 = v11;

  v13 = [a1 view];
  [a1 _convertPoint:v13 fromSceneReferenceCoordinatesToView:{a4, a5}];
  v15 = v14;

  return v15 - v12;
}

- (double)_shiftPanLocationToNewSceneReferenceLocation:(double)a3 lockingToAxis:(double)a4
{
  if (!a1)
  {
    return 0.0;
  }

  v6 = [(UIPanGestureRecognizer *)a1 _offsetInViewFromSceneReferenceLocation:a1[47] toSceneReferenceLocation:a3, a4];
  if (a2 == 1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  if (a2 == 2)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  if (a2 == 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = [a1 view];
  [a1 _convertPoint:v11 fromSceneReferenceCoordinatesToView:{a1[37], a1[38]}];
  v13 = v12;
  v15 = v14;

  v16 = [a1 view];
  [a1 _convertPoint:v16 toSceneReferenceCoordinatesFromView:{v9 + v13, v10 + v15}];
  v18 = v17;

  return v18;
}

- (CGPoint)_adjustSceneReferenceLocation:(CGPoint)result
{
  panFlags = self->_panFlags;
  if ((~*&panFlags & 0xA) != 0)
  {
    v5 = 1;
    goto LABEL_10;
  }

  if ((~*&panFlags & 5) != 0)
  {
    v5 = 2;
    goto LABEL_10;
  }

  if (self->_lastSceneReferenceLocation.x != self->_lastUnadjustedSceneReferenceLocation.x || self->_lastSceneReferenceLocation.y != self->_lastUnadjustedSceneReferenceLocation.y)
  {
    v5 = 0;
LABEL_10:
    result.x = [(UIPanGestureRecognizer *)self _shiftPanLocationToNewSceneReferenceLocation:v5 lockingToAxis:result.x, result.y];
  }

  return result;
}

- (void)_centroidMovedTo:(CGPoint)a3 atTime:(double)a4 affectingTranslation:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  [(UIPanGestureRecognizer *)self _adjustSceneReferenceLocation:?];
  v11 = v10;
  v13 = v12;
  v14 = a4 - self->_lastTouchTime;
  if (v14 > 0.008 || v14 > 0.0)
  {
    v15 = self->_previousVelocitySample;
    objc_storeStrong(&self->_previousVelocitySample, self->_velocitySample);
    v16 = v15;
    if (!v15)
    {
      v16 = objc_opt_new();
    }

    objc_storeStrong(&self->_velocitySample, v16);
    v17 = v16;
    if (!v15)
    {
    }

    *(v17 + 8) = self->_lastSceneReferenceLocation;
    *(v17 + 3) = v11;
    *(v17 + 4) = v13;
    *(v17 + 5) = v14;
  }

  if (v5)
  {
    self->_lastUnadjustedSceneReferenceLocation.x = x;
    self->_lastUnadjustedSceneReferenceLocation.y = y;
    self->_lastSceneReferenceLocation.x = v11;
    self->_lastSceneReferenceLocation.y = v13;
  }

  self->_lastTouchTime = a4;
}

- (double)_translationDistanceInSceneInSelfAxis:(double)a3
{
  if (!a1)
  {
    return 0.0;
  }

  v6 = [a1 view];
  [a1 translationInView:v6];
  v8 = a2 * v7;
  v10 = a3 * v9;
  [a1 _convertPoint:v6 toSceneReferenceCoordinatesFromView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v12 = v11;
  v14 = v13;
  [a1 _convertPoint:v6 toSceneReferenceCoordinatesFromView:{v8, v10}];
  v17 = hypot(v15 - v12, v16 - v14);

  return v17;
}

- (void)setDelegate:(id)a3
{
  *(self + 392) = *(self + 392) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(self + 392) = *(self + 392) & 0xFD | v5;
  v6.receiver = self;
  v6.super_class = UIPanGestureRecognizer;
  [(UIGestureRecognizer *)&v6 setDelegate:a3];
}

- (BOOL)_shouldBeginHorizontally:(BOOL)a3 vertically:(BOOL)a4 withEvent:(id)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [(UIGestureRecognizer *)self delegate];
  v10 = v9;
  if ((*(self + 392) & 1) != 0 && v7 && (*&self->_panFlags & 0x10) == 0)
  {
    if ([v9 _panGestureRecognizer:self shouldTryToBeginHorizontallyWithEvent:a5])
    {
      v11 = 20;
    }

    else
    {
      v11 = 16;
    }

    *&self->_panFlags = *&self->_panFlags & 0xFFFB | v11;
  }

  if ((*(self + 392) & 2) != 0 && v6 && (*&self->_panFlags & 0x20) == 0)
  {
    if ([v10 _panGestureRecognizer:self shouldTryToBeginVerticallyWithEvent:a5])
    {
      v12 = 40;
    }

    else
    {
      v12 = 32;
    }

    *&self->_panFlags = *&self->_panFlags & 0xFFF7 | v12;
  }

  if (!v7)
  {
    if (!v6)
    {
      LOBYTE(v14) = 0;
      goto LABEL_22;
    }

    panFlags = self->_panFlags;
    goto LABEL_20;
  }

  panFlags = self->_panFlags;
  if (((!v6 | ((*&panFlags & 4) >> 2)) & 1) == 0)
  {
LABEL_20:
    v14 = (*&panFlags >> 3) & 1;
    goto LABEL_22;
  }

  v14 = (*&panFlags >> 2) & 1;
LABEL_22:

  return v14;
}

- (BOOL)_shouldTryToBeginWithEvent:(id)a3
{
  if (![a3 type] && -[NSMutableArray count](self->_movingTouches, "count") < self->_minimumNumberOfTouches || !-[UIPanGestureRecognizer _shouldBeginHorizontally:vertically:withEvent:](self, "_shouldBeginHorizontally:vertically:withEvent:", -[UIPanGestureRecognizer _willScrollX](self, "_willScrollX"), -[UIPanGestureRecognizer _willScrollY](self, "_willScrollY"), a3))
  {
    return 0;
  }

  v5 = 1;
  [(UIPanGestureRecognizer *)self _shouldBeginHorizontally:1 vertically:1 withEvent:a3];
  return v5;
}

- (BOOL)_updateMovingTouchesArraySavingOldArray:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*(self + 393) & 4) == 0 || [(NSMutableArray *)self->_touches count]< 2)
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_touches;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(UITouch *)v10 _isStationaryRelativeToTouches:?];
        if (v11 == [(NSMutableArray *)self->_movingTouches containsObject:v10])
        {
          if (a3 && !*a3)
          {
            *a3 = [(NSMutableArray *)self->_movingTouches copy];
          }

          movingTouches = self->_movingTouches;
          if (v11)
          {
            [(NSMutableArray *)movingTouches removeObject:v10];
          }

          else
          {
            [(NSMutableArray *)movingTouches addObject:v10];
          }

          v7 = 1;
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if (self)
  {
    p_digitizerLocation = &self->_digitizerLocation;
    [a4 _digitizerLocation];
    p_digitizerLocation->x = v8;
    self->_digitizerLocation.y = v9;
  }

  v10 = [(NSMutableArray *)self->_movingTouches copy];
  v11 = v10;
  if (UIPanGestureRecognizersEnabled == 1)
  {
    v25 = v10;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = a3;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          if ([(NSMutableArray *)self->_touches count]>= self->_maximumNumberOfTouches)
          {
            if ((*&self->_panFlags & 0x40) != 0 && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
            {

              v19 = 1;
              v20 = @"MaxTouchesExceeded";
              goto LABEL_22;
            }
          }

          else
          {
            [(NSMutableArray *)self->_touches addObject:v17];
            [(NSMutableArray *)self->_movingTouches addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    if (self->_allowableSeparation == 1.79769313e308)
    {
      v20 = 0;
      v19 = 0;
    }

    else
    {
      v18 = [(UIPanGestureRecognizer *)self _touchesExceedAllowableSeparation];
      v19 = v18;
      if (v18)
      {
        v20 = @"MaxAllowableSeparationExceeded";
      }

      else
      {
        v20 = 0;
      }
    }

LABEL_22:
    v11 = v25;
  }

  else
  {
    v19 = 1;
    v20 = @"disabledAtTouchesBegan";
  }

  if ([(UIPanGestureRecognizer *)self minimumNumberOfTouches]>= 2 && (*&self->_panFlags & 0x100) != 0)
  {
    [(UIPanGestureRecognizer *)self _allowableTouchTimeSeparation];
    if (v21 > 0.0)
    {
      [(UIPanGestureRecognizer *)self _allowableTouchTimeSeparation];
      [(UIPanGestureRecognizer *)self startMultitouchTimer:?];
    }
  }

  if (v19)
  {
    [(UIPanGestureRecognizer *)self clearMultitouchTimer];
    [(UIGestureRecognizer *)self _failWithReason:v20];
  }

  else if (self->_lastTouchCount)
  {
    [(UIPanGestureRecognizer *)self _touchesListChangedFrom:v11 to:self->_movingTouches];
  }

  else
  {
    [(UIGestureRecognizer *)self _centroidOfTouches:self->_movingTouches excludingEnded:1];
    self->_firstSceneReferenceLocation.x = v22;
    self->_firstSceneReferenceLocation.y = v23;
    self->_lastSceneReferenceLocation = self->_firstSceneReferenceLocation;
    self->_lastUnadjustedSceneReferenceLocation = self->_firstSceneReferenceLocation;
    self->_lastTouchCount = [(NSMutableArray *)self->_movingTouches count];
    [a4 timestamp];
    self->_lastTouchTime = v24;
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (self)
  {
    p_digitizerLocation = &self->_digitizerLocation;
    [a4 _digitizerLocation];
    p_digitizerLocation->x = v8;
    self->_digitizerLocation.y = v9;
    v28 = 0;
    v10 = [(UIPanGestureRecognizer *)self _updateMovingTouchesArraySavingOldArray:&v28];
    v11 = v28;
    if (v10)
    {
LABEL_13:
      if (v11)
      {
        movingTouches = v11;
      }

      else
      {
        movingTouches = self->_movingTouches;
      }

      [(UIPanGestureRecognizer *)self _touchesListChangedFrom:movingTouches to:?];
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_movingTouches;
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if ([*(*(&v24 + 1) + 8 * i) phase] >= 3)
            {

              goto LABEL_13;
            }
          }

          v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    [(UIGestureRecognizer *)self _centroidOfTouches:self->_movingTouches excludingEnded:1, v24];
    v19 = v18;
    v21 = v20;
    [a4 timestamp];
    [(UIPanGestureRecognizer *)self _centroidMovedTo:1 atTime:v19 affectingTranslation:v21, v22];
    [(UIPanGestureRecognizer *)self _didUpdateCentroidWithTouches:a3 event:a4];
  }

  if ([(UIGestureRecognizer *)self state]|| ![(UIPanGestureRecognizer *)self _shouldTryToBeginWithEvent:a4])
  {
    if ([(UIPanGestureRecognizer *)self _failsPastHysteresisWithoutMinTouches])
    {
      if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
      {
        v23 = [(NSMutableArray *)self->_movingTouches count];
        if (v23 < [(UIPanGestureRecognizer *)self minimumNumberOfTouches]&& ([(UIPanGestureRecognizer *)self _willScrollX]|| [(UIPanGestureRecognizer *)self _willScrollY]))
        {

          [(UIGestureRecognizer *)self _failWithReason:@"notEnoughTouches"];
        }
      }
    }
  }

  else
  {
    [(UIPanGestureRecognizer *)self _removeHysteresisFromTranslation];

    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)_handleEndedTouches:(id)a3 withFinalStateAdjustments:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [(NSMutableArray *)self->_movingTouches copy];
  v7 = [(UIPanGestureRecognizer *)self _updateMovingTouchesArraySavingOldArray:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [(NSMutableArray *)self->_touches removeObject:v13];
        [(NSMutableArray *)self->_movingTouches removeObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if ([(NSMutableArray *)self->_movingTouches count])
  {
    if (v7 || (lastTouchCount = self->_lastTouchCount, lastTouchCount != [(NSMutableArray *)self->_movingTouches count]))
    {
      [(UIPanGestureRecognizer *)self _touchesListChangedFrom:v6 to:self->_movingTouches];
    }
  }

  else
  {
    (*(a4 + 2))();
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if (self)
  {
    p_digitizerLocation = &self->_digitizerLocation;
    [a4 _digitizerLocation];
    p_digitizerLocation->x = v7;
    self->_digitizerLocation.y = v8;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__UIPanGestureRecognizer_touchesEnded_withEvent___block_invoke;
  v9[3] = &unk_1E70F3590;
  v9[4] = self;
  [(UIPanGestureRecognizer *)self _handleEndedTouches:a3 withFinalStateAdjustments:v9];
}

uint64_t __49__UIPanGestureRecognizer_touchesEnded_withEvent___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 1 || objc_msgSend(*(a1 + 32), "state") == 2)
  {
    v2 = *(a1 + 32);

    return [v2 setState:3];
  }

  else
  {
    v4 = *(a1 + 32);

    return [v4 _failWithReason:@"touchesEnded"];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__UIPanGestureRecognizer_touchesCancelled_withEvent___block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [(UIPanGestureRecognizer *)self _handleEndedTouches:a3 withFinalStateAdjustments:v4];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v7 = [a3 anyObject];
  [(UIGestureRecognizer *)self ignorePress:v7 forEvent:a4];

  v8.receiver = self;
  v8.super_class = UIPanGestureRecognizer;
  [(UIGestureRecognizer *)&v8 pressesBegan:a3 withEvent:a4];
}

- (void)_ignoreTouchForTouchIdentifier:(unsigned int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_touches;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([v10 _touchIdentifier] == a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v11 = v10;

    if (!v11)
    {
      return;
    }

    v12 = [MEMORY[0x1E695DFD8] setWithObject:v11];
    [(UIPanGestureRecognizer *)self touchesCancelled:v12 withEvent:0];

    [(UIGestureRecognizer *)self ignoreTouch:v11 forEvent:0];
    v5 = v11;
  }

LABEL_12:
}

- (CGPoint)locationInView:(id)a3
{
  [(UIPanGestureRecognizer *)self _convertPoint:a3 fromSceneReferenceCoordinatesToView:self->_lastSceneReferenceLocation.x, self->_lastSceneReferenceLocation.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)locationOfTouch:(unint64_t)a3 inView:(id)a4
{
  if ([(NSMutableArray *)self->_touches count]<= a3)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    v8 = [v13 stringWithFormat:@"-[%@ %@]", v15, v16];

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%ld) beyond bounds (%ld).", v8, a3, -[NSMutableArray count](self->_touches, "count")}];
    v10 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v8 = [(NSMutableArray *)self->_touches objectAtIndex:a3];
    [v8 locationInView:a4];
    v10 = v9;
    v12 = v11;
  }

  v17 = v10;
  v18 = v12;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)_ignoreTouches:(uint64_t)a3 forEvent:
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 && [a2 count])
  {
    [a1 touchesCancelled:a2 withEvent:a3];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = a2;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [a1 ignoreTouch:*(*(&v11 + 1) + 8 * v10++) forEvent:{a3, v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (CGPoint)_initialLocationInView:(id)a3
{
  [(UIPanGestureRecognizer *)self _convertPoint:a3 fromSceneReferenceCoordinatesToView:self->_firstSceneReferenceLocation.x, self->_firstSceneReferenceLocation.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)shouldReceiveEvent:(id)a3
{
  if ([a3 type] == 10)
  {
    if (self && (*&self->_panFlags & 0x1800) == 0x800)
    {
      if (_UIGestureRecognizerShouldEnablePanAllowedScrollTypeCompatibility(self))
      {
        self->_allowedScrollTypesMask = 2;
      }

      *&self->_panFlags |= 0x1000u;
    }

    allowedScrollTypesMask = self->_allowedScrollTypesMask;
    return allowedScrollTypesMask && (allowedScrollTypesMask & (1 << [a3 _scrollType])) != 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIPanGestureRecognizer;
    return [(UIGestureRecognizer *)&v7 shouldReceiveEvent:a3];
  }
}

- (void)_setiOSMacScrollingEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  [(UIPanGestureRecognizer *)self setAllowedScrollTypesMask:v3];
}

- (void)_processScrollPhaseChanged:(id)a3
{
  [a3 _adjustedDeltaForPanWithAcceleration:-[UIPanGestureRecognizer _iOSMacUseNonacceleratedDelta](self honoringScrollDirectionPreference:{"_iOSMacUseNonacceleratedDelta") ^ 1, -[UIPanGestureRecognizer _iOSMacIgnoreScrollDirectionUserPreference](self, "_iOSMacIgnoreScrollDirectionUserPreference") ^ 1}];
  v7 = v6 != 0.0 || v5 != 0.0;
  if (v7)
  {
LABEL_18:
    v14 = v5 + self->_lastUnadjustedSceneReferenceLocation.x;
    v15 = v6 + self->_lastUnadjustedSceneReferenceLocation.y;
    [a3 timestamp];
    [(UIPanGestureRecognizer *)self _centroidMovedTo:v7 atTime:v14 affectingTranslation:v15, v16];
    goto LABEL_19;
  }

  [a3 _stifledDelta];
  if (v5 != 0.0 || v6 != 0.0)
  {
    panFlags = self->_panFlags;
    v9 = (*&panFlags >> 9) & 1;
    if (v5 != 0.0)
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 512;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10 | *&panFlags & 0xF9FF;
    v12 = (*&panFlags >> 10) & 1;
    if (v6 != 0.0)
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = 1024;
    }

    else
    {
      v13 = 0;
    }

    *&self->_panFlags = v11 | v13;
    goto LABEL_18;
  }

LABEL_19:
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible && [(UIPanGestureRecognizer *)self _shouldTryToBeginWithEvent:a3])
  {
    if ((*&self->_panFlags & 0x600) == 0)
    {
      [(UIPanGestureRecognizer *)self _removeHysteresisFromTranslation];
    }

    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)_scrollingChangedWithEvent:(id)a3
{
  v5 = [a3 phase];
  if (v5 <= 3)
  {
    if (v5 == 2)
    {
      if (self)
      {
        [a3 _digitizerLocation];
        self->_digitizerLocation.x = v7;
        self->_digitizerLocation.y = v8;
      }

      v9 = [a3 _allWindows];
      v19 = [v9 anyObject];

      [a3 locationInView:0];
      [(UIPanGestureRecognizer *)self _convertPoint:v19 toSceneReferenceCoordinatesFromView:?];
      self->_firstSceneReferenceLocation.x = v10;
      self->_firstSceneReferenceLocation.y = v11;
      self->_lastSceneReferenceLocation = self->_firstSceneReferenceLocation;
      self->_lastUnadjustedSceneReferenceLocation = self->_firstSceneReferenceLocation;
      [a3 timestamp];
      self->_lastTouchTime = v12;
      self->_lastTouchCount = 1;
      if (![a3 _scrollType])
      {
        [(UIPanGestureRecognizer *)self _processScrollPhaseChanged:a3];
      }
    }

    else if (v5 == 3)
    {

      [(UIPanGestureRecognizer *)self _processScrollPhaseChanged:a3];
    }

    return;
  }

  if (v5 != 4)
  {
    if (v5 != 5)
    {
      return;
    }

    v6 = @"scrollCancelled";
    goto LABEL_10;
  }

  if ([(UIGestureRecognizer *)self state]!= UIGestureRecognizerStateBegan && [(UIGestureRecognizer *)self state]!= UIGestureRecognizerStateChanged)
  {
    v6 = @"scrollEnded";
LABEL_10:

    [(UIGestureRecognizer *)self _failWithReason:v6];
    return;
  }

  [a3 timestamp];
  v14 = v13 - self->_lastTouchTime;
  v15 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_DurationBetweenScrollChangeAndEndEventsToResetVelocity, @"DurationBetweenScrollChangeAndEndEventsToResetVelocity");
  v16 = *&qword_1EA95E4A8;
  if (v15)
  {
    v16 = 0.13;
  }

  if (v14 > v16)
  {
    velocitySample = self->_velocitySample;
    self->_velocitySample = 0;

    previousVelocitySample = self->_previousVelocitySample;
    self->_previousVelocitySample = 0;
  }

  [(UIGestureRecognizer *)self setState:3];
}

- (uint64_t)_scrollDeviceCategory
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _activeEventOfType:10];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 _scrollDeviceCategory];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end