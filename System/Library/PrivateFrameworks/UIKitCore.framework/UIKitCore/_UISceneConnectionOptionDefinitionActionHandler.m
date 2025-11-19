@interface _UISceneConnectionOptionDefinitionActionHandler
- (_UISceneConnectionOptionDefinitionActionHandler)init;
- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation _UISceneConnectionOptionDefinitionActionHandler

- (_UISceneConnectionOptionDefinitionActionHandler)init
{
  v3.receiver = self;
  v3.super_class = _UISceneConnectionOptionDefinitionActionHandler;
  return [(_UISceneConnectionOptionDefinitionActionHandler *)&v3 init];
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  sub_188A34624(0, &qword_1ED48FD98);
  sub_188D06B5C();
  v7 = sub_18A4A77A8();
  v8 = a5;
  sub_188D06BC4(v7, v8);

  v9 = sub_18A4A7798();

  return v9;
}

- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6
{
  sub_188A34624(0, &qword_1ED48FD98);
  sub_188D06B5C();
  v7 = sub_18A4A77A8();
  v8 = objc_allocWithZone(_UISceneConnectionOptionsContext);
  v9 = a5;
  v10 = [v8 init];
  v11 = v9;
  v12 = v10;
  sub_188DCB334(v7, v11, v12);

  v13 = sub_18A4A7798();

  [v12 setUnprocessedActions_];

  return v12;
}

@end