@interface WFHandleDonatedIntentAction
+ (id)intentActionWithShortcut:(id)shortcut forceExecutionOnPhone:(BOOL)phone groupIdentifier:(id)identifier error:(id *)error;
- (BOOL)requiresRemoteExecution;
- (WFHandleDonatedIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters stringLocalizer:(id)localizer;
- (WFHandleDonatedIntentAction)initWithInteraction:(id)interaction forceExecutionOnPhone:(BOOL)phone;
- (id)appIdentifier;
- (id)executorWithIntent:(id)intent groupIdentifier:(id)identifier;
- (id)generatedIntentWithIdentifier:(id)identifier input:(id)input processedParameters:(id)parameters error:(id *)error;
- (id)intentDescription;
- (id)intentDescriptor;
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedKeyParameterDisplayName;
- (id)localizedNameWithContext:(id)context;
- (id)metricsIdentifier;
- (id)parameterSummary;
- (id)serializedParameters;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (int64_t)intentCategory;
- (void)continueInAppWithCompletionHandler:(id)handler;
- (void)initializeParameters;
@end

@implementation WFHandleDonatedIntentAction

- (void)continueInAppWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  intent = [(WFHandleDonatedIntentAction *)self intent];
  if (intent)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__WFHandleDonatedIntentAction_WFLCompatibility__continueInAppWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E8373860;
    v7 = handlerCopy;
    [WFOpenUserActivityAction createActionWithIntent:intent completionHandler:v6];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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

- (WFHandleDonatedIntentAction)initWithInteraction:(id)interaction forceExecutionOnPhone:(BOOL)phone
{
  phoneCopy = phone;
  v39 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  intent = [interactionCopy intent];
  if (intent)
  {
    v27 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:intent requiringSecureCoding:1 error:&v27];
    v9 = v27;
    if (v8)
    {
      v29 = @"IntentData";
      v30 = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v11 = [v10 mutableCopy];

      if (phoneCopy)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v11 setObject:v12 forKeyedSubscript:@"ForceExecutionOnPhone"];
      }

      groupIdentifier = [interactionCopy groupIdentifier];

      if (groupIdentifier)
      {
        groupIdentifier2 = [interactionCopy groupIdentifier];
        [v11 setObject:groupIdentifier2 forKeyedSubscript:@"GroupIdentifier"];
      }

      v15 = [[WFActionRequest alloc] initWithActionIdentifier:@"is.workflow.actions.sirikit.donation.handle" serializedParameters:v11];
      v16 = objc_opt_new();
      v28 = v15;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      [v16 createActionsForRequests:v17];

      result = [(WFActionRequest *)v15 result];
      v19 = objc_opt_class();
      v20 = result;
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

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  v8 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  destinationCopy = destination;
  if (descriptionCopy)
  {
    v11 = WFLocalizedString(@"Allow “%@” to share %@ with “%@”?");
    [v8 localizedStringWithFormat:v11, nameCopy, descriptionCopy, destinationCopy];
  }

  else
  {
    v11 = WFLocalizedString(@"Allow “%@” to run actions from “%@”?");
    [v8 localizedStringWithFormat:v11, nameCopy, destinationCopy, v14];
  }
  v12 = ;

  return v12;
}

- (id)metricsIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(WFAction *)self identifier];
  intent = [(WFHandleDonatedIntentAction *)self intent];
  launchId = [intent launchId];
  intentDescription = [(WFHandleDonatedIntentAction *)self intentDescription];
  name = [intentDescription name];
  v9 = [v3 stringWithFormat:@"%@.%@.%@", identifier, launchId, name];

  return v9;
}

- (BOOL)requiresRemoteExecution
{
  v3.receiver = self;
  v3.super_class = WFHandleDonatedIntentAction;
  return [(WFHandleIntentAction *)&v3 requiresRemoteExecution];
}

