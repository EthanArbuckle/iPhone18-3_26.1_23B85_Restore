@interface WFDictionaryParameterState
+ (void)processValues:(id)values context:(id)context processingClass:(Class)class userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
- (BOOL)isEqual:(id)equal;
- (NSArray)containedVariables;
- (WFDictionaryParameterState)initWithKeyValuePairs:(id)pairs;
- (WFDictionaryParameterState)initWithKeyValuePairs:(id)pairs identity:(id)identity;
- (WFDictionaryParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFPropertyListObject)serializedRepresentation;
- (unint64_t)hash;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFDictionaryParameterState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  valueHandlerCopy = valueHandler;
  handlerCopy = handler;
  contextCopy = context;
  v11 = objc_opt_class();
  keyValuePairs = [(WFDictionaryParameterState *)self keyValuePairs];
  [v11 processValues:keyValuePairs context:contextCopy processingClass:objc_opt_class() userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
}

- (NSArray)containedVariables
{
  keyValuePairs = [(WFDictionaryParameterState *)self keyValuePairs];
  v3 = [keyValuePairs valueForKeyPath:@"@unionOfArrays.containedVariables"];

  return v3;
}

- (unint64_t)hash
{
  keyValuePairs = [(WFDictionaryParameterState *)self keyValuePairs];
  v3 = [keyValuePairs hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      keyValuePairs = [(WFDictionaryParameterState *)equalCopy keyValuePairs];
      keyValuePairs2 = [(WFDictionaryParameterState *)self keyValuePairs];
      v7 = [keyValuePairs isEqualToArray:keyValuePairs2];
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
  v11[2] = *MEMORY[0x1E69E9840];
  keyValuePairs = [(WFDictionaryParameterState *)self keyValuePairs];
  v3 = [keyValuePairs if_map:&__block_literal_global_10380];

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

- (WFDictionaryParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  providerCopy = provider;
  parameterCopy = parameter;
  representationCopy = representation;
  v11 = objc_opt_class();
  v12 = WFEnforceClass_1501(representationCopy, v11);

  v13 = [v12 objectForKey:@"Value"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass_1501(v13, v14);

  v16 = [v15 objectForKey:@"WFDictionaryFieldValueItems"];
  v17 = objc_opt_class();
  v18 = WFEnforceClass_1501(v16, v17);

  if (v18)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __90__WFDictionaryParameterState_initWithSerializedRepresentation_variableProvider_parameter___block_invoke;
    v25 = &unk_1E837DBB0;
    v26 = providerCopy;
    v27 = parameterCopy;
    v19 = [v18 if_compactMap:&v22];
    self = [(WFDictionaryParameterState *)self initWithKeyValuePairs:v19, v22, v23, v24, v25];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

WFDictionaryParameterKeyValuePair *__90__WFDictionaryParameterState_initWithSerializedRepresentation_variableProvider_parameter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[WFDictionaryParameterKeyValuePair alloc] initWithSerializedRepresentation:v3 variableProvider:*(a1 + 32) parameter:*(a1 + 40)];

  return v4;
}

- (WFDictionaryParameterState)initWithKeyValuePairs:(id)pairs identity:(id)identity
{
  pairsCopy = pairs;
  identityCopy = identity;
  v9 = identityCopy;
  if (pairsCopy)
  {
    if (identityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDictionaryParameterState.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"keyValuePairs"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFDictionaryParameterState.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"identity"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFDictionaryParameterState;
  v10 = [(WFDictionaryParameterState *)&v17 init];
  if (v10)
  {
    v11 = [pairsCopy copy];
    keyValuePairs = v10->_keyValuePairs;
    v10->_keyValuePairs = v11;

    objc_storeStrong(&v10->_identity, identity);
    v13 = v10;
  }

  return v10;
}

- (WFDictionaryParameterState)initWithKeyValuePairs:(id)pairs
{
  v4 = MEMORY[0x1E696AFB0];
  pairsCopy = pairs;
  uUID = [v4 UUID];
  v7 = [(WFDictionaryParameterState *)self initWithKeyValuePairs:pairsCopy identity:uUID];

  return v7;
}

+ (void)processValues:(id)values context:(id)context processingClass:(Class)class userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  valuesCopy = values;
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__10462;
  v41[4] = __Block_byref_object_dispose__10463;
  v42 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __119__WFDictionaryParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler___block_invoke;
  v34[3] = &unk_1E83755F8;
  v35 = v14;
  v36 = v15;
  v37 = v16;
  v39 = v43;
  v40 = v41;
  v17 = contextCopy;
  v38 = v17;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __119__WFDictionaryParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler___block_invoke_4;
  v25[3] = &unk_1E8375620;
  v31 = v43;
  v18 = handlerCopy;
  v29 = v18;
  v32 = v41;
  v19 = valuesCopy;
  classCopy = class;
  v20 = v37;
  v26 = v20;
  v21 = v36;
  v27 = v21;
  v22 = v35;
  v28 = v22;
  v23 = valueHandlerCopy;
  v30 = v23;
  [v19 if_enumerateAsynchronouslyInSequence:v34 completionHandler:v25];

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);
}

void __119__WFDictionaryParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __119__WFDictionaryParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler___block_invoke_2;
  v17[3] = &unk_1E83755A8;
  v22 = v7;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = v6;
  v21 = *(a1 + 48);
  v23 = *(a1 + 64);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __119__WFDictionaryParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler___block_invoke_3;
  v12[3] = &unk_1E83755D0;
  v13 = v20;
  v8 = *(a1 + 56);
  v9 = *(a1 + 48);
  v16 = *(a1 + 64);
  v14 = v9;
  v15 = v22;
  v10 = v22;
  v11 = v20;
  [v11 getProcessedPair:v17 context:v8 userInputRequiredHandler:v12];
}

void __119__WFDictionaryParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v4 = *(a1 + 56);
    v5 = *(*(*(a1 + 80) + 8) + 40);
    v6 = [objc_alloc(*(a1 + 88)) initWithKeyValuePairs:*(a1 + 32)];
    (*(v4 + 16))(v4, v5, v6);
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E6996ED8]) initWithObjects:*(a1 + 40) forKeys:*(a1 + 48)];
    (*(*(a1 + 64) + 16))(*(a1 + 64), v6, v7);
  }
}

