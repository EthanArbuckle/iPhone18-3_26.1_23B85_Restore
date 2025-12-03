@interface PNPPlatterShadowView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGSize)shadowOffset;
- (UIBezierPath)shadowPath;
- (UIColor)shadowColor;
- (double)shadowOpacity;
- (double)shadowRadius;
- (void)setShadowColor:(id)color;
- (void)setShadowOffset:(CGSize)offset;
- (void)setShadowOpacity:(double)opacity;
- (void)setShadowPath:(id)path;
- (void)setShadowRadius:(double)radius;
@end

@implementation PNPPlatterShadowView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = PNPPlatterShadowView;
  if ([(PNPPlatterShadowView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy containsString:@"shadow"];
  }

  return v5;
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  layer = [(PNPPlatterShadowView *)self layer];
  cGColor = [colorCopy CGColor];

  [layer setShadowColor:cGColor];
}

- (UIColor)shadowColor
{
  v2 = MEMORY[0x277D75348];
  layer = [(PNPPlatterShadowView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(layer, "shadowColor")}];

  return v4;
}

- (void)setShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  layer = [(PNPPlatterShadowView *)self layer];
  [layer setShadowOffset:{width, height}];
}

- (CGSize)shadowOffset
{
  layer = [(PNPPlatterShadowView *)self layer];
  [layer shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setShadowOpacity:(double)opacity
{
  layer = [(PNPPlatterShadowView *)self layer];
  *&v4 = opacity;
  [layer setShadowOpacity:v4];
}

- (double)shadowOpacity
{
  layer = [(PNPPlatterShadowView *)self layer];
  [layer shadowOpacity];
  v4 = v3;

  return v4;
}

- (void)setShadowRadius:(double)radius
{
  layer = [(PNPPlatterShadowView *)self layer];
  [layer setShadowRadius:radius];
}

- (double)shadowRadius
{
  layer = [(PNPPlatterShadowView *)self layer];
  [layer shadowRadius];
  v4 = v3;

  return v4;
}

- (void)setShadowPath:(id)path
{
  pathCopy = path;
  layer = [(PNPPlatterShadowView *)self layer];
  cGPath = [pathCopy CGPath];

  [layer setShadowPath:cGPath];
}

- (UIBezierPath)shadowPath
{
  v2 = MEMORY[0x277D75208];
  layer = [(PNPPlatterShadowView *)self layer];
  v4 = [v2 bezierPathWithCGPath:{objc_msgSend(layer, "shadowPath")}];

  return v4;
}

@end