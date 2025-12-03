@interface TSKHorizontalDragRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation TSKHorizontalDragRecognizer

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [recognizer view];
    if (view == [(TSKHorizontalDragRecognizer *)self containingScrollView]&& [(TSKHorizontalDragRecognizer *)self state]!= 5)
    {
      return 0;
    }
  }

  v7.receiver = self;
  v7.super_class = TSKHorizontalDragRecognizer;
  return [(TSKHorizontalDragRecognizer *)&v7 canBePreventedByGestureRecognizer:recognizer];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([began count] < 2)
  {
    [objc_msgSend(began "anyObject")];
    self->mStartPoint.x = v6;
    self->mStartPoint.y = v7;
  }

  else
  {

    [(TSKHorizontalDragRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  [objc_msgSend(moved "anyObject")];
  v6 = v5;
  v8 = v7;
  if ([(TSKHorizontalDragRecognizer *)self state]|| vabdd_f64(v8, self->mStartPoint.y) <= 15.0)
  {
    if ([(TSKHorizontalDragRecognizer *)self state]|| vabdd_f64(v6, self->mStartPoint.x) <= 10.0)
    {
      if ([(TSKHorizontalDragRecognizer *)self state]!= 1 && [(TSKHorizontalDragRecognizer *)self state]!= 2)
      {
        return;
      }

      selfCopy3 = self;
      v10 = 2;
    }

    else
    {
      selfCopy3 = self;
      v10 = 1;
    }
  }

  else
  {
    selfCopy3 = self;
    v10 = 5;
  }

  [(TSKHorizontalDragRecognizer *)selfCopy3 setState:v10];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(TSKHorizontalDragRecognizer *)self state:ended]== 2)
  {
    v5 = 3;
  }

  else if ([(TSKHorizontalDragRecognizer *)self state]== 1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  [(TSKHorizontalDragRecognizer *)self setState:v5];
}

@end