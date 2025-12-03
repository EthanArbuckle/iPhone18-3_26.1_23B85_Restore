@interface SVTouchForwardingView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SVTouchForwardingView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = SVTouchForwardingView;
  v8 = [(SVTouchForwardingView *)&v17 hitTest:eventCopy withEvent:x, y];
  if (eventCopy && ![eventCopy type] && v8 == self)
  {
    touchedBlock = [(SVTouchForwardingView *)self touchedBlock];
    if (touchedBlock)
    {
      v10 = touchedBlock;
      [(SVTouchForwardingView *)self lastTouchTimestamp];
      v12 = v11;
      [eventCopy timestamp];
      v14 = v13;

      if (v12 != v14)
      {
        touchedBlock2 = [(SVTouchForwardingView *)self touchedBlock];
        touchedBlock2[2]();

        [eventCopy timestamp];
        [(SVTouchForwardingView *)self setLastTouchTimestamp:?];
      }
    }

    v8 = 0;
  }

  return v8;
}

@end