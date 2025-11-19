@interface WidgetSceneConnection
- (NSString)description;
- (_TtC14WidgetRenderer21WidgetSceneConnection)init;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)dealloc;
@end

@implementation WidgetSceneConnection

- (NSString)description
{
  v2 = self;
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

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = self;
  sub_1DAE0C37C(a4, a5, a6, a7);
}

- (_TtC14WidgetRenderer21WidgetSceneConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end