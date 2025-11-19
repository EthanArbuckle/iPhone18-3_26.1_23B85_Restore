@interface _UIGestureStudyMetricsGestureRecognizer
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)originalPosition;
- (_UIGestureStudyMetricsGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)duration;
- (double)movement;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UIGestureStudyMetricsGestureRecognizer

- (_UIGestureStudyMetricsGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIGestureStudyMetricsGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
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

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  v5 = [(_UIGestureStudyMetricsGestureRecognizer *)self primaryTouch];
  [v5 locationInView:v4];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  self->_observedTouchCount += [v7 count];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    v5 = [v7 anyObject];
    [(_UIGestureStudyMetricsGestureRecognizer *)self setPrimaryTouch:v5];

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(_UIGestureStudyMetricsGestureRecognizer *)self setStartTimestamp:?];
    v6 = [(UIGestureRecognizer *)self view];
    [(_UIGestureStudyMetricsGestureRecognizer *)self locationInView:v6];
    [(_UIGestureStudyMetricsGestureRecognizer *)self setOriginalPosition:?];

    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(_UIGestureStudyMetricsGestureRecognizer *)self primaryTouch];
  v7 = [v5 containsObject:v6];

  if (v7)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(_UIGestureStudyMetricsGestureRecognizer *)self primaryTouch];
  v7 = [v5 containsObject:v6];

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

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(UIGestureRecognizer *)self view];
  [(_UIGestureStudyMetricsGestureRecognizer *)self locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(UIGestureRecognizer *)self view];
  [v10 convertPoint:v4 toCoordinateSpace:{v7, v9}];
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
  v3 = [(UIGestureRecognizer *)self view];
  [(_UIGestureStudyMetricsGestureRecognizer *)self locationInView:v3];
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