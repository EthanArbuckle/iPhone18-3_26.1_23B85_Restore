@interface TSWPTapAndTouchGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation TSWPTapAndTouchGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_p_failBecauseFingerStayedUpTooLongAfterTap object:0];
  v10.receiver = self;
  v10.super_class = TSWPTapAndTouchGestureRecognizer;
  [(TSWPTapAndTouchGestureRecognizer *)&v10 touchesBegan:began withEvent:event];
  if ([objc_msgSend(event "allTouches")] >= 2)
  {
    goto LABEL_2;
  }

  anyObject = [began anyObject];
  if ([anyObject tapCount] >= self->_numberOfTapsRequired + 1)
  {
    if ([anyObject tapCount] == self->_numberOfTapsRequired + 1)
    {
      selfCopy2 = self;
      v8 = 1;
      goto LABEL_3;
    }

LABEL_2:
    selfCopy2 = self;
    v8 = 5;
LABEL_3:
    [(TSWPTapAndTouchGestureRecognizer *)selfCopy2 setState:v8];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = TSWPTapAndTouchGestureRecognizer;
  [(TSWPTapAndTouchGestureRecognizer *)&v6 touchesMoved:moved withEvent:event];
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = TSWPTapAndTouchGestureRecognizer;
  [(TSWPTapAndTouchGestureRecognizer *)&v7 touchesEnded:ended withEvent:event];
  if ([(TSWPTapAndTouchGestureRecognizer *)self state]== 1 || [(TSWPTapAndTouchGestureRecognizer *)self state]== 2)
  {
    selfCopy2 = self;
    v6 = 3;
LABEL_4:
    [(TSWPTapAndTouchGestureRecognizer *)selfCopy2 setState:v6];
    return;
  }

  if ([(TSWPTapAndTouchGestureRecognizer *)self state])
  {
    selfCopy2 = self;
    v6 = 4;
    goto LABEL_4;
  }

  [(TSWPTapAndTouchGestureRecognizer *)self setState:0];
  [(TSWPTapAndTouchGestureRecognizer *)self performSelector:sel_p_failBecauseFingerStayedUpTooLongAfterTap withObject:0 afterDelay:0.400000006];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = TSWPTapAndTouchGestureRecognizer;
  [(TSWPTapAndTouchGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
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