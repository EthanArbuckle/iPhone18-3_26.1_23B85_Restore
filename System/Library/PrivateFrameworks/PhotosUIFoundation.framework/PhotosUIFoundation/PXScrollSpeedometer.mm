@interface PXScrollSpeedometer
- (CGPoint)lastScrollDirection;
- (CGPoint)scrollAcceleration;
- (CGPoint)scrollVelocity;
- (CGRect)_lastVisibleRect;
- (NSString)description;
- (PXScrollSpeedometer)init;
- (void)_handleScrubbingTimeout;
- (void)_handleTimeoutTimer:(id)timer;
- (void)_rescheduleTimeout;
- (void)_scheduleScrubbingTimeout;
- (void)_setPreviousRegime:(int64_t)regime;
- (void)_setRegime:(int64_t)regime;
- (void)_updateScrollRegime;
- (void)didPerformChanges;
- (void)handleScrollEventVisibleRect:(CGRect)rect didEnd:(BOOL)end;
- (void)setLastScrollDirection:(CGPoint)direction;
- (void)setScrollVelocity:(CGPoint)velocity;
@end

@implementation PXScrollSpeedometer

- (PXScrollSpeedometer)init
{
  v3.receiver = self;
  v3.super_class = PXScrollSpeedometer;
  return [(PXObservable *)&v3 init];
}

- (CGPoint)lastScrollDirection
{
  x = self->_lastScrollDirection.x;
  y = self->_lastScrollDirection.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)_lastVisibleRect
{
  x = self->__lastVisibleRect.origin.x;
  y = self->__lastVisibleRect.origin.y;
  width = self->__lastVisibleRect.size.width;
  height = self->__lastVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXScrollSpeedometer;
  [(PXObservable *)&v3 didPerformChanges];
  [(PXScrollSpeedometer *)self _updateScrollRegime];
}

- (void)_updateScrollRegime
{
  [(PXScrollSpeedometer *)self scrollVelocity];
  v5 = v4;
  v7 = v6;
  [(PXScrollSpeedometer *)self scrollAcceleration];
  v9 = v8;
  v11 = v10;
  v12 = hypot(v5, v7);
  if (v12 == 0.0 && ![(PXScrollSpeedometer *)self isScrubbing])
  {
    regime = 0;
    goto LABEL_57;
  }

  regime = [(PXScrollSpeedometer *)self regime];
  isAnimatingScroll = [(PXScrollSpeedometer *)self isAnimatingScroll];
  v15 = 0.0;
  if (regime <= 1)
  {
    if (regime >= 2)
    {
      if (regime == -1)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollSpeedometer.m" lineNumber:89 description:@"undefined regime"];
      }

      v17 = 0.0;
      goto LABEL_16;
    }

    [(PXScrollSpeedometer *)self mediumUpperThreshold];
    goto LABEL_14;
  }

  if (regime == 2)
  {
    [(PXScrollSpeedometer *)self mediumLowerThreshold];
LABEL_14:
    v17 = v16;
    [(PXScrollSpeedometer *)self fastUpperThreshold];
    goto LABEL_15;
  }

  v17 = 0.0;
  if (regime == 3)
  {
    [(PXScrollSpeedometer *)self mediumLowerThreshold];
    v17 = v18;
    [(PXScrollSpeedometer *)self fastLowerThreshold];
LABEL_15:
    v15 = v19;
  }

