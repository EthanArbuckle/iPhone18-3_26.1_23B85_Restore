@interface _UIWindowSceneActivationCleanupAction
+ (id)actionWithInteractionIdentifier:(id)a3 responseHandler:(id)a4;
- (NSString)interactionIdentifier;
@end

@implementation _UIWindowSceneActivationCleanupAction

+ (id)actionWithInteractionIdentifier:(id)a3 responseHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setObject:v7 forSetting:1];

  v9 = [a1 alloc];
  v10 = [MEMORY[0x1E698E5F8] responderWithHandler:v6];

  v11 = [v9 initWithInfo:v8 responder:v10];

  return v11;
}

- (NSString)interactionIdentifier
{
  v2 = [(_UIWindowSceneActivationCleanupAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

@end