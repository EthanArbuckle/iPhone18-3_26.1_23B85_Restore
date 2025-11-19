@interface _UITouchDurationObservingGestureRecognizer
- (BOOL)_exceededNumberOfTouchesForEvent:(id)a3;
- (BOOL)_isGestureType:(int64_t)a3;
- (CADisplayLink)displayLink;
- (CGPoint)originalCentroid;
- (_UITouchDurationObservingGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)touchDuration;
- (id)_allTouchesMatchingRequirementsForEvent:(id)a3;
- (void)_cancelOrFail;
- (void)_displayLinkDidFire:(id)a3;
- (void)dealloc;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UITouchDurationObservingGestureRecognizer

- (void)reset
{
  v5.receiver = self;
  v5.super_class = _UITouchDurationObservingGestureRecognizer;
  [(UIGestureRecognizer *)&v5 reset];
  [(CADisplayLink *)self->_displayLink setPaused:1];
  v3 = [(_UITouchDurationObservingGestureRecognizer *)self delayedAction];
  [v3 cancel];

  delayedAction = self->_delayedAction;
  self->_delayedAction = 0;

  self->_touchForce = 0.0;
  self->_hasExceededAllowableMovement = 0;
  [(_UITouchDurationObservingGestureRecognizer *)self setTouchStartTimestamp:978307200.0];
  [(_UITouchDurationObservingGestureRecognizer *)self setOriginalCentroid:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
}

- (void)dealloc
{
  displayLink = self->_displayLink;
  v4 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [(CADisplayLink *)displayLink removeFromRunLoop:v4 forMode:*MEMORY[0x1E695DA28]];

  v5.receiver = self;
  v5.super_class = _UITouchDurationObservingGestureRecognizer;
  [(UIGestureRecognizer *)&v5 dealloc];
}

- (CADisplayLink)displayLink
{
  displayLink = self->_displayLink;
  if (!displayLink)
  {
    v4 = [[_UIWeakDisplayLinkTarget alloc] initWithTarget:self action:sel__displayLinkDidFire_];
    v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:v4 selector:{+[_UIWeakDisplayLinkTarget displayLinkAction](_UIWeakDisplayLinkTarget, "displayLinkAction")}];
    v6 = self->_displayLink;
    self->_displayLink = v5;

    v7 = self->_displayLink;
    v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v7 addToRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];

    [(CADisplayLink *)self->_displayLink setPaused:1];
    displayLink = self->_displayLink;
  }

  return displayLink;
}

- (_UITouchDurationObservingGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UITouchDurationObservingGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(_UITouchDurationObservingGestureRecognizer *)v4 setMinimumDurationRequired:0.15];
    [(_UITouchDurationObservingGestureRecognizer *)v5 setTouchStartTimestamp:978307200.0];
  }

  return v5;
}

- (double)touchDuration
{
  [(_UITouchDurationObservingGestureRecognizer *)self touchStartTimestamp];
  v4 = v3;
  result = 0.0;
  if (v4 < 978307200.0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v7 = v6;
    [(_UITouchDurationObservingGestureRecognizer *)self touchStartTimestamp];
    return v7 - v8;
  }

  return result;
}

- (void)_displayLinkDidFire:(id)a3
{
  v5 = [(UIGestureRecognizer *)self _activeTouchesEvent];
  if ([(_UITouchDurationObservingGestureRecognizer *)self _exceededNumberOfTouchesForEvent:?])
  {
    [(_UITouchDurationObservingGestureRecognizer *)self _cancelOrFail];
  }

  else
  {
    v4 = [(_UITouchDurationObservingGestureRecognizer *)self _allTouchesMatchingRequirementsForEvent:v5];
    self->_touchForce = _UITouchForceFromTouches(v4);

    if ([(UIGestureRecognizer *)self state]< UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]> UIGestureRecognizerStateEnded)
    {
      if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible && self->_touchForce >= 2.6)
      {
        [(_UITouchDurationObservingGestureRecognizer *)self _performDelayedBegin];
        [(UIDelayedAction *)self->_delayedAction cancel];
      }
    }

    else
    {
      [(UIGestureRecognizer *)self setState:2];
    }
  }
}

