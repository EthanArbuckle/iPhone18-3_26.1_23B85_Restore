@interface TSWPTapAndTouchGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation TSWPTapAndTouchGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_p_failBecauseFingerStayedUpTooLongAfterTap object:0];
  v10.receiver = self;
  v10.super_class = TSWPTapAndTouchGestureRecognizer;
  [(TSWPTapAndTouchGestureRecognizer *)&v10 touchesBegan:a3 withEvent:a4];
  if ([objc_msgSend(a4 "allTouches")] >= 2)
  {
    goto LABEL_2;
  }

  v9 = [a3 anyObject];
  if ([v9 tapCount] >= self->_numberOfTapsRequired + 1)
  {
    if ([v9 tapCount] == self->_numberOfTapsRequired + 1)
    {
      v7 = self;
      v8 = 1;
      goto LABEL_3;
    }

LABEL_2:
    v7 = self;
    v8 = 5;
LABEL_3:
    [(TSWPTapAndTouchGestureRecognizer *)v7 setState:v8];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = TSWPTapAndTouchGestureRecognizer;
  [(TSWPTapAndTouchGestureRecognizer *)&v6 touchesMoved:a3 withEvent:a4];
  if ([(TSWPTapAndTouchGestureRecognizer *)self state]== 1 || [(TSWPTapAndTouchGestureRecognizer *)self state]== 2)
  {
    v5 = 2;
  }

  else if ([(TSWPTapAndTouchGestureRecognizer *)self state])
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  [(TSWPTapAndTouchGestureRecognizer *)self setState:v5];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSWPTapAndTouchGestureRecognizer;
  [(TSWPTapAndTouchGestureRecognizer *)&v7 touchesEnded:a3 withEvent:a4];
  if ([(TSWPTapAndTouchGestureRecognizer *)self state]== 1 || [(TSWPTapAndTouchGestureRecognizer *)self state]== 2)
  {
    v5 = self;
    v6 = 3;
LABEL_4:
    [(TSWPTapAndTouchGestureRecognizer *)v5 setState:v6];
    return;
  }

  if ([(TSWPTapAndTouchGestureRecognizer *)self state])
  {
    v5 = self;
    v6 = 4;
    goto LABEL_4;
  }

  [(TSWPTapAndTouchGestureRecognizer *)self setState:0];
  [(TSWPTapAndTouchGestureRecognizer *)self performSelector:sel_p_failBecauseFingerStayedUpTooLongAfterTap withObject:0 afterDelay:0.400000006];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = TSWPTapAndTouchGestureRecognizer;
  [(TSWPTapAndTouchGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  [(TSWPTapAndTouchGestureRecognizer *)self setState:4];
}

- (void)reset
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_p_failBecauseFingerStayedUpTooLongAfterTap object:0];
  v3.receiver = self;
  v3.super_class = TSWPTapAndTouchGestureRecognizer;
  [(TSWPTapAndTouchGestureRecognizer *)&v3 reset];
  [(TSWPTapAndTouchGestureRecognizer *)self delegate];
  [TSUProtocolCast() didReset:self];
}

@end