- (id)generatedIntentWithIdentifier:(id)identifier input:(id)input processedParameters:(id)parameters error:(id *)error
{
  v7 = [(WFHandleDonatedIntentAction *)self intent:identifier];

  if (v7)
  {
    intent = [(WFHandleDonatedIntentAction *)self intent];
    v7 = [intent copy];

    intentDescriptor = [(WFHandleDonatedIntentAction *)self intentDescriptor];
    bundleIdentifier = [intentDescriptor bundleIdentifier];
    [v7 _setLaunchId:bundleIdentifier];

    intentDescriptor2 = [(WFHandleDonatedIntentAction *)self intentDescriptor];
    extensionBundleIdentifier = [intentDescriptor2 extensionBundleIdentifier];
    [v7 _setExtensionBundleId:extensionBundleIdentifier];
  }

  return v7;
}

- (id)intentDescription
{
  intent = [(WFHandleDonatedIntentAction *)self intent];
  _intentInstanceDescription = [intent _intentInstanceDescription];

  return _intentInstanceDescription;
}

- (id)parameterSummary
{
  v3 = [WFActionParameterSummary alloc];
  title = [(WFHandleDonatedIntentAction *)self title];
  v5 = [(WFActionParameterSummary *)v3 initWithLocalizedString:title];

  return v5;
}

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  appDescriptor = [(WFHandleIntentAction *)self appDescriptor];
  localizedName = [appDescriptor localizedName];

  if (localizedName)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedStringResourceWithKey(@"Perform the action “%@” in %@.", @"Perform the action “%@” in %@.");
    v9 = [contextCopy localize:v8];
    localizedName2 = [(WFAction *)self localizedName];
    v11 = [v7 stringWithFormat:v9, localizedName2, localizedName];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)appIdentifier
{
  intentDescriptor = [(WFHandleDonatedIntentAction *)self intentDescriptor];
  displayableBundleIdentifier = [intentDescriptor displayableBundleIdentifier];

  return displayableBundleIdentifier;
}

- (int64_t)intentCategory
{
  intent = [(WFHandleDonatedIntentAction *)self intent];
  if (intent)
  {
    intent2 = [(WFHandleDonatedIntentAction *)self intent];
    _intentCategory = [intent2 _intentCategory];
  }

  else
  {
    _intentCategory = 0;
  }

  return _intentCategory;
}