- (BOOL)_isGestureType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UITouchDurationObservingGestureRecognizer;
  result = [(UIGestureRecognizer *)&v5 _isGestureType:?];
  if (a3 == 7)
  {
    return 1;
  }

  return result;
}

- (id)_allTouchesMatchingRequirementsForEvent:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 allTouches];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 type];
        if (self && (self->super._allowedTouchTypes & (1 << v12)) != 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v9 = [(_UITouchDurationObservingGestureRecognizer *)self _allTouchesMatchingRequirementsForEvent:a4];
  if ([v9 count] == 1 && -[UIGestureRecognizer state](self, "state") == UIGestureRecognizerStatePossible)
  {
    [(UIGestureRecognizer *)self locationInView:0];
    [(_UITouchDurationObservingGestureRecognizer *)self setOriginalCentroid:?];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(_UITouchDurationObservingGestureRecognizer *)self setTouchStartTimestamp:?];
    v5 = [UIDelayedAction alloc];
    [(_UITouchDurationObservingGestureRecognizer *)self minimumDurationRequired];
    v6 = [(UIDelayedAction *)v5 initWithTarget:self action:sel__performDelayedBegin userInfo:0 delay:?];
    delayedAction = self->_delayedAction;
    self->_delayedAction = v6;

    self->_touchForce = _UITouchForceFromTouches(v9);
    v8 = [(_UITouchDurationObservingGestureRecognizer *)self displayLink];
    [v8 setPaused:0];
  }

  else
  {
    [(_UITouchDurationObservingGestureRecognizer *)self _cancelOrFail];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v17 = a4;
  if ([(_UITouchDurationObservingGestureRecognizer *)self _exceededNumberOfTouchesForEvent:?])
  {
    [(_UITouchDurationObservingGestureRecognizer *)self _cancelOrFail];
  }

  else
  {
    v5 = [(_UITouchDurationObservingGestureRecognizer *)self _allTouchesMatchingRequirementsForEvent:v17];
    self->_touchForce = _UITouchForceFromTouches(v5);

    [(_UITouchDurationObservingGestureRecognizer *)self allowableMovement];
    if (v6 > 0.0)
    {
      v7 = v6;
      [(UIGestureRecognizer *)self locationInView:0];
      v9 = v8;
      v11 = v10;
      [(_UITouchDurationObservingGestureRecognizer *)self originalCentroid];
      v14 = vabdd_f64(v11, v13);
      if (vabdd_f64(v9, v12) > v7 || v14 > v7)
      {
        self->_hasExceededAllowableMovement = 1;
        [(_UITouchDurationObservingGestureRecognizer *)self _cancelOrFail];
        v16 = [(_UITouchDurationObservingGestureRecognizer *)self delayedAction];
        [v16 cancel];
      }
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state:a3]<= UIGestureRecognizerStatePossible)
  {
    v5 = 5;
  }

  else
  {
    v5 = 3;
  }

  [(UIGestureRecognizer *)self setState:v5];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(UIGestureRecognizer *)self setState:4, a4];
  v5 = [(_UITouchDurationObservingGestureRecognizer *)self delayedAction];
  [v5 cancel];
}

- (BOOL)_exceededNumberOfTouchesForEvent:(id)a3
{
  v3 = [(_UITouchDurationObservingGestureRecognizer *)self _allTouchesMatchingRequirementsForEvent:a3];
  v4 = [v3 count] > 1;

  return v4;
}

- (void)_cancelOrFail
{
  if ([(UIGestureRecognizer *)self state])
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  [(UIGestureRecognizer *)self setState:v3];
  delayedAction = self->_delayedAction;

  [(UIDelayedAction *)delayedAction cancel];
}

- (CGPoint)originalCentroid
{
  x = self->_originalCentroid.x;
  y = self->_originalCentroid.y;
  result.y = y;
  result.x = x;
  return result;
}

@end