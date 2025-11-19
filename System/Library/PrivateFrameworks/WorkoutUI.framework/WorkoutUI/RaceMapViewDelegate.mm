@interface RaceMapViewDelegate
- (_TtC9WorkoutUI19RaceMapViewDelegate)init;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
@end

@implementation RaceMapViewDelegate

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = specialized RaceMapViewDelegate.mapView(_:rendererFor:)();

  swift_unknownObjectRelease();

  return v7;
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
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