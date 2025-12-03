@interface _SBGainMapView
- (_SBGainMapView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _SBGainMapView

- (_SBGainMapView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _SBGainMapView;
  result = [(_SBGainMapView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_supportsHitTesting = 1;
  }

  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = _SBGainMapView;
  v5 = [(_SBGainMapView *)&v10 hitTest:event withEvent:test.x, test.y];
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