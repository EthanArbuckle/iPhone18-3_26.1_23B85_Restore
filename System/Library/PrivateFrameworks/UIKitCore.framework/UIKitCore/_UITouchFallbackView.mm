@interface _UITouchFallbackView
- (_UITouchFallbackView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _UITouchFallbackView

- (_UITouchFallbackView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UITouchFallbackView;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    [layer setHitTestsAsOpaque:1];

    [(UIView *)v4 _setDisableDictationTouchCancellation:1];
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = _UITouchFallbackView;
  v8 = [(UIView *)&v17 hitTest:eventCopy withEvent:x, y];
  delegate = [(_UITouchFallbackView *)self delegate];
  if (delegate && (v10 = delegate, -[_UITouchFallbackView delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 touchFallbackView:self shouldHitTestAtLocation:eventCopy withEvent:{x, y}], v11, v10, !v12) || v8 == self && (-[UIView layer](self, "layer"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "allowsHitTesting"), v13, !v14))
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  return v15;
}

@end