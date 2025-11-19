@interface WKUIBreadcrumbPathRenderer
- (BOOL)canDrawMapRect:(id)a3 zoomScale:(double)a4;
- (_TtC9WorkoutUI26WKUIBreadcrumbPathRenderer)initWithOverlay:(id)a3;
- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5;
@end

@implementation WKUIBreadcrumbPathRenderer

- (BOOL)canDrawMapRect:(id)a3 zoomScale:(double)a4
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v6 = a3.var0.var1;
  v7 = a3.var0.var0;
  v8 = *(*(&self->super.super.isa + OBJC_IVAR____TtC9WorkoutUI26WKUIBreadcrumbPathRenderer_crumbs) + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_protectedBreadcrumbData);
  v9 = self;
  os_unfair_lock_lock((v8 + 56));
  v10 = *(v8 + 24);
  v11 = *(v8 + 32);
  v12 = *(v8 + 40);
  v13 = *(v8 + 48);
  os_unfair_lock_unlock((v8 + 56));
  v15.origin.x = v10;
  v15.origin.y = v11;
  v15.size.width = v12;
  v15.size.height = v13;
  v16.origin.x = v7;
  v16.origin.y = v6;
  v16.size.width = var0;
  v16.size.height = var1;
  LOBYTE(v8) = MKMapRectIntersectsRect(v15, v16);

  return v8;
}

- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v8 = a3.var0.var1;
  v9 = a3.var0.var0;
  v11 = a5;
  v12 = self;
  WKUIBreadcrumbPathRenderer.draw(_:zoomScale:in:)(v11, v9, v8, var0, var1, a4);
}

- (_TtC9WorkoutUI26WKUIBreadcrumbPathRenderer)initWithOverlay:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end