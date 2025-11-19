@interface _UIStatusBarActionGestureRecognizer
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIStatusBarActionGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  [(_UIStatusBarActionGestureRecognizer *)self setHighlighted:1, a4];

  [(UIGestureRecognizer *)self setState:1];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 count] < 2)
  {
    v7 = [v10 anyObject];
    v8 = [(UIGestureRecognizer *)self view];
    v9 = [(UIGestureRecognizer *)self view];
    [v7 locationInView:v9];
    -[_UIStatusBarActionGestureRecognizer setHighlighted:](self, "setHighlighted:", [v8 pointInside:v6 withEvent:?]);
  }

  else
  {
    [(_UIStatusBarActionGestureRecognizer *)self setHighlighted:0];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(_UIStatusBarActionGestureRecognizer *)self highlighted:a3])
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  [(UIGestureRecognizer *)self setState:v5];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(_UIStatusBarActionGestureRecognizer *)self setHighlighted:0, a4];

  [(UIGestureRecognizer *)self setState:4];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  if (_UIPressesContainsPressType(a3, 4))
  {
    [(_UIStatusBarActionGestureRecognizer *)self setHighlighted:1];

    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  if (_UIPressesContainsPressType(a3, 4))
  {
    if ([(_UIStatusBarActionGestureRecognizer *)self highlighted])
    {
      v5 = 3;
    }

    else
    {
      v5 = 5;
    }

    [(UIGestureRecognizer *)self setState:v5];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  [(_UIStatusBarActionGestureRecognizer *)self setHighlighted:0, a4];

  [(UIGestureRecognizer *)self setState:4];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    if ([(UIGestureRecognizer *)self state]>= UIGestureRecognizerStateBegan)
    {

      [(UIGestureRecognizer *)self setState:2];
    }
  }
}

@end