@interface _UIAutoScrollAssistant
- (BOOL)_scrollContinuous;
- (BOOL)isActive;
- (CGPoint)point;
- (CGPoint)referenceContentOffsetForPoint;
- (UIEdgeInsets)touchInsets;
- (UIScrollView)scrollView;
- (_UIAutoScrollAssistant)initWithScrollView:(id)a3;
- (void)_adjustPointToCurrentContentOffset;
- (void)_handleAutoScrollerWithContentOffset:(CGPoint)a3 direction:(unint64_t)a4;
- (void)autoScrollFromPoint:(CGPoint)a3;
- (void)displayLinkFired:(id)a3;
- (void)stop;
@end

@implementation _UIAutoScrollAssistant

- (UIEdgeInsets)touchInsets
{
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  bottom = self->_touchInsets.bottom;
  right = self->_touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (_UIAutoScrollAssistant)initWithScrollView:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _UIAutoScrollAssistant;
  v5 = [(_UIAutoScrollAssistant *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrollView, v4);
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v7 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v18 = _UIInternalPreference_UseUpdatedAutoScrollBehavior;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_UseUpdatedAutoScrollBehavior)
      {
        do
        {
          if (v7 < v18)
          {
            break;
          }

          _UIInternalPreferenceSync(v7, &_UIInternalPreference_UseUpdatedAutoScrollBehavior, @"UseUpdatedAutoScrollBehavior", _UIInternalPreferenceUpdateBool);
          v18 = _UIInternalPreference_UseUpdatedAutoScrollBehavior;
        }

        while (v7 != _UIInternalPreference_UseUpdatedAutoScrollBehavior);
      }
    }

    v8 = objc_opt_new();
    behavior = v6->_behavior;
    v6->_behavior = v8;

    v6->_allowedDirections = 30;
    WeakRetained = objc_loadWeakRetained(&v6->_scrollView);
    [WeakRetained contentOffset];
    v6->_referenceContentOffsetForPoint.x = v11;
    v6->_referenceContentOffsetForPoint.y = v12;

    v13 = [v4 traitCollection];
    v14 = [v13 userInterfaceIdiom];
    if (v14 == 6 || v14 == 1)
    {
      v16 = -50.0;
    }

    else
    {
      v16 = -25.0;
    }

    v6->_touchInsets.top = -50.0;
    v6->_touchInsets.left = v16;
    v6->_touchInsets.bottom = -50.0;
    v6->_touchInsets.right = v16;
  }

  return v6;
}

- (void)autoScrollFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(_UIAutoScrollAssistant *)self point];
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained contentOffset];
  [(_UIAutoScrollAssistant *)self setPoint:x forContentOffset:y, v11, v12];

  if (!self->_displayLink)
  {
    v13 = objc_loadWeakRetained(&self->_scrollView);
    v14 = [v13 _screen];
    v15 = [v14 displayLinkWithTarget:self selector:sel_displayLinkFired_];

    v21 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v15 setPreferredFrameRateRange:{*&v21.minimum, *&v21.maximum, *&v21.preferred}];
    [v15 setHighFrameRateReason:1048631];
    v16 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v15 addToRunLoop:v16 forMode:*MEMORY[0x1E695DA28]];

    v17 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v15 addToRunLoop:v17 forMode:@"UITrackingRunLoopMode"];

    [(_UIAutoScrollAssistant *)self setDisplayLink:v15];
    _UIQOSManagedCommitsBegin(self, @"AutoScroll");
    [(_UIAutoScrollBehavior *)self->_behavior autoScrollStarted:self];
  }

  v18 = sqrt((x - v7) * (x - v7) + (y - v9) * (y - v9));
  if ([(_UIAutoScrollAssistant *)self started]&& v18 > 40.0)
  {

    [(_UIAutoScrollAssistant *)self setStarted:0];
  }

  else if (![(_UIAutoScrollAssistant *)self started]&& v18 > 20.0)
  {
    v19 = CACurrentMediaTime();

    [(_UIAutoScrollAssistant *)self setLastTimestamp:v19];
  }
}

