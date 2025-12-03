@interface _SBSystemApertureProximityTouchHandlingView
- (_SBSystemApertureProximityTouchHandlingView)initWithDelegate:(id)delegate hitTestsAsOpaque:(BOOL)opaque;
- (_SBSystemApertureProximityTouchHandlingViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _SBSystemApertureProximityTouchHandlingView

- (_SBSystemApertureProximityTouchHandlingView)initWithDelegate:(id)delegate hitTestsAsOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _SBSystemApertureProximityTouchHandlingView;
  v7 = [(_SBSystemApertureProximityTouchHandlingView *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    layer = [(_SBSystemApertureProximityTouchHandlingView *)v8 layer];
    [layer setHitTestsAsOpaque:opaqueCopy];
  }

  return v8;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  delegate = [(_SBSystemApertureProximityTouchHandlingView *)self delegate];
  v9 = [delegate proximityBacklightPolicyTouchHandlingView:self shouldConsumeTouchForHitTest:eventCopy withEvent:{x, y}];

  if (!v9)
  {
    self = 0;
  }

  selfCopy = self;

  return self;
}

- (_SBSystemApertureProximityTouchHandlingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end