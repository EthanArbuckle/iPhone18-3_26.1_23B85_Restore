@interface PNPPlatterShadowView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)shadowOffset;
- (UIBezierPath)shadowPath;
- (UIColor)shadowColor;
- (double)shadowOpacity;
- (double)shadowRadius;
- (void)setShadowColor:(id)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setShadowOpacity:(double)a3;
- (void)setShadowPath:(id)a3;
- (void)setShadowRadius:(double)a3;
@end

@implementation PNPPlatterShadowView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PNPPlatterShadowView;
  if ([(PNPPlatterShadowView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 containsString:@"shadow"];
  }

  return v5;
}

- (void)setShadowColor:(id)a3
{
  v4 = a3;
  v6 = [(PNPPlatterShadowView *)self layer];
  v5 = [v4 CGColor];

  [v6 setShadowColor:v5];
}

- (UIColor)shadowColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [(PNPPlatterShadowView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "shadowColor")}];

  return v4;
}

- (void)setShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(PNPPlatterShadowView *)self layer];
  [v5 setShadowOffset:{width, height}];
}

- (CGSize)shadowOffset
{
  v2 = [(PNPPlatterShadowView *)self layer];
  [v2 shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setShadowOpacity:(double)a3
{
  v5 = [(PNPPlatterShadowView *)self layer];
  *&v4 = a3;
  [v5 setShadowOpacity:v4];
}

- (double)shadowOpacity
{
  v2 = [(PNPPlatterShadowView *)self layer];
  [v2 shadowOpacity];
  v4 = v3;

  return v4;
}

- (void)setShadowRadius:(double)a3
{
  v4 = [(PNPPlatterShadowView *)self layer];
  [v4 setShadowRadius:a3];
}

- (double)shadowRadius
{
  v2 = [(PNPPlatterShadowView *)self layer];
  [v2 shadowRadius];
  v4 = v3;

  return v4;
}

- (void)setShadowPath:(id)a3
{
  v4 = a3;
  v6 = [(PNPPlatterShadowView *)self layer];
  v5 = [v4 CGPath];

  [v6 setShadowPath:v5];
}

- (UIBezierPath)shadowPath
{
  v2 = MEMORY[0x277D75208];
  v3 = [(PNPPlatterShadowView *)self layer];
  v4 = [v2 bezierPathWithCGPath:{objc_msgSend(v3, "shadowPath")}];

  return v4;
}

@end