@interface WKUIBreadcrumbMapView
- (_TtC9WorkoutUI21WKUIBreadcrumbMapView)initWithCoder:(id)a3;
- (_TtC9WorkoutUI21WKUIBreadcrumbMapView)initWithFrame:(CGRect)a3;
- (_TtC9WorkoutUI21WKUIBreadcrumbMapView)initWithFrame:(CGRect)a3 locationManager:(id)a4;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
@end

@implementation WKUIBreadcrumbMapView

- (_TtC9WorkoutUI21WKUIBreadcrumbMapView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPath) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPathRenderer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_cancellable) = MEMORY[0x277D84FA0];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_routePolyline) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_didReceiveInitialUpdate) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9WorkoutUI21WKUIBreadcrumbMapView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9WorkoutUI21WKUIBreadcrumbMapView)initWithFrame:(CGRect)a3 locationManager:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = specialized WKUIBreadcrumbMapView.mapView(_:rendererFor:)();

  swift_unknownObjectRelease();

  return v7;
}

@end