@interface PUScrollViewSpeedometer
- (CGPoint)_lastContentOffset;
- (CGPoint)scrollSpeed;
- (CGSize)_lastContentSize;
- (PUScrollViewSpeedometerDelegate)delegate;
- (UIScrollView)_lastScrollView;
- (int64_t)_newRegimeForScrollSpeed:(CGPoint)a3;
- (void)_handleTimeoutTimer:(id)a3;
- (void)_rescheduleTimeout;
- (void)_setRegime:(int64_t)a3;
- (void)_setScrollSpeed:(CGPoint)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setDelegate:(id)a3;
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

- (int64_t)_newRegimeForScrollSpeed:(CGPoint)a3
{
  v3 = fmax(fabs(a3.x), fabs(a3.y));
  if (v3 != 0.0)
  {
    v7 = [(PUScrollViewSpeedometer *)self regime];
    v4 = v7;
    v8 = 0.0;
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        [(PUScrollViewSpeedometer *)self mediumLowerThreshold];
        v8 = v18;
        [(PUScrollViewSpeedometer *)self fastUpperThreshold];
      }

      else
      {
        v15 = 0.0;
        if (v7 == 3)
        {
          [(PUScrollViewSpeedometer *)self mediumLowerThreshold];
          v8 = v16;
          [(PUScrollViewSpeedometer *)self fastLowerThreshold];
        }
      }
    }

    else
    {
      if (v7 < 2)
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
          v20 = [(PUScrollViewSpeedometer *)self _nextRegimeCount];
          v14 = v20 + 1;
          if (v20 >= 2)
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

      if (v7 == -1)
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        [v17 handleFailureInMethod:a2 object:self file:@"PUScrollViewSpeedometer.m" lineNumber:165 description:@"undefined regime"];
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

- (void)_setRegime:(int64_t)a3
{
  regime = self->_regime;
  if (regime != a3)
  {
    self->_regime = a3;
    if (self->_delegateSupportsRegimeChange)
    {
      v6 = [(PUScrollViewSpeedometer *)self delegate];
      [v6 scrollViewSpeedometer:self regimeDidChange:a3 from:regime];
    }
  }
}

- (void)_setScrollSpeed:(CGPoint)a3
{
  if (a3.x != self->_scrollSpeed.x || a3.y != self->_scrollSpeed.y)
  {
    self->_scrollSpeed = a3;
    v6 = [(PUScrollViewSpeedometer *)self _newRegimeForScrollSpeed:?];

    [(PUScrollViewSpeedometer *)self _setRegime:v6];
  }
}

- (void)_handleTimeoutTimer:(id)a3
{
  [(PUScrollViewSpeedometer *)self _setScrollSpeed:a3, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

  [(PUScrollViewSpeedometer *)self _setTimeoutTimer:0];
}

- (void)_rescheduleTimeout
{
  v3 = [(PUScrollViewSpeedometer *)self _timeoutTimer];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 fireDate];
    [v4 timeIntervalSinceNow];
    if (v5 < 0.5)
    {
      v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.5];

      [v7 setFireDate:v6];
      v4 = v6;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__handleTimeoutTimer_ selector:0 userInfo:0 repeats:1.5];
    [(PUScrollViewSpeedometer *)self _setTimeoutTimer:v7];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(PUScrollViewSpeedometer *)self _setScrollSpeed:a3, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v28 = a3;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4;
  [v28 contentOffset];
  v7 = v6;
  v9 = v8;
  [v28 contentSize];
  v11 = v10;
  v13 = v12;
  v14 = [(PUScrollViewSpeedometer *)self _lastScrollView];
  if (v14 != v28 || (([(PUScrollViewSpeedometer *)self _lastContentSize], v11 == v16) ? (v17 = v13 == v15) : (v17 = 0), !v17))
  {

LABEL_7:
    v18 = *MEMORY[0x1E695EFF8];
    v19 = *(MEMORY[0x1E695EFF8] + 8);
    [(PUScrollViewSpeedometer *)self _setLastScrollView:v28];
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

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateSupportsRegimeChange = objc_opt_respondsToSelector() & 1;
  }
}

@end