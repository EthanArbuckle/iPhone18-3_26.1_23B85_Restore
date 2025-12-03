@interface _UIAutoScrollAssistant
- (BOOL)_scrollContinuous;
- (BOOL)isActive;
- (CGPoint)point;
- (CGPoint)referenceContentOffsetForPoint;
- (UIEdgeInsets)touchInsets;
- (UIScrollView)scrollView;
- (_UIAutoScrollAssistant)initWithScrollView:(id)view;
- (void)_adjustPointToCurrentContentOffset;
- (void)_handleAutoScrollerWithContentOffset:(CGPoint)offset direction:(unint64_t)direction;
- (void)autoScrollFromPoint:(CGPoint)point;
- (void)displayLinkFired:(id)fired;
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

- (_UIAutoScrollAssistant)initWithScrollView:(id)view
{
  viewCopy = view;
  v19.receiver = self;
  v19.super_class = _UIAutoScrollAssistant;
  v5 = [(_UIAutoScrollAssistant *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrollView, viewCopy);
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

    traitCollection = [viewCopy traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    if (userInterfaceIdiom == 6 || userInterfaceIdiom == 1)
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

- (void)autoScrollFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(_UIAutoScrollAssistant *)self point];
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained contentOffset];
  [(_UIAutoScrollAssistant *)self setPoint:x forContentOffset:y, v11, v12];

  if (!self->_displayLink)
  {
    v13 = objc_loadWeakRetained(&self->_scrollView);
    _screen = [v13 _screen];
    v15 = [_screen displayLinkWithTarget:self selector:sel_displayLinkFired_];

    v21 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v15 setPreferredFrameRateRange:{*&v21.minimum, *&v21.maximum, *&v21.preferred}];
    [v15 setHighFrameRateReason:1048631];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v15 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    mainRunLoop2 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v15 addToRunLoop:mainRunLoop2 forMode:@"UITrackingRunLoopMode"];

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
  displayLink = [(_UIAutoScrollAssistant *)self displayLink];
  [displayLink invalidate];

  [(_UIAutoScrollAssistant *)self setDisplayLink:0];
  [(_UIAutoScrollBehavior *)self->_behavior autoScrollEnded:self];
  [(_UIAutoScrollAssistant *)self setStarted:0];

  _UIQOSManagedCommitsEnd(self, @"AutoScroll");
}

- (BOOL)isActive
{
  displayLink = [(_UIAutoScrollAssistant *)self displayLink];
  v3 = displayLink != 0;

  return v3;
}

- (BOOL)_scrollContinuous
{
  mode = [(_UIAutoScrollAssistant *)self mode];
  if (mode == 2)
  {
    LOBYTE(v5) = 0;
  }

  else if (mode)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    scrollView = [(_UIAutoScrollAssistant *)self scrollView];
    v5 = [scrollView isPagingEnabled] ^ 1;
  }

  return v5;
}

- (void)displayLinkFired:(id)fired
{
  firedCopy = fired;
  _scrollContinuous = [(_UIAutoScrollAssistant *)self _scrollContinuous];
  behavior = [(_UIAutoScrollAssistant *)self behavior];
  [behavior beginDelayForAutoScroller:self];
  v8 = v7;

  [(_UIAutoScrollAssistant *)self lastTimestamp];
  v10 = v8 + v9;
  [firedCopy timestamp];
  v12 = v11;
  [firedCopy timestamp];
  v14 = v13;
  [(_UIAutoScrollAssistant *)self lastTimestamp];
  v16 = v14 - v15;
  if ([(_UIAutoScrollAssistant *)self started]|| v10 >= v12)
  {
    if (v10 >= v12 && (!_scrollContinuous || ![(_UIAutoScrollAssistant *)self started]))
    {
      goto LABEL_11;
    }
  }

  else
  {
    [(_UIAutoScrollAssistant *)self setStarted:1];
    if (_scrollContinuous)
    {
      [firedCopy duration];
      v16 = v17;
    }
  }

  behavior2 = [(_UIAutoScrollAssistant *)self behavior];
  v19 = behavior2;
  if (behavior2)
  {
    [behavior2 offsetForAutoScroller:self timeDelta:v16];
  }

  [(_UIAutoScrollAssistant *)self _handleAutoScrollerWithContentOffset:0 direction:0.0, 0.0];
  [firedCopy timestamp];
  [(_UIAutoScrollAssistant *)self setLastTimestamp:?];
LABEL_11:
  [(_UIAutoScrollAssistant *)self lastTimestamp];
  if (v20 == 0.0)
  {
    [firedCopy timestamp];
    [(_UIAutoScrollAssistant *)self setLastTimestamp:?];
  }
}

- (void)_handleAutoScrollerWithContentOffset:(CGPoint)offset direction:(unint64_t)direction
{
  if (direction == 1)
  {

    [(_UIAutoScrollAssistant *)self setStarted:0, offset.x, offset.y];
  }

  else
  {
    y = offset.y;
    x = offset.x;
    scrollView = [(_UIAutoScrollAssistant *)self scrollView];
    [scrollView _autoScrollAssistantUpdateContentOffset:{x, y}];
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