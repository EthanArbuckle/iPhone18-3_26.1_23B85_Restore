@interface _UIDragLiftGestureRecognizer
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIDragLiftGestureRecognizer

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v14.receiver = self;
  v14.super_class = _UIDragLiftGestureRecognizer;
  [(UILongPressGestureRecognizer *)&v14 touchesMoved:moved withEvent:event];
  if ([(UIGestureRecognizer *)self _hasUnmetFailureRequirements])
  {
    [(UILongPressGestureRecognizer *)self startPoint];
    v6 = v5;
    v8 = v7;
    [(UILongPressGestureRecognizer *)self centroid];
    v11 = sqrt((v9 - v6) * (v9 - v6) + (v10 - v8) * (v10 - v8));
    [(UILongPressGestureRecognizer *)self allowableMovement];
    if (v11 > v12)
    {
      if ([(UIGestureRecognizer *)self state]< UIGestureRecognizerStateBegan)
      {
        [(UIGestureRecognizer *)self setState:5];
      }

      else
      {
        [(UIGestureRecognizer *)self setState:4];
        delegate = [(UIGestureRecognizer *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate _gestureRecognizerFailed:self];
        }
      }
    }
  }
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [(UIGestureRecognizer *)self view];
    view2 = [recognizerCopy view];
    if (view == view2)
    {
      v7 = 0;
    }

    else
    {
      v7 = [view isDescendantOfView:view2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end