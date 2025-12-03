@interface WeatherMapCircularGradientLayer
- (_TtC11WeatherMaps31WeatherMapCircularGradientLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation WeatherMapCircularGradientLayer

- (_TtC11WeatherMaps31WeatherMapCircularGradientLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_220FC3410();
  swift_unknownObjectRelease();
  return sub_220EC1364(v4);
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_220EC15F8(contextCopy);
}

@end