@interface TSKHorizontalDragRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation TSKHorizontalDragRecognizer

- (BOOL)canBePreventedByGestureRecognizer:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 view];
    if (v5 == [(TSKHorizontalDragRecognizer *)self containingScrollView]&& [(TSKHorizontalDragRecognizer *)self state]!= 5)
    {
      return 0;
    }
  }

  v7.receiver = self;
  v7.super_class = TSKHorizontalDragRecognizer;
  return [(TSKHorizontalDragRecognizer *)&v7 canBePreventedByGestureRecognizer:a3];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if ([a3 count] < 2)
  {
    [objc_msgSend(a3 "anyObject")];
    self->mStartPoint.x = v6;
    self->mStartPoint.y = v7;
  }

  else
  {

    [(TSKHorizontalDragRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  [objc_msgSend(a3 "anyObject")];
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

      v9 = self;
      v10 = 2;
    }

    else
    {
      v9 = self;
      v10 = 1;
    }
  }

  else
  {
    v9 = self;
    v10 = 5;
  }

  [(TSKHorizontalDragRecognizer *)v9 setState:v10];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(TSKHorizontalDragRecognizer *)self state:a3]== 2)
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