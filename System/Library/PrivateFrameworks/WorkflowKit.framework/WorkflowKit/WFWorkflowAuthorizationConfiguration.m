@interface WFWorkflowAuthorizationConfiguration
- (WFWorkflowAuthorizationConfiguration)init;
- (WFWorkflowAuthorizationConfiguration)initWithCoder:(id)a3;
- (id)authorizationDialogRequestWithAttribution:(id)a3;
- (id)siriDialogAlertWithCompletionHandler:(id)a3;
@end

@implementation WFWorkflowAuthorizationConfiguration

- (WFWorkflowAuthorizationConfiguration)initWithCoder:(id)a3
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

- (id)siriDialogAlertWithCompletionHandler:(id)a3
{
  v3 = a3;
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"+[WFWorkflowAuthorizationConfiguration siriDialogAlert] must be overridden"];
  __break(1u);
  return result;
}

- (id)authorizationDialogRequestWithAttribution:(id)a3
{
  v3 = a3;
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"+[WFWorkflowAuthorizationConfiguration authorizationDialogRequest] must be overridden"];
  __break(1u);
  return result;
}

@end