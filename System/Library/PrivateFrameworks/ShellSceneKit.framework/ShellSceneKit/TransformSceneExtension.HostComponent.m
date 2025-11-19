@interface TransformSceneExtension.HostComponent
- (_TtCC13ShellSceneKit23TransformSceneExtension13HostComponent)init;
- (void)invalidate;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)setScene:(id)a3;
@end

@implementation TransformSceneExtension.HostComponent

- (void)setScene:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_265FE9CD8();
  swift_unknownObjectRelease();
}

- (void)invalidate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit23TransformSceneExtension13HostComponent_scene);
  *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit23TransformSceneExtension13HostComponent_scene) = 0;
  MEMORY[0x2821F96F8]();
}

- (_TtCC13ShellSceneKit23TransformSceneExtension13HostComponent)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit23TransformSceneExtension13HostComponent_transformObservers) = MEMORY[0x277D84FA0];
  *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit23TransformSceneExtension13HostComponent_scene) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(TransformSceneExtension.HostComponent *)&v5 init];
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_265FEA27C(v6, v7);
}

@end