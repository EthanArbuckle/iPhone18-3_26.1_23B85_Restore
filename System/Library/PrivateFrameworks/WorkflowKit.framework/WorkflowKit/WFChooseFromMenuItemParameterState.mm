@interface WFChooseFromMenuItemParameterState
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldSerializeAsPlainString;
- (WFChooseFromMenuItemParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFChooseFromMenuItemParameterState)initWithVariableString:(id)string userInputInsertionIndex:(int64_t)index;
- (WFChooseFromMenuItemParameterState)initWithVariableString:(id)string userInputInsertionIndex:(int64_t)index synonyms:(id)synonyms subtitle:(id)subtitle;
- (id)containedVariables;
- (id)rewrittenWithStrings:(id)strings;
- (id)serializedRepresentation;
- (id)userVisibleStringsForUseCase:(unint64_t)case;
- (unint64_t)hash;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFChooseFromMenuItemParameterState

- (id)userVisibleStringsForUseCase:(unint64_t)case
{
  selfCopy = self;
  sub_1CA5540DC(case);

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v5 = sub_1CA94C8E8();

  return v5;
}

- (id)rewrittenWithStrings:(id)strings
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  sub_1CA94C1C8();
  selfCopy = self;
  sub_1CA554258();
  v6 = v5;

  return v6;
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variableString = [(WFVariableStringParameterState *)self variableString];

  if (variableString)
  {
    variableString2 = [(WFVariableStringParameterState *)self variableString];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __95__WFChooseFromMenuItemParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
    v13[3] = &unk_1E8376D08;
    v15 = handlerCopy;
    v13[4] = self;
    v16 = valueHandlerCopy;
    v14 = contextCopy;
    [variableString2 processWithContext:v14 completionHandler:v13];
  }

  else
  {
    (*(valueHandlerCopy + 2))(valueHandlerCopy, 0, 0);
  }
}

void __95__WFChooseFromMenuItemParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(id *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = [a1[4] subtitle];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__WFChooseFromMenuItemParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
    v23[3] = &unk_1E8376CE0;
    v13 = a1[5];
    v14 = a1[6];
    v15 = a1[4];
    v26 = v14;
    v23[4] = v15;
    v24 = v9;
    v27 = a1[7];
    v25 = a1[5];
    [v12 processWithContext:v13 completionHandler:v23];
  }

  else if (a3 == -1)
  {
    (*(a1[7] + 2))();
  }

  else
  {
    v16 = a1[6];
    v17 = a1[4];
    v18 = objc_alloc(objc_opt_class());
    v19 = [[WFVariableString alloc] initWithString:0];
    v20 = [a1[4] synonyms];
    v21 = [a1[4] subtitle];
    v22 = [v18 initWithVariableString:v19 userInputInsertionIndex:a3 synonyms:v20 subtitle:v21];
    v16[2](v16, v10, v22);
  }
}

void __95__WFChooseFromMenuItemParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = [*(a1 + 32) synonyms];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __95__WFChooseFromMenuItemParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3;
    v24[3] = &unk_1E8376CB8;
    v25 = *(a1 + 48);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __95__WFChooseFromMenuItemParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_5;
    v20[3] = &unk_1E837E9D0;
    v21 = *(a1 + 40);
    v22 = v9;
    v23 = *(a1 + 64);
    [v12 if_mapAsynchronously:v24 completionHandler:v20];
  }

  else if (a3 == -1)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 32);
    v15 = objc_alloc(objc_opt_class());
    v16 = [[WFVariableString alloc] initWithString:*(a1 + 40)];
    v17 = [*(a1 + 32) synonyms];
    v18 = [[WFVariableString alloc] initWithString:0];
    v19 = [v15 initWithVariableString:v16 userInputInsertionIndex:a3 synonyms:v17 subtitle:v18];
    (*(v13 + 16))(v13, v10, v19);
  }
}

void __95__WFChooseFromMenuItemParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a2 synonym];
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__WFChooseFromMenuItemParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_4;
  v10[3] = &unk_1E8376DD8;
  v11 = v6;
  v9 = v6;
  [v7 processWithContext:v8 completionHandler:v10];
}

void __95__WFChooseFromMenuItemParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_5(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[WFChooseFromMenuItem alloc] initWithString:a1[4] synonyms:v6 subtitle:a1[5]];

  (*(a1[6] + 16))();
}

