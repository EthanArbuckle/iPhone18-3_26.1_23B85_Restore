@interface WidgetSceneConnection
- (NSString)description;
- (_TtC14WidgetRenderer21WidgetSceneConnection)init;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)dealloc;
@end

@implementation WidgetSceneConnection

- (NSString)description
{
  selfCopy = self;
  sub_1DAE09500();

  v3 = sub_1DAED1CBC();

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(WidgetSceneConnection *)&v3 dealloc];
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  selfCopy = self;
  sub_1DAE0C37C(sScene, diff, settings, context);
}

- (_TtC14WidgetRenderer21WidgetSceneConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end