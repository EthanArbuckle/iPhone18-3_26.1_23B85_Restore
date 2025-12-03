@interface _UISceneConnectionOptionDefinitionActionHandler
- (_UISceneConnectionOptionDefinitionActionHandler)init;
- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation _UISceneConnectionOptionDefinitionActionHandler

- (_UISceneConnectionOptionDefinitionActionHandler)init
{
  v3.receiver = self;
  v3.super_class = _UISceneConnectionOptionDefinitionActionHandler;
  return [(_UISceneConnectionOptionDefinitionActionHandler *)&v3 init];
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  sub_188A34624(0, &qword_1ED48FD98);
  sub_188D06B5C();
  v7 = sub_18A4A77A8();
  iSceneCopy = iScene;
  sub_188D06BC4(v7, iSceneCopy);

  v9 = sub_18A4A7798();

  return v9;
}

- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context
{
  sub_188A34624(0, &qword_1ED48FD98);
  sub_188D06B5C();
  v7 = sub_18A4A77A8();
  v8 = objc_allocWithZone(_UISceneConnectionOptionsContext);
  sessionCopy = session;
  v10 = [v8 init];
  v11 = sessionCopy;
  v12 = v10;
  sub_188DCB334(v7, v11, v12);

  v13 = sub_18A4A7798();

  [v12 setUnprocessedActions_];

  return v12;
}

@end