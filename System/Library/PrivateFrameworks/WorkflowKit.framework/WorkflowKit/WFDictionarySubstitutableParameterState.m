@interface WFDictionarySubstitutableParameterState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFDictionarySubstitutableParameterState)initWithKeyValuePairs:(id)a3;
- (WFDictionarySubstitutableParameterState)initWithKeyValuePairs:(id)a3 identity:(id)a4;
- (WFDictionarySubstitutableParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (id)containedVariables;
- (void)getObjectRepresentationOfVariableWithContext:(id)a3 processingValueClass:(Class)a4 valueHandler:(id)a5;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFDictionarySubstitutableParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v11)
  {
    v14.receiver = self;
    v14.super_class = WFDictionarySubstitutableParameterState;
    [(WFVariableSubstitutableParameterState *)&v14 processWithContext:v8 userInputRequiredHandler:v9 valueHandler:v10];
  }

  else
  {
    v12 = objc_opt_class();
    v13 = [(WFVariableSubstitutableParameterState *)self value];
    [v12 processValues:v13 context:v8 processingClass:objc_opt_class() userInputRequiredHandler:v9 valueHandler:v10];
  }
}

- (void)getObjectRepresentationOfVariableWithContext:(id)a3 processingValueClass:(Class)a4 valueHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(WFVariableSubstitutableParameterState *)self variable];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __122__WFDictionarySubstitutableParameterState_getObjectRepresentationOfVariableWithContext_processingValueClass_valueHandler___block_invoke;
  v11[3] = &unk_1E837DC20;
  v12 = v7;
  v10 = v7;
  [v9 getContentWithContext:v8 completionHandler:v11];
}

void __122__WFDictionarySubstitutableParameterState_getObjectRepresentationOfVariableWithContext_processingValueClass_valueHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __122__WFDictionarySubstitutableParameterState_getObjectRepresentationOfVariableWithContext_processingValueClass_valueHandler___block_invoke_2;
  v5[3] = &unk_1E837DBF8;
  v6 = *(a1 + 32);
  [v3 generateCollectionByCoercingToItemClass:v4 completionHandler:v5];
}

void __122__WFDictionarySubstitutableParameterState_getObjectRepresentationOfVariableWithContext_processingValueClass_valueHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a2 items];
  v10 = [v7 firstObject];

  v8 = *(a1 + 32);
  v9 = [v10 dictionary];
  (*(v8 + 16))(v8, v9, v6);
}

- (id)containedVariables
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v9.receiver = self;
  v9.super_class = WFDictionarySubstitutableParameterState;
  v4 = [(WFVariableSubstitutableParameterState *)&v9 containedVariables];
  v5 = [v3 initWithArray:v4];

  v6 = [(WFDictionarySubstitutableParameterState *)self keyValuePairs];
  v7 = [v6 valueForKeyPath:@"@unionOfArrays.containedVariables"];
  [v5 addObjectsFromArray:v7];

  return v5;
}

- (WFDictionarySubstitutableParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = WFDeserializedVariableObject(v8, v9, v10);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 keyValuePairs];
      self = [(WFDictionarySubstitutableParameterState *)self initWithKeyValuePairs:v12];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self = [(WFVariableSubstitutableParameterState *)self initWithVariable:v11];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 representsSingleContentVariable])
      {
        v13 = [v11 stringsAndVariables];
        v14 = [v13 firstObject];
        self = [(WFVariableSubstitutableParameterState *)self initWithVariable:v14];
      }
    }
  }

  v15 = [objc_opt_class() valueFromSerializedRepresentation:v8 variableProvider:v9 parameter:v10];
  if (v15)
  {
    self = [(WFVariableSubstitutableParameterState *)self initWithValue:v15];
  }

  v16 = [MEMORY[0x1E696AFB0] UUID];
  identity = self->_identity;
  self->_identity = v16;

  return self;
}

- (WFDictionarySubstitutableParameterState)initWithKeyValuePairs:(id)a3 identity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFDictionarySubstitutableParameterState.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"keyValuePairs"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"WFDictionarySubstitutableParameterState.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"identity"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = WFDictionarySubstitutableParameterState;
  v10 = [(WFVariableSubstitutableParameterState *)&v16 initWithValue:v7];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identity, a4);
    v12 = v11;
  }

  return v11;
}

- (WFDictionarySubstitutableParameterState)initWithKeyValuePairs:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [(WFDictionarySubstitutableParameterState *)self initWithKeyValuePairs:v5 identity:v6];

  return v7;
}

+ (id)serializedRepresentationFromValue:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [a3 if_map:&__block_literal_global_64374];
  v9 = v3;
  v10[0] = @"WFSerializationType";
  v10[1] = @"Value";
  v11[0] = @"WFDictionaryFieldValue";
  v8 = @"WFDictionaryFieldValueItems";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = WFEnforceClass_1501(v9, v10);

  v12 = [v11 objectForKey:@"Value"];
  v13 = objc_opt_class();
  v14 = WFEnforceClass_1501(v12, v13);

  v15 = [v14 objectForKey:@"WFDictionaryFieldValueItems"];
  v16 = objc_opt_class();
  v17 = WFEnforceClass_1501(v15, v16);

  if (v17)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __104__WFDictionarySubstitutableParameterState_valueFromSerializedRepresentation_variableProvider_parameter___block_invoke;
    v20[3] = &unk_1E837DBB0;
    v21 = v7;
    v22 = v8;
    v18 = [v17 if_compactMap:v20];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

WFDictionaryParameterKeyValuePair *__104__WFDictionarySubstitutableParameterState_valueFromSerializedRepresentation_variableProvider_parameter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[WFDictionaryParameterKeyValuePair alloc] initWithSerializedRepresentation:v3 variableProvider:*(a1 + 32) parameter:*(a1 + 40)];

  return v4;
}

@end