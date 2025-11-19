@interface _UITouchDownGestureRecognizer
- (BOOL)gestureIsStillValid;
- (BOOL)locationIsMostlyInsideView:(CGPoint)a3;
- (CGPoint)locationInView:(id)a3;
- (_UITouchDownGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)activationDelayHandler;
- (void)cancelActivationDelay;
- (void)recognizeOrFailForCurrentLocation;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UITouchDownGestureRecognizer

- (_UITouchDownGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UITouchDownGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(_UITouchDownGestureRecognizer *)v4 setAllowableMovement:10.0];
  }

  return v5;
}

- (void)reset
{
  [(UIDelayedAction *)self->_activationDelay cancel];
  activationDelay = self->_activationDelay;
  self->_activationDelay = 0;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v16 = a3;
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible && !self->_activationDelay)
  {
    v5 = [v16 anyObject];
    v6 = [(UIGestureRecognizer *)self view];
    [v5 locationInView:v6];
    self->_locationInView.x = v7;
    self->_locationInView.y = v8;

    [(_UITouchDownGestureRecognizer *)self locationInView:0];
    self->_initialLocationInScreenSpace.x = v9;
    self->_initialLocationInScreenSpace.y = v10;
    v11 = [(UIGestureRecognizer *)self view];
    v12 = [v11 _containingScrollView];
    v13 = dbl_18A681530[v12 == 0];

    v14 = [[UIDelayedAction alloc] initWithTarget:self action:sel_activationDelayHandler userInfo:0 delay:v13];
    activationDelay = self->_activationDelay;
    self->_activationDelay = v14;
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  p_locationInView = &self->_locationInView;
  v6 = [a3 anyObject];
  v7 = [(UIGestureRecognizer *)self view];
  [v6 locationInView:v7];
  p_locationInView->x = v8;
  p_locationInView->y = v9;

  if (self->_activationDelay && ![(_UITouchDownGestureRecognizer *)self gestureIsStillValid])
  {

    [(_UITouchDownGestureRecognizer *)self cancelActivationDelay];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(_UITouchDownGestureRecognizer *)self cancelActivationDelay];
  v6 = [v5 anyObject];

  v7 = [(UIGestureRecognizer *)self view];
  [v6 locationInView:v7];
  self->_locationInView.x = v8;
  self->_locationInView.y = v9;

  [(_UITouchDownGestureRecognizer *)self recognizeOrFailForCurrentLocation];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(_UITouchDownGestureRecognizer *)self cancelActivationDelay:a3];
  self->_locationInView = *MEMORY[0x1E695EFF8];
  if ([(UIGestureRecognizer *)self state]> UIGestureRecognizerStatePossible)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  [(UIGestureRecognizer *)self setState:v5];
}

- (void)activationDelayHandler
{
  activationDelay = self->_activationDelay;
  self->_activationDelay = 0;

  [(_UITouchDownGestureRecognizer *)self recognizeOrFailForCurrentLocation];
}

- (void)cancelActivationDelay
{
  [(UIDelayedAction *)self->_activationDelay cancel];
  activationDelay = self->_activationDelay;
  self->_activationDelay = 0;
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  v5 = [(UIGestureRecognizer *)self view];
  [v5 convertPoint:v4 toView:{self->_locationInView.x, self->_locationInView.y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (BOOL)gestureIsStillValid
{
  v3 = [(UIGestureRecognizer *)self _activeTouchesEvent];
  v4 = [v3 allTouches];
  v5 = [v4 count];

  v13 = v5 <= 1 && ([(_UITouchDownGestureRecognizer *)self locationInView:0], v7 = v6, y = self->_initialLocationInScreenSpace.y, v10 = vabdd_f64(v9, self->_initialLocationInScreenSpace.x), [(_UITouchDownGestureRecognizer *)self allowableMovement], v10 <= v11) && ([(_UITouchDownGestureRecognizer *)self allowableMovement], vabdd_f64(v7, y) <= v12) && [(_UITouchDownGestureRecognizer *)self locationIsMostlyInsideView:self->_locationInView.x, self->_locationInView.y];
  return v13;
}

- (BOOL)locationIsMostlyInsideView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UIGestureRecognizer *)self view];
  v7 = objc_opt_respondsToSelector();

  v8 = [(UIGestureRecognizer *)self view];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 pointMostlyInside:0 withEvent:{x, y}];
  }

  else
  {
    v10 = [v8 pointInside:0 forEvent:{x, y}];
  }

  v11 = v10;

  return v11;
}

- (void)recognizeOrFailForCurrentLocation
{
  if ([(_UITouchDownGestureRecognizer *)self gestureIsStillValid])
  {
    v3 = 3;
  }

  else
  {
    v3 = 5;
  }

  [(UIGestureRecognizer *)self setState:v3];
}

@end