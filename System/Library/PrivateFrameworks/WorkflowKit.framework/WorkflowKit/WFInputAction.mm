@interface WFInputAction
+ (id)inputActionForWorkflow:(id)a3;
+ (id)serializedParametersForWorkflow:(id)a3;
+ (id)serializedParametersFromActionSerializedParameters:(id)a3 itemClass:(Class)a4;
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (WFInputAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (id)actionSerializedParametersForSelectionOfItemClass:(Class)a3;
- (id)minimumSupportedClientVersion;
- (id)noInputBehavior;
- (id)selectedAskForType;
- (id)selectedBehavior;
- (id)selectedInputTypes;
- (void)removedFromWorkflow;
- (void)updateWorkflowState;
@end

@implementation WFInputAction

- (id)noInputBehavior
{
  v3 = [(WFInputAction *)self selectedBehavior];
  if ([v3 isEqualToString:@"Continue"])
  {
    goto LABEL_2;
  }

  if ([v3 isEqualToString:@"Ask For"])
  {
    v5 = [(WFInputAction *)self selectedAskForType];
    v6 = WFInputActionContentItemClassCorrespondingToAskForParameterValue(v5);
    if (v6)
    {
      v7 = v6;
      v8 = [WFWorkflowNoInputBehaviorAskForInput alloc];
      v9 = [(WFInputAction *)self actionSerializedParametersForSelectionOfItemClass:v7];
      v4 = [(WFWorkflowNoInputBehaviorAskForInput *)v8 initWithContentItemClass:v7 serializedParameters:v9];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"Stop and Respond"])
  {
    v5 = [(WFAction *)self parameterStateForKey:@"WFStopAndRespondResponse"];
    v10 = [WFWorkflowNoInputBehaviorShowError alloc];
    v11 = [v5 variableString];
    v12 = [v11 stringByRemovingVariables];
    v4 = [(WFWorkflowNoInputBehaviorShowError *)v10 initWithErrorString:v12];

LABEL_11:
    goto LABEL_12;
  }

  if (![v3 isEqualToString:@"Get Clipboard"])
  {
LABEL_2:
    v4 = 0;
    goto LABEL_12;
  }

  v4 = objc_alloc_init(WFWorkflowNoInputBehaviorGetClipboard);
LABEL_12:

  return v4;
}

- (id)actionSerializedParametersForSelectionOfItemClass:(Class)a3
{
  if (a3)
  {
    v4 = WFInputActionParameterKeysForSelectingItemOfClass(a3);
    v5 = objc_opt_new();
    v6 = [(WFAction *)self serializedParameters];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__WFInputAction_actionSerializedParametersForSelectionOfItemClass___block_invoke;
    v13[3] = &unk_1E8374C70;
    v14 = v4;
    v15 = v5;
    v7 = v5;
    v8 = v4;
    [v6 enumerateKeysAndObjectsUsingBlock:v13];

    v9 = [v7 copy];
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFInputAction.m" lineNumber:360 description:{@"Invalid parameter not satisfying: %@", @"contentItemClass"}];

    v9 = 0;
  }

  return v9;
}

void __67__WFInputAction_actionSerializedParametersForSelectionOfItemClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

- (id)selectedInputTypes
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(WFAction *)self parameterStateForKey:@"WFInputType"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    v5 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v4)
    {
      v8 = [v4 value];
      v13[0] = NSClassFromString(v8);
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = [v7 parameterStates];
  v9 = [v10 if_map:&__block_literal_global_7977];

  v5 = 0;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

id __35__WFInputAction_selectedInputTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 value];

  v6 = NSClassFromString(v5);

  return v6;
}

