@interface VKQuadHighlightView
- (VKQuadHighlightView)initWithFrame:(CGRect)frame;
- (void)_drawHighlight;
- (void)animateToQuad:(id)quad;
- (void)layoutSubviews;
- (void)setQuad:(id)quad;
@end

@implementation VKQuadHighlightView

- (VKQuadHighlightView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = VKQuadHighlightView;
  v3 = [(VKQuadHighlightView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    layer = [MEMORY[0x1E69794A0] layer];
    shadowLayerMaskLayer = v3->_shadowLayerMaskLayer;
    v3->_shadowLayerMaskLayer = layer;

    greenColor = [MEMORY[0x1E69DC888] greenColor];
    -[CAShapeLayer setFillColor:](v3->_shadowLayerMaskLayer, "setFillColor:", [greenColor CGColor]);

    [(CAShapeLayer *)v3->_shadowLayerMaskLayer setFillRule:*MEMORY[0x1E69797F8]];
    layer2 = [MEMORY[0x1E69794A0] layer];
    shadowLayer = v3->_shadowLayer;
    v3->_shadowLayer = layer2;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    -[CAShapeLayer setFillColor:](v3->_shadowLayer, "setFillColor:", [whiteColor CGColor]);

    [(CAShapeLayer *)v3->_shadowLayer setShadowRadius:3.0];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    -[CAShapeLayer setShadowColor:](v3->_shadowLayer, "setShadowColor:", [blackColor CGColor]);

    LODWORD(v11) = 0.5;
    [(CAShapeLayer *)v3->_shadowLayer setShadowOpacity:v11];
    [(CAShapeLayer *)v3->_shadowLayer setShadowOffset:2.0, 2.0];
    [(CAShapeLayer *)v3->_shadowLayer setMask:v3->_shadowLayerMaskLayer];
    layer3 = [MEMORY[0x1E69794A0] layer];
    highlightLayer = v3->_highlightLayer;
    v3->_highlightLayer = layer3;

    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    v15 = [whiteColor2 colorWithAlphaComponent:0.2];
    -[CAShapeLayer setFillColor:](v3->_highlightLayer, "setFillColor:", [v15 CGColor]);

    layer4 = [(VKQuadHighlightView *)v3 layer];
    [layer4 addSublayer:v3->_shadowLayer];

    layer5 = [(VKQuadHighlightView *)v3 layer];
    [layer5 addSublayer:v3->_highlightLayer];
  }

  return v3;
}

- (void)setQuad:(id)quad
{
  v25[8] = *MEMORY[0x1E69E9840];
  quadCopy = quad;
  objc_storeStrong(&self->_quad, quad);
  if (self->_topLeft)
  {
    [quadCopy topLeft];
    [(VKPointAnimatableProperty *)self->_topLeft setValue:?];
    [quadCopy topRight];
    [(VKPointAnimatableProperty *)self->_topRight setValue:?];
    [quadCopy bottomRight];
    [(VKPointAnimatableProperty *)self->_bottomRight setValue:?];
    [quadCopy bottomLeft];
    [(VKPointAnimatableProperty *)self->_bottomLeft setValue:?];
    [(VKQuadHighlightView *)self _drawHighlight];
  }

  else
  {
    v6 = objc_alloc_init(VKPointAnimatableProperty);
    topLeft = self->_topLeft;
    self->_topLeft = v6;

    v8 = objc_alloc_init(VKPointAnimatableProperty);
    topRight = self->_topRight;
    self->_topRight = v8;

    v10 = objc_alloc_init(VKPointAnimatableProperty);
    bottomRight = self->_bottomRight;
    self->_bottomRight = v10;

    v12 = objc_alloc_init(VKPointAnimatableProperty);
    bottomLeft = self->_bottomLeft;
    self->_bottomLeft = v12;

    [quadCopy topLeft];
    [(VKPointAnimatableProperty *)self->_topLeft setValue:?];
    [quadCopy topRight];
    [(VKPointAnimatableProperty *)self->_topRight setValue:?];
    [quadCopy bottomRight];
    [(VKPointAnimatableProperty *)self->_bottomRight setValue:?];
    [quadCopy bottomLeft];
    [(VKPointAnimatableProperty *)self->_bottomLeft setValue:?];
    v22 = MEMORY[0x1E69DD250];
    v23 = [(VKPointAnimatableProperty *)self->_topLeft x];
    v25[0] = v23;
    v14 = [(VKPointAnimatableProperty *)self->_topLeft y];
    v25[1] = v14;
    v15 = [(VKPointAnimatableProperty *)self->_topRight x];
    v25[2] = v15;
    v16 = [(VKPointAnimatableProperty *)self->_topRight y];
    v25[3] = v16;
    v17 = [(VKPointAnimatableProperty *)self->_bottomLeft x];
    v25[4] = v17;
    v18 = [(VKPointAnimatableProperty *)self->_bottomLeft y];
    v25[5] = v18;
    v19 = [(VKPointAnimatableProperty *)self->_bottomRight x];
    v25[6] = v19;
    v20 = [(VKPointAnimatableProperty *)self->_bottomRight y];
    v25[7] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:8];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __31__VKQuadHighlightView_setQuad___block_invoke;
    v24[3] = &unk_1E7BE4208;
    v24[4] = self;
    [v22 _createTransformerWithInputAnimatableProperties:v21 presentationValueChangedCallback:v24];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = VKQuadHighlightView;
  [(VKQuadHighlightView *)&v12 layoutSubviews];
  layer = [(VKQuadHighlightView *)self layer];
  [layer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CAShapeLayer *)self->_shadowLayer setFrame:v5, v7, v9, v11];
  [(CAShapeLayer *)self->_highlightLayer setFrame:v5, v7, v9, v11];
  [(CAShapeLayer *)self->_shadowLayerMaskLayer setFrame:v5, v7, v9, v11];
}

- (void)animateToQuad:(id)quad
{
  [(VKQuadHighlightView *)self setQuad:quad];

  [(VKQuadHighlightView *)self _drawHighlight];
}

- (void)_drawHighlight
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = [VKQuad alloc];
  [(VKPointAnimatableProperty *)self->_topLeft presentationValue];
  v5 = v4;
  v7 = v6;
  [(VKPointAnimatableProperty *)self->_topRight presentationValue];
  v9 = v8;
  v11 = v10;
  [(VKPointAnimatableProperty *)self->_bottomLeft presentationValue];
  v13 = v12;
  v15 = v14;
  [(VKPointAnimatableProperty *)self->_bottomRight presentationValue];
  v18 = [(VKQuad *)v3 initWithTopLeft:v5 topRight:v7 bottomLeft:v9 bottomRight:v11, v13, v15, v16, v17];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen nativeScale];
  v21 = v20;
  [mainScreen scale];
  v22 = MEMORY[0x1E69DC728];
  v24 = v21 / v23;
  path = [(VKQuad *)v18 path];
  v30[0] = path;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v27 = [v22 vk_groupAndRoundPaths:v26 radius:4.0 / v24 offset:4.0 / v24];

  -[CAShapeLayer setPath:](self->_shadowLayer, "setPath:", [v27 CGPath]);
  -[CAShapeLayer setPath:](self->_highlightLayer, "setPath:", [v27 CGPath]);
  v28 = MEMORY[0x1E69DC728];
  [(VKQuadHighlightView *)self bounds];
  v29 = [v28 bezierPathWithRect:?];
  [v29 appendPath:v27];
  [v29 setUsesEvenOddFillRule:1];
  -[CAShapeLayer setPath:](self->_shadowLayerMaskLayer, "setPath:", [v29 CGPath]);
}

@end