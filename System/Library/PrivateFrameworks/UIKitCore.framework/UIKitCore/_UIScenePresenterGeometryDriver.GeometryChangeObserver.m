@interface _UIScenePresenterGeometryDriver.GeometryChangeObserver
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
@end

@implementation _UIScenePresenterGeometryDriver.GeometryChangeObserver

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  swift_beginAccess();
  v7 = *self->driver;
  swift_unownedRetainStrong();
  if (v7)
  {
    v8 = a4;

    sub_1891E4048(a3);
  }
}

@end