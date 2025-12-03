@interface _UIGestureStudyMetricsGestureRecognizer
- (CGPoint)locationInCoordinateSpace:(id)space;
- (CGPoint)locationInView:(id)view;
- (CGPoint)originalPosition;
- (_UIGestureStudyMetricsGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (double)duration;
- (double)movement;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UIGestureStudyMetricsGestureRecognizer

- (_UIGestureStudyMetricsGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIGestureStudyMetricsGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setName:@"gesture-study-press-duration"];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(_UIGestureStudyMetricsGestureRecognizer *)v5 setAllowableMovement:0.0];
  }

  return v5;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  primaryTouch = [(_UIGestureStudyMetricsGestureRecognizer *)self primaryTouch];
  [primaryTouch locationInView:viewCopy];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  self->_observedTouchCount += [beganCopy count];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    anyObject = [beganCopy anyObject];
    [(_UIGestureStudyMetricsGestureRecognizer *)self setPrimaryTouch:anyObject];

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(_UIGestureStudyMetricsGestureRecognizer *)self setStartTimestamp:?];
    view = [(UIGestureRecognizer *)self view];
    [(_UIGestureStudyMetricsGestureRecognizer *)self locationInView:view];
    [(_UIGestureStudyMetricsGestureRecognizer *)self setOriginalPosition:?];

    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  primaryTouch = [(_UIGestureStudyMetricsGestureRecognizer *)self primaryTouch];
  v7 = [endedCopy containsObject:primaryTouch];

  if (v7)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  primaryTouch = [(_UIGestureStudyMetricsGestureRecognizer *)self primaryTouch];
  v7 = [cancelledCopy containsObject:primaryTouch];

  if (v7)
  {

    [(UIGestureRecognizer *)self setState:4];
  }
}

- (void)reset
{
  [(_UIGestureStudyMetricsGestureRecognizer *)self setStartTimestamp:978307200.0];
  [(_UIGestureStudyMetricsGestureRecognizer *)self setOriginalPosition:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(_UIGestureStudyMetricsGestureRecognizer *)self setPrimaryTouch:0];
  self->_observedTouchCount = 0;
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  view = [(UIGestureRecognizer *)self view];
  [(_UIGestureStudyMetricsGestureRecognizer *)self locationInView:view];
  v7 = v6;
  v9 = v8;

  view2 = [(UIGestureRecognizer *)self view];
  [view2 convertPoint:spaceCopy toCoordinateSpace:{v7, v9}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (double)duration
{
  [(_UIGestureStudyMetricsGestureRecognizer *)self startTimestamp];
  v4 = v3;
  result = 978307200.0;
  if (v4 < 978307200.0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v7 = v6;
    [(_UIGestureStudyMetricsGestureRecognizer *)self startTimestamp];
    return v7 - v8;
  }

  return result;
}

- (double)movement
{
  view = [(UIGestureRecognizer *)self view];
  [(_UIGestureStudyMetricsGestureRecognizer *)self locationInView:view];
  v5 = v4;
  v7 = v6;

  [(_UIGestureStudyMetricsGestureRecognizer *)self originalPosition];
  return sqrt((v8 - v5) * (v8 - v5) + (v9 - v7) * (v9 - v7));
}

- (CGPoint)originalPosition
{
  x = self->_originalPosition.x;
  y = self->_originalPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end