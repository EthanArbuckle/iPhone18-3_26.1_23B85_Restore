@interface WFHandleDonatedIntentAction
+ (id)intentActionWithShortcut:(id)a3 forceExecutionOnPhone:(BOOL)a4 groupIdentifier:(id)a5 error:(id *)a6;
- (BOOL)requiresRemoteExecution;
- (WFHandleDonatedIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 stringLocalizer:(id)a6;
- (WFHandleDonatedIntentAction)initWithInteraction:(id)a3 forceExecutionOnPhone:(BOOL)a4;
- (id)appIdentifier;
- (id)executorWithIntent:(id)a3 groupIdentifier:(id)a4;
- (id)generatedIntentWithIdentifier:(id)a3 input:(id)a4 processedParameters:(id)a5 error:(id *)a6;
- (id)intentDescription;
- (id)intentDescriptor;
- (id)localizedDescriptionSummaryWithContext:(id)a3;
- (id)localizedKeyParameterDisplayName;
- (id)localizedNameWithContext:(id)a3;
- (id)metricsIdentifier;
- (id)parameterSummary;
- (id)serializedParameters;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (int64_t)intentCategory;
- (void)continueInAppWithCompletionHandler:(id)a3;
- (void)initializeParameters;
@end

@implementation WFHandleDonatedIntentAction

- (void)continueInAppWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFHandleDonatedIntentAction *)self intent];
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__WFHandleDonatedIntentAction_WFLCompatibility__continueInAppWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E8373860;
    v7 = v4;
    [WFOpenUserActivityAction createActionWithIntent:v5 completionHandler:v6];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void __84__WFHandleDonatedIntentAction_WFLCompatibility__continueInAppWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__WFHandleDonatedIntentAction_WFLCompatibility__continueInAppWithCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E837DC20;
  v6 = *(a1 + 32);
  [v3 runWithInput:v4 userInterface:0 runningDelegate:0 variableSource:0 workQueue:MEMORY[0x1E69E96A0] completionHandler:v5];
}

- (WFHandleDonatedIntentAction)initWithInteraction:(id)a3 forceExecutionOnPhone:(BOOL)a4
{
  v4 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 intent];
  if (v7)
  {
    v27 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v27];
    v9 = v27;
    if (v8)
    {
      v29 = @"IntentData";
      v30 = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v11 = [v10 mutableCopy];

      if (v4)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v11 setObject:v12 forKeyedSubscript:@"ForceExecutionOnPhone"];
      }

      v13 = [v6 groupIdentifier];

      if (v13)
      {
        v14 = [v6 groupIdentifier];
        [v11 setObject:v14 forKeyedSubscript:@"GroupIdentifier"];
      }

      v15 = [[WFActionRequest alloc] initWithActionIdentifier:@"is.workflow.actions.sirikit.donation.handle" serializedParameters:v11];
      v16 = objc_opt_new();
      v28 = v15;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      [v16 createActionsForRequests:v17];

      v18 = [(WFActionRequest *)v15 result];
      v19 = objc_opt_class();
      v20 = v18;
      if (v20 && (objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = getWFGeneralLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          v23 = objc_opt_class();
          *buf = 136315906;
          v32 = "WFEnforceClass";
          v33 = 2114;
          v34 = v20;
          v35 = 2114;
          v36 = v23;
          v37 = 2114;
          v38 = v19;
          v24 = v23;
          _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s Failed to create WFL-compatible WFHandleDonatedIntentAction because intent was nil", buf, 0x2Au);
        }

        v21 = 0;
      }

      else
      {
        v21 = v20;
      }
    }

    else
    {
      v11 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "[WFHandleDonatedIntentAction(WFLCompatibility) initWithInteraction:forceExecutionOnPhone:]";
        v33 = 2114;
        v34 = v9;
        _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Failed to create WFL-compatible WFHandleDonatedIntentAction due to error serizlializing the intent: %{public}@", buf, 0x16u);
      }

      v21 = 0;
    }
  }

  else
  {
    v9 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = "[WFHandleDonatedIntentAction(WFLCompatibility) initWithInteraction:forceExecutionOnPhone:]";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Failed to create WFL-compatible WFHandleDonatedIntentAction because intent was nil", buf, 0xCu);
    }

    v21 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E696AEC0];
  v9 = a5;
  v10 = a4;
  if (v7)
  {
    v11 = WFLocalizedString(@"Allow “%@” to share %@ with “%@”?");
    [v8 localizedStringWithFormat:v11, v9, v7, v10];
  }

  else
  {
    v11 = WFLocalizedString(@"Allow “%@” to run actions from “%@”?");
    [v8 localizedStringWithFormat:v11, v9, v10, v14];
  }
  v12 = ;

  return v12;
}