- (id)selectedAskForType
{
  v3 = [(WFInputAction *)self selectedBehavior];
  v4 = [v3 isEqualToString:@"Ask For"];

  if (v4)
  {
    v5 = [(WFAction *)self parameterStateForKey:@"WFAskForType"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    v7 = [v8 value];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)selectedBehavior
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFNoInputBehavior"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 value];

  return v5;
}

- (id)minimumSupportedClientVersion
{
  v3 = [(WFAction *)self parameterStateForKey:@"WFNoInputBehavior"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
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

  v6 = [v5 value];

  LOBYTE(v5) = [v6 isEqualToString:@"Continue"];
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = WFInputAction;
    v7 = [(WFAction *)&v10 minimumSupportedClientVersion];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFInputAction;
    v8 = [(WFAction *)&v11 minimumSupportedClientVersion];
    v7 = WFMaximumBundleVersion(v8, @"1113");
  }

  return v7;
}

- (void)removedFromWorkflow
{
  v3 = [(WFAction *)self workflow];
  [v3 setNoInputBehavior:0];

  v4 = [(WFAction *)self workflow];
  [v4 save];
}

- (void)updateWorkflowState
{
  v3 = [(WFInputAction *)self noInputBehavior];
  v4 = [(WFAction *)self workflow];
  [v4 setNoInputBehavior:v3];

  v5 = [(WFInputAction *)self selectedInputTypes];
  v6 = [(WFAction *)self workflow];
  [v6 setInputClasses:v5];

  v7 = [(WFAction *)self workflow];
  [v7 save];
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  v7.receiver = self;
  v7.super_class = WFInputAction;
  v5 = [(WFAction *)&v7 setParameterState:a3 forKey:a4];
  if (v5)
  {
    [(WFInputAction *)self updateWorkflowState];
  }

  return v5;
}

- (WFInputAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v28[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = [WFActionDefinition alloc];
    v9 = [(WFActionDefinition *)v11 initWithDictionary:MEMORY[0x1E695E0F8]];
  }

  v12 = [(WFActionDefinition *)v9 objectForKey:@"WFContentSelectionParametersAreInjected"];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 BOOLValue];
  if ((v15 & 1) == 0)
  {
    v16 = WFContentSelectionActionParameterDefinitions();
    v17 = [(WFActionDefinition *)v9 objectForKey:@"Parameters"];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v20 = [v19 arrayByAddingObjectsFromArray:v16];

    v27[0] = @"Parameters";
    v27[1] = @"WFContentSelectionParametersAreInjected";
    v28[0] = v20;
    v28[1] = MEMORY[0x1E695E118];
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v22 = [(WFActionDefinition *)v9 definitionByAddingEntriesInDictionary:v21];

    v9 = v22;
  }

  v26.receiver = self;
  v26.super_class = WFInputAction;
  v23 = [(WFAction *)&v26 initWithIdentifier:v8 definition:v9 serializedParameters:v10];

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (id)serializedParametersForWorkflow:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v46 = [MEMORY[0x1E696AAA8] currentHandler];
    [v46 handleFailureInMethod:a2 object:a1 file:@"WFInputAction.m" lineNumber:402 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  v6 = objc_opt_new();
  v7 = [v5 inputClasses];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v5 inputClasses];
    v10 = [v9 if_map:&__block_literal_global_261];
    [v6 setObject:v10 forKeyedSubscript:@"WFInputType"];
  }

  else
  {
    [v6 setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:@"WFInputType"];
  }

  v11 = v5;
  if (!v5)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nullable WFDescribeWorkflowInputSurfaces(WFWorkflow * _Nonnull __strong)"];
    [v47 handleFailureInFunction:v48 file:@"WFInputAction.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  v12 = objc_opt_new();
  v13 = [v11 workflowTypes];
  v14 = [v13 containsObject:*MEMORY[0x1E69E1458]];

  if (v14)
  {
    v15 = WFLocalizedString(@"Share Sheet");
    [v12 addObject:v15];
  }

  v16 = [v11 workflowTypes];
  v17 = [v16 containsObject:*MEMORY[0x1E69E1440]];

  if (v17)
  {
    v18 = WFLocalizedString(@"Quick Actions");
    [v12 addObject:v18];
  }

  v19 = [v11 workflowTypes];
  v20 = [v19 containsObject:*MEMORY[0x1E69E1450]];

  if (v20)
  {
    v21 = WFLocalizedString(@"What’s On Screen");
    [v12 addObject:v21];
  }

  v22 = [v11 workflowTypes];
  v23 = [v22 containsObject:*MEMORY[0x1E69E1448]];

  if (v23)
  {
    v24 = WFLocalizedString(@"Search Result");
    [v12 addObject:v24];
  }

  if ([v12 count])
  {
    v25 = [v12 componentsJoinedByString:{@", "}];
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    [v6 setObject:v25 forKeyedSubscript:@"WFInputSurface"];
  }

  v26 = [v11 noInputBehavior];
  if (!v26)
  {
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  v29 = v26;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  v32 = v29;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  if (v28)
  {
    [v6 setObject:@"Stop and Respond" forKeyedSubscript:@"WFNoInputBehavior"];
    v35 = [v28 errorString];
    if (v35)
    {
      [v6 setObject:v35 forKeyedSubscript:@"WFStopAndRespondResponse"];
    }

    v36 = [v6 copy];

    v37 = v32;
    goto LABEL_62;
  }

  if (!v31)
  {
    if (v34)
    {
      v41 = @"Get Clipboard";
LABEL_42:
      [v6 setObject:v41 forKeyedSubscript:@"WFNoInputBehavior"];
      v36 = [v6 copy];
      v37 = 0;
      v31 = 0;
      v34 = v32;
      goto LABEL_62;
    }

LABEL_41:
    v32 = 0;
    v41 = @"Continue";
    goto LABEL_42;
  }

  [v6 setObject:@"Ask For" forKeyedSubscript:@"WFNoInputBehavior"];
  v38 = [v31 contentItemClass];
  if (v38)
  {
    v39 = v38;
    if ([v38 isEqual:objc_opt_class()])
    {
      v40 = @"Files";
    }

    else if ([v39 isEqual:objc_opt_class()])
    {
      v40 = @"Text";
    }

    else if ([v39 isEqual:objc_opt_class()])
    {
      v40 = @"Date";
    }

    else if ([v39 isEqual:objc_opt_class()])
    {
      v40 = @"Photos";
    }

    else if ([v39 isEqual:objc_opt_class()])
    {
      v40 = @"Contacts";
    }

    else if ([v39 isEqual:objc_opt_class()])
    {
      v40 = @"Email Address";
    }

    else if ([v39 isEqual:objc_opt_class()])
    {
      v40 = @"Music";
    }

    else if ([v39 isEqual:objc_opt_class()])
    {
      v40 = @"Phone Number";
    }

    else
    {
      v40 = 0;
    }

    [v6 setObject:v40 forKeyedSubscript:@"WFAskForType"];
    v42 = [v31 serializedParameters];
    if (v42)
    {
      v43 = [WFInputAction serializedParametersFromActionSerializedParameters:v42 itemClass:v39];
      v44 = [v6 if_dictionaryByAddingEntriesFromDictionary:v43];

      v6 = v44;
    }
  }

  v36 = [v6 copy];
  v37 = 0;
  v31 = v32;
LABEL_62:

  return v36;
}

+ (id)serializedParametersFromActionSerializedParameters:(id)a3 itemClass:(Class)a4
{
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    if (v7)
    {
LABEL_3:
      v9 = WFInputActionParameterKeysForSelectingItemOfClass(a4);
      v10 = objc_opt_new();
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78__WFInputAction_serializedParametersFromActionSerializedParameters_itemClass___block_invoke;
      v16[3] = &unk_1E8374C70;
      v17 = v9;
      v18 = v10;
      v11 = v10;
      v12 = v9;
      [v8 enumerateKeysAndObjectsUsingBlock:v16];
      v13 = [v11 copy];

      goto LABEL_6;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"WFInputAction.m" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"contentItemClass"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:

  return v13;
}

void __78__WFInputAction_serializedParametersFromActionSerializedParameters_itemClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

+ (id)inputActionForWorkflow:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"WFInputAction.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  v6 = [a1 serializedParametersForWorkflow:v5];
  v7 = +[WFActionRegistry sharedRegistry];
  v8 = [v7 createActionWithIdentifier:@"is.workflow.actions.input" serializedParameters:v6];

  if (v8)
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = [v5 workflowTypes];
    v11 = [v9 setWithArray:v10];
    [v8 setInputSurfaces:v11];

    [v8 willBeAddedToWorkflow:v5];
    [v8 wasAddedToWorkflow:v5];
    v12 = v8;
  }

  return v8;
}

@end