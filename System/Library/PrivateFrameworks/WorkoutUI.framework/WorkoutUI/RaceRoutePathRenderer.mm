@interface RaceRoutePathRenderer
- (_TtC9WorkoutUI21RaceRoutePathRenderer)initWithOverlay:(id)overlay;
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
@end

@implementation RaceRoutePathRenderer

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v8 = rect.var0.var1;
  v9 = rect.var0.var0;
  contextCopy = context;
  selfCopy = self;
  RaceRoutePathRenderer.draw(_:zoomScale:in:)(contextCopy, v9, v8, var0, var1, scale);
}

- (_TtC9WorkoutUI21RaceRoutePathRenderer)initWithOverlay:(id)overlay
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end