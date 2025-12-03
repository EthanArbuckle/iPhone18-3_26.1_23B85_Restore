@interface _UIDragLiftPointerWithEarlyStartGestureRecognizer
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIDragLiftPointerWithEarlyStartGestureRecognizer

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v14.receiver = self;
  v14.super_class = _UIDragLiftPointerWithEarlyStartGestureRecognizer;
  [(_UIDragLiftGestureRecognizer *)&v14 touchesMoved:moved withEvent:event];
  [(_UIDragLiftPointerWithEarlyStartGestureRecognizer *)self liftMoveHysteresis];
  if (v5 > 0.0)
  {
    [(UILongPressGestureRecognizer *)self startPoint];
    v7 = v6;
    v9 = v8;
    [(UILongPressGestureRecognizer *)self centroid];
    v12 = sqrt((v10 - v7) * (v10 - v7) + (v11 - v9) * (v11 - v9));
    [(_UIDragLiftPointerWithEarlyStartGestureRecognizer *)self liftMoveHysteresis];
    if (v12 >= v13)
    {
      [(UILongPressGestureRecognizer *)self enoughTimeElapsed:0];
      if ([(UIGestureRecognizer *)self state]>= UIGestureRecognizerStateBegan)
      {
        [(UILongPressGestureRecognizer *)self clearAllTimers];
      }
    }
  }
}

@end