@interface WKUIBreadcrumbPathRenderer
- (BOOL)canDrawMapRect:(id)rect zoomScale:(double)scale;
- (_TtC9WorkoutUI26WKUIBreadcrumbPathRenderer)initWithOverlay:(id)overlay;
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
@end

@implementation WKUIBreadcrumbPathRenderer

- (BOOL)canDrawMapRect:(id)rect zoomScale:(double)scale
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v6 = rect.var0.var1;
  v7 = rect.var0.var0;
  v8 = *(*(&self->super.super.isa + OBJC_IVAR____TtC9WorkoutUI26WKUIBreadcrumbPathRenderer_crumbs) + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_protectedBreadcrumbData);
  selfCopy = self;
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

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v8 = rect.var0.var1;
  v9 = rect.var0.var0;
  contextCopy = context;
  selfCopy = self;
  WKUIBreadcrumbPathRenderer.draw(_:zoomScale:in:)(contextCopy, v9, v8, var0, var1, scale);
}

- (_TtC9WorkoutUI26WKUIBreadcrumbPathRenderer)initWithOverlay:(id)overlay
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end