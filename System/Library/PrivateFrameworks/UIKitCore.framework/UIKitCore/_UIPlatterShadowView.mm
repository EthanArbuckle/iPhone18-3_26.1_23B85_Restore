@interface _UIPlatterShadowView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGSize)shadowOffset;
- (UIBezierPath)shadowPath;
- (UIColor)shadowColor;
- (_UIPlatterShadowView)initWithShadowPath:(id)path;
- (double)shadowOpacity;
- (double)shadowRadius;
- (void)setPunchOut:(BOOL)out;
- (void)setShadowColor:(id)color;
- (void)setShadowOffset:(CGSize)offset;
- (void)setShadowOpacity:(double)opacity;
- (void)setShadowPath:(id)path;
- (void)setShadowRadius:(double)radius;
@end

@implementation _UIPlatterShadowView

- (_UIPlatterShadowView)initWithShadowPath:(id)path
{
  pathCopy = path;
  [pathCopy bounds];
  v11.receiver = self;
  v11.super_class = _UIPlatterShadowView;
  v5 = [(UIView *)&v11 initWithFrame:0.0, 0.0];
  v6 = v5;
  if (v5)
  {
    layer = [(UIView *)v5 layer];
    [layer setAllowsGroupBlending:1];

    [(_UIPlatterShadowView *)v6 setShadowPath:pathCopy];
    v8 = +[UIColor blackColor];
    [(_UIPlatterShadowView *)v6 setShadowColor:v8];

    v9 = v6;
  }

  return v6;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _UIPlatterShadowView;
  if (-[UIView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, keyCopy) || ([keyCopy isEqualToString:@"shadowOpacity"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"shadowColor") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"shadowRadius") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"shadowOffset") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"shadowPath"];
  }

  return v5;
}

- (void)setPunchOut:(BOOL)out
{
  if (self->_punchOut != out)
  {
    self->_punchOut = out;
    shadowMaskView = self->_shadowMaskView;
    if (out)
    {
      if (!shadowMaskView)
      {
        v5 = [_UIShapeView alloc];
        [(UIView *)self bounds];
        v6 = [(UIView *)v5 initWithFrame:?];
        v7 = self->_shadowMaskView;
        self->_shadowMaskView = v6;

        v8 = *MEMORY[0x1E69798E8];
        layer = [(UIView *)self->_shadowMaskView layer];
        [layer setCompositingFilter:v8];

        layer2 = [(UIView *)self layer];
        shadowPath = [layer2 shadowPath];
        shapeLayer = [(_UIShapeView *)self->_shadowMaskView shapeLayer];
        [shapeLayer setPath:shadowPath];

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

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  cGColor = [color CGColor];
  layer = [(UIView *)self layer];
  [layer setShadowColor:cGColor];
}

- (UIColor)shadowColor
{
  layer = [(UIView *)self layer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [layer shadowColor]);

  return v3;
}

- (void)setShadowRadius:(double)radius
{
  layer = [(UIView *)self layer];
  [layer setShadowRadius:radius];

  [(UIView *)self setNeedsLayout];
}

- (double)shadowRadius
{
  layer = [(UIView *)self layer];
  [layer shadowRadius];
  v4 = v3;

  return v4;
}

- (void)setShadowOpacity:(double)opacity
{
  opacityCopy = opacity;
  layer = [(UIView *)self layer];
  *&v4 = opacityCopy;
  [layer setShadowOpacity:v4];
}

- (double)shadowOpacity
{
  layer = [(UIView *)self layer];
  [layer shadowOpacity];
  v4 = v3;

  return v4;
}

- (void)setShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  layer = [(UIView *)self layer];
  [layer setShadowOffset:{width, height}];
}

- (CGSize)shadowOffset
{
  layer = [(UIView *)self layer];
  [layer shadowOffset];
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
  layer = [(UIView *)self layer];
  v3 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [layer shadowPath]);

  return v3;
}

- (void)setShadowPath:(id)path
{
  pathCopy = path;
  pathCopy2 = path;
  cGPath = [pathCopy2 CGPath];
  layer = [(UIView *)self layer];
  [layer setShadowPath:cGPath];

  cGPath2 = [pathCopy2 CGPath];
  shadowMaskView = [(_UIPlatterShadowView *)self shadowMaskView];
  shapeLayer = [shadowMaskView shapeLayer];
  [shapeLayer setPath:cGPath2];
}

@end