@interface _UIPlatterShadowView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)shadowOffset;
- (UIBezierPath)shadowPath;
- (UIColor)shadowColor;
- (_UIPlatterShadowView)initWithShadowPath:(id)a3;
- (double)shadowOpacity;
- (double)shadowRadius;
- (void)setPunchOut:(BOOL)a3;
- (void)setShadowColor:(id)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setShadowOpacity:(double)a3;
- (void)setShadowPath:(id)a3;
- (void)setShadowRadius:(double)a3;
@end

@implementation _UIPlatterShadowView

- (_UIPlatterShadowView)initWithShadowPath:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v11.receiver = self;
  v11.super_class = _UIPlatterShadowView;
  v5 = [(UIView *)&v11 initWithFrame:0.0, 0.0];
  v6 = v5;
  if (v5)
  {
    v7 = [(UIView *)v5 layer];
    [v7 setAllowsGroupBlending:1];

    [(_UIPlatterShadowView *)v6 setShadowPath:v4];
    v8 = +[UIColor blackColor];
    [(_UIPlatterShadowView *)v6 setShadowColor:v8];

    v9 = v6;
  }

  return v6;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIPlatterShadowView;
  if (-[UIView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, v4) || ([v4 isEqualToString:@"shadowOpacity"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"shadowColor") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"shadowRadius") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"shadowOffset") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"shadowPath"];
  }

  return v5;
}

- (void)setPunchOut:(BOOL)a3
{
  if (self->_punchOut != a3)
  {
    self->_punchOut = a3;
    shadowMaskView = self->_shadowMaskView;
    if (a3)
    {
      if (!shadowMaskView)
      {
        v5 = [_UIShapeView alloc];
        [(UIView *)self bounds];
        v6 = [(UIView *)v5 initWithFrame:?];
        v7 = self->_shadowMaskView;
        self->_shadowMaskView = v6;

        v8 = *MEMORY[0x1E69798E8];
        v9 = [(UIView *)self->_shadowMaskView layer];
        [v9 setCompositingFilter:v8];

        v10 = [(UIView *)self layer];
        v11 = [v10 shadowPath];
        v12 = [(_UIShapeView *)self->_shadowMaskView shapeLayer];
        [v12 setPath:v11];

        shadowMaskView = self->_shadowMaskView;
      }

      [(UIView *)self addSubview:shadowMaskView];
    }

    else
    {
      v13 = self->_shadowMaskView;

      [(UIView *)v13 removeFromSuperview];
    }
  }
}

- (void)setShadowColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];
  v7 = [(UIView *)self layer];
  [v7 setShadowColor:v6];
}

- (UIColor)shadowColor
{
  v2 = [(UIView *)self layer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v2 shadowColor]);

  return v3;
}

- (void)setShadowRadius:(double)a3
{
  v5 = [(UIView *)self layer];
  [v5 setShadowRadius:a3];

  [(UIView *)self setNeedsLayout];
}

- (double)shadowRadius
{
  v2 = [(UIView *)self layer];
  [v2 shadowRadius];
  v4 = v3;

  return v4;
}

- (void)setShadowOpacity:(double)a3
{
  v3 = a3;
  v5 = [(UIView *)self layer];
  *&v4 = v3;
  [v5 setShadowOpacity:v4];
}

- (double)shadowOpacity
{
  v2 = [(UIView *)self layer];
  [v2 shadowOpacity];
  v4 = v3;

  return v4;
}

- (void)setShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UIView *)self layer];
  [v5 setShadowOffset:{width, height}];
}

- (CGSize)shadowOffset
{
  v2 = [(UIView *)self layer];
  [v2 shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIBezierPath)shadowPath
{
  v2 = [(UIView *)self layer];
  v3 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [v2 shadowPath]);

  return v3;
}

- (void)setShadowPath:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 CGPath];
  v8 = [(UIView *)self layer];
  [v8 setShadowPath:v7];

  v9 = [v6 CGPath];
  v11 = [(_UIPlatterShadowView *)self shadowMaskView];
  v10 = [v11 shapeLayer];
  [v10 setPath:v9];
}

@end