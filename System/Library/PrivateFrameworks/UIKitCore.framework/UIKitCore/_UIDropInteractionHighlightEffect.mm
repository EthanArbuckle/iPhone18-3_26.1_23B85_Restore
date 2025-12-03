@interface _UIDropInteractionHighlightEffect
- (CGRect)clippingRectInView:(id)view forView:(id)forView;
- (CGRect)highlightRectInView:(id)view forDragInteraction:(id)interaction withContext:(id)context;
- (_UIDropInteractionHighlightEffect)init;
- (id)updateShapeLayerForFrame:(CGRect)frame inView:(id)view;
- (void)dealloc;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
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

- (id)updateShapeLayerForFrame:(CGRect)frame inView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  keyboardSceneDelegate = [viewCopy keyboardSceneDelegate];
  containerView = [keyboardSceneDelegate containerView];

  window = [containerView window];
  [window convertRect:viewCopy fromView:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [window convertRect:containerView toView:{v14, v16, v18, v20}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = *MEMORY[0x1E695EFF8];
  v30 = *(MEMORY[0x1E695EFF8] + 8);
  shapeLayer = self->_shapeLayer;
  if (!shapeLayer)
  {
    layer = [MEMORY[0x1E69794A0] layer];
    [(CAShapeLayer *)layer setAllowsHitTesting:0];
    [(CAShapeLayer *)layer setFillColor:0];
    layer2 = [containerView layer];
    [layer2 addSublayer:layer];

    v34 = self->_shapeLayer;
    self->_shapeLayer = layer;

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

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  interactionCopy = interaction;
  contextCopy = context;
  visualState = self->_visualState;
  if (visualState != [contextCopy state])
  {
    state = [contextCopy state];
    self->_visualState = state;
    if (!state || state == 3)
    {
      [(_UIDropInteractionHighlightEffect *)self removeShapeLayer];
    }

    else if (state == 1)
    {
      view = [interactionCopy view];
      [(_UIDropInteractionHighlightEffect *)self highlightRectInView:view forDragInteraction:interactionCopy withContext:contextCopy];
      v31 = CGRectInset(v30, self->_highlightInset - self->_highlightWidth, self->_highlightInset - self->_highlightWidth);
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
      [(_UIDropInteractionHighlightEffect *)self clippingRectInView:view forView:view];
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

      v27 = [(_UIDropInteractionHighlightEffect *)self updateShapeLayerForFrame:view inView:v23, v24, v25, v26];
    }
  }
}

- (CGRect)clippingRectInView:(id)view forView:(id)forView
{
  viewCopy = view;
  forViewCopy = forView;
  window = [forViewCopy window];
  [window bounds];
  [viewCopy convertRect:window fromView:?];
  x = v8;
  y = v10;
  width = v12;
  height = v14;
  _viewControllerForAncestor = [forViewCopy _viewControllerForAncestor];
  if (_viewControllerForAncestor)
  {
    v17 = _viewControllerForAncestor;
    do
    {
      if ([v17 _isHostedRootViewController])
      {
        break;
      }

      if (![forViewCopy _isMemberOfViewControllerHierarchy:v17])
      {
        break;
      }

      view = [v17 view];
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];

      [safeAreaLayoutGuide layoutFrame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      owningView = [safeAreaLayoutGuide owningView];
      [viewCopy convertRect:owningView fromView:{v21, v23, v25, v27}];
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
      parentViewController = [v17 parentViewController];

      v17 = parentViewController;
    }

    while (parentViewController);
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

- (CGRect)highlightRectInView:(id)view forDragInteraction:(id)interaction withContext:(id)context
{
  viewCopy = view;
  view = [interaction view];
  [view bounds];
  [viewCopy convertRect:view fromView:?];
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