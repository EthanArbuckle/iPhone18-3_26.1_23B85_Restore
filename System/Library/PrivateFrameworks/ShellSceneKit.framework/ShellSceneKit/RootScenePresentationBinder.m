@interface RootScenePresentationBinder
- (_TtC13ShellSceneKit27RootScenePresentationBinder)init;
- (_TtC13ShellSceneKit27RootScenePresentationBinder)initWithIdentifier:(id)a3 priority:(int64_t)a4 appearanceStyle:(unint64_t)a5 rootWindow:(id)a6;
- (_TtC13ShellSceneKit27RootScenePresentationBinder)initWithIdentifier:(id)a3 priority:(int64_t)a4 rootView:(id)a5 appearanceStyle:(unint64_t)a6;
- (_TtC13ShellSceneKit27RootScenePresentationBinder)initWithPriority:(int64_t)a3 displayConfiguration:(id)a4;
@end

@implementation RootScenePresentationBinder

- (_TtC13ShellSceneKit27RootScenePresentationBinder)initWithIdentifier:(id)a3 priority:(int64_t)a4 appearanceStyle:(unint64_t)a5 rootWindow:(id)a6
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13ShellSceneKit27RootScenePresentationBinder_rootWindow) = a6;
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(UIRootWindowScenePresentationBinder *)&v13 initWithIdentifier:a3 priority:a4 appearanceStyle:a5 rootWindow:a6];
}

- (_TtC13ShellSceneKit27RootScenePresentationBinder)initWithPriority:(int64_t)a3 displayConfiguration:(id)a4
{
  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

- (_TtC13ShellSceneKit27RootScenePresentationBinder)initWithIdentifier:(id)a3 priority:(int64_t)a4 rootView:(id)a5 appearanceStyle:(unint64_t)a6
{
  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

- (_TtC13ShellSceneKit27RootScenePresentationBinder)init
{
  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

@end