LABEL_16:
  v21 = 0.0;
  if (v5 >= 0.0)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = -1.0;
  }

  if (v5 > 0.0)
  {
    v22 = 1.0;
  }

  if (v9 >= 0.0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = -1.0;
  }

  if (v9 > 0.0)
  {
    v23 = 1.0;
  }

  v24 = v22 == v23;
  if (v9 == 0.0)
  {
    v24 = 0;
  }

  if (v7 >= 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = -1.0;
  }

  if (v7 > 0.0)
  {
    v25 = 1.0;
  }

  if (v11 < 0.0)
  {
    v21 = -1.0;
  }

  if (v11 > 0.0)
  {
    v21 = 1.0;
  }

  v26 = v25 == v21;
  if (v11 == 0.0)
  {
    v26 = 0;
  }

  v27 = v24 || v26;
  if (isAnimatingScroll && (v24 || v26) && ![(PXScrollSpeedometer *)self hasRampedUpForCurrentAnimatedScroll])
  {
    [(PXScrollSpeedometer *)self setHasRampedUpForCurrentAnimatedScroll:1];
    v15 = 0.0;
  }

  v28 = 2;
  if (v12 <= v17)
  {
    v28 = 1;
  }

  if (v12 <= v15)
  {
    v29 = v28;
  }

  else
  {
    v29 = 3;
  }

  if (regime)
  {
    if (v29 == [(PXScrollSpeedometer *)self _nextRegime])
    {
      _nextRegimeCount = [(PXScrollSpeedometer *)self _nextRegimeCount];
      v31 = _nextRegimeCount + 1;
      if (_nextRegimeCount >= 2)
      {
        regime = v29;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
    regime = v29;
  }

  if (v12 > v15 && isAnimatingScroll && v27)
  {
    regime = 3;
  }

  [(PXScrollSpeedometer *)self _setNextRegime:v29];
  [(PXScrollSpeedometer *)self _setNextRegimeCount:v31];
  [(PXScrollSpeedometer *)self setLastScrollDirection:(v5 / v12), (v7 / v12), 0.0];
LABEL_57:
  scrollView = [(PXScrollSpeedometer *)self scrollView];
  [(PXScrollSpeedometer *)self _lastVisibleRect];
  kdebug_trace();
  kdebug_trace();

  [(PXScrollSpeedometer *)self _setRegime:regime];
}

- (CGPoint)scrollVelocity
{
  x = self->_scrollVelocity.x;
  y = self->_scrollVelocity.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)scrollAcceleration
{
  x = self->_scrollAcceleration.x;
  y = self->_scrollAcceleration.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_scheduleScrubbingTimeout
{
  v4[1] = *MEMORY[0x1E69E9840];
  if ([(PXScrollSpeedometer *)self isScrubbing])
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleScrubbingTimeout object:0];
    v4[0] = *MEMORY[0x1E695DA28];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
    [(PXScrollSpeedometer *)self performSelector:sel__handleScrubbingTimeout withObject:0 afterDelay:v3 inModes:0.1];
  }
}

- (void)_rescheduleTimeout
{
  _timeoutTimer = [(PXScrollSpeedometer *)self _timeoutTimer];
  if (_timeoutTimer)
  {
    v7 = _timeoutTimer;
    fireDate = [_timeoutTimer fireDate];
    [fireDate timeIntervalSinceNow];
    if (v5 < 0.5)
    {
      v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.5];

      [v7 setFireDate:v6];
      fireDate = v6;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__handleTimeoutTimer_ selector:0 userInfo:0 repeats:1.5];
    [(PXScrollSpeedometer *)self _setTimeoutTimer:v7];
  }
}

- (void)_handleTimeoutTimer:(id)timer
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__PXScrollSpeedometer__handleTimeoutTimer___block_invoke;
  v3[3] = &unk_1E7BB69B0;
  v3[4] = self;
  [(PXObservable *)self performChanges:v3];
}

uint64_t __43__PXScrollSpeedometer__handleTimeoutTimer___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [*(a1 + 32) setScrollVelocity:{*MEMORY[0x1E695EFF8], v3}];
  [*(a1 + 32) setScrollAcceleration:{v2, v3}];
  v4 = *(a1 + 32);

  return [v4 _setTimeoutTimer:0];
}

- (void)_handleScrubbingTimeout
{
  if ([(PXScrollSpeedometer *)self isScrubbing]&& [(PXScrollSpeedometer *)self regime]== 3)
  {
    [(PXScrollSpeedometer *)self _lastVisibleRect];
    [(PXScrollSpeedometer *)self handleScrollEventVisibleRect:0 didEnd:?];

    [(PXScrollSpeedometer *)self _scheduleScrubbingTimeout];
  }
}

