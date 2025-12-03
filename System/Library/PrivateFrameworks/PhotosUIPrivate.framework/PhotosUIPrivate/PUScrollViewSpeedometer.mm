@interface PUScrollViewSpeedometer
- (CGPoint)_lastContentOffset;
- (CGPoint)scrollSpeed;
- (CGSize)_lastContentSize;
- (PUScrollViewSpeedometerDelegate)delegate;
- (UIScrollView)_lastScrollView;
- (int64_t)_newRegimeForScrollSpeed:(CGPoint)speed;
- (void)_handleTimeoutTimer:(id)timer;
- (void)_rescheduleTimeout;
- (void)_setRegime:(int64_t)regime;
- (void)_setScrollSpeed:(CGPoint)speed;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setDelegate:(id)delegate;
@end

@implementation PUScrollViewSpeedometer

- (CGPoint)_lastContentOffset
{
  x = self->__lastContentOffset.x;
  y = self->__lastContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)_lastContentSize
{
  width = self->__lastContentSize.width;
  height = self->__lastContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIScrollView)_lastScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->__lastScrollView);

  return WeakRetained;
}

- (CGPoint)scrollSpeed
{
  x = self->_scrollSpeed.x;
  y = self->_scrollSpeed.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PUScrollViewSpeedometerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)_newRegimeForScrollSpeed:(CGPoint)speed
{
  v3 = fmax(fabs(speed.x), fabs(speed.y));
  if (v3 != 0.0)
  {
    regime = [(PUScrollViewSpeedometer *)self regime];
    v4 = regime;
    v8 = 0.0;
    if (regime > 1)
    {
      if (regime == 2)
      {
        [(PUScrollViewSpeedometer *)self mediumLowerThreshold];
        v8 = v18;
        [(PUScrollViewSpeedometer *)self fastUpperThreshold];
      }

      else
      {
        v15 = 0.0;
        if (regime == 3)
        {
          [(PUScrollViewSpeedometer *)self mediumLowerThreshold];
          v8 = v16;
          [(PUScrollViewSpeedometer *)self fastLowerThreshold];
        }
      }
    }

    else
    {
      if (regime < 2)
      {
        [(PUScrollViewSpeedometer *)self mediumUpperThreshold];
        v10 = v9;
        [(PUScrollViewSpeedometer *)self fastUpperThreshold];
        v12 = 2;
        if (v3 <= v10)
        {
          v12 = 1;
        }

        if (v3 <= v11)
        {
          v13 = v12;
        }

        else
        {
          v13 = 3;
        }

        if (!v4)
        {
          v14 = 0;
          v4 = v13;
LABEL_29:
          [(PUScrollViewSpeedometer *)self _setNextRegime:v13];
          [(PUScrollViewSpeedometer *)self _setNextRegimeCount:v14];
          return v4;
        }

LABEL_24:
        if (v13 == [(PUScrollViewSpeedometer *)self _nextRegime])
        {
          _nextRegimeCount = [(PUScrollViewSpeedometer *)self _nextRegimeCount];
          v14 = _nextRegimeCount + 1;
          if (_nextRegimeCount >= 2)
          {
            v4 = v13;
          }
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_29;
      }

      if (regime == -1)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUScrollViewSpeedometer.m" lineNumber:165 description:@"undefined regime"];
      }

      v15 = 0.0;
    }

    v19 = 2;
    if (v3 <= v8)
    {
      v19 = 1;
    }

    if (v3 <= v15)
    {
      v13 = v19;
    }

    else
    {
      v13 = 3;
    }

    goto LABEL_24;
  }

  return 0;
}

- (void)_setRegime:(int64_t)regime
{
  regime = self->_regime;
  if (regime != regime)
  {
    self->_regime = regime;
    if (self->_delegateSupportsRegimeChange)
    {
      delegate = [(PUScrollViewSpeedometer *)self delegate];
      [delegate scrollViewSpeedometer:self regimeDidChange:regime from:regime];
    }
  }
}

- (void)_setScrollSpeed:(CGPoint)speed
{
  if (speed.x != self->_scrollSpeed.x || speed.y != self->_scrollSpeed.y)
  {
    self->_scrollSpeed = speed;
    v6 = [(PUScrollViewSpeedometer *)self _newRegimeForScrollSpeed:?];

    [(PUScrollViewSpeedometer *)self _setRegime:v6];
  }
}

- (void)_handleTimeoutTimer:(id)timer
{
  [(PUScrollViewSpeedometer *)self _setScrollSpeed:timer, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

  [(PUScrollViewSpeedometer *)self _setTimeoutTimer:0];
}

- (void)_rescheduleTimeout
{
  _timeoutTimer = [(PUScrollViewSpeedometer *)self _timeoutTimer];
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
    [(PUScrollViewSpeedometer *)self _setTimeoutTimer:v7];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(PUScrollViewSpeedometer *)self _setScrollSpeed:dragging, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4;
  [scrollCopy contentOffset];
  v7 = v6;
  v9 = v8;
  [scrollCopy contentSize];
  v11 = v10;
  v13 = v12;
  _lastScrollView = [(PUScrollViewSpeedometer *)self _lastScrollView];
  if (_lastScrollView != scrollCopy || (([(PUScrollViewSpeedometer *)self _lastContentSize], v11 == v16) ? (v17 = v13 == v15) : (v17 = 0), !v17))
  {

LABEL_7:
    v18 = *MEMORY[0x1E695EFF8];
    v19 = *(MEMORY[0x1E695EFF8] + 8);
    [(PUScrollViewSpeedometer *)self _setLastScrollView:scrollCopy];
    [(PUScrollViewSpeedometer *)self _setLastContentSize:v11, v13];
    goto LABEL_8;
  }

  v20 = *MEMORY[0x1E695F060];
  v21 = *(MEMORY[0x1E695F060] + 8);

  if (v11 == v20 && v13 == v21)
  {
    goto LABEL_7;
  }

  [(PUScrollViewSpeedometer *)self _lastTime];
  v24 = v23;
  [(PUScrollViewSpeedometer *)self _lastContentOffset];
  v25 = 1.0 / (v5 - v24);
  v18 = v25 * (v7 - v26);
  v19 = v25 * (v9 - v27);
LABEL_8:
  [(PUScrollViewSpeedometer *)self _setScrollSpeed:v18, v19];
  [(PUScrollViewSpeedometer *)self _setLastTime:v5];
  [(PUScrollViewSpeedometer *)self _setLastContentOffset:v7, v9];
  [(PUScrollViewSpeedometer *)self _rescheduleTimeout];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateSupportsRegimeChange = objc_opt_respondsToSelector() & 1;
  }
}

@end