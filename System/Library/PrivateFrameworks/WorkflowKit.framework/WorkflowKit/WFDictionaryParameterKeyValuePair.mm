@interface WFDictionaryParameterKeyValuePair
- (BOOL)isEqual:(id)a3;
- (WFDictionaryParameterKeyValuePair)initWithKey:(id)a3 value:(id)a4;
- (WFDictionaryParameterKeyValuePair)initWithKey:(id)a3 value:(id)a4 identity:(id)a5;
- (WFDictionaryParameterKeyValuePair)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFPropertyListObject)serializedRepresentation;
- (id)containedVariables;
- (void)getProcessedPair:(id)a3 context:(id)a4 userInputRequiredHandler:(id)a5;
@end

@implementation WFDictionaryParameterKeyValuePair

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[WFDictionaryParameterKeyValuePair key](v4, "key"), v5 = objc_claimAutoreleasedReturnValue(), -[WFDictionaryParameterKeyValuePair key](self, "key"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqual:v6], v6, v5, v7))
    {
      v8 = [(WFDictionaryParameterKeyValuePair *)v4 value];
      v9 = [(WFDictionaryParameterKeyValuePair *)self value];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (WFPropertyListObject)serializedRepresentation
{
  v3 = objc_opt_new();
  v4 = [(WFDictionaryParameterKeyValuePair *)self key];
  v5 = WFSerializedVariableObject(v4);
  [v3 setObject:v5 forKey:@"WFKey"];

  v6 = [(WFDictionaryParameterKeyValuePair *)self value];
  v7 = [v6 serializedRepresentation];
  [v3 addEntriesFromDictionary:v7];

  return v3;
}

- (WFDictionaryParameterKeyValuePair)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKey:@"WFKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = WFDeserializedVariableObject(v11, v9, v10);
LABEL_5:
    v13 = v12;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [[WFVariableString alloc] initWithString:v11];
    goto LABEL_5;
  }

  v13 = 0;
LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [[WFPropertyListParameterValue alloc] initWithSerializedRepresentation:v8 variableProvider:v9 parameter:v10];
    self = [(WFDictionaryParameterKeyValuePair *)self initWithKey:v13 value:v14];

    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)containedVariables
{
  v3 = objc_opt_new();
  v4 = [(WFDictionaryParameterKeyValuePair *)self key];
  v5 = [v4 variables];
  [v3 addObjectsFromArray:v5];

  v6 = [(WFDictionaryParameterKeyValuePair *)self value];
  v7 = [v6 containedVariables];
  [v3 addObjectsFromArray:v7];

  return v3;
}

- (void)getProcessedPair:(id)a3 context:(id)a4 userInputRequiredHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFDictionaryParameterKeyValuePair *)self key];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__WFDictionaryParameterKeyValuePair_getProcessedPair_context_userInputRequiredHandler___block_invoke;
  v15[3] = &unk_1E8376D08;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  [v11 processWithContext:v14 completionHandler:v15];
}

void __87__WFDictionaryParameterKeyValuePair_getProcessedPair_context_userInputRequiredHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) value];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __87__WFDictionaryParameterKeyValuePair_getProcessedPair_context_userInputRequiredHandler___block_invoke_2;
  v23[3] = &unk_1E8375558;
  v13 = *(a1 + 40);
  v26 = *(a1 + 48);
  v24 = v9;
  v25 = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__WFDictionaryParameterKeyValuePair_getProcessedPair_context_userInputRequiredHandler___block_invoke_3;
  v17[3] = &unk_1E8375580;
  v21 = *(a1 + 56);
  v22 = a3;
  v18 = v24;
  v19 = v25;
  v20 = v11;
  v14 = v11;
  v15 = v25;
  v16 = v24;
  [v12 processWithContext:v13 userInputRequiredHandler:v23 valueHandler:v17];
}

uint64_t __87__WFDictionaryParameterKeyValuePair_getProcessedPair_context_userInputRequiredHandler___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[5])
  {
    a2 = a1[5];
  }

  return (*(a1[6] + 16))(a1[6], a1[4], a2, a3);
}

uint64_t __87__WFDictionaryParameterKeyValuePair_getProcessedPair_context_userInputRequiredHandler___block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[6])
  {
    a3 = a1[6];
  }

  return (*(a1[7] + 16))(a1[7], a1[4], a2, a1[8], a1[5], a3);
}

- (WFDictionaryParameterKeyValuePair)initWithKey:(id)a3 value:(id)a4 identity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFDictionaryParameterState.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"[key isKindOfClass:[WFVariableString class]]"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"WFDictionaryParameterState.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFPropertyListParameterValue class]]"}];
  }

  v21.receiver = self;
  v21.super_class = WFDictionaryParameterKeyValuePair;
  v12 = [(WFDictionaryParameterKeyValuePair *)&v21 init];
  if (v12)
  {
    v13 = [v9 copy];
    key = v12->_key;
    v12->_key = v13;

    v15 = [v10 copy];
    value = v12->_value;
    v12->_value = v15;

    objc_storeStrong(&v12->_identity, a5);
    v17 = v12;
  }

  return v12;
}

- (WFDictionaryParameterKeyValuePair)initWithKey:(id)a3 value:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [(WFDictionaryParameterKeyValuePair *)self initWithKey:v8 value:v7 identity:v9];

  return v10;
}

@end