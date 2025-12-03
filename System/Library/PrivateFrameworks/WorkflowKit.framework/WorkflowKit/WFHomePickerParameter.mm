@interface WFHomePickerParameter
- (WFHomePickerParameter)initWithDefinition:(id)definition;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (void)loadDefaultSerializedRepresentationForEnumeration:(id)enumeration completionHandler:(id)handler;
- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler;
@end

@implementation WFHomePickerParameter

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  stateCopy = state;
  v5 = +[WFHomeManager sharedManager];
  value = [stateCopy value];

  v7 = [v5 homeWithIdentifier:value];
  name = [v7 name];

  return name;
}

- (void)loadDefaultSerializedRepresentationForEnumeration:(id)enumeration completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[WFHomeManager sharedManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__WFHomePickerParameter_loadDefaultSerializedRepresentationForEnumeration_completionHandler___block_invoke;
  v7[3] = &unk_1E837F4E8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 ensureHomesAreLoadedWithCompletionHandler:v7];
}

void __93__WFHomePickerParameter_loadDefaultSerializedRepresentationForEnumeration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[WFHomeManager sharedManager];
  v8 = [v2 primaryHome];

  if (v8)
  {
    v3 = [WFStringSubstitutableState alloc];
    v4 = WFSerializableHomeIdentifier(v8);
    v5 = [(WFVariableSubstitutableParameterState *)v3 initWithValue:v4];

    v6 = *(a1 + 32);
    v7 = [(WFVariableSubstitutableParameterState *)v5 serializedRepresentation];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[WFHomeManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__WFHomePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
  v8[3] = &unk_1E837F4E8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v6 ensureHomesAreLoadedWithCompletionHandler:v8];
}

void __87__WFHomePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = +[WFHomeManager sharedManager];
  v5 = [v4 homes];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = [WFStringSubstitutableState alloc];
        v12 = WFSerializableHomeIdentifier(v10);
        v13 = [(WFVariableSubstitutableParameterState *)v11 initWithValue:v12];
        [v3 addObject:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [objc_alloc(MEMORY[0x1E696E928]) initWithTitle:0 items:v3];
  [v2 addObject:v14];
  v15 = *(a1 + 32);
  v16 = [objc_alloc(MEMORY[0x1E696E918]) initWithSections:v2];
  (*(v15 + 16))(v15, v16, 0);

  v17 = *MEMORY[0x1E69E9840];
}

- (WFHomePickerParameter)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFHomePickerParameter;
  v3 = [(WFDynamicEnumerationParameter *)&v7 initWithDefinition:definition];
  v4 = v3;
  if (v3)
  {
    [(WFDynamicEnumerationParameter *)v3 setDataSource:v3];
    v5 = v4;
  }

  return v4;
}

@end