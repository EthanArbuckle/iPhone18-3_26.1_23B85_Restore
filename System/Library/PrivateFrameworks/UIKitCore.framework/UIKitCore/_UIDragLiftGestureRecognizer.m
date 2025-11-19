@interface _UIDragLiftGestureRecognizer
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIDragLiftGestureRecognizer

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v14.receiver = self;
  v14.super_class = _UIDragLiftGestureRecognizer;
  [(UILongPressGestureRecognizer *)&v14 touchesMoved:a3 withEvent:a4];
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
        v13 = [(UIGestureRecognizer *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v13 _gestureRecognizerFailed:self];
        }
      }
    }
  }
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIGestureRecognizer *)self view];
    v6 = [v4 view];
    if (v5 == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 isDescendantOfView:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end