- (id)metricsIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WFAction *)self identifier];
  v5 = [(WFHandleDonatedIntentAction *)self intent];
  v6 = [v5 launchId];
  v7 = [(WFHandleDonatedIntentAction *)self intentDescription];
  v8 = [v7 name];
  v9 = [v3 stringWithFormat:@"%@.%@.%@", v4, v6, v8];

  return v9;
}

- (BOOL)requiresRemoteExecution
{
  v3.receiver = self;
  v3.super_class = WFHandleDonatedIntentAction;
  return [(WFHandleIntentAction *)&v3 requiresRemoteExecution];
}

- (id)generatedIntentWithIdentifier:(id)a3 input:(id)a4 processedParameters:(id)a5 error:(id *)a6
{
  v7 = [(WFHandleDonatedIntentAction *)self intent:a3];

  if (v7)
  {
    v8 = [(WFHandleDonatedIntentAction *)self intent];
    v7 = [v8 copy];

    v9 = [(WFHandleDonatedIntentAction *)self intentDescriptor];
    v10 = [v9 bundleIdentifier];
    [v7 _setLaunchId:v10];

    v11 = [(WFHandleDonatedIntentAction *)self intentDescriptor];
    v12 = [v11 extensionBundleIdentifier];
    [v7 _setExtensionBundleId:v12];
  }

  return v7;
}

- (id)intentDescription
{
  v2 = [(WFHandleDonatedIntentAction *)self intent];
  v3 = [v2 _intentInstanceDescription];

  return v3;
}

- (id)parameterSummary
{
  v3 = [WFActionParameterSummary alloc];
  v4 = [(WFHandleDonatedIntentAction *)self title];
  v5 = [(WFActionParameterSummary *)v3 initWithLocalizedString:v4];

  return v5;
}

- (id)localizedDescriptionSummaryWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFHandleIntentAction *)self appDescriptor];
  v6 = [v5 localizedName];

  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedStringResourceWithKey(@"Perform the action “%@” in %@.", @"Perform the action “%@” in %@.");
    v9 = [v4 localize:v8];
    v10 = [(WFAction *)self localizedName];
    v11 = [v7 stringWithFormat:v9, v10, v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)appIdentifier
{
  v2 = [(WFHandleDonatedIntentAction *)self intentDescriptor];
  v3 = [v2 displayableBundleIdentifier];

  return v3;
}

- (int64_t)intentCategory
{
  v3 = [(WFHandleDonatedIntentAction *)self intent];
  if (v3)
  {
    v4 = [(WFHandleDonatedIntentAction *)self intent];
    v5 = [v4 _intentCategory];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)localizedKeyParameterDisplayName
{
  v3 = [(WFHandleDonatedIntentAction *)self intent];
  if (v3)
  {
    v4 = [(WFHandleDonatedIntentAction *)self intent];
    v5 = [v4 _codableDescription];
    v6 = [v5 keyAttribute];
    v7 = [v6 localizedDisplayName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFHandleDonatedIntentAction *)self title];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFHandleDonatedIntentAction;
    v7 = [(WFHandleIntentAction *)&v10 localizedNameWithContext:v4];
  }

  v8 = v7;

  return v8;
}