- (void)setLastScrollDirection:(CGPoint)direction
{
  if (direction.x != self->_lastScrollDirection.x || direction.y != self->_lastScrollDirection.y)
  {
    self->_lastScrollDirection = direction;
    [(PXObservable *)self signalChange:8];
  }
}

- (void)_setPreviousRegime:(int64_t)regime
{
  if (self->_previousRegime != regime)
  {
    self->_previousRegime = regime;
    [(PXObservable *)self signalChange:4];
  }
}

- (void)_setRegime:(int64_t)regime
{
  if (self->_regime != regime)
  {
    [(PXScrollSpeedometer *)self _setPreviousRegime:?];
    self->_regime = regime;

    [(PXObservable *)self signalChange:2];
  }
}

- (void)setScrollVelocity:(CGPoint)velocity
{
  if (velocity.x != self->_scrollVelocity.x || velocity.y != self->_scrollVelocity.y)
  {
    self->_scrollVelocity = velocity;
    [(PXObservable *)self signalChange:1];
  }
}

- (void)handleScrollEventVisibleRect:(CGRect)rect didEnd:(BOOL)end
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (![(PXScrollSpeedometer *)self isManuallyChanging])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v11 = v10;
    [(PXScrollSpeedometer *)self _lastTime];
    v13 = v12;
    [(PXScrollSpeedometer *)self _lastVisibleRect];
    v16 = width == v15 && height == v14;
    if (!v16 || (width == *MEMORY[0x1E695F060] ? (v17 = height == *(MEMORY[0x1E695F060] + 8)) : (v17 = 0), v17))
    {
      v26 = *MEMORY[0x1E695EFF8];
      v28 = *(MEMORY[0x1E695EFF8] + 8);
      v24 = v28;
      v23 = *MEMORY[0x1E695EFF8];
    }

    else
    {
      v18 = v11 - v13;
      if (!end)
      {
        [(PXScrollSpeedometer *)self _lastVisibleRect];
        v36.origin.x = v29;
        v36.origin.y = v30;
        v36.size.width = v31;
        v36.size.height = v32;
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = height;
        if (CGRectEqualToRect(v35, v36) && v18 < 0.00833333333)
        {
          return;
        }
      }

      [(PXScrollSpeedometer *)self _lastVisibleRect];
      v20 = v19;
      v22 = v21;
      [(PXScrollSpeedometer *)self scrollVelocity];
      v23 = 1.0 / v18 * (x - v20);
      v24 = 1.0 / v18 * (y - v22);
      v26 = 1.0 / v18 * (v23 - v25);
      v28 = 1.0 / v18 * (v24 - v27);
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __59__PXScrollSpeedometer_handleScrollEventVisibleRect_didEnd___block_invoke;
    v33[3] = &unk_1E7BB5630;
    v33[4] = self;
    *&v33[5] = v26;
    *&v33[6] = v28;
    *&v33[7] = v23;
    *&v33[8] = v24;
    [(PXObservable *)self performChanges:v33];
    [(PXScrollSpeedometer *)self _setLastTime:v11];
    [(PXScrollSpeedometer *)self _setLastVisibleRect:x, y, width, height];
    [(PXScrollSpeedometer *)self _scheduleScrubbingTimeout];
    [(PXScrollSpeedometer *)self _rescheduleTimeout];
    return;
  }

  [(PXScrollSpeedometer *)self _setLastVisibleRect:x, y, width, height];
}

uint64_t __59__PXScrollSpeedometer_handleScrollEventVisibleRect_didEnd___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setScrollAcceleration:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);

  return [v4 setScrollVelocity:{v2, v3}];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = PXScrollSpeedometer;
  v4 = [(PXScrollSpeedometer *)&v10 description];
  [(PXScrollSpeedometer *)self scrollVelocity];
  v5 = NSStringFromCGPoint(v12);
  regime = [(PXScrollSpeedometer *)self regime];
  if ((regime + 1) > 4)
  {
    v7 = @"???";
  }

  else
  {
    v7 = off_1E7BB5650[regime + 1];
  }

  v8 = [v3 stringWithFormat:@"<%@ scrollVelocity:%@ regime:%@>", v4, v5, v7];

  return v8;
}

@end