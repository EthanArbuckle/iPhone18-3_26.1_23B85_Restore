@interface _UIWindowSceneActivationAction
+ (id)actionWithIdentifier:(id)a3 alternateAction:(id)a4 configurationProvider:(id)a5;
@end

@implementation _UIWindowSceneActivationAction

+ (id)actionWithIdentifier:(id)a3 alternateAction:(id)a4 configurationProvider:(id)a5
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS____UIWindowSceneActivationAction;
  v5 = objc_msgSendSuper2(&v7, sel_actionWithIdentifier_alternateAction_configurationProvider_, a3, a4, a5);

  return v5;
}

@end