void __119__WFDictionaryParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v18 = a2;
  v9 = a3;
  v10 = a5;
  if (v18 && v9)
  {
    [*(a1 + 32) addObject:v18];
    [*(a1 + 40) addObject:v9];
    v11 = [[WFVariableString alloc] initWithString:v18];
    v12 = [[WFPropertyListParameterValue alloc] initWithObject:v9];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [*(a1 + 48) value];
    }

    v15 = v14;

    v16 = *(a1 + 56);
    v17 = [[WFDictionaryParameterKeyValuePair alloc] initWithKey:v11 value:v15];
    [v16 addObject:v17];

    if (a4 != -1)
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), a5);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __119__WFDictionaryParameterState_Convenience__processValues_context_processingClass_userInputRequiredHandler_valueHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v19 = a4;
  v8 = a2;
  v9 = [[WFVariableString alloc] initWithString:v8];

  if (!v19)
  {
    v10 = [*(a1 + 32) value];
    v19 = +[WFPropertyListParameterValue defaultStateForValueType:](WFPropertyListParameterValue, "defaultStateForValueType:", [v10 valueType]);
  }

  v11 = [WFPropertyListParameterValue alloc];
  v12 = [*(a1 + 32) value];
  v13 = -[WFPropertyListParameterValue initWithType:state:](v11, "initWithType:state:", [v12 valueType], v19);

  v14 = *(a1 + 40);
  v15 = [[WFDictionaryParameterKeyValuePair alloc] initWithKey:v9 value:v13];
  [v14 addObject:v15];

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v7;
  v18 = v7;

  (*(*(a1 + 48) + 16))();
}

@end