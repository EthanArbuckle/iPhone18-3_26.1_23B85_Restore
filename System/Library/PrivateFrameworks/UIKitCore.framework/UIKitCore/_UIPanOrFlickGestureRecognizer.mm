@interface _UIPanOrFlickGestureRecognizer
- (BOOL)_shouldTryToBeginWithEvent:(id)event;
- (BOOL)isValidLongPress;
- (CGPoint)initialCentroidLocation;
- (_UIPanOrFlickGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (_UIPanOrFlickGestureRecognizerDelegate)panOrFlickDelegate;
- (unint64_t)recognizedFlickDirection;
- (void)clearTimer;
- (void)dealloc;
- (void)enoughTimeElapsed:(id)elapsed;
- (void)reset;
- (void)responsivenessTimeElapsed:(id)elapsed;
- (void)startTimer;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIPanOrFlickGestureRecognizer

- (void)dealloc
{
  [(UIDelayedAction *)self->_elapsedAction cancel];
  [(UIDelayedAction *)self->_responsivenessAction cancel];
  v3.receiver = self;
  v3.super_class = _UIPanOrFlickGestureRecognizer;
  [(UIGestureRecognizer *)&v3 dealloc];
}

- (_UIPanOrFlickGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v5.receiver = self;
  v5.super_class = _UIPanOrFlickGestureRecognizer;
  result = [(UIPanGestureRecognizer *)&v5 initWithTarget:target action:action];
  if (result)
  {
    result->_minimumPressDuration = 0.5;
    result->_allowableMovement = 10.0;
    result->_responsivenessDelay = result->_minimumPressDuration;
  }

  return result;
}

- (void)reset
{
  self->_didLongPress = 0;
  self->_touchCount = 0;
  [(_UIPanOrFlickGestureRecognizer *)self clearTimer];
  v3.receiver = self;
  v3.super_class = _UIPanOrFlickGestureRecognizer;
  [(UIGestureRecognizer *)&v3 reset];
}

- (_UIPanOrFlickGestureRecognizerDelegate)panOrFlickDelegate
{
  delegate = [(UIGestureRecognizer *)self delegate];
  v4 = [delegate conformsToProtocol:&unk_1F00544A8];

  if (v4)
  {
    delegate2 = [(UIGestureRecognizer *)self delegate];
  }

  else
  {
    delegate2 = 0;
  }

  return delegate2;
}

- (unint64_t)recognizedFlickDirection
{
  if ([(UIGestureRecognizer *)self state]!= UIGestureRecognizerStateEnded)
  {
    return 0;
  }

  view = [(UIGestureRecognizer *)self view];
  [(UIPanGestureRecognizer *)self translationInView:view];
  v5 = v4;
  v7 = v6;

  [(_UIPanOrFlickGestureRecognizer *)self timestampOfLastEvent];
  v9 = v8;
  [(_UIPanOrFlickGestureRecognizer *)self timestampBeforeGestureBegan];
  v11 = v9 - v10;
  [(_UIPanOrFlickGestureRecognizer *)self maximumFlickDuration];
  if (v11 >= v12 || ([(_UIPanOrFlickGestureRecognizer *)self minimumFlickDistance], v14 = v13, [(_UIPanOrFlickGestureRecognizer *)self minimumFlickDistance], v5 * v5 + v7 * v7 <= v14 * v15))
  {
    v20 = 0;
  }

  else
  {
    v16 = fabs(v5);
    v17 = fabs(v7);
    v18 = 4;
    if (v7 <= 0.0)
    {
      v18 = 1;
    }

    v19 = 2;
    if (v5 > 0.0)
    {
      v19 = 8;
    }

    if (v16 > v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }
  }

  return [(_UIPanOrFlickGestureRecognizer *)self allowedFlickDirections]& v20;
}

- (BOOL)isValidLongPress
{
  view = [(UIGestureRecognizer *)self view];
  [(UIPanGestureRecognizer *)self locationInView:view];
  v5 = v4;
  v7 = v6;

  [(_UIPanOrFlickGestureRecognizer *)self initialCentroidLocation];
  v9 = v5 - v8;
  [(_UIPanOrFlickGestureRecognizer *)self initialCentroidLocation];
  v11 = v9 * v9 + (v7 - v10) * (v7 - v10);
  [(_UIPanOrFlickGestureRecognizer *)self allowableMovement];
  v13 = v12;
  [(_UIPanOrFlickGestureRecognizer *)self allowableMovement];
  if (v11 > v13 * v14)
  {
    return 0;
  }

  touchCount = self->_touchCount;
  return touchCount == [(UIPanGestureRecognizer *)self minimumNumberOfTouches];
}

- (void)responsivenessTimeElapsed:(id)elapsed
{
  if ([(_UIPanOrFlickGestureRecognizer *)self isValidLongPress]&& [(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    if (self->_longPressOnly)
    {
      [(UIGestureRecognizer *)self setState:1];
    }

    panOrFlickDelegate = [(_UIPanOrFlickGestureRecognizer *)self panOrFlickDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      panOrFlickDelegate2 = [(_UIPanOrFlickGestureRecognizer *)self panOrFlickDelegate];
      [panOrFlickDelegate2 gestureRecognizerShouldBeginResponse:self];
    }
  }
}

- (void)enoughTimeElapsed:(id)elapsed
{
  if ([(_UIPanOrFlickGestureRecognizer *)self isValidLongPress])
  {
    v4 = 1;
    self->_didLongPress = 1;
    if ([(UIGestureRecognizer *)self state])
    {
      if ([(UIGestureRecognizer *)self state]!= UIGestureRecognizerStateBegan)
      {
        return;
      }

      v4 = 2;
    }

    [(UIGestureRecognizer *)self setState:v4];
  }
}

- (BOOL)_shouldTryToBeginWithEvent:(id)event
{
  if (self->_longPressOnly)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _UIPanOrFlickGestureRecognizer;
  return [(UIPanGestureRecognizer *)&v6 _shouldTryToBeginWithEvent:event];
}

- (void)clearTimer
{
  [(UIDelayedAction *)self->_elapsedAction cancel];
  elapsedAction = self->_elapsedAction;
  self->_elapsedAction = 0;

  [(UIDelayedAction *)self->_responsivenessAction cancel];
  responsivenessAction = self->_responsivenessAction;
  self->_responsivenessAction = 0;
}

- (void)startTimer
{
  [(_UIPanOrFlickGestureRecognizer *)self clearTimer];
  panOrFlickDelegate = [(_UIPanOrFlickGestureRecognizer *)self panOrFlickDelegate];
  v4 = objc_opt_respondsToSelector();

  v5 = 0.0;
  if (v4)
  {
    panOrFlickDelegate2 = [(_UIPanOrFlickGestureRecognizer *)self panOrFlickDelegate];
    [panOrFlickDelegate2 additionalPressDurationForTypingCadence:self];
    v5 = v7;
  }

  v8 = [UIDelayedAction alloc];
  [(_UIPanOrFlickGestureRecognizer *)self minimumPressDuration];
  v10 = *MEMORY[0x1E695DA28];
  v11 = [(UIDelayedAction *)v8 initWithTarget:self action:sel_enoughTimeElapsed_ userInfo:0 delay:*MEMORY[0x1E695DA28] mode:v5 + v9];
  elapsedAction = self->_elapsedAction;
  self->_elapsedAction = v11;

  [(_UIPanOrFlickGestureRecognizer *)self responsivenessDelay];
  v14 = v13;
  [(_UIPanOrFlickGestureRecognizer *)self minimumPressDuration];
  if (v14 != v15)
  {
    v16 = [UIDelayedAction alloc];
    [(_UIPanOrFlickGestureRecognizer *)self responsivenessDelay];
    v17 = [(UIDelayedAction *)v16 initWithTarget:self action:sel_responsivenessTimeElapsed_ userInfo:0 delay:v10 mode:?];
    responsivenessAction = self->_responsivenessAction;
    self->_responsivenessAction = v17;
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  [eventCopy timestamp];
  [(_UIPanOrFlickGestureRecognizer *)self setTimestampOfLastEvent:?];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [eventCopy timestamp];
    [(_UIPanOrFlickGestureRecognizer *)self setTimestampBeforeGestureBegan:?];
  }

  [(_UIPanOrFlickGestureRecognizer *)self startTimer];
  v10.receiver = self;
  v10.super_class = _UIPanOrFlickGestureRecognizer;
  [(UIPanGestureRecognizer *)&v10 touchesBegan:beganCopy withEvent:eventCopy];
  v8 = [beganCopy count];

  self->_touchCount += v8;
  view = [(UIGestureRecognizer *)self view];
  [(UIPanGestureRecognizer *)self locationInView:view];
  [(_UIPanOrFlickGestureRecognizer *)self setInitialCentroidLocation:?];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  [eventCopy timestamp];
  [(_UIPanOrFlickGestureRecognizer *)self setTimestampOfLastEvent:?];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [eventCopy timestamp];
    [(_UIPanOrFlickGestureRecognizer *)self setTimestampBeforeGestureBegan:?];
  }

  v8.receiver = self;
  v8.super_class = _UIPanOrFlickGestureRecognizer;
  [(UIPanGestureRecognizer *)&v8 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  [eventCopy timestamp];
  [(_UIPanOrFlickGestureRecognizer *)self setTimestampOfLastEvent:?];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [eventCopy timestamp];
    [(_UIPanOrFlickGestureRecognizer *)self setTimestampBeforeGestureBegan:?];
  }

  [(_UIPanOrFlickGestureRecognizer *)self clearTimer];
  v9.receiver = self;
  v9.super_class = _UIPanOrFlickGestureRecognizer;
  [(UIPanGestureRecognizer *)&v9 touchesEnded:endedCopy withEvent:eventCopy];
  v8 = [endedCopy count];

  self->_touchCount -= v8;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  cancelledCopy = cancelled;
  [eventCopy timestamp];
  [(_UIPanOrFlickGestureRecognizer *)self setTimestampOfLastEvent:?];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [eventCopy timestamp];
    [(_UIPanOrFlickGestureRecognizer *)self setTimestampBeforeGestureBegan:?];
  }

  [(_UIPanOrFlickGestureRecognizer *)self clearTimer];
  v9.receiver = self;
  v9.super_class = _UIPanOrFlickGestureRecognizer;
  [(UIPanGestureRecognizer *)&v9 touchesCancelled:cancelledCopy withEvent:eventCopy];
  v8 = [cancelledCopy count];

  self->_touchCount -= v8;
}

- (CGPoint)initialCentroidLocation
{
  x = self->_initialCentroidLocation.x;
  y = self->_initialCentroidLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end