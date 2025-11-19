@interface ProfileActivationSceneExtension.ClientComponent
- (_TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent)init;
- (_TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent)initWithScene:(id)a3;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation ProfileActivationSceneExtension.ClientComponent

- (_TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent_activationObservers;
  *(&self->super.super.isa + v4) = [objc_opt_self() weakObjectsHashTable];
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ProfileActivationSceneExtension.ClientComponent *)&v6 init];
}

- (_TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent)initWithScene:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent_activationObservers;
  v7 = objc_opt_self();
  swift_unknownObjectRetain();
  *(&self->super.super.isa + v6) = [v7 weakObjectsHashTable];
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(FBSSceneComponent *)&v10 initWithScene:a3];
  swift_unknownObjectRelease();
  if (v8)
  {
  }

  return v8;
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_265FE8828(v6, v7);
}

@end