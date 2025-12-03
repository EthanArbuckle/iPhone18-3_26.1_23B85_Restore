@interface _UIContextMenuActionScrubbingHandoffGestureRecognizer
- (BOOL)_gestureIsStillValid;
- (BOOL)_satisfiedHysteresis;
- (_UIContextMenuActionScrubbingHandoffGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_beginGestureIfPossible;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIContextMenuActionScrubbingHandoffGestureRecognizer

- (_UIContextMenuActionScrubbingHandoffGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIContextMenuActionScrubbingHandoffGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setName:@"com.apple.UIKit.ContextMenuActionPanHandoff"];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
    [(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)v5 setHysteresis:10.0];
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  p_initialLocation = &self->_initialLocation;
  [(UIGestureRecognizer *)self locationInView:0, event];
  p_initialLocation->x = v6;
  p_initialLocation->y = v7;

  [(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)self _beginGestureIfPossible];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v5 = [(UIGestureRecognizer *)self state:moved];
  if (v5)
  {
    if (v5 <= UIGestureRecognizerStateChanged)
    {
      if ([(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)self _gestureIsStillValid])
      {
        selfCopy2 = self;
        v7 = 2;
      }

      else
      {
        selfCopy2 = self;
        v7 = 4;
      }

      [(UIGestureRecognizer *)selfCopy2 setState:v7];
    }
  }

  else
  {

    [(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)self _beginGestureIfPossible];
  }
}

- (void)_beginGestureIfPossible
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    if ([(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)self _gestureIsStillValid])
    {
      if (![(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)self _satisfiedHysteresis])
      {
        return;
      }

      v3 = 1;
    }

    else
    {
      v3 = 5;
    }

    [(UIGestureRecognizer *)self setState:v3];
  }
}

- (BOOL)_gestureIsStillValid
{
  _activeTouchesEvent = [(UIGestureRecognizer *)self _activeTouchesEvent];
  allTouches = [_activeTouchesEvent allTouches];
  v4 = [allTouches count] < 2;

  return v4;
}

- (BOOL)_satisfiedHysteresis
{
  p_initialLocation = &self->_initialLocation;
  [(UIGestureRecognizer *)self locationInView:0];
  v6 = fabs(sqrt((v4 - p_initialLocation->x) * (v4 - p_initialLocation->x) + (v5 - p_initialLocation->y) * (v5 - p_initialLocation->y)));
  [(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)self hysteresis];
  return v6 >= v7;
}

@end