- (id)localizedKeyParameterDisplayName
{
  intent = [(WFHandleDonatedIntentAction *)self intent];
  if (intent)
  {
    intent2 = [(WFHandleDonatedIntentAction *)self intent];
    _codableDescription = [intent2 _codableDescription];
    keyAttribute = [_codableDescription keyAttribute];
    localizedDisplayName = [keyAttribute localizedDisplayName];
  }

  else
  {
    localizedDisplayName = 0;
  }

  return localizedDisplayName;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  title = [(WFHandleDonatedIntentAction *)self title];
  v6 = title;
  if (title)
  {
    v7 = title;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFHandleDonatedIntentAction;
    v7 = [(WFHandleIntentAction *)&v10 localizedNameWithContext:contextCopy];
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
    mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
    v10 = [mEMORY[0x1E696E748] resolvedIntentMatchingDescriptor:v5];
    v11 = self->_intentDescriptor;
    self->_intentDescriptor = v10;

    intentDescriptor = self->_intentDescriptor;
LABEL_7:
    v12 = intentDescriptor;
    goto LABEL_8;
  }

  intent = [(WFHandleDonatedIntentAction *)self intent];

  if (intent)
  {
    v7 = objc_alloc(MEMORY[0x1E696E890]);
    intent2 = [(WFHandleDonatedIntentAction *)self intent];
    v5 = [v7 initWithIntent:intent2];

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
  serializedParameters = [(WFAction *)&v11 serializedParameters];
  v8 = [v6 initWithDictionary:serializedParameters];

  [v8 setValue:v4 forKey:@"IntentData"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_forceExecutionOnPhone];
  [v8 setValue:v9 forKey:@"ForceExecutionOnPhone"];

  [v8 setValue:self->_groupIdentifier forKey:@"GroupIdentifier"];

  return v8;
}

- (id)executorWithIntent:(id)intent groupIdentifier:(id)identifier
{
  intentCopy = intent;
  identifierCopy = identifier;
  groupIdentifier = identifierCopy;
  if (!identifierCopy)
  {
    groupIdentifier = [(WFHandleDonatedIntentAction *)self groupIdentifier];
  }

  v11.receiver = self;
  v11.super_class = WFHandleDonatedIntentAction;
  v9 = [(WFHandleIntentAction *)&v11 executorWithIntent:intentCopy groupIdentifier:groupIdentifier];
  if (!identifierCopy)
  {
  }

  [v9 setForceExecutionOnPhone:{-[WFHandleDonatedIntentAction forceExecutionOnPhone](self, "forceExecutionOnPhone")}];

  return v9;
}

- (WFHandleDonatedIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters stringLocalizer:(id)localizer
{
  identifierCopy = identifier;
  definitionCopy = definition;
  localizerCopy = localizer;
  v13 = [parameters mutableCopy];
  v14 = [v13 wf_popObjectForKey:@"IntentData"];
  v15 = objc_opt_class();
  v16 = WFEnforceClass_61822(v14, v15);

  v17 = [v13 wf_popObjectForKey:@"ForceExecutionOnPhone"];
  v18 = objc_opt_class();
  v19 = WFEnforceClass_61822(v17, v18);
  bOOLValue = [v19 BOOLValue];

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
      v26 = bOOLValue;
      selfCopy = self;
      v28 = v16;
      v29 = localizerCopy;
      v30 = v24;
      [v23 typeName];
      v32 = v31 = identifierCopy;
      v33 = [WFIntentActionProvider disabledPlatformsForIntentWithTypeName:v32];

      v34 = WFInjectDisabledPlatformsInActionDefinition(v33, definitionCopy);

      v25 = v30;
      localizerCopy = v29;
      v16 = v28;
      self = selfCopy;
      bOOLValue = v26;
      v13 = v58;
      definitionCopy = v34;
      identifierCopy = v31;
    }
  }

  else
  {
    v25 = 0;
    v23 = 0;
  }

  v64.receiver = self;
  v64.super_class = WFHandleDonatedIntentAction;
  v35 = [(WFHandleIntentAction *)&v64 initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:v13 stringLocalizer:localizerCopy];
  v36 = v35;
  if (v35)
  {
    v59 = identifierCopy;
    objc_storeStrong(&v35->_intent, v23);
    v36->_forceExecutionOnPhone = bOOLValue;
    objc_storeStrong(&v36->_groupIdentifier, obj);
    launchId = [(INIntent *)v36->_intent launchId];

    if (launchId)
    {
      mEMORY[0x1E696E878] = [MEMORY[0x1E696E878] sharedConnection];
      v39 = MEMORY[0x1E695DFD8];
      [(INIntent *)v36->_intent launchId];
      v57 = definitionCopy;
      v40 = v16;
      v42 = v41 = v25;
      v43 = [v39 setWithObject:v42];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __98__WFHandleDonatedIntentAction_initWithIdentifier_definition_serializedParameters_stringLocalizer___block_invoke;
      v61[3] = &unk_1E837F870;
      v62 = v36;
      v63 = localizerCopy;
      [mEMORY[0x1E696E878] wf_accessBundleContentForBundleIdentifiers:v43 withBlock:v61];

      v25 = v41;
      v16 = v40;
      definitionCopy = v57;
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
      v46 = [(INIntent *)v36->_intent _titleWithLocalizer:localizerCopy fromBundleURL:0];
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
      v51 = [(INIntent *)v36->_intent _subtitleWithLocalizer:localizerCopy fromBundleURL:0];
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
    identifierCopy = v59;
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

+ (id)intentActionWithShortcut:(id)shortcut forceExecutionOnPhone:(BOOL)phone groupIdentifier:(id)identifier error:(id *)error
{
  phoneCopy = phone;
  v23[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  intent = [shortcut intent];
  if (intent)
  {
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:intent requiringSecureCoding:1 error:error];
    if ([v11 length])
    {
      v12 = objc_opt_new();
      [v12 setValue:v11 forKey:@"IntentData"];
      if (phoneCopy)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v12 setObject:v13 forKey:@"ForceExecutionOnPhone"];
      }

      if (identifierCopy)
      {
        [v12 setObject:identifierCopy forKey:@"GroupIdentifier"];
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
    if (error)
    {
      v18 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v23[0] = @"Could not create action because the intent was missing";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *error = [v18 errorWithDomain:@"WFActionErrorDomain" code:5 userInfo:v19];
    }

    v17 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

@end