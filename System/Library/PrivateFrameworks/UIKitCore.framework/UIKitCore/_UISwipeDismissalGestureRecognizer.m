@interface _UISwipeDismissalGestureRecognizer
- (CGPoint)originalTouchPoint;
- (_UISwipeDismissalGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UISwipeDismissalGestureRecognizer

- (_UISwipeDismissalGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UISwipeDismissalGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(_UISwipeDismissalGestureRecognizer *)v4 setAllowableMovement:10.0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesBegan:1];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:1];
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v7 = [a3 anyObject];
  v5 = [(UIGestureRecognizer *)self view];
  [v7 locationInView:v5];
  [(_UISwipeDismissalGestureRecognizer *)self setOriginalTouchPoint:?];

  v6 = [(UIGestureRecognizer *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 gestureRecognizerShouldDismissForTouchDown:self])
  {
    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v18 = [a3 anyObject];
  v5 = [(UIGestureRecognizer *)self view];
  [v18 locationInView:v5];
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

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = [(UIGestureRecognizer *)self delegate:a3];
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