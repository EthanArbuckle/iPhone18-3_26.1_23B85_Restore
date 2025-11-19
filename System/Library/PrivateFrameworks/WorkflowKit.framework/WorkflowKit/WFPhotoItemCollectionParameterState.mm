@interface WFPhotoItemCollectionParameterState
+ (id)processingValueClasses;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFPhotoItemCollectionParameterState

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v7 = MEMORY[0x1E69AC920];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithSerializedRepresentation:v10 variableProvider:v9 parameter:v8];

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

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v10 = a3;
  v7 = a5;
  v8 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v8)
  {
    v9 = [(WFVariableSubstitutableParameterState *)self variable];
    [v9 getContentWithContext:v10 completionHandler:v7];
  }

  else
  {
    v9 = [(WFVariableSubstitutableParameterState *)self value];
    v7[2](v7, v9, 0);
  }
}

@end