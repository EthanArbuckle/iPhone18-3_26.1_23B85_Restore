@interface RadialGradientLayer
- (_TtC5TeaUI19RadialGradientLayer)initWithLayer:(id)a3;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation RadialGradientLayer

- (_TtC5TeaUI19RadialGradientLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1D8191F34();
  swift_unknownObjectRelease();
  return RadialGradientLayer.init(layer:)(v4);
}

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  RadialGradientLayer.draw(in:)(v4);
}

@end