@interface ImageViewLayer
- (CGColor)shadowColor;
- (CGSize)shadowOffset;
- (_TtC5TeaUIP33_01AB305DE961FE9633E4B4930A1B15A714ImageViewLayer)initWithLayer:(id)a3;
- (const)shadowPath;
- (double)cornerRadius;
- (double)shadowRadius;
- (float)shadowOpacity;
- (unint64_t)maskedCorners;
- (void)setCornerRadius:(double)a3;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setShadowColor:(CGColor *)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setShadowOpacity:(float)a3;
- (void)setShadowPath:(const CGPath *)a3;
- (void)setShadowRadius:(double)a3;
@end

@implementation ImageViewLayer

- (double)cornerRadius
{
  v2 = self;
  sub_1D7E7CD34();
  v4 = v3;

  return v4;
}

- (float)shadowOpacity
{
  v2 = self;
  sub_1D7E7CEC4();
  v4 = v3;

  return v4;
}

- (CGColor)shadowColor
{
  v2 = self;
  v3 = sub_1D7E7CF00();

  return v3;
}

- (CGSize)shadowOffset
{
  v2 = self;
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
  v2 = self;
  sub_1D7E7CD34();
  v4 = v3;

  return v4;
}

- (const)shadowPath
{
  v2 = self;
  v3 = sub_1D7E7CF00();

  return v3;
}

- (void)setCornerRadius:(double)a3
{
  v4 = self;
  sub_1D7EA6964(a3);
}

- (_TtC5TeaUIP33_01AB305DE961FE9633E4B4930A1B15A714ImageViewLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1D8191F34();
  swift_unknownObjectRelease();
  return sub_1D7FF2A40(v4);
}

- (unint64_t)maskedCorners
{
  v2 = self;
  v3 = sub_1D7FF2B58();

  return v3;
}

- (void)setMaskedCorners:(unint64_t)a3
{
  v4 = self;
  sub_1D7FF2BE4(a3);
}

- (void)setShadowPath:(const CGPath *)a3
{
  v5 = a3;
  v6 = self;
  sub_1D7FF2EC4(a3);
}

- (void)setShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1D7FF2D70(width, height);
}

- (void)setShadowOpacity:(float)a3
{
  v4 = self;
  sub_1D7FF2E18(a3);
}

- (void)setShadowColor:(CGColor *)a3
{
  v5 = a3;
  v6 = self;
  sub_1D7FF2EC4(a3);
}

- (void)setShadowRadius:(double)a3
{
  v4 = self;
  sub_1D7FF2F68(a3);
}

@end