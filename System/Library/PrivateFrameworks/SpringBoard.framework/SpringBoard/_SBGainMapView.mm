@interface _SBGainMapView
- (_SBGainMapView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _SBGainMapView

- (_SBGainMapView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _SBGainMapView;
  result = [(_SBGainMapView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_supportsHitTesting = 1;
  }

  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = _SBGainMapView;
  v5 = [(_SBGainMapView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self && !self->_supportsHitTesting)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

@end