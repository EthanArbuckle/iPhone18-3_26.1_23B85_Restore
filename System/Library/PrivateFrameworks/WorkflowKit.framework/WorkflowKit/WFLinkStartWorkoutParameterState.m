@interface WFLinkStartWorkoutParameterState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (NSString)localizedTitle;
- (WFLinkStartWorkoutParameterState)initWithLinkAction:(id)a3;
@end

@implementation WFLinkStartWorkoutParameterState

- (NSString)localizedTitle
{
  v2 = [(WFVariableSubstitutableParameterState *)self value];
  v3 = [v2 parameters];
  v4 = [v3 if_firstObjectPassingTest:&__block_literal_global_698];

  v5 = [v4 value];
  v6 = [v5 displayRepresentation];
  v7 = [v6 title];
  v8 = [v7 wf_localizedString];

  return v8;
}

uint64_t __50__WFLinkStartWorkoutParameterState_localizedTitle__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"workoutStyle"];

  return v3;
}

- (WFLinkStartWorkoutParameterState)initWithLinkAction:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFLinkStartWorkoutParameterState;
  return [(WFVariableSubstitutableParameterState *)&v4 initWithValue:a3];
}

+ (id)serializedRepresentationFromValue:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"WFLinkStartWorkoutParameterState.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[LNAction class]]"}];
  }

  v6 = v5;
  v7 = objc_opt_new();
  v8 = [v6 identifier];
  [v7 setObject:v8 forKey:@"Identifier"];

  v9 = [v6 mangledTypeName];

  if (v9)
  {
    v10 = [v6 mangledTypeName];
    [v7 setObject:v10 forKey:@"MangledTypeName"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "presentationStyle")}];
  v28 = v7;
  [v7 setObject:v11 forKey:@"PresentationStyle"];

  v12 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = v6;
  v13 = [v6 parameters];
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = MEMORY[0x1E696ACC8];
        v20 = [v18 value];
        v29 = 0;
        v21 = [v19 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v29];
        v22 = v29;

        if (v22)
        {
          v23 = getWFAppIntentsLogObject();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315394;
            v35 = "WFSerializedRepresentationFromLinkAction";
            v36 = 2112;
            v37 = v22;
            _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_FAULT, "%s Could not archive LNValue into data: %@", buf, 0x16u);
          }
        }

        else
        {
          v23 = [v18 identifier];
          [v12 setObject:v21 forKeyedSubscript:v23];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v15);
  }

  [v28 setObject:v12 forKey:@"Parameters"];
  v24 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = WFEnforceClass_732(v5, v6);

  v8 = [v7 objectForKeyedSubscript:@"Identifier"];
  v9 = objc_opt_class();
  v10 = WFEnforceClass_732(v8, v9);

  v11 = [v7 objectForKeyedSubscript:@"MangledTypeName"];
  v12 = objc_opt_class();
  v13 = WFEnforceClass_732(v11, v12);

  v14 = [v7 objectForKeyedSubscript:@"PresentationStyle"];
  v15 = objc_opt_class();
  v16 = WFEnforceClass_732(v14, v15);

  v17 = [v7 objectForKeyedSubscript:@"Parameters"];
  v18 = objc_opt_class();
  v19 = WFEnforceClass_732(v17, v18);

  v20 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __WFLinkActionFromSerializedRepresentation_block_invoke;
  v24[3] = &unk_1E8373340;
  v25 = v20;
  v21 = v20;
  [v19 enumerateKeysAndObjectsUsingBlock:v24];
  v22 = [objc_alloc(MEMORY[0x1E69AC648]) initWithIdentifier:v10 mangledTypeName:v13 presentationStyle:objc_msgSend(v16 parameters:{"integerValue"), v21}];

  return v22;
}

@end