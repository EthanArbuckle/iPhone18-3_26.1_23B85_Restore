@interface SceneLevelExtension.HostComponent
- (_TtCC13ShellSceneKit19SceneLevelExtension13HostComponent)init;
- (void)invalidate;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)setScene:(id)a3;
@end

@implementation SceneLevelExtension.HostComponent

- (void)setScene:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_265FEADFC();
  swift_unknownObjectRelease();
}

- (void)invalidate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit19SceneLevelExtension13HostComponent_scene);
  *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit19SceneLevelExtension13HostComponent_scene) = 0;
  MEMORY[0x2821F96F8]();
}

- (_TtCC13ShellSceneKit19SceneLevelExtension13HostComponent)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit19SceneLevelExtension13HostComponent_scene) = 0;
  *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit19SceneLevelExtension13HostComponent____lazy_storage___diffInspector) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SceneLevelExtension.HostComponent *)&v5 init];
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_265FEB138(v6, v7);
}

@end