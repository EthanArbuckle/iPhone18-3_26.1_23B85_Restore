@interface _UIDropInteractionHighlightEffect
- (CGRect)clippingRectInView:(id)a3 forView:(id)a4;
- (CGRect)highlightRectInView:(id)a3 forDragInteraction:(id)a4 withContext:(id)a5;
- (_UIDropInteractionHighlightEffect)init;
- (id)updateShapeLayerForFrame:(CGRect)a3 inView:(id)a4;
- (void)dealloc;
- (void)interaction:(id)a3 didChangeWithContext:(id)a4;
- (void)removeShapeLayer;
@end

@implementation _UIDropInteractionHighlightEffect

- (_UIDropInteractionHighlightEffect)init
{
  v7.receiver = self;
  v7.super_class = _UIDropInteractionHighlightEffect;
  v2 = [(_UIDropInteractionHighlightEffect *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_highlightWidth = xmmword_18A6537B0;
    v2->_highlightInset = -3.0;
    v4 = +[UIColor systemBlueColor];
    highlightColor = v3->_highlightColor;
    v3->_highlightColor = v4;
  }

  return v3;
}

- (id)updateShapeLayerForFrame:(CGRect)a3 inView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [v9 keyboardSceneDelegate];
  v11 = [v10 containerView];

  v12 = [v11 window];
  [v12 convertRect:v9 fromView:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v12 convertRect:v11 toView:{v14, v16, v18, v20}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = *MEMORY[0x1E695EFF8];
  v30 = *(MEMORY[0x1E695EFF8] + 8);
  shapeLayer = self->_shapeLayer;
  if (!shapeLayer)
  {
    v32 = [MEMORY[0x1E69794A0] layer];
    [(CAShapeLayer *)v32 setAllowsHitTesting:0];
    [(CAShapeLayer *)v32 setFillColor:0];
    v33 = [v11 layer];
    [v33 addSublayer:v32];

    v34 = self->_shapeLayer;
    self->_shapeLayer = v32;

    shapeLayer = self->_shapeLayer;
  }

  [(CAShapeLayer *)shapeLayer setLineWidth:self->_highlightWidth];
  [(CAShapeLayer *)self->_shapeLayer setStrokeColor:[(UIColor *)self->_highlightColor CGColor]];
  [(CAShapeLayer *)self->_shapeLayer bounds];
  v44.origin.x = v29;
  v44.origin.y = v30;
  v44.size.width = v26;
  v44.size.height = v28;
  if (!CGRectEqualToRect(v41, v44))
  {
    [(CAShapeLayer *)self->_shapeLayer lineWidth];
    v36 = v35 * 0.5 + -1.0;
    v42.origin.x = v29;
    v42.origin.y = v30;
    v42.size.width = v26;
    v42.size.height = v28;
    v43 = CGRectInset(v42, v36, v36);
    v37 = [UIBezierPath bezierPathWithRoundedRect:v43.origin.x cornerRadius:v43.origin.y, v43.size.width, v43.size.height, self->_cornerRadius];
    -[CAShapeLayer setPath:](self->_shapeLayer, "setPath:", [v37 CGPath]);
  }

  [(CAShapeLayer *)self->_shapeLayer setFrame:v22, v24, v26, v28];
  v38 = self->_shapeLayer;
  v39 = v38;

  return v38;
}

- (void)removeShapeLayer
{
  [(CAShapeLayer *)self->_shapeLayer removeFromSuperlayer];
  shapeLayer = self->_shapeLayer;
  self->_shapeLayer = 0;
}

- (void)interaction:(id)a3 didChangeWithContext:(id)a4
{
  v28 = a3;
  v6 = a4;
  visualState = self->_visualState;
  if (visualState != [v6 state])
  {
    v8 = [v6 state];
    self->_visualState = v8;
    if (!v8 || v8 == 3)
    {
      [(_UIDropInteractionHighlightEffect *)self removeShapeLayer];
    }

    else if (v8 == 1)
    {
      v9 = [v28 view];
      [(_UIDropInteractionHighlightEffect *)self highlightRectInView:v9 forDragInteraction:v28 withContext:v6];
      v31 = CGRectInset(v30, self->_highlightInset - self->_highlightWidth, self->_highlightInset - self->_highlightWidth);
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
      [(_UIDropInteractionHighlightEffect *)self clippingRectInView:v9 forView:v9];
      v34.origin.x = v14;
      v34.origin.y = v15;
      v34.size.width = v16;
      v34.size.height = v17;
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v33 = CGRectIntersection(v32, v34);
      v18 = v33.origin.x;
      v19 = v33.origin.y;
      v20 = v33.size.width;
      v21 = v33.size.height;
      IsNull = CGRectIsNull(v33);
      if (IsNull)
      {
        v23 = x;
      }

      else
      {
        v23 = v18;
      }

      if (IsNull)
      {
        v24 = y;
      }

      else
      {
        v24 = v19;
      }

      if (IsNull)
      {
        v25 = width;
      }

      else
      {
        v25 = v20;
      }

      if (IsNull)
      {
        v26 = height;
      }

      else
      {
        v26 = v21;
      }

      v27 = [(_UIDropInteractionHighlightEffect *)self updateShapeLayerForFrame:v9 inView:v23, v24, v25, v26];
    }
  }
}

- (CGRect)clippingRectInView:(id)a3 forView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 window];
  [v7 bounds];
  [v5 convertRect:v7 fromView:?];
  x = v8;
  y = v10;
  width = v12;
  height = v14;
  v16 = [v6 _viewControllerForAncestor];
  if (v16)
  {
    v17 = v16;
    do
    {
      if ([v17 _isHostedRootViewController])
      {
        break;
      }

      if (![v6 _isMemberOfViewControllerHierarchy:v17])
      {
        break;
      }

      v18 = [v17 view];
      v19 = [v18 safeAreaLayoutGuide];

      [v19 layoutFrame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [v19 owningView];
      [v5 convertRect:v28 fromView:{v21, v23, v25, v27}];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v42.origin.x = v30;
      v42.origin.y = v32;
      v42.size.width = v34;
      v42.size.height = v36;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v43 = CGRectIntersection(v42, v45);
      x = v43.origin.x;
      y = v43.origin.y;
      width = v43.size.width;
      height = v43.size.height;
      v37 = [v17 parentViewController];

      v17 = v37;
    }

    while (v37);
  }

  v38 = x;
  v39 = y;
  v40 = width;
  v41 = height;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (CGRect)highlightRectInView:(id)a3 forDragInteraction:(id)a4 withContext:(id)a5
{
  v6 = a3;
  v7 = [a4 view];
  [v7 bounds];
  [v6 convertRect:v7 fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)dealloc
{
  [(_UIDropInteractionHighlightEffect *)self removeShapeLayer];
  v3.receiver = self;
  v3.super_class = _UIDropInteractionHighlightEffect;
  [(_UIDropInteractionHighlightEffect *)&v3 dealloc];
}

@end