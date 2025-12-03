@interface PaddedShapeButton
- (BOOL)isEnabled;
- (BOOL)isHighlighted;
- (CGPoint)contentOffset;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation PaddedShapeButton

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = sub_1D7E40440(&selRef_isEnabled);

  return v3 & 1;
}

- (BOOL)isHighlighted
{
  selfCopy = self;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1D7FBCF38(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_1D7FBD068(highlighted);
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_1D7FBD244(enabled);
}

@end