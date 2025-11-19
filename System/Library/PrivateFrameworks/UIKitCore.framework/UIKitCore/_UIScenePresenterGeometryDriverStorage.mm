@interface _UIScenePresenterGeometryDriverStorage
- (_UIScenePresenterGeometryDriverStorage)init;
- (_UIScenePresenterGeometryDriverStorage)initWithScenePresentationView:(id)a3;
- (void)scenePresentationViewIsLayingOutSubviews;
@end

@implementation _UIScenePresenterGeometryDriverStorage

- (_UIScenePresenterGeometryDriverStorage)initWithScenePresentationView:(id)a3
{
  v5 = OBJC_IVAR____UIScenePresenterGeometryDriverStorage_driver;
  *(&self->super.isa + OBJC_IVAR____UIScenePresenterGeometryDriverStorage_driver) = 0;
  type metadata accessor for _UIScenePresenterGeometryDriver();
  swift_allocObject();
  v6 = a3;
  *(&self->super.isa + v5) = sub_1891E3F60(v6);

  v9.receiver = self;
  v9.super_class = _UIScenePresenterGeometryDriverStorage;
  v7 = [(_UIScenePresenterGeometryDriverStorage *)&v9 init];

  return v7;
}

- (void)scenePresentationViewIsLayingOutSubviews
{
  if (*(&self->super.isa + OBJC_IVAR____UIScenePresenterGeometryDriverStorage_driver))
  {
    v2 = self;

    sub_1891E3154();
  }
}

- (_UIScenePresenterGeometryDriverStorage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end