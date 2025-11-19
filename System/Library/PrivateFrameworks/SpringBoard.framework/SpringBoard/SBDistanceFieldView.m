@interface SBDistanceFieldView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)invertsShape;
- (CGColor)foregroundColor;
- (NSString)renderMode;
- (double)lineWidth;
- (double)offset;
- (double)sharpness;
- (void)setForegroundColor:(CGColor *)a3;
- (void)setInvertsShape:(BOOL)a3;
- (void)setLineWidth:(double)a3;
- (void)setOffset:(double)a3;
- (void)setRenderMode:(id)a3;
- (void)setSharpness:(double)a3;
@end

@implementation SBDistanceFieldView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBDistanceFieldView;
  if (-[SBDistanceFieldView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, v4) || ([v4 isEqualToString:@"foregroundColor"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"sharpness") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"offset"];
  }

  return v5;
}

- (NSString)renderMode
{
  v2 = [(SBDistanceFieldView *)self layer];
  v3 = [v2 renderMode];

  return v3;
}

- (void)setRenderMode:(id)a3
{
  v4 = a3;
  v5 = [(SBDistanceFieldView *)self layer];
  [v5 setRenderMode:v4];
}

- (BOOL)invertsShape
{
  v2 = [(SBDistanceFieldView *)self layer];
  v3 = [v2 invertsShape];

  return v3;
}

- (void)setInvertsShape:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBDistanceFieldView *)self layer];
  [v4 setInvertsShape:v3];
}

- (CGColor)foregroundColor
{
  v2 = [(SBDistanceFieldView *)self layer];
  v3 = [v2 foregroundColor];

  return v3;
}

- (void)setForegroundColor:(CGColor *)a3
{
  v4 = [(SBDistanceFieldView *)self layer];
  [v4 setForegroundColor:a3];
}

- (double)offset
{
  v2 = [(SBDistanceFieldView *)self layer];
  [v2 offset];
  v4 = v3;

  return v4;
}

- (void)setOffset:(double)a3
{
  v4 = [(SBDistanceFieldView *)self layer];
  [v4 setOffset:a3];
}

- (double)sharpness
{
  v2 = [(SBDistanceFieldView *)self layer];
  [v2 sharpness];
  v4 = v3;

  return v4;
}

- (void)setSharpness:(double)a3
{
  v4 = [(SBDistanceFieldView *)self layer];
  [v4 setSharpness:a3];
}

- (double)lineWidth
{
  v2 = [(SBDistanceFieldView *)self layer];
  [v2 lineWidth];
  v4 = v3;

  return v4;
}

- (void)setLineWidth:(double)a3
{
  v4 = [(SBDistanceFieldView *)self layer];
  [v4 setLineWidth:a3];
}

@end