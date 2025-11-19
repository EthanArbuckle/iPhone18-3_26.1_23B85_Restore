@interface _SBSystemApertureProximityTouchHandlingView
- (_SBSystemApertureProximityTouchHandlingView)initWithDelegate:(id)a3 hitTestsAsOpaque:(BOOL)a4;
- (_SBSystemApertureProximityTouchHandlingViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _SBSystemApertureProximityTouchHandlingView

- (_SBSystemApertureProximityTouchHandlingView)initWithDelegate:(id)a3 hitTestsAsOpaque:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _SBSystemApertureProximityTouchHandlingView;
  v7 = [(_SBSystemApertureProximityTouchHandlingView *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v9 = [(_SBSystemApertureProximityTouchHandlingView *)v8 layer];
    [v9 setHitTestsAsOpaque:v4];
  }

  return v8;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_SBSystemApertureProximityTouchHandlingView *)self delegate];
  v9 = [v8 proximityBacklightPolicyTouchHandlingView:self shouldConsumeTouchForHitTest:v7 withEvent:{x, y}];

  if (!v9)
  {
    self = 0;
  }

  v10 = self;

  return self;
}

- (_SBSystemApertureProximityTouchHandlingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end