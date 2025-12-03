@interface _UITextHighlightBackgroundView
- (_UITextHighlightBackgroundView)initWithFrame:(CGRect)frame;
- (void)setVisiblePath:(id)path;
@end

@implementation _UITextHighlightBackgroundView

- (_UITextHighlightBackgroundView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = _UITextHighlightBackgroundView;
  v3 = [(UIView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6979398]);
    shadowLayer = v3->_shadowLayer;
    v3->_shadowLayer = v4;

    [(CALayer *)v3->_shadowLayer setShadowColor:CGColorGetConstantColor(*MEMORY[0x1E695F088])];
    LODWORD(v6) = 0.25;
    [(CALayer *)v3->_shadowLayer setShadowOpacity:v6];
    [(CALayer *)v3->_shadowLayer setShadowOffset:0.0, 5.0];
    [(CALayer *)v3->_shadowLayer setShadowRadius:15.0];
    layer = [(UIView *)v3 layer];
    [layer addSublayer:v3->_shadowLayer];

    v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
    highlightLayer = v3->_highlightLayer;
    v3->_highlightLayer = v8;

    v10 = _UIGetTextHighlightFillColor();
    -[CAShapeLayer setFillColor:](v3->_highlightLayer, "setFillColor:", [v10 CGColor]);

    layer2 = [(UIView *)v3 layer];
    [layer2 addSublayer:v3->_highlightLayer];
  }

  return v3;
}

- (void)setVisiblePath:(id)path
{
  v4 = [path copy];
  visiblePath = self->_visiblePath;
  self->_visiblePath = v4;

  [(CAShapeLayer *)self->_highlightLayer setPath:[(UIBezierPath *)self->_visiblePath CGPath]];
  cGPath = [(UIBezierPath *)self->_visiblePath CGPath];
  shadowLayer = [(_UITextHighlightBackgroundView *)self shadowLayer];
  [shadowLayer setShadowPath:cGPath];
}

@end