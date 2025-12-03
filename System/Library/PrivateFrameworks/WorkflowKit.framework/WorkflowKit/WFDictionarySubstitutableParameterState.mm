@interface WFDictionarySubstitutableParameterState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFDictionarySubstitutableParameterState)initWithKeyValuePairs:(id)pairs;
- (WFDictionarySubstitutableParameterState)initWithKeyValuePairs:(id)pairs identity:(id)identity;
- (WFDictionarySubstitutableParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (id)containedVariables;
- (void)getObjectRepresentationOfVariableWithContext:(id)context processingValueClass:(Class)class valueHandler:(id)handler;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFDictionarySubstitutableParameterState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    v14.receiver = self;
    v14.super_class = WFDictionarySubstitutableParameterState;
    [(WFVariableSubstitutableParameterState *)&v14 processWithContext:contextCopy userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
  }

  else
  {
    v12 = objc_opt_class();
    value = [(WFVariableSubstitutableParameterState *)self value];
    [v12 processValues:value context:contextCopy processingClass:objc_opt_class() userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
  }
}

- (void)getObjectRepresentationOfVariableWithContext:(id)context processingValueClass:(Class)class valueHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  variable = [(WFVariableSubstitutableParameterState *)self variable];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __122__WFDictionarySubstitutableParameterState_getObjectRepresentationOfVariableWithContext_processingValueClass_valueHandler___block_invoke;
  v11[3] = &unk_1E837DC20;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [variable getContentWithContext:contextCopy completionHandler:v11];
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
  containedVariables = [(WFVariableSubstitutableParameterState *)&v9 containedVariables];
  v5 = [v3 initWithArray:containedVariables];

  keyValuePairs = [(WFDictionarySubstitutableParameterState *)self keyValuePairs];
  v7 = [keyValuePairs valueForKeyPath:@"@unionOfArrays.containedVariables"];
  [v5 addObjectsFromArray:v7];

  return v5;
}

- (WFDictionarySubstitutableParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = WFDeserializedVariableObject(representationCopy, providerCopy, parameterCopy);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      keyValuePairs = [v11 keyValuePairs];
      self = [(WFDictionarySubstitutableParameterState *)self initWithKeyValuePairs:keyValuePairs];
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
        stringsAndVariables = [v11 stringsAndVariables];
        firstObject = [stringsAndVariables firstObject];
        self = [(WFVariableSubstitutableParameterState *)self initWithVariable:firstObject];
      }
    }
  }

  v15 = [objc_opt_class() valueFromSerializedRepresentation:representationCopy variableProvider:providerCopy parameter:parameterCopy];
  if (v15)
  {
    self = [(WFVariableSubstitutableParameterState *)self initWithValue:v15];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  identity = self->_identity;
  self->_identity = uUID;

  return self;
}

- (WFDictionarySubstitutableParameterState)initWithKeyValuePairs:(id)pairs identity:(id)identity
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDictionarySubstitutableParameterState.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"keyValuePairs"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFDictionarySubstitutableParameterState.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"identity"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = WFDictionarySubstitutableParameterState;
  v10 = [(WFVariableSubstitutableParameterState *)&v16 initWithValue:pairsCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identity, identity);
    v12 = v11;
  }

  return v11;
}

- (WFDictionarySubstitutableParameterState)initWithKeyValuePairs:(id)pairs
{
  v4 = MEMORY[0x1E696AFB0];
  pairsCopy = pairs;
  uUID = [v4 UUID];
  v7 = [(WFDictionarySubstitutableParameterState *)self initWithKeyValuePairs:pairsCopy identity:uUID];

  return v7;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [value if_map:&__block_literal_global_64374];
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

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  providerCopy = provider;
  parameterCopy = parameter;
  representationCopy = representation;
  v10 = objc_opt_class();
  v11 = WFEnforceClass_1501(representationCopy, v10);

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
    v21 = providerCopy;
    v22 = parameterCopy;
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