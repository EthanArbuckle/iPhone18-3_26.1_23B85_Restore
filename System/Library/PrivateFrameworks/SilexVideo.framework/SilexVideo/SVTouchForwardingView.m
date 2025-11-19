@interface SVTouchForwardingView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SVTouchForwardingView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = SVTouchForwardingView;
  v8 = [(SVTouchForwardingView *)&v17 hitTest:v7 withEvent:x, y];
  if (v7 && ![v7 type] && v8 == self)
  {
    v9 = [(SVTouchForwardingView *)self touchedBlock];
    if (v9)
    {
      v10 = v9;
      [(SVTouchForwardingView *)self lastTouchTimestamp];
      v12 = v11;
      [v7 timestamp];
      v14 = v13;

      if (v12 != v14)
      {
        v15 = [(SVTouchForwardingView *)self touchedBlock];
        v15[2]();

        [v7 timestamp];
        [(SVTouchForwardingView *)self setLastTouchTimestamp:?];
      }
    }

    v8 = 0;
  }

  return v8;
}

@end