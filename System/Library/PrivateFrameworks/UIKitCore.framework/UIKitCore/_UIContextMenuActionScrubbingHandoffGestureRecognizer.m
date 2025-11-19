@interface _UIContextMenuActionScrubbingHandoffGestureRecognizer
- (BOOL)_gestureIsStillValid;
- (BOOL)_satisfiedHysteresis;
- (_UIContextMenuActionScrubbingHandoffGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_beginGestureIfPossible;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIContextMenuActionScrubbingHandoffGestureRecognizer

- (_UIContextMenuActionScrubbingHandoffGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIContextMenuActionScrubbingHandoffGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setName:@"com.apple.UIKit.ContextMenuActionPanHandoff"];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
    [(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)v5 setHysteresis:10.0];
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  p_initialLocation = &self->_initialLocation;
  [(UIGestureRecognizer *)self locationInView:0, a4];
  p_initialLocation->x = v6;
  p_initialLocation->y = v7;

  [(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)self _beginGestureIfPossible];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = [(UIGestureRecognizer *)self state:a3];
  if (v5)
  {
    if (v5 <= UIGestureRecognizerStateChanged)
    {
      if ([(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)self _gestureIsStillValid])
      {
        v6 = self;
        v7 = 2;
      }

      else
      {
        v6 = self;
        v7 = 4;
      }

      [(UIGestureRecognizer *)v6 setState:v7];
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
  v2 = [(UIGestureRecognizer *)self _activeTouchesEvent];
  v3 = [v2 allTouches];
  v4 = [v3 count] < 2;

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