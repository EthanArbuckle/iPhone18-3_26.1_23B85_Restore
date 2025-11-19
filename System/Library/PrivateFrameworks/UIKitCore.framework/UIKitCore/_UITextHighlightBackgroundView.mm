@interface _UITextHighlightBackgroundView
- (_UITextHighlightBackgroundView)initWithFrame:(CGRect)a3;
- (void)setVisiblePath:(id)a3;
@end

@implementation _UITextHighlightBackgroundView

- (_UITextHighlightBackgroundView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = _UITextHighlightBackgroundView;
  v3 = [(UIView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v7 = [(UIView *)v3 layer];
    [v7 addSublayer:v3->_shadowLayer];

    v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
    highlightLayer = v3->_highlightLayer;
    v3->_highlightLayer = v8;

    v10 = _UIGetTextHighlightFillColor();
    -[CAShapeLayer setFillColor:](v3->_highlightLayer, "setFillColor:", [v10 CGColor]);

    v11 = [(UIView *)v3 layer];
    [v11 addSublayer:v3->_highlightLayer];
  }

  return v3;
}

- (void)setVisiblePath:(id)a3
{
  v4 = [a3 copy];
  visiblePath = self->_visiblePath;
  self->_visiblePath = v4;

  [(CAShapeLayer *)self->_highlightLayer setPath:[(UIBezierPath *)self->_visiblePath CGPath]];
  v6 = [(UIBezierPath *)self->_visiblePath CGPath];
  v7 = [(_UITextHighlightBackgroundView *)self shadowLayer];
  [v7 setShadowPath:v6];
}

@end