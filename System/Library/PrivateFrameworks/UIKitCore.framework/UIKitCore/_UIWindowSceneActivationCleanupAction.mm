@interface _UIWindowSceneActivationCleanupAction
+ (id)actionWithInteractionIdentifier:(id)identifier responseHandler:(id)handler;
- (NSString)interactionIdentifier;
@end

@implementation _UIWindowSceneActivationCleanupAction

+ (id)actionWithInteractionIdentifier:(id)identifier responseHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = objc_opt_new();
  [v8 setObject:identifierCopy forSetting:1];

  v9 = [self alloc];
  v10 = [MEMORY[0x1E698E5F8] responderWithHandler:handlerCopy];

  v11 = [v9 initWithInfo:v8 responder:v10];

  return v11;
}

- (NSString)interactionIdentifier
{
  info = [(_UIWindowSceneActivationCleanupAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

@end