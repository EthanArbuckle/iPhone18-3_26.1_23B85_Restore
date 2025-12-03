@interface WFContactSubstitutableState
+ (id)processingValueClasses;
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFContactSubstitutableState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFContactSubstitutableState)initWithValue:(id)value;
- (id)processedEntriesFromCoercionResult:(id)result allowsCustomHandles:(BOOL)handles;
- (id)serializedRepresentation;
- (id)valueItemClasses;
- (void)processContentCollection:(id)collection context:(id)context valueHandler:(id)handler;
- (void)processIntoEntriesWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFContactSubstitutableState

- (id)valueItemClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)processContentCollection:(id)collection context:(id)context valueHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  collectionCopy = collection;
  valueItemClasses = [(WFContactSubstitutableState *)self valueItemClasses];
  if ([(WFContactSubstitutableState *)self reinterpretsStringsAsContactHandlesFromVariable:1])
  {
    v12 = [valueItemClasses arrayByAddingObject:objc_opt_class()];

    valueItemClasses = v12;
  }

  v13 = MEMORY[0x1E6996CF0];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __77__WFContactSubstitutableState_processContentCollection_context_valueHandler___block_invoke;
  v24 = &unk_1E837FF18;
  v26 = contextCopy;
  v27 = handlerCopy;
  selfCopy = self;
  v14 = contextCopy;
  v15 = handlerCopy;
  v16 = [v13 requestForCoercingToContentClasses:valueItemClasses completionHandler:&v21];
  v17 = MEMORY[0x1E6996CE8];
  v28 = *MEMORY[0x1E6997000];
  v29[0] = MEMORY[0x1E695E118];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:{1, v21, v22, v23, v24, selfCopy}];
  v19 = [v17 optionsWithDictionary:v18];
  [v16 setOptions:v19];

  [collectionCopy performCoercion:v16];
  v20 = *MEMORY[0x1E69E9840];
}

void __77__WFContactSubstitutableState_processContentCollection_context_valueHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21 = a2;
  v6 = a4;
  if (![v21 numberOfItems])
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_13;
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) parameter];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 allowsCustomHandles];
  v12 = [v7 processedEntriesFromCoercionResult:v21 allowsCustomHandles:v11];
  v13 = [*(a1 + 40) parameter];
  if (![v13 isRangedSizeArray])
  {
    goto LABEL_11;
  }

  v14 = [v12 count];
  v15 = [*(a1 + 40) maximumItemCount];

  if (v14 > v15)
  {
    v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(*(a1 + 40), "maximumItemCount")}];
    v16 = [v12 objectsAtIndexes:v13];

    v12 = v16;
LABEL_11:
  }

  v17 = objc_alloc(MEMORY[0x1E6996F20]);
  v18 = [v21 attributionSet];
  v19 = [*(a1 + 32) communicationMethod];
  v20 = [v17 initWithEntries:v12 attributionSet:v18 communicationMethod:v19];

  (*(*(a1 + 48) + 16))();
LABEL_13:
}

- (id)processedEntriesFromCoercionResult:(id)result allowsCustomHandles:(BOOL)handles
{
  items = [result items];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__WFContactSubstitutableState_processedEntriesFromCoercionResult_allowsCustomHandles___block_invoke;
  v9[3] = &unk_1E837FCD0;
  v9[4] = self;
  handlesCopy = handles;
  v7 = [items if_map:v9];

  return v7;
}

id __86__WFContactSubstitutableState_processedEntriesFromCoercionResult_allowsCustomHandles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [v3 string];
    v6 = [v4 stringInterpretedAsContactHandle:v5 allowsCustomHandles:*(a1 + 40)];
