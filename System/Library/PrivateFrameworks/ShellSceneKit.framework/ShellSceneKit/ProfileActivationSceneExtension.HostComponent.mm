@interface ProfileActivationSceneExtension.HostComponent
- (_TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent)init;
- (void)invalidate;
- (void)setScene:(id)a3;
@end

@implementation ProfileActivationSceneExtension.HostComponent

- (void)setScene:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_265FE8358();
  swift_unknownObjectRelease();
}

- (void)invalidate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene);
  *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene) = 0;
  MEMORY[0x2821F96F8]();
}

- (_TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(ProfileActivationSceneExtension.HostComponent *)&v5 init];
}

@end