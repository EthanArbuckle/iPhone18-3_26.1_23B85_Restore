@interface WFHomeAreaPickerParameter
- (WFHomeAreaPickerParameter)initWithDefinition:(id)a3;
- (id)enumeration:(id)a3 accessoryIconForPossibleState:(id)a4;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
- (void)loadDefaultSerializedRepresentationForEnumeration:(id)a3 completionHandler:(id)a4;
- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5;
@end

@implementation WFHomeAreaPickerParameter

- (id)enumeration:(id)a3 accessoryIconForPossibleState:(id)a4
{
  v4 = a4;
  v5 = [v4 value];
  v6 = [v5 areaType];

  if (!v6)
  {
    v8 = @"house";
LABEL_7:
    v11 = objc_alloc(MEMORY[0x1E69E0D70]);
    v12 = [MEMORY[0x1E69E0B48] clearBackground];
    v13 = [v11 initWithSymbolName:v8 background:v12];

    goto LABEL_8;
  }

  v7 = [v4 value];
  if ([v7 areaType] == 2)
  {

LABEL_6:
    v8 = @"square.split.bottomrightquarter";
    goto LABEL_7;
  }

  v9 = [v4 value];
  v10 = [v9 areaType];

  if (v10 == 1)
  {
    goto LABEL_6;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v4 = [a4 value];
  v5 = [v4 name];

  return v5;
}

- (void)loadDefaultSerializedRepresentationForEnumeration:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  v5 = +[WFHomeManager sharedManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__WFHomeAreaPickerParameter_loadDefaultSerializedRepresentationForEnumeration_completionHandler___block_invoke;
  v7[3] = &unk_1E837F4E8;
  v8 = v4;
  v6 = v4;
  [v5 ensureHomesAreLoadedWithCompletionHandler:v7];
}

void __97__WFHomeAreaPickerParameter_loadDefaultSerializedRepresentationForEnumeration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[WFHomeManager sharedManager];
  v8 = [v2 primaryHome];

  if (v8)
  {
    v3 = [WFHMHomeAreaSubstitutableState alloc];
    v4 = [[WFHMHomeAreaDescriptor alloc] initWithHome:v8];
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

- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5
{
  v5 = a5;
  v6 = +[WFHomeManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__WFHomeAreaPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
  v8[3] = &unk_1E837F4E8;
  v9 = v5;
  v7 = v5;
  [v6 ensureHomesAreLoadedWithCompletionHandler:v8];
}

void __91__WFHomeAreaPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E695DF70];
  v2 = +[WFHomeManager sharedManager];
  v3 = [v2 homes];
  v41 = [v1 arrayWithCapacity:{objc_msgSend(v3, "count")}];

  v4 = getWFActionsLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = +[WFHomeManager sharedManager];
    v6 = [v5 homes];
    *buf = 136315394;
    v60 = "[WFHomeAreaPickerParameter loadPossibleStatesForEnumeration:searchTerm:completionHandler:]_block_invoke";
    v61 = 2048;
    v62 = [v6 count];
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEBUG, "%s Found %lu homes in WFHomeManager", buf, 0x16u);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = +[WFHomeManager sharedManager];
  v8 = [v7 homes];

  v42 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v42)
  {
    v40 = *v53;
    do
    {
      v9 = 0;
      do
      {
        if (*v53 != v40)
        {
          objc_enumerationMutation(v8);
        }

        v43 = v9;
        v10 = *(*(&v52 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E695DF70] array];
        v12 = [WFHMHomeAreaSubstitutableState alloc];
        v13 = [[WFHMHomeAreaDescriptor alloc] initWithHome:v10];
        v14 = [(WFVariableSubstitutableParameterState *)v12 initWithValue:v13];
        [v11 addObject:v14];

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v15 = [v10 zones];
        v16 = [v15 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v49;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v49 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v48 + 1) + 8 * i);
              v21 = [WFHMHomeAreaSubstitutableState alloc];
              v22 = [[WFHMHomeAreaDescriptor alloc] initWithZone:v20 inHome:v10];
              v23 = [(WFVariableSubstitutableParameterState *)v21 initWithValue:v22];
              [v11 addObject:v23];
            }

            v17 = [v15 countByEnumeratingWithState:&v48 objects:v57 count:16];
          }

          while (v17);
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v24 = [v10 rooms];
        v25 = [v24 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v45;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v45 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v44 + 1) + 8 * j);
              v30 = [WFHMHomeAreaSubstitutableState alloc];
              v31 = [[WFHMHomeAreaDescriptor alloc] initWithRoom:v29 inHome:v10];
              v32 = [(WFVariableSubstitutableParameterState *)v30 initWithValue:v31];
              [v11 addObject:v32];
            }

            v26 = [v24 countByEnumeratingWithState:&v44 objects:v56 count:16];
          }

          while (v26);
        }

        v33 = objc_alloc(MEMORY[0x1E696E928]);
        v34 = [v10 name];
        v35 = [v33 initWithTitle:v34 items:v11];

        [v41 addObject:v35];
        v9 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v42);
  }

  v36 = *(a1 + 32);
  v37 = [objc_alloc(MEMORY[0x1E696E918]) initWithSections:v41];
  (*(v36 + 16))(v36, v37, 0);

  v38 = *MEMORY[0x1E69E9840];
}

- (WFHomeAreaPickerParameter)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFHomeAreaPickerParameter;
  v3 = [(WFDynamicEnumerationParameter *)&v7 initWithDefinition:a3];
  v4 = v3;
  if (v3)
  {
    [(WFDynamicEnumerationParameter *)v3 setDataSource:v3];
    v5 = v4;
  }

  return v4;
}

@end