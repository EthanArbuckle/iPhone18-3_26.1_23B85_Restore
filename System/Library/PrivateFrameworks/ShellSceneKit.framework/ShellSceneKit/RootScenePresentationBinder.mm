@interface RootScenePresentationBinder
- (_TtC13ShellSceneKit27RootScenePresentationBinder)init;
- (_TtC13ShellSceneKit27RootScenePresentationBinder)initWithIdentifier:(id)identifier priority:(int64_t)priority appearanceStyle:(unint64_t)style rootWindow:(id)window;
- (_TtC13ShellSceneKit27RootScenePresentationBinder)initWithIdentifier:(id)identifier priority:(int64_t)priority rootView:(id)view appearanceStyle:(unint64_t)style;
- (_TtC13ShellSceneKit27RootScenePresentationBinder)initWithPriority:(int64_t)priority displayConfiguration:(id)configuration;
@end

@implementation RootScenePresentationBinder

- (_TtC13ShellSceneKit27RootScenePresentationBinder)initWithIdentifier:(id)identifier priority:(int64_t)priority appearanceStyle:(unint64_t)style rootWindow:(id)window
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13ShellSceneKit27RootScenePresentationBinder_rootWindow) = window;
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(UIRootWindowScenePresentationBinder *)&v13 initWithIdentifier:identifier priority:priority appearanceStyle:style rootWindow:window];
}

- (_TtC13ShellSceneKit27RootScenePresentationBinder)initWithPriority:(int64_t)priority displayConfiguration:(id)configuration
{
  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

- (_TtC13ShellSceneKit27RootScenePresentationBinder)initWithIdentifier:(id)identifier priority:(int64_t)priority rootView:(id)view appearanceStyle:(unint64_t)style
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