@interface RaceMapViewDelegate
- (_TtC9WorkoutUI19RaceMapViewDelegate)init;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
@end

@implementation RaceMapViewDelegate

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = specialized RaceMapViewDelegate.mapView(_:rendererFor:)();

  swift_unknownObjectRelease();

  return v7;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = specialized RaceMapViewDelegate.mapView(_:viewFor:)();

  swift_unknownObjectRelease();

  return v7;
}

- (_TtC9WorkoutUI19RaceMapViewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end