LABEL_9:
    v10 = v6;

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc(MEMORY[0x1E6996D10]);
    v5 = [v3 emailAddress];
    v6 = [v7 initWithEmailAddress:v5];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc(MEMORY[0x1E6996D10]);
    v5 = [v3 phoneNumber];
    v6 = [v8 initWithPhoneNumber:v5];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_alloc(MEMORY[0x1E6996D10]);
    v5 = [v3 contact];
    v6 = [v9 initWithContact:v5];
    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (void)processIntoEntriesWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self variable];
    if (variable2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      prompt = [variable2 prompt];
      handlerCopy[2](handlerCopy, prompt, 0);
    }

    else
    {

      variable3 = [(WFVariableSubstitutableParameterState *)self variable];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __99__WFContactSubstitutableState_processIntoEntriesWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v22[3] = &unk_1E837FF40;
      v24 = valueHandlerCopy;
      v22[4] = self;
      v23 = contextCopy;
      [variable3 getContentWithContext:v23 completionHandler:v22];

      variable2 = v24;
    }
  }

  else
  {
    value = [(WFVariableSubstitutableParameterState *)self value];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __99__WFContactSubstitutableState_processIntoEntriesWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
    v20[3] = &unk_1E837FCA8;
    v20[4] = self;
    v21 = contextCopy;
    v16 = [value if_map:v20];

    v17 = objc_alloc(MEMORY[0x1E6996F20]);
    communicationMethod = [(WFContactSubstitutableState *)self communicationMethod];
    v19 = [v17 initWithEntries:v16 attributionSet:0 communicationMethod:communicationMethod];

    (*(valueHandlerCopy + 2))(valueHandlerCopy, v19, 0);
  }
}

void __99__WFContactSubstitutableState_processIntoEntriesWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 numberOfItems])
  {
    [*(a1 + 32) processContentCollection:v6 context:*(a1 + 40) valueHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

id __99__WFContactSubstitutableState_processIntoEntriesWithContext_userInputRequiredHandler_valueHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 parameterState];
  if ([*(a1 + 32) reinterpretsStringsAsContactHandlesFromVariable:0] && objc_msgSend(v3, "type") == 3)
  {
    v4 = *(a1 + 32);
    v5 = [v3 customHandle];
    v6 = [*(a1 + 40) parameter];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    v10 = [v9 allowsCustomHandles];
    v8 = [v4 stringInterpretedAsContactHandle:v5 allowsCustomHandles:v10];
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  valueHandlerCopy = valueHandler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__WFContactSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
  v12[3] = &unk_1E837FC80;
  v13 = contextCopy;
  v14 = valueHandlerCopy;
  v10 = valueHandlerCopy;
  v11 = contextCopy;
  [(WFContactSubstitutableState *)self processIntoEntriesWithContext:v11 userInputRequiredHandler:handler valueHandler:v12];
}

void __88__WFContactSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 isInputParameter];
  v8 = *(a1 + 40);
  if (v7)
  {
    v9 = [v6 contentCollection];

    v6 = v9;
  }

  (*(v8 + 16))(v8, v6, v10);
}

- (WFContactSubstitutableState)initWithValue:(id)value
{
  v4 = [value if_compactMap:&__block_literal_global_189_74968];
  v7.receiver = self;
  v7.super_class = WFContactSubstitutableState;
  v5 = [(WFMultipleValueParameterState *)&v7 initWithValue:v4];

  return v5;
}

