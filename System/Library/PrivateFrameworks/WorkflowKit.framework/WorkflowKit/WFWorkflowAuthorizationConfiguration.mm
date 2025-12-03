@interface WFWorkflowAuthorizationConfiguration
- (WFWorkflowAuthorizationConfiguration)init;
- (WFWorkflowAuthorizationConfiguration)initWithCoder:(id)coder;
- (id)authorizationDialogRequestWithAttribution:(id)attribution;
- (id)siriDialogAlertWithCompletionHandler:(id)handler;
@end

@implementation WFWorkflowAuthorizationConfiguration

- (WFWorkflowAuthorizationConfiguration)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = WFWorkflowAuthorizationConfiguration;
  return [(WFWorkflowAuthorizationConfiguration *)&v4 init];
}

- (WFWorkflowAuthorizationConfiguration)init
{
  v3.receiver = self;
  v3.super_class = WFWorkflowAuthorizationConfiguration;
  return [(WFWorkflowAuthorizationConfiguration *)&v3 init];
}

- (id)siriDialogAlertWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"+[WFWorkflowAuthorizationConfiguration siriDialogAlert] must be overridden"];
  __break(1u);
  return result;
}

- (id)authorizationDialogRequestWithAttribution:(id)attribution
{
  attributionCopy = attribution;
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"+[WFWorkflowAuthorizationConfiguration authorizationDialogRequest] must be overridden"];
  __break(1u);
  return result;
}

@end