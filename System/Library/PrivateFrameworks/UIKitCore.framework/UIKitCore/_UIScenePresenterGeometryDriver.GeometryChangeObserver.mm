@interface _UIScenePresenterGeometryDriver.GeometryChangeObserver
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
@end

@implementation _UIScenePresenterGeometryDriver.GeometryChangeObserver

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  swift_beginAccess();
  v7 = *self->driver;
  swift_unownedRetainStrong();
  if (v7)
  {
    ancestorCopy = ancestor;

    sub_1891E4048(changed);
  }
}

@end