- (id)containedVariables
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  variableString = [(WFVariableStringParameterState *)self variableString];
  variables = [variableString variables];
  [v3 addObjectsFromArray:variables];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  synonyms = [(WFChooseFromMenuItemParameterState *)self synonyms];
  v7 = [synonyms countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(synonyms);
        }

        synonym = [*(*(&v17 + 1) + 8 * i) synonym];
        variables2 = [synonym variables];
        [v3 addObjectsFromArray:variables2];
      }

      v8 = [synonyms countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  subtitle = [(WFChooseFromMenuItemParameterState *)self subtitle];
  variables3 = [subtitle variables];
  [v3 addObjectsFromArray:variables3];

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  variableString = [(WFVariableStringParameterState *)self variableString];
  v4 = [variableString hash];
  synonyms = [(WFChooseFromMenuItemParameterState *)self synonyms];
  v6 = [synonyms hash];
  subtitle = [(WFChooseFromMenuItemParameterState *)self subtitle];
  v8 = v4 ^ v6;
  v9 = [subtitle hash] ^ 0x5068BE73;

  return v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      variableString = [(WFVariableStringParameterState *)equalCopy variableString];
      variableString2 = [(WFVariableStringParameterState *)self variableString];
      if ([variableString isEqual:variableString2])
      {
        synonyms = [(WFChooseFromMenuItemParameterState *)equalCopy synonyms];
        synonyms2 = [(WFChooseFromMenuItemParameterState *)self synonyms];
        if ([synonyms isEqual:synonyms2])
        {
          subtitle = [(WFChooseFromMenuItemParameterState *)equalCopy subtitle];
          subtitle2 = [(WFChooseFromMenuItemParameterState *)self subtitle];
          v11 = [subtitle isEqual:subtitle2];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)shouldSerializeAsPlainString
{
  v7.receiver = self;
  v7.super_class = WFChooseFromMenuItemParameterState;
  if (![(WFVariableStringParameterState *)&v7 shouldSerializeAsPlainString])
  {
    return 0;
  }

  synonyms = [(WFChooseFromMenuItemParameterState *)self synonyms];
  if ([synonyms count])
  {
    isEmpty = 0;
  }

  else
  {
    subtitle = [(WFChooseFromMenuItemParameterState *)self subtitle];
    isEmpty = [subtitle isEmpty];
  }

  return isEmpty;
}

- (id)serializedRepresentation
{
  variableString = [(WFVariableStringParameterState *)self variableString];
  v4 = WFSerializedVariableObject(variableString);
  v5 = [v4 mutableCopy];

  synonyms = [(WFChooseFromMenuItemParameterState *)self synonyms];
  v7 = [synonyms count];

  if (v7)
  {
    synonyms2 = [(WFChooseFromMenuItemParameterState *)self synonyms];
    v9 = [synonyms2 if_map:&__block_literal_global_22580];
    [v5 setObject:v9 forKeyedSubscript:@"Synonyms"];
  }

  subtitle = [(WFChooseFromMenuItemParameterState *)self subtitle];
  isEmpty = [subtitle isEmpty];

  if ((isEmpty & 1) == 0)
  {
    subtitle2 = [(WFChooseFromMenuItemParameterState *)self subtitle];
    serializedRepresentation = [subtitle2 serializedRepresentation];
    [v5 setObject:serializedRepresentation forKeyedSubscript:@"Subtitle"];
  }

  return v5;
}

id __62__WFChooseFromMenuItemParameterState_serializedRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 synonym];
  v3 = [v2 serializedRepresentation];

  return v3;
}

- (WFChooseFromMenuItemParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = representationCopy;
      v13 = WFDeserializedVariableObject(v11, providerCopy, parameterCopy);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [(WFVariableString *)v11 objectForKeyedSubscript:@"Synonyms"];
        v15 = objc_opt_class();
        v16 = WFEnforceClass_1501(v14, v15);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = MEMORY[0x1E69E9820];
          v24 = 3221225472;
          v25 = __98__WFChooseFromMenuItemParameterState_initWithSerializedRepresentation_variableProvider_parameter___block_invoke;
          v26 = &unk_1E8376C70;
          v27 = providerCopy;
          v28 = parameterCopy;
          v17 = [v16 if_map:&v23];
        }

        else
        {
          v17 = MEMORY[0x1E695E0F0];
        }

        v19 = [(WFVariableString *)v11 objectForKeyedSubscript:@"Subtitle", v23, v24, v25, v26];
        v20 = objc_opt_class();
        v21 = WFEnforceClass_1501(v19, v20);

        if (!v21 || (v22 = [[WFVariableString alloc] initWithSerializedRepresentation:v21 variableProvider:providerCopy parameter:parameterCopy]) == 0)
        {
          v22 = objc_alloc_init(WFVariableString);
        }

        self = [(WFChooseFromMenuItemParameterState *)self initWithVariableString:v13 synonyms:v17 subtitle:v22];

        goto LABEL_3;
      }
    }

    selfCopy = 0;
    goto LABEL_10;
  }

  v11 = [[WFVariableString alloc] initWithString:representationCopy];
  self = [(WFVariableStringParameterState *)self initWithVariableString:v11];
LABEL_3:

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

WFChooseFromMenuItemSynonym *__98__WFChooseFromMenuItemParameterState_initWithSerializedRepresentation_variableProvider_parameter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[WFVariableString alloc] initWithSerializedRepresentation:v3 variableProvider:*(a1 + 32) parameter:*(a1 + 40)];

  v5 = [WFChooseFromMenuItemSynonym alloc];
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [(WFChooseFromMenuItemSynonym *)v5 initWithIdentity:v6 synonym:v4];

  return v7;
}

- (WFChooseFromMenuItemParameterState)initWithVariableString:(id)string userInputInsertionIndex:(int64_t)index
{
  stringCopy = string;
  v7 = objc_alloc_init(WFVariableString);
  v8 = [(WFChooseFromMenuItemParameterState *)self initWithVariableString:stringCopy userInputInsertionIndex:index synonyms:MEMORY[0x1E695E0F0] subtitle:v7];

  return v8;
}

- (WFChooseFromMenuItemParameterState)initWithVariableString:(id)string userInputInsertionIndex:(int64_t)index synonyms:(id)synonyms subtitle:(id)subtitle
{
  stringCopy = string;
  synonymsCopy = synonyms;
  subtitleCopy = subtitle;
  v14 = subtitleCopy;
  if (synonymsCopy)
  {
    if (subtitleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFChooseFromMenuItemParameterState.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"synonyms"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFChooseFromMenuItemParameterState.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"subtitle"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = WFChooseFromMenuItemParameterState;
  v15 = [(WFVariableStringParameterState *)&v22 initWithVariableString:stringCopy userInputInsertionIndex:index];
  if (v15)
  {
    v16 = [synonymsCopy copy];
    synonyms = v15->_synonyms;
    v15->_synonyms = v16;

    objc_storeStrong(&v15->_subtitle, subtitle);
    v18 = v15;
  }

  return v15;
}

@end