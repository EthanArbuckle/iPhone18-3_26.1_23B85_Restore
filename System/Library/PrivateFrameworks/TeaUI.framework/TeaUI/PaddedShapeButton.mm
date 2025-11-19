@interface PaddedShapeButton
- (BOOL)isEnabled;
- (BOOL)isHighlighted;
- (CGPoint)contentOffset;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation PaddedShapeButton

- (BOOL)isEnabled
{
  v2 = self;
  v3 = sub_1D7E40440(&selRef_isEnabled);

  return v3 & 1;
}

- (BOOL)isHighlighted
{
  v2 = self;
  v3 = sub_1D7E40440(&selRef_isHighlighted);

  return v3 & 1;
}

- (CGPoint)contentOffset
{
  v2 = sub_1D7FBCD2C();
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_1D7FBCF38(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_1D7FBD068(a3);
}

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  sub_1D7FBD244(a3);
}

@end