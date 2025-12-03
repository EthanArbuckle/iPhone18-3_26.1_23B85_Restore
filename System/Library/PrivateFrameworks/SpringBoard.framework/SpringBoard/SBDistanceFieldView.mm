@interface SBDistanceFieldView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)invertsShape;
- (CGColor)foregroundColor;
- (NSString)renderMode;
- (double)lineWidth;
- (double)offset;
- (double)sharpness;
- (void)setForegroundColor:(CGColor *)color;
- (void)setInvertsShape:(BOOL)shape;
- (void)setLineWidth:(double)width;
- (void)setOffset:(double)offset;
- (void)setRenderMode:(id)mode;
- (void)setSharpness:(double)sharpness;
@end

@implementation SBDistanceFieldView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = SBDistanceFieldView;
  if (-[SBDistanceFieldView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, keyCopy) || ([keyCopy isEqualToString:@"foregroundColor"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"sharpness") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"offset"];
  }

  return v5;
}

- (NSString)renderMode
{
  layer = [(SBDistanceFieldView *)self layer];
  renderMode = [layer renderMode];

  return renderMode;
}

- (void)setRenderMode:(id)mode
{
  modeCopy = mode;
  layer = [(SBDistanceFieldView *)self layer];
  [layer setRenderMode:modeCopy];
}

- (BOOL)invertsShape
{
  layer = [(SBDistanceFieldView *)self layer];
  invertsShape = [layer invertsShape];

  return invertsShape;
}

- (void)setInvertsShape:(BOOL)shape
{
  shapeCopy = shape;
  layer = [(SBDistanceFieldView *)self layer];
  [layer setInvertsShape:shapeCopy];
}

- (CGColor)foregroundColor
{
  layer = [(SBDistanceFieldView *)self layer];
  foregroundColor = [layer foregroundColor];

  return foregroundColor;
}

- (void)setForegroundColor:(CGColor *)color
{
  layer = [(SBDistanceFieldView *)self layer];
  [layer setForegroundColor:color];
}

- (double)offset
{
  layer = [(SBDistanceFieldView *)self layer];
  [layer offset];
  v4 = v3;

  return v4;
}

- (void)setOffset:(double)offset
{
  layer = [(SBDistanceFieldView *)self layer];
  [layer setOffset:offset];
}

- (double)sharpness
{
  layer = [(SBDistanceFieldView *)self layer];
  [layer sharpness];
  v4 = v3;

  return v4;
}

- (void)setSharpness:(double)sharpness
{
  layer = [(SBDistanceFieldView *)self layer];
  [layer setSharpness:sharpness];
}

- (double)lineWidth
{
  layer = [(SBDistanceFieldView *)self layer];
  [layer lineWidth];
  v4 = v3;

  return v4;
}

- (void)setLineWidth:(double)width
{
  layer = [(SBDistanceFieldView *)self layer];
  [layer setLineWidth:width];
}

@end