- (id)intentDescriptor
{
  intentDescriptor = self->_intentDescriptor;
  if (intentDescriptor)
  {
    goto LABEL_7;
  }

  v4 = [(WFAction *)self supplementalParameterValueForKey:@"IntentAppDefinition" ofClass:objc_opt_class()];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696E890]) initWithSerializedRepresentation:v4];
LABEL_6:
    v9 = [MEMORY[0x1E696E748] sharedResolver];
    v10 = [v9 resolvedIntentMatchingDescriptor:v5];
    v11 = self->_intentDescriptor;
    self->_intentDescriptor = v10;

    intentDescriptor = self->_intentDescriptor;
LABEL_7:
    v12 = intentDescriptor;
    goto LABEL_8;
  }

  v6 = [(WFHandleDonatedIntentAction *)self intent];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696E890]);
    v8 = [(WFHandleDonatedIntentAction *)self intent];
    v5 = [v7 initWithIntent:v8];

    goto LABEL_6;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (void)initializeParameters
{
  v4.receiver = self;
  v4.super_class = WFHandleDonatedIntentAction;
  [(WFHandleIntentAction *)&v4 initializeParameters];
  v3 = [(WFAction *)self parameterForKey:@"ShowWhenRun"];
  [v3 setHidden:{-[WFHandleIntentAction requiresShowsWhenRun](self, "requiresShowsWhenRun")}];
}

- (id)serializedParameters
{
  intent = self->_intent;
  if (intent)
  {
    v12 = 0;
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:intent requiringSecureCoding:1 error:&v12];
    v5 = v12;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v11.receiver = self;
  v11.super_class = WFHandleDonatedIntentAction;
  v7 = [(WFAction *)&v11 serializedParameters];
  v8 = [v6 initWithDictionary:v7];

  [v8 setValue:v4 forKey:@"IntentData"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_forceExecutionOnPhone];
  [v8 setValue:v9 forKey:@"ForceExecutionOnPhone"];

  [v8 setValue:self->_groupIdentifier forKey:@"GroupIdentifier"];

  return v8;
}

- (id)executorWithIntent:(id)a3 groupIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v8 = [(WFHandleDonatedIntentAction *)self groupIdentifier];
  }

  v11.receiver = self;
  v11.super_class = WFHandleDonatedIntentAction;
  v9 = [(WFHandleIntentAction *)&v11 executorWithIntent:v6 groupIdentifier:v8];
  if (!v7)
  {
  }

  [v9 setForceExecutionOnPhone:{-[WFHandleDonatedIntentAction forceExecutionOnPhone](self, "forceExecutionOnPhone")}];

  return v9;
}

