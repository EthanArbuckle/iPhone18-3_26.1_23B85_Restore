@interface ImageViewLayer
- (CGColor)shadowColor;
- (CGSize)shadowOffset;
- (_TtC5TeaUIP33_01AB305DE961FE9633E4B4930A1B15A714ImageViewLayer)initWithLayer:(id)layer;
- (const)shadowPath;
- (double)cornerRadius;
- (double)shadowRadius;
- (float)shadowOpacity;
- (unint64_t)maskedCorners;
- (void)setCornerRadius:(double)radius;
- (void)setMaskedCorners:(unint64_t)corners;
- (void)setShadowColor:(CGColor *)color;
- (void)setShadowOffset:(CGSize)offset;
- (void)setShadowOpacity:(float)opacity;
- (void)setShadowPath:(const CGPath *)path;
- (void)setShadowRadius:(double)radius;
@end

@implementation ImageViewLayer

- (double)cornerRadius
{
  selfCopy = self;
  sub_1D7E7CD34();
  v4 = v3;

  return v4;
}

- (float)shadowOpacity
{
  selfCopy = self;
  sub_1D7E7CEC4();
  v4 = v3;

  return v4;
}

- (CGColor)shadowColor
{
  selfCopy = self;
  v3 = sub_1D7E7CF00();

  return v3;
}

- (CGSize)shadowOffset
{
  selfCopy = self;
  sub_1D7E7D044();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)shadowRadius
{
  selfCopy = self;
  sub_1D7E7CD34();
  v4 = v3;

  return v4;
}

- (const)shadowPath
{
  selfCopy = self;
  v3 = sub_1D7E7CF00();

  return v3;
}

- (void)setCornerRadius:(double)radius
{
  selfCopy = self;
  sub_1D7EA6964(radius);
}

- (_TtC5TeaUIP33_01AB305DE961FE9633E4B4930A1B15A714ImageViewLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_1D8191F34();
  swift_unknownObjectRelease();
  return sub_1D7FF2A40(v4);
}

- (unint64_t)maskedCorners
{
  selfCopy = self;
  v3 = sub_1D7FF2B58();

  return v3;
}

- (void)setMaskedCorners:(unint64_t)corners
{
  selfCopy = self;
  sub_1D7FF2BE4(corners);
}

- (void)setShadowPath:(const CGPath *)path
{
  pathCopy = path;
  selfCopy = self;
  sub_1D7FF2EC4(path);
}

- (void)setShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  selfCopy = self;
  sub_1D7FF2D70(width, height);
}

- (void)setShadowOpacity:(float)opacity
{
  selfCopy = self;
  sub_1D7FF2E18(opacity);
}

- (void)setShadowColor:(CGColor *)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1D7FF2EC4(color);
}

- (void)setShadowRadius:(double)radius
{
  selfCopy = self;
  sub_1D7FF2F68(radius);
}

@end