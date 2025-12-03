@interface _UISwipeDismissalGestureRecognizer
- (CGPoint)originalTouchPoint;
- (_UISwipeDismissalGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UISwipeDismissalGestureRecognizer

- (_UISwipeDismissalGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UISwipeDismissalGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(_UISwipeDismissalGestureRecognizer *)v4 setAllowableMovement:10.0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesBegan:1];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:1];
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  anyObject = [began anyObject];
  view = [(UIGestureRecognizer *)self view];
  [anyObject locationInView:view];
  [(_UISwipeDismissalGestureRecognizer *)self setOriginalTouchPoint:?];

  delegate = [(UIGestureRecognizer *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate gestureRecognizerShouldDismissForTouchDown:self])
  {
    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  anyObject = [moved anyObject];
  view = [(UIGestureRecognizer *)self view];
  [anyObject locationInView:view];
  v7 = v6;
  v9 = v8;

  [(_UISwipeDismissalGestureRecognizer *)self originalTouchPoint];
  v11 = v10;
  [(_UISwipeDismissalGestureRecognizer *)self originalTouchPoint];
  v13 = v7 - v12;
  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -v13;
  }

  [(_UISwipeDismissalGestureRecognizer *)self allowableMovement];
  if (v14 > v15 || (v9 - v11 >= 0.0 ? (v16 = v9 - v11) : (v16 = -(v9 - v11)), [(_UISwipeDismissalGestureRecognizer *)self allowableMovement], v16 > v17))
  {
    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v6 = [(UIGestureRecognizer *)self delegate:ended];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 gestureRecognizerShouldDismissForTouchUp:self])
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  [(UIGestureRecognizer *)self setState:v5];
}

- (void)reset
{
  [(_UISwipeDismissalGestureRecognizer *)self setOriginalTouchPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v3.receiver = self;
  v3.super_class = _UISwipeDismissalGestureRecognizer;
  [(UIGestureRecognizer *)&v3 reset];
}

- (CGPoint)originalTouchPoint
{
  x = self->_originalTouchPoint.x;
  y = self->_originalTouchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end