@interface _UIStatusBarActionGestureRecognizer
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setHighlighted:(BOOL)highlighted;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIStatusBarActionGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  [(_UIStatusBarActionGestureRecognizer *)self setHighlighted:1, event];

  [(UIGestureRecognizer *)self setState:1];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if ([movedCopy count] < 2)
  {
    anyObject = [movedCopy anyObject];
    view = [(UIGestureRecognizer *)self view];
    view2 = [(UIGestureRecognizer *)self view];
    [anyObject locationInView:view2];
    -[_UIStatusBarActionGestureRecognizer setHighlighted:](self, "setHighlighted:", [view pointInside:eventCopy withEvent:?]);
  }

  else
  {
    [(_UIStatusBarActionGestureRecognizer *)self setHighlighted:0];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(_UIStatusBarActionGestureRecognizer *)self highlighted:ended])
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  [(UIGestureRecognizer *)self setState:v5];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(_UIStatusBarActionGestureRecognizer *)self setHighlighted:0, event];

  [(UIGestureRecognizer *)self setState:4];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  if (_UIPressesContainsPressType(began, 4))
  {
    [(_UIStatusBarActionGestureRecognizer *)self setHighlighted:1];

    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  if (_UIPressesContainsPressType(ended, 4))
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

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  [(_UIStatusBarActionGestureRecognizer *)self setHighlighted:0, event];

  [(UIGestureRecognizer *)self setState:4];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    if ([(UIGestureRecognizer *)self state]>= UIGestureRecognizerStateBegan)
    {

      [(UIGestureRecognizer *)self setState:2];
    }
  }
}

@end