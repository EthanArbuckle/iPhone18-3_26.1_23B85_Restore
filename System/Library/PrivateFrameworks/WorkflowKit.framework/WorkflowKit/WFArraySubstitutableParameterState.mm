@interface WFArraySubstitutableParameterState
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFArraySubstitutableParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFArraySubstitutableParameterState)initWithValues:(id)a3;
- (WFArraySubstitutableParameterState)initWithValues:(id)a3 identity:(id)a4;
- (id)containedVariables;
- (void)getObjectRepresentationOfVariableWithContext:(id)a3 processingValueClass:(Class)a4 valueHandler:(id)a5;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFArraySubstitutableParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v11)
  {
    v14.receiver = self;
    v14.super_class = WFArraySubstitutableParameterState;
    [(WFVariableSubstitutableParameterState *)&v14 processWithContext:v8 userInputRequiredHandler:v9 valueHandler:v10];
  }

  else
  {
    v12 = objc_opt_class();
    v13 = [(WFVariableSubstitutableParameterState *)self value];
    [v12 processValues:v13 context:v8 processingClass:objc_opt_class() userInputRequiredHandler:v9 valueHandler:v10 processSingleVariableStringsAsContentItems:0];
  }
}

- (void)getObjectRepresentationOfVariableWithContext:(id)a3 processingValueClass:(Class)a4 valueHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(WFVariableSubstitutableParameterState *)self variable];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __117__WFArraySubstitutableParameterState_getObjectRepresentationOfVariableWithContext_processingValueClass_valueHandler___block_invoke;
  v11[3] = &unk_1E837DC20;
  v12 = v7;
  v10 = v7;
  [v9 getContentWithContext:v8 completionHandler:v11];
}

void __117__WFArraySubstitutableParameterState_getObjectRepresentationOfVariableWithContext_processingValueClass_valueHandler___block_invoke(uint64_t a1, void *a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __117__WFArraySubstitutableParameterState_getObjectRepresentationOfVariableWithContext_processingValueClass_valueHandler___block_invoke_2;
  v6[3] = &unk_1E837DBF8;
  v7 = *(a1 + 32);
  [v3 generateCollectionByCoercingToItemClasses:v4 completionHandler:v6];

  v5 = *MEMORY[0x1E69E9840];
}

void __117__WFArraySubstitutableParameterState_getObjectRepresentationOfVariableWithContext_processingValueClass_valueHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a2 items];
  v8 = [v7 if_compactMap:&__block_literal_global_194];

  (*(*(a1 + 32) + 16))();
}

id __117__WFArraySubstitutableParameterState_getObjectRepresentationOfVariableWithContext_processingValueClass_valueHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 string];
LABEL_8:
    v4 = v3;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 dictionary];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [v2 number];
    goto LABEL_8;
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (id)containedVariables
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v9.receiver = self;
  v9.super_class = WFArraySubstitutableParameterState;
  v4 = [(WFVariableSubstitutableParameterState *)&v9 containedVariables];
  v5 = [v3 initWithArray:v4];

  v6 = [(WFArraySubstitutableParameterState *)self values];
  v7 = [v6 valueForKeyPath:@"@unionOfArrays.containedVariables"];
  [v5 addObjectsFromArray:v7];

  return v5;
}

- (WFArraySubstitutableParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
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
      v12 = [v11 values];
      self = [(WFArraySubstitutableParameterState *)self initWithValues:v12];
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

  if (self)
  {
    v16 = [MEMORY[0x1E696AFB0] UUID];
    identity = self->_identity;
    self->_identity = v16;

    v18 = self;
  }

  return self;
}

- (WFArraySubstitutableParameterState)initWithValues:(id)a3 identity:(id)a4
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
    [v14 handleFailureInMethod:a2 object:self file:@"WFArraySubstitutableParameterState.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"values"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"WFArraySubstitutableParameterState.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"identity"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = WFArraySubstitutableParameterState;
  v10 = [(WFVariableSubstitutableParameterState *)&v16 initWithValue:v7];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identity, a4);
    v12 = v11;
  }

  return v11;
}

- (WFArraySubstitutableParameterState)initWithValues:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [(WFArraySubstitutableParameterState *)self initWithValues:v5 identity:v6];

  return v7;
}

id __72__WFArraySubstitutableParameterState_serializedRepresentationFromValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (![v2 valueType] || objc_msgSend(v2, "valueType") == 6)
  {
    v3 = [v2 state];
    if ([v3 shouldSerializeAsPlainString])
    {
      v4 = [v3 variableString];
      v5 = [v4 stringByRemovingVariables];

      goto LABEL_7;
    }
  }

  v5 = [v2 serializedRepresentation];
LABEL_7:

  return v5;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_class();
  v11 = v7;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __99__WFArraySubstitutableParameterState_valueFromSerializedRepresentation_variableProvider_parameter___block_invoke;
      v17[3] = &unk_1E837D9A0;
      v18 = v8;
      v19 = v9;
      v12 = [v11 if_compactMap:v17];

      v13 = v18;
    }

    else
    {
      v13 = getWFGeneralLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v21 = "WFEnforceClass";
        v22 = 2114;
        v23 = v11;
        v24 = 2114;
        v25 = objc_opt_class();
        v26 = 2114;
        v27 = v10;
        v14 = v25;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

WFPropertyListParameterValue *__99__WFArraySubstitutableParameterState_valueFromSerializedRepresentation_variableProvider_parameter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[WFPropertyListParameterValue alloc] initWithString:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[WFPropertyListParameterValue alloc] initWithSerializedRepresentation:v3 variableProvider:*(a1 + 32) parameter:*(a1 + 40)];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end