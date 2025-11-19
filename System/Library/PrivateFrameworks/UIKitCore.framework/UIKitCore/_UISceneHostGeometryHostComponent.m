@interface _UISceneHostGeometryHostComponent
- (_TtC5UIKit33_UISceneHostGeometryHostComponent)init;
- (_TtC5UIKit33_UISceneHostGeometryHostComponent)initWithScene:(id)a3;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
@end

@implementation _UISceneHostGeometryHostComponent

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v4 = self;
  sub_188EA9CA0(v6);
  v5 = OBJC_IVAR____TtC5UIKit33_UISceneHostGeometryHostComponent_geometryDriver;
  swift_beginAccess();
  sub_188EAA368(v6, v4 + v5);
  swift_endAccess();
}

- (_TtC5UIKit33_UISceneHostGeometryHostComponent)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit33_UISceneHostGeometryHostComponent_currentHandle) = 0;
  v4 = self + OBJC_IVAR____TtC5UIKit33_UISceneHostGeometryHostComponent_geometryDriver;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(_UISceneHostGeometryHostComponent *)&v6 init];
}

- (_TtC5UIKit33_UISceneHostGeometryHostComponent)initWithScene:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit33_UISceneHostGeometryHostComponent_currentHandle) = 0;
  v6 = self + OBJC_IVAR____TtC5UIKit33_UISceneHostGeometryHostComponent_geometryDriver;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  swift_unknownObjectRetain();
  v7 = [(FBSSceneComponent *)&v9 initWithScene:a3];
  swift_unknownObjectRelease();
  if (v7)
  {
  }

  return v7;
}

@end