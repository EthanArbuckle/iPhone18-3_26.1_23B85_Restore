@interface WFArrayParameterState
+ (void)processValues:(id)a3 context:(id)a4 processingClass:(Class)a5 userInputRequiredHandler:(id)a6 valueHandler:(id)a7 processSingleVariableStringsAsContentItems:(BOOL)a8;
- (BOOL)isEqual:(id)a3;
- (NSArray)containedVariables;
- (WFArrayParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFArrayParameterState)initWithValues:(id)a3;
- (WFArrayParameterState)initWithValues:(id)a3 identity:(id)a4;
- (WFPropertyListObject)serializedRepresentation;
- (unint64_t)hash;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFArrayParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = [(WFArrayParameterState *)self values];
  [v11 processValues:v12 context:v10 processingClass:objc_opt_class() userInputRequiredHandler:v9 valueHandler:v8 processSingleVariableStringsAsContentItems:0];
}

- (NSArray)containedVariables
{
  v2 = [(WFArrayParameterState *)self values];
  v3 = [v2 valueForKeyPath:@"@unionOfArrays.containedVariables"];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(WFArrayParameterState *)self values];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFArrayParameterState *)v4 values];
      v6 = [(WFArrayParameterState *)self values];
      v7 = [v5 isEqualToArray:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFPropertyListObject)serializedRepresentation
{
  v2 = [(WFArrayParameterState *)self values];
  v3 = [v2 if_map:&__block_literal_global_64017];

  return v3;
}

id __49__WFArrayParameterState_serializedRepresentation__block_invoke(uint64_t a1, void *a2)
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

- (WFArrayParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = WFEnforceClass_1501(v10, v11);

  if (v12)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __85__WFArrayParameterState_initWithSerializedRepresentation_variableProvider_parameter___block_invoke;
    v19 = &unk_1E837D9A0;
    v20 = v8;
    v21 = v9;
    v13 = [v12 if_compactMap:&v16];
    self = [(WFArrayParameterState *)self initWithValues:v13, v16, v17, v18, v19];

    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

WFPropertyListParameterValue *__85__WFArrayParameterState_initWithSerializedRepresentation_variableProvider_parameter___block_invoke(uint64_t a1, void *a2)
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

- (WFArrayParameterState)initWithValues:(id)a3 identity:(id)a4
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
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFArrayParameterState.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"values"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"WFArrayParameterState.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"identity"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFArrayParameterState;
  v10 = [(WFArrayParameterState *)&v17 init];
  if (v10)
  {
    v11 = [v7 copy];
    values = v10->_values;
    v10->_values = v11;

    objc_storeStrong(&v10->_identity, a4);
    v13 = v10;
  }

  return v10;
}

- (WFArrayParameterState)initWithValues:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [(WFArrayParameterState *)self initWithValues:v5 identity:v6];

  return v7;
}

+ (void)processValues:(id)a3 context:(id)a4 processingClass:(Class)a5 userInputRequiredHandler:(id)a6 valueHandler:(id)a7 processSingleVariableStringsAsContentItems:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__64125;
  v39[4] = __Block_byref_object_dispose__64126;
  v40 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __157__WFArrayParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler_processSingleVariableStringsAsContentItems___block_invoke;
  v32[3] = &unk_1E837DA38;
  v38 = a8;
  v19 = v14;
  v33 = v19;
  v34 = v17;
  v35 = v18;
  v36 = v41;
  v37 = v39;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __157__WFArrayParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler_processSingleVariableStringsAsContentItems___block_invoke_4;
  v24[3] = &unk_1E837DA60;
  v29 = v41;
  v20 = v15;
  v27 = v20;
  v30 = v39;
  v31 = a5;
  v21 = v35;
  v25 = v21;
  v22 = v16;
  v28 = v22;
  v23 = v34;
  v26 = v23;
  [v13 if_enumerateAsynchronouslyInSequence:v32 completionHandler:v24];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
}

void __157__WFArrayParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler_processSingleVariableStringsAsContentItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (*(a1 + 72) != 1)
  {
    goto LABEL_7;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v6;
  v11 = v8;
  v12 = v9;
  v13 = v7;
  if ([v10 valueType])
  {
LABEL_6:

LABEL_7:
    v19 = *(a1 + 32);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __157__WFArrayParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler_processSingleVariableStringsAsContentItems___block_invoke_2;
    v25[3] = &unk_1E837D9E8;
    v26 = v6;
    v27 = *(a1 + 48);
    v29 = *(a1 + 56);
    v28 = v7;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __157__WFArrayParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler_processSingleVariableStringsAsContentItems___block_invoke_3;
    v21[3] = &unk_1E837DA10;
    v24 = v28;
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    [v26 processWithContext:v19 userInputRequiredHandler:v25 valueHandler:v21];

    goto LABEL_8;
  }

  v14 = [v10 state];
  v15 = [v14 variableString];
  if (![v15 representsSingleContentVariable])
  {

    goto LABEL_6;
  }

  v20 = [v15 variables];
  v16 = [v20 firstObject];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __WFProcessStringValueVariableContent_block_invoke;
  v30[3] = &unk_1E837DAB0;
  v31 = v12;
  v32 = v13;
  v17 = v13;
  v18 = v12;
  [v16 getContentWithContext:v11 completionHandler:v30];

  [*(a1 + 48) addObject:v10];
LABEL_8:
}

void __157__WFArrayParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler_processSingleVariableStringsAsContentItems___block_invoke_4(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v2 = *(a1 + 48);
    v3 = *(*(*(a1 + 72) + 8) + 40);
    v7 = [objc_alloc(*(a1 + 80)) initWithValues:*(a1 + 32)];
    (*(v2 + 16))(v2, v3, v7);
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

void __157__WFArrayParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler_processSingleVariableStringsAsContentItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v6 = +[WFPropertyListParameterValue defaultStateForValueType:](WFPropertyListParameterValue, "defaultStateForValueType:", [*(a1 + 32) valueType]);
  }

  v11 = v6;
  v7 = -[WFPropertyListParameterValue initWithType:state:]([WFPropertyListParameterValue alloc], "initWithType:state:", [*(a1 + 32) valueType], v6);
  [*(a1 + 40) addObject:v7];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  (*(*(a1 + 48) + 16))();
}

void __157__WFArrayParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler_processSingleVariableStringsAsContentItems___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v3 = *(a1 + 40);
    v4 = [[WFPropertyListParameterValue alloc] initWithObject:v5];
    [v3 addObject:v4];
  }

  (*(*(a1 + 48) + 16))();
}

@end