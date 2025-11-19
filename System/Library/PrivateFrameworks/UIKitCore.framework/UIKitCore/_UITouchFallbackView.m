@interface _UITouchFallbackView
- (_UITouchFallbackView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _UITouchFallbackView

- (_UITouchFallbackView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UITouchFallbackView;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 layer];
    [v5 setHitTestsAsOpaque:1];

    [(UIView *)v4 _setDisableDictationTouchCancellation:1];
  }

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = _UITouchFallbackView;
  v8 = [(UIView *)&v17 hitTest:v7 withEvent:x, y];
  v9 = [(_UITouchFallbackView *)self delegate];
  if (v9 && (v10 = v9, -[_UITouchFallbackView delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 touchFallbackView:self shouldHitTestAtLocation:v7 withEvent:{x, y}], v11, v10, !v12) || v8 == self && (-[UIView layer](self, "layer"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "allowsHitTesting"), v13, !v14))
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