- (WFHandleDonatedIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 stringLocalizer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [a5 mutableCopy];
  v14 = [v13 wf_popObjectForKey:@"IntentData"];
  v15 = objc_opt_class();
  v16 = WFEnforceClass_61822(v14, v15);

  v17 = [v13 wf_popObjectForKey:@"ForceExecutionOnPhone"];
  v18 = objc_opt_class();
  v19 = WFEnforceClass_61822(v17, v18);
  v20 = [v19 BOOLValue];

  v21 = [v13 wf_popObjectForKey:@"GroupIdentifier"];
  v22 = objc_opt_class();
  obj = WFEnforceClass_61822(v21, v22);

  if ([v16 length])
  {
    v65 = 0;
    v23 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v16 error:&v65];
    v24 = v65;
    v25 = v24;
    if (v23)
    {
      v58 = v13;
      v26 = v20;
      v27 = self;
      v28 = v16;
      v29 = v12;
      v30 = v24;
      [v23 typeName];
      v32 = v31 = v10;
      v33 = [WFIntentActionProvider disabledPlatformsForIntentWithTypeName:v32];

      v34 = WFInjectDisabledPlatformsInActionDefinition(v33, v11);

      v25 = v30;
      v12 = v29;
      v16 = v28;
      self = v27;
      v20 = v26;
      v13 = v58;
      v11 = v34;
      v10 = v31;
    }
  }

  else
  {
    v25 = 0;
    v23 = 0;
  }

  v64.receiver = self;
  v64.super_class = WFHandleDonatedIntentAction;
  v35 = [(WFHandleIntentAction *)&v64 initWithIdentifier:v10 definition:v11 serializedParameters:v13 stringLocalizer:v12];
  v36 = v35;
  if (v35)
  {
    v59 = v10;
    objc_storeStrong(&v35->_intent, v23);
    v36->_forceExecutionOnPhone = v20;
    objc_storeStrong(&v36->_groupIdentifier, obj);
    v37 = [(INIntent *)v36->_intent launchId];

    if (v37)
    {
      v38 = [MEMORY[0x1E696E878] sharedConnection];
      v39 = MEMORY[0x1E695DFD8];
      [(INIntent *)v36->_intent launchId];
      v57 = v11;
      v40 = v16;
      v42 = v41 = v25;
      v43 = [v39 setWithObject:v42];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __98__WFHandleDonatedIntentAction_initWithIdentifier_definition_serializedParameters_stringLocalizer___block_invoke;
      v61[3] = &unk_1E837F870;
      v62 = v36;
      v63 = v12;
      [v38 wf_accessBundleContentForBundleIdentifiers:v43 withBlock:v61];

      v25 = v41;
      v16 = v40;
      v11 = v57;
    }

    title = v36->_title;
    if (title)
    {
      v45 = title;
      v46 = v36->_title;
      v36->_title = v45;
    }

    else
    {
      v46 = [(INIntent *)v36->_intent _titleWithLocalizer:v12 fromBundleURL:0];
      v47 = [v46 copy];
      v48 = v36->_title;
      v36->_title = v47;
    }

    subtitle = v36->_subtitle;
    if (subtitle)
    {
      v50 = subtitle;
      v51 = v36->_subtitle;
      v36->_subtitle = v50;
    }

    else
    {
      v51 = [(INIntent *)v36->_intent _subtitleWithLocalizer:v12 fromBundleURL:0];
      v52 = [v51 copy];
      v53 = v36->_subtitle;
      v36->_subtitle = v52;
    }

    intent = v36->_intent;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(INIntent *)v36->_intent _setLaunchId:*MEMORY[0x1E69E0F60]];
    }

    v55 = v36;
    v10 = v59;
  }

  return v36;
}

void __98__WFHandleDonatedIntentAction_initWithIdentifier_definition_serializedParameters_stringLocalizer___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 408) _titleWithLocalizer:*(a1 + 40) fromBundleURL:0];
  v4 = [v3 copy];
  v5 = v4;
  if (!v4)
  {
    v1 = [*(*(a1 + 32) + 408) _codableDescription];
    v5 = [v1 localizedTitleWithLocalizer:*(a1 + 40)];
  }

  objc_storeStrong((*(a1 + 32) + 424), v5);
  if (!v4)
  {
  }

  v9 = [*(*(a1 + 32) + 408) _subtitleWithLocalizer:*(a1 + 40) fromBundleURL:0];
  v6 = [v9 copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 432);
  *(v7 + 432) = v6;
}

+ (id)intentActionWithShortcut:(id)a3 forceExecutionOnPhone:(BOOL)a4 groupIdentifier:(id)a5 error:(id *)a6
{
  v7 = a4;
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = [a3 intent];
  if (v10)
  {
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:a6];
    if ([v11 length])
    {
      v12 = objc_opt_new();
      [v12 setValue:v11 forKey:@"IntentData"];
      if (v7)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v12 setObject:v13 forKey:@"ForceExecutionOnPhone"];
      }

      if (v9)
      {
        [v12 setObject:v9 forKey:@"GroupIdentifier"];
      }

      v14 = +[WFActionRegistry sharedRegistry];
      v15 = [v14 createActionWithIdentifier:@"is.workflow.actions.sirikit.donation.handle" serializedParameters:v12];

      v16 = objc_opt_class();
      v17 = WFEnforceClass_61822(v15, v16);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    if (a6)
    {
      v18 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v23[0] = @"Could not create action because the intent was missing";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *a6 = [v18 errorWithDomain:@"WFActionErrorDomain" code:5 userInfo:v19];
    }

    v17 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

@end