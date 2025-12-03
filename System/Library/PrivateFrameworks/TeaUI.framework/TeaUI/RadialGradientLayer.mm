@interface RadialGradientLayer
- (_TtC5TeaUI19RadialGradientLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation RadialGradientLayer

- (_TtC5TeaUI19RadialGradientLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_1D8191F34();
  swift_unknownObjectRelease();
  return RadialGradientLayer.init(layer:)(v4);
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  RadialGradientLayer.draw(in:)(contextCopy);
}

@end