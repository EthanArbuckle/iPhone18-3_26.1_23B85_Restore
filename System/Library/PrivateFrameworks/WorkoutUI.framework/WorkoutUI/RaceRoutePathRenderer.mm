@interface RaceRoutePathRenderer
- (_TtC9WorkoutUI21RaceRoutePathRenderer)initWithOverlay:(id)a3;
- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5;
@end

@implementation RaceRoutePathRenderer

- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v8 = a3.var0.var1;
  v9 = a3.var0.var0;
  v11 = a5;
  v12 = self;
  RaceRoutePathRenderer.draw(_:zoomScale:in:)(v11, v9, v8, var0, var1, a4);
}

- (_TtC9WorkoutUI21RaceRoutePathRenderer)initWithOverlay:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end