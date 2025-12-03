@interface _UITouchDownGestureRecognizer
- (BOOL)gestureIsStillValid;
- (BOOL)locationIsMostlyInsideView:(CGPoint)view;
- (CGPoint)locationInView:(id)view;
- (_UITouchDownGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)activationDelayHandler;
- (void)cancelActivationDelay;
- (void)recognizeOrFailForCurrentLocation;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UITouchDownGestureRecognizer

- (_UITouchDownGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UITouchDownGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible && !self->_activationDelay)
  {
    anyObject = [beganCopy anyObject];
    view = [(UIGestureRecognizer *)self view];
    [anyObject locationInView:view];
    self->_locationInView.x = v7;
    self->_locationInView.y = v8;

    [(_UITouchDownGestureRecognizer *)self locationInView:0];
    self->_initialLocationInScreenSpace.x = v9;
    self->_initialLocationInScreenSpace.y = v10;
    view2 = [(UIGestureRecognizer *)self view];
    _containingScrollView = [view2 _containingScrollView];
    v13 = dbl_18A681530[_containingScrollView == 0];

    v14 = [[UIDelayedAction alloc] initWithTarget:self action:sel_activationDelayHandler userInfo:0 delay:v13];
    activationDelay = self->_activationDelay;
    self->_activationDelay = v14;
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  p_locationInView = &self->_locationInView;
  anyObject = [moved anyObject];
  view = [(UIGestureRecognizer *)self view];
  [anyObject locationInView:view];
  p_locationInView->x = v8;
  p_locationInView->y = v9;

  if (self->_activationDelay && ![(_UITouchDownGestureRecognizer *)self gestureIsStillValid])
  {

    [(_UITouchDownGestureRecognizer *)self cancelActivationDelay];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  [(_UITouchDownGestureRecognizer *)self cancelActivationDelay];
  anyObject = [endedCopy anyObject];

  view = [(UIGestureRecognizer *)self view];
  [anyObject locationInView:view];
  self->_locationInView.x = v8;
  self->_locationInView.y = v9;

  [(_UITouchDownGestureRecognizer *)self recognizeOrFailForCurrentLocation];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(_UITouchDownGestureRecognizer *)self cancelActivationDelay:cancelled];
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

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  view = [(UIGestureRecognizer *)self view];
  [view convertPoint:viewCopy toView:{self->_locationInView.x, self->_locationInView.y}];
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
  _activeTouchesEvent = [(UIGestureRecognizer *)self _activeTouchesEvent];
  allTouches = [_activeTouchesEvent allTouches];
  v5 = [allTouches count];

  v13 = v5 <= 1 && ([(_UITouchDownGestureRecognizer *)self locationInView:0], v7 = v6, y = self->_initialLocationInScreenSpace.y, v10 = vabdd_f64(v9, self->_initialLocationInScreenSpace.x), [(_UITouchDownGestureRecognizer *)self allowableMovement], v10 <= v11) && ([(_UITouchDownGestureRecognizer *)self allowableMovement], vabdd_f64(v7, y) <= v12) && [(_UITouchDownGestureRecognizer *)self locationIsMostlyInsideView:self->_locationInView.x, self->_locationInView.y];
  return v13;
}

- (BOOL)locationIsMostlyInsideView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  view = [(UIGestureRecognizer *)self view];
  v7 = objc_opt_respondsToSelector();

  view2 = [(UIGestureRecognizer *)self view];
  v9 = view2;
  if (v7)
  {
    v10 = [view2 pointMostlyInside:0 withEvent:{x, y}];
  }

  else
  {
    v10 = [view2 pointInside:0 forEvent:{x, y}];
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