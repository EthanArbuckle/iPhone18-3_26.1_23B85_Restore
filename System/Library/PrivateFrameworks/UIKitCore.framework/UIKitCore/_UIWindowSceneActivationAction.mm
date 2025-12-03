@interface _UIWindowSceneActivationAction
+ (id)actionWithIdentifier:(id)identifier alternateAction:(id)action configurationProvider:(id)provider;
@end

@implementation _UIWindowSceneActivationAction

+ (id)actionWithIdentifier:(id)identifier alternateAction:(id)action configurationProvider:(id)provider
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS____UIWindowSceneActivationAction;
  v5 = objc_msgSendSuper2(&v7, sel_actionWithIdentifier_alternateAction_configurationProvider_, identifier, action, provider);

  return v5;
}

@end