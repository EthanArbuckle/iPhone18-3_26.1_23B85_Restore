@interface ProfileActivationSceneExtension.ClientComponent
- (_TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent)init;
- (_TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent)initWithScene:(id)scene;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
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

- (_TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent)initWithScene:(id)scene
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent_activationObservers;
  v7 = objc_opt_self();
  swift_unknownObjectRetain();
  *(&self->super.super.isa + v6) = [v7 weakObjectsHashTable];
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(FBSSceneComponent *)&v10 initWithScene:scene];
  swift_unknownObjectRelease();
  if (v8)
  {
  }

  return v8;
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  selfCopy = self;
  sub_265FE8828(sceneCopy, settingsCopy);
}

@end