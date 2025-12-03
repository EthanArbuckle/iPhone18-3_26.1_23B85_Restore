@interface WKUIBreadcrumbMapView
- (_TtC9WorkoutUI21WKUIBreadcrumbMapView)initWithCoder:(id)coder;
- (_TtC9WorkoutUI21WKUIBreadcrumbMapView)initWithFrame:(CGRect)frame;
- (_TtC9WorkoutUI21WKUIBreadcrumbMapView)initWithFrame:(CGRect)frame locationManager:(id)manager;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
@end

@implementation WKUIBreadcrumbMapView

- (_TtC9WorkoutUI21WKUIBreadcrumbMapView)initWithCoder:(id)coder
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

- (_TtC9WorkoutUI21WKUIBreadcrumbMapView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9WorkoutUI21WKUIBreadcrumbMapView)initWithFrame:(CGRect)frame locationManager:(id)manager
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = specialized WKUIBreadcrumbMapView.mapView(_:rendererFor:)();

  swift_unknownObjectRelease();

  return v7;
}

@end