- (void)stop
{
  v3 = [(_UIAutoScrollAssistant *)self displayLink];
  [v3 invalidate];

  [(_UIAutoScrollAssistant *)self setDisplayLink:0];
  [(_UIAutoScrollBehavior *)self->_behavior autoScrollEnded:self];
  [(_UIAutoScrollAssistant *)self setStarted:0];

  _UIQOSManagedCommitsEnd(self, @"AutoScroll");
}

- (BOOL)isActive
{
  v2 = [(_UIAutoScrollAssistant *)self displayLink];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_scrollContinuous
{
  v3 = [(_UIAutoScrollAssistant *)self mode];
  if (v3 == 2)
  {
    LOBYTE(v5) = 0;
  }

  else if (v3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v4 = [(_UIAutoScrollAssistant *)self scrollView];
    v5 = [v4 isPagingEnabled] ^ 1;
  }

  return v5;
}

- (void)displayLinkFired:(id)a3
{
  v4 = a3;
  v5 = [(_UIAutoScrollAssistant *)self _scrollContinuous];
  v6 = [(_UIAutoScrollAssistant *)self behavior];
  [v6 beginDelayForAutoScroller:self];
  v8 = v7;

  [(_UIAutoScrollAssistant *)self lastTimestamp];
  v10 = v8 + v9;
  [v4 timestamp];
  v12 = v11;
  [v4 timestamp];
  v14 = v13;
  [(_UIAutoScrollAssistant *)self lastTimestamp];
  v16 = v14 - v15;
  if ([(_UIAutoScrollAssistant *)self started]|| v10 >= v12)
  {
    if (v10 >= v12 && (!v5 || ![(_UIAutoScrollAssistant *)self started]))
    {
      goto LABEL_11;
    }
  }

  else
  {
    [(_UIAutoScrollAssistant *)self setStarted:1];
    if (v5)
    {
      [v4 duration];
      v16 = v17;
    }
  }

  v18 = [(_UIAutoScrollAssistant *)self behavior];
  v19 = v18;
  if (v18)
  {
    [v18 offsetForAutoScroller:self timeDelta:v16];
  }

  [(_UIAutoScrollAssistant *)self _handleAutoScrollerWithContentOffset:0 direction:0.0, 0.0];
  [v4 timestamp];
  [(_UIAutoScrollAssistant *)self setLastTimestamp:?];
LABEL_11:
  [(_UIAutoScrollAssistant *)self lastTimestamp];
  if (v20 == 0.0)
  {
    [v4 timestamp];
    [(_UIAutoScrollAssistant *)self setLastTimestamp:?];
  }
}

- (void)_handleAutoScrollerWithContentOffset:(CGPoint)a3 direction:(unint64_t)a4
{
  if (a4 == 1)
  {

    [(_UIAutoScrollAssistant *)self setStarted:0, a3.x, a3.y];
  }

  else
  {
    y = a3.y;
    x = a3.x;
    v7 = [(_UIAutoScrollAssistant *)self scrollView];
    [v7 _autoScrollAssistantUpdateContentOffset:{x, y}];
  }
}

- (void)_adjustPointToCurrentContentOffset
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained contentOffset];
  v9 = v5;
  v10 = v4;

  referenceContentOffsetForPoint = self->_referenceContentOffsetForPoint;
  if (referenceContentOffsetForPoint.x != v10 || self->_referenceContentOffsetForPoint.y != v9)
  {
    v8.f64[0] = v10;
    v8.f64[1] = v9;
    self->_point = vaddq_f64(vsubq_f64(v8, referenceContentOffsetForPoint), self->_point);
    self->_referenceContentOffsetForPoint.x = v10;
    self->_referenceContentOffsetForPoint.y = v9;
  }
}

- (CGPoint)point
{
  [(_UIAutoScrollAssistant *)self _adjustPointToCurrentContentOffset];
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (CGPoint)referenceContentOffsetForPoint
{
  x = self->_referenceContentOffsetForPoint.x;
  y = self->_referenceContentOffsetForPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end