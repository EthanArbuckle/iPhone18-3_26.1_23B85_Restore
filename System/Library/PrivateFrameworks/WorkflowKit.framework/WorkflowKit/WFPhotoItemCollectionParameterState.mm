@interface WFPhotoItemCollectionParameterState
+ (id)processingValueClasses;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFPhotoItemCollectionParameterState

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v7 = MEMORY[0x1E69AC920];
  parameterCopy = parameter;
  providerCopy = provider;
  representationCopy = representation;
  v11 = [[v7 alloc] initWithSerializedRepresentation:representationCopy variableProvider:providerCopy parameter:parameterCopy];

  return v11;
}

+ (id)processingValueClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self variable];
    [variable2 getContentWithContext:contextCopy completionHandler:valueHandlerCopy];
  }

  else
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self value];
    valueHandlerCopy[2](valueHandlerCopy, variable2, 0);
  }
}

@end