WFMultipleValueParameterStateEntry *__45__WFContactSubstitutableState_initWithValue___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 parameterState];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v3 type]|| ([v3 contact], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) == 0))
    {
      v18 = v2;
    }

    else
    {
      v6 = [v3 contact];
      v7 = objc_opt_class();
      v8 = WFEnforceClass_74974(v6, v7);

      v9 = [v8 contactIdentifier];

      if (v9)
      {
        v10 = [v3 contact];
        v11 = [v10 wfSerializedRepresentation];

        v12 = [MEMORY[0x1E6996D00] objectWithWFSerializedRepresentation:v11];
        v13 = objc_opt_class();
        v14 = WFEnforceClass_74974(v12, v13);

        if (v14)
        {
          v15 = [WFMultipleValueParameterStateEntry alloc];
          v16 = [v2 identity];
          v17 = [objc_alloc(MEMORY[0x1E6996D10]) initWithContact:v14];
          v18 = [(WFMultipleValueParameterStateEntry *)v15 initWithIdentity:v16 parameterState:v17];
        }

        else
        {
          v18 = v2;
        }
      }

      else
      {
        v18 = v2;
      }
    }
  }

  else
  {

    v3 = getWFGeneralLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v19 = [v2 parameterState];
      v22 = 136315394;
      v23 = "[WFContactSubstitutableState initWithValue:]_block_invoke";
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s [WFContactSubstitutableState] Could not cast parameter state to WFContactFieldEntry: %@", &v22, 0x16u);
    }

    v18 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)serializedRepresentation
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = WFContactSubstitutableState;
  serializedRepresentation = [(WFVariableSubstitutableParameterState *)&v16 serializedRepresentation];
  if (serializedRepresentation)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = serializedRepresentation;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 objectForKeyedSubscript:@"Value"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    communicationMethod = [(WFContactSubstitutableState *)self communicationMethod];

    if (communicationMethod)
    {
      v8 = [v5 mutableCopy];
      v17 = @"WFCommunicationMethodValue";
      communicationMethod2 = [(WFContactSubstitutableState *)self communicationMethod];
      serializedRepresentation2 = [communicationMethod2 serializedRepresentation];
      v18[0] = serializedRepresentation2;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v12 = [v6 if_dictionaryByAddingEntriesFromDictionary:v11];
      [v8 setObject:v12 forKeyedSubscript:@"Value"];

      v13 = [v8 copy];
      goto LABEL_12;
    }
  }

  else
  {

    v6 = 0;
  }

  v13 = serializedRepresentation;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (WFContactSubstitutableState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  v19.receiver = self;
  v19.super_class = WFContactSubstitutableState;
  v9 = [(WFVariableSubstitutableParameterState *)&v19 initWithSerializedRepresentation:representationCopy variableProvider:provider parameter:parameter];
  if (v9)
  {
    v10 = representationCopy;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 objectForKeyedSubscript:@"Value"];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        v14 = [v13 objectForKeyedSubscript:@"WFCommunicationMethodValue"];

        if (v14)
        {
          v15 = [objc_alloc(MEMORY[0x1E6996CF8]) initWithSerializedRepresentation:v14];
          communicationMethod = v9->_communicationMethod;
          v9->_communicationMethod = v15;
        }
      }
    }

    v17 = v9;
  }

  return v9;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [value if_compactMap:&__block_literal_global_74989];
  v9 = v3;
  v10[0] = @"WFSerializationType";
  v10[1] = @"Value";
  v11[0] = @"WFContactFieldValue";
  v8 = @"WFContactFieldValues";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __65__WFContactSubstitutableState_serializedRepresentationFromValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 parameterState];
  v3 = [v2 serializedRepresentation];

  return v3;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  providerCopy = provider;
  parameterCopy = parameter;
  representationCopy = representation;
  v11 = objc_opt_class();
  v12 = WFEnforceClass_74974(representationCopy, v11);

  if (v12)
  {
    v13 = [v12 objectForKeyedSubscript:@"Value"];
    v14 = objc_opt_class();
    v15 = WFEnforceClass_74974(v13, v14);

    if (v15)
    {
      v16 = [v15 objectForKey:@"WFContactFieldValues"];
      v17 = objc_opt_class();
      v18 = WFEnforceClass_74974(v16, v17);

      if (v18)
      {
        v21.receiver = self;
        v21.super_class = &OBJC_METACLASS___WFContactSubstitutableState;
        v19 = objc_msgSendSuper2(&v21, sel_valueFromSerializedRepresentation_variableProvider_parameter_, v18, providerCopy, parameterCopy);
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)processingValueClasses
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end