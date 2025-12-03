@interface WFContentItemSetterAction
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (NSArray)properties;
- (WFContentProperty)selectedProperty;
- (id)appContentDestinationForSystemAppBundleIdentifier:(id)identifier;
- (id)contentDestinationWithError:(id *)error;
- (id)displayStringForTransactionModeState:(id)state;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedKeywordsWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)outputContentClasses;
- (id)parameterDefinitions;
- (id)parameterKeyForProperty:(id)property;
- (id)parameterSummary;
- (id)possibleStatesForEnumeration:(id)enumeration;
- (id)requiredResourceForProperty:(id)property;
- (id)setAdditionalPropertyIfNecessaryForValue:(id)value;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)initializeParameters;
- (void)presentAlertWithUserInterface:(id)interface input:(id)input completion:(id)completion;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)setPromptForSelectedParameter;
- (void)userValueForSelectedPropertyWithCompletion:(id)completion;
@end

@implementation WFContentItemSetterAction

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  v6 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  descriptionCopy = description;
  v9 = WFLocalizedString(@"Allow “%1$@” to edit %2$@?");
  descriptionCopy = [v6 localizedStringWithFormat:v9, nameCopy, descriptionCopy];

  return descriptionCopy;
}

- (id)contentDestinationWithError:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(objc_class *)[(WFAction *)self contentItemClass] isEqual:objc_opt_class()])
  {
    v4 = MEMORY[0x1E69E0E58];
LABEL_7:
    v5 = [(WFContentItemSetterAction *)self appContentDestinationForSystemAppBundleIdentifier:*v4];
    goto LABEL_8;
  }

  if ([(objc_class *)[(WFAction *)self contentItemClass] isEqual:objc_opt_class()])
  {
    v4 = MEMORY[0x1E69E0E48];
    goto LABEL_7;
  }

  if ([(objc_class *)[(WFAction *)self contentItemClass] isEqual:objc_opt_class()])
  {
    v4 = MEMORY[0x1E69E0F08];
    goto LABEL_7;
  }

  v8 = getWFSecurityLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v9 = NSStringFromClass([(WFAction *)self contentItemClass]);
    v10 = 136315394;
    v11 = "[WFContentItemSetterAction contentDestinationWithError:]";
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Missing a contentDestination for %@", &v10, 0x16u);
  }

  v5 = 0;
LABEL_8:
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)appContentDestinationForSystemAppBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E696E720];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy];

  mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
  v7 = [mEMORY[0x1E696E748] resolvedAppMatchingDescriptor:v5];

  v8 = [MEMORY[0x1E6996C90] locationWithAppDescriptor:v7];

  return v8;
}

- (id)setAdditionalPropertyIfNecessaryForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E6996F00];
    v6 = valueCopy;
    string = [v6 string];
    contactName = [v6 contactName];

    processedParameters = [(WFAction *)self processedParameters];
    v10 = [processedParameters objectForKey:@"ValueLabel"];
    v11 = [v5 phoneNumberWithPhoneNumberString:string contactName:contactName label:v10];

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = MEMORY[0x1E6996E00];
    address = [valueCopy address];
    processedParameters2 = [(WFAction *)self processedParameters];
    v15 = [processedParameters2 objectForKey:@"ValueLabel"];
    v11 = [v12 addressWithEmailAddress:address label:v15];

LABEL_7:
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = valueCopy;
    address = [(WFAction *)self processedParameters];
    processedParameters2 = [address objectForKey:@"ValueLabel"];
    v11 = [v16 streetAddressWithLabel:processedParameters2];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = valueCopy;
    processedParameters3 = [(WFAction *)self processedParameters];
    v20 = [processedParameters3 objectForKey:@"ValueLabel"];
    bOOLValue = [v20 BOOLValue];
    v22 = 1;
    if (!bOOLValue)
    {
      v22 = 2;
    }

    v42 = v22;

    v41 = objc_alloc(MEMORY[0x1E6996EE8]);
    v40 = [v18 URL];
    name = [v18 name];
    emailAddress = [v18 emailAddress];
    status = [v18 status];
    type = [v18 type];
    sourceIdentifier = [v18 sourceIdentifier];
    isManaged = [v18 isManaged];
    isCurrentUser = [v18 isCurrentUser];
    contactPredicate = [v18 contactPredicate];

    BYTE1(v39) = isCurrentUser;
    LOBYTE(v39) = isManaged;
    v31 = v40;
    v11 = [v41 initWithURL:v40 name:name emailAddress:emailAddress status:status role:v42 type:type sourceIdentifier:sourceIdentifier isManaged:v39 isCurrentUser:contactPredicate contactPredicate:?];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    selectedProperty = [(WFContentItemSetterAction *)self selectedProperty];
    v33 = [(WFContentItemSetterAction *)self parameterKeyForProperty:selectedProperty];
    v31 = [(WFAction *)self parameterValueForKey:v33 ofClass:objc_opt_class()];

    if (!v31)
    {
LABEL_19:
      v11 = valueCopy;
      goto LABEL_8;
    }

    v34 = [MEMORY[0x1E6996DC0] detectedDatesInString:v31 error:0];
    firstObject = [v34 firstObject];

    LODWORD(v34) = [firstObject timeIsSignificant];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v37 = currentCalendar;
    if (v34)
    {
      systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
      v11 = [v37 componentsInTimeZone:systemTimeZone fromDate:valueCopy];
    }

    else
    {
      v11 = [currentCalendar components:30 fromDate:valueCopy];
    }
  }

LABEL_8:

  return v11;
}

- (void)presentAlertWithUserInterface:(id)interface input:(id)input completion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  inputCopy = input;
  completionCopy = completion;
  v11 = objc_opt_new();
  items = [inputCopy items];
  localizedTypeDescription = [(objc_class *)[(WFAction *)self contentItemClass] localizedTypeDescription];
  v39 = inputCopy;
  v40 = interfaceCopy;
  v38 = completionCopy;
  v14 = items;
  if ([(objc_class *)[(WFAction *)self contentItemClass] canLowercaseTypeDescription])
  {
    localizedLowercaseString = [localizedTypeDescription localizedLowercaseString];

    localizedTypeDescription = localizedLowercaseString;
  }

  v16 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:1];
  v17 = MEMORY[0x1E696AEC0];
  v18 = WFLocalizedString(@"Choose the %@ to remove from the %@.");
  selectedProperty = [(WFContentItemSetterAction *)self selectedProperty];
  name = [selectedProperty name];
  lowercaseString = [name lowercaseString];
  v22 = [v17 stringWithFormat:v18, lowercaseString, localizedTypeDescription];
  [v16 setTitle:v22];

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __76__WFContentItemSetterAction_presentAlertWithUserInterface_input_completion___block_invoke;
  v48[3] = &unk_1E8378830;
  v23 = v11;
  v49 = v23;
  v24 = v16;
  v50 = v24;
  v25 = v14;
  v26 = [v14 if_compactMap:v48];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v45;
    do
    {
      v30 = 0;
      do
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [v24 addButton:*(*(&v44 + 1) + 8 * v30++)];
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v28);
  }

  v31 = [MEMORY[0x1E6996C78] cancelButtonWithTarget:self action:sel_cancel];
  [v24 addButton:v31];

  v32 = MEMORY[0x1E6996C78];
  v33 = WFLocalizedString(@"Done");
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __76__WFContentItemSetterAction_presentAlertWithUserInterface_input_completion___block_invoke_3;
  v41[3] = &unk_1E837E1F8;
  v42 = v26;
  v43 = v38;
  v34 = v38;
  v35 = v26;
  v36 = [v32 buttonWithTitle:v33 style:0 preferred:1 handler:v41];
  [v24 addButton:v36];

  [v40 presentAlert:v24];
  v37 = *MEMORY[0x1E69E9840];
}

id __76__WFContentItemSetterAction_presentAlertWithUserInterface_input_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 containsIndex:a3];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __76__WFContentItemSetterAction_presentAlertWithUserInterface_input_completion___block_invoke_2;
  v14 = &unk_1E837DF80;
  v15 = *(a1 + 40);
  v16 = a3;
  v8 = _Block_copy(&v11);
  v9 = [MEMORY[0x1E6996D28] buttonWithContentItem:v6 selected:v7 stickySelection:1 handler:{v8, v11, v12, v13, v14}];

  return v9;
}

void __76__WFContentItemSetterAction_presentAlertWithUserInterface_input_completion___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isSelected])
        {
          v9 = [v8 contentItem];
          [v2 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 40);
  v11 = [MEMORY[0x1E6996D40] collectionWithItems:v2];
  (*(v10 + 16))(v10, v11);

  v12 = *MEMORY[0x1E69E9840];
}

void __76__WFContentItemSetterAction_presentAlertWithUserInterface_input_completion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) buttons];
  v3 = [v2 objectAtIndexedSubscript:*(a1 + 40)];
  v4 = objc_opt_class();
  v5 = v3;
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315906;
      v11 = "WFEnforceClass";
      v12 = 2114;
      v13 = v5;
      v14 = 2114;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v4;
      v8 = v15;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Missing a contentDestination for %@", &v10, 0x2Au);
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  [v6 setSelected:{objc_msgSend(v6, "isSelected") ^ 1}];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)userValueForSelectedPropertyWithCompletion:(id)completion
{
  completionCopy = completion;
  selectedProperty = [(WFContentItemSetterAction *)self selectedProperty];
  v6 = [(WFContentItemSetterAction *)self parameterKeyForProperty:selectedProperty];

  v7 = [(WFAction *)self parameterForKey:v6];
  processedParameters = [(WFAction *)self processedParameters];
  v9 = [processedParameters objectForKey:v6];

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [v9 wf_isEmpty]) && (objc_msgSend(v7, "supportedVariableTypes"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", @"Ask"), v10, (v11))
  {
    userInterface = [(WFAction *)self userInterface];
    isRunningWithSiriUI = [userInterface isRunningWithSiriUI];

    if (isRunningWithSiriUI)
    {
      wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
      [(WFAction *)self finishRunningWithError:wfUnsupportedUserInterfaceError];
    }

    else
    {
      [(WFContentItemSetterAction *)self setParameterState:0 forKey:v6];
      v15 = [MEMORY[0x1E695DFA0] orderedSetWithObject:v7];
      v16 = dispatch_get_global_queue(0, 0);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __72__WFContentItemSetterAction_userValueForSelectedPropertyWithCompletion___block_invoke;
      v17[3] = &unk_1E8378808;
      v18 = v6;
      selfCopy = self;
      v20 = completionCopy;
      [(WFAction *)self askForValuesOfParameters:v15 withDefaultStates:MEMORY[0x1E695E0F8] prompts:MEMORY[0x1E695E0F8] input:0 workQueue:v16 completionHandler:v17];
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, v9);
  }
}

void __72__WFContentItemSetterAction_userValueForSelectedPropertyWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v3 = MEMORY[0x1E695DF90];
  v4 = [*(a1 + 40) processedParameters];
  v5 = [v3 dictionaryWithDictionary:v4];

  [v5 setObject:v6 forKeyedSubscript:*(a1 + 32)];
  [*(a1 + 40) setProcessedParameters:v5];
  (*(*(a1 + 48) + 16))();
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v42[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  selectedProperty = [(WFContentItemSetterAction *)self selectedProperty];

  if (!selectedProperty)
  {
    [(WFAction *)self finishRunningWithError:0];
    goto LABEL_17;
  }

  items = [inputCopy items];
  firstObject = [items firstObject];

  if (firstObject && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(WFAction *)self contentItemClass];
    if (objc_opt_isKindOfClass())
    {
      localizedTypeDescription = [(objc_class *)[(WFAction *)self contentItemClass] localizedTypeDescription];
      if ([(objc_class *)[(WFAction *)self contentItemClass] canLowercaseTypeDescription])
      {
        localizedLowercaseString = [localizedTypeDescription localizedLowercaseString];

        localizedTypeDescription = localizedLowercaseString;
      }

      v10 = [(WFContentItemSetterAction *)self changeTransactionWithInput:firstObject];
      if (!v10)
      {
        v23 = MEMORY[0x1E695DF90];
        v41 = *MEMORY[0x1E696A588];
        v24 = MEMORY[0x1E696AEC0];
        v25 = WFLocalizedString(@"The provided %@ cannot be edited.");
        v26 = [v24 stringWithFormat:v25, localizedTypeDescription];
        v42[0] = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
        v11 = [v23 dictionaryWithDictionary:v27];

        if ([(objc_class *)[(WFAction *)self contentItemClass] isEqual:objc_opt_class()])
        {
          v28 = WFLocalizedString(@"Please use the Select Contact or Find Contacts action instead to provide a contact.");
          [v11 setObject:v28 forKeyedSubscript:*MEMORY[0x1E696A578]];
        }

        v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:6 userInfo:v11];
        [(WFAction *)self finishRunningWithError:v29];

        goto LABEL_26;
      }

      v11 = [(WFAction *)self parameterStateForKey:@"Mode"];
      value = [v11 value];
      [v10 setMode:value];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke;
      aBlock[3] = &unk_1E8378748;
      aBlock[4] = self;
      v13 = v10;
      v40 = v13;
      v14 = _Block_copy(aBlock);
      mode = [v13 mode];
      if ([mode isEqual:*MEMORY[0x1E6997020]])
      {
        selectedProperty2 = [(WFContentItemSetterAction *)self selectedProperty];
        multipleValues = [selectedProperty2 multipleValues];

        if (multipleValues)
        {
          v18 = [(WFAction *)self parameterStateForKey:@"RemoveSpecifiedValue"];
          if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v19 = [(WFAction *)self parameterValueForKey:@"RemoveSpecifiedValue" ofClass:objc_opt_class()];
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_10;
            v34[3] = &unk_1E8378790;
            v35 = v14;
            selectedProperty3 = [(WFContentItemSetterAction *)self selectedProperty];
            propertyClasses = [selectedProperty3 propertyClasses];
            [v19 getObjectRepresentations:v34 forClass:{objc_msgSend(propertyClasses, "firstObject")}];
          }

          else
          {
            selectedProperty4 = [(WFContentItemSetterAction *)self selectedProperty];
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_4;
            v36[3] = &unk_1E83787B8;
            v36[4] = self;
            v37 = localizedTypeDescription;
            v38 = v14;
            [selectedProperty4 getValuesForObject:firstObject completionHandler:v36];
          }

          goto LABEL_25;
        }
      }

      else
      {
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_11;
      v31[3] = &unk_1E83790C8;
      v31[4] = self;
      v33 = v14;
      v32 = firstObject;
      [(WFContentItemSetterAction *)self userValueForSelectedPropertyWithCompletion:v31];

LABEL_25:
LABEL_26:

      goto LABEL_15;
    }
  }

  else
  {

    firstObject = 0;
  }

  [(WFAction *)self finishRunningWithError:0];
LABEL_15:

LABEL_17:
  v22 = *MEMORY[0x1E69E9840];
}

void __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 selectedProperty];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_2;
  v7[3] = &unk_1E837C4D8;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v5 updateWithValue:v4 withTransaction:v8 completion:v7];
}

void __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6996D40];
  v4 = [a2 if_compactMap:&__block_literal_global_460];
  v5 = [v3 collectionWithItems:v4];

  v6 = [*(a1 + 32) selectedProperty];
  v7 = [v6 hasPropertyClass:objc_opt_class()];

  if (v7)
  {
    v8 = MEMORY[0x1E6996D40];
    v9 = [v5 items];
    v10 = [v9 if_objectsPassingTest:&__block_literal_global_464];
    v11 = [v8 collectionWithItems:v10];

    v5 = v11;
  }

  v12 = [v5 items];
  v13 = [v12 count];

  v14 = *(a1 + 32);
  if (v13)
  {
    v15 = [*(a1 + 32) userInterface];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_7;
    v26[3] = &unk_1E837BF20;
    v26[4] = *(a1 + 32);
    v27 = *(a1 + 48);
    [v14 presentAlertWithUserInterface:v15 input:v5 completion:v26];
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v17 = MEMORY[0x1E696AEC0];
    v18 = [v14 selectedProperty];
    v19 = [v18 name];
    v20 = [v19 localizedLowercaseString];
    v21 = [v17 stringWithFormat:@"There are no %@ to remove from the %@.", v20, *(a1 + 40)];
    v22 = WFLocalizedString(v21);
    v29[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v24 = [v16 errorWithDomain:@"WFActionErrorDomain" code:6 userInfo:v23];
    [v14 finishRunningWithError:v24];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_11(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v4 = [MEMORY[0x1E6996D58] itemWithObject:v3];
        v5 = v4;
        if (v4)
        {
          v6 = v4;
        }

        else
        {
          v6 = v3;
        }

        v7 = v6;

        v3 = v7;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [a1[4] selectedProperty];
    v9 = [v8 hasPropertyClass:objc_opt_class()];

    if (v9)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_12;
      v35[3] = &unk_1E837F588;
      v36 = a1[6];
      [v3 getFileRepresentations:v35 forType:0];
      v10 = v36;
    }

    else
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_13;
      v32[3] = &unk_1E837A538;
      v14 = a1[6];
      v33 = a1[4];
      v34 = v14;
      v15 = [v33 selectedProperty];
      v16 = [v15 propertyClasses];
      [v3 getObjectRepresentations:v32 forClass:{objc_msgSend(v16, "firstObject")}];

      v10 = v34;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_15;
    v29[3] = &unk_1E83787E0;
    v11 = a1[6];
    v30 = a1[4];
    v31 = v11;
    v12 = [v30 selectedProperty];
    v13 = [v12 propertyClasses];
    [v3 getObjectRepresentation:v29 forClass:{objc_msgSend(v13, "firstObject")}];

    v10 = v31;
LABEL_14:

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [a1[4] selectedProperty];
    v18 = [v17 hasPropertyClass:objc_opt_class()];

    if (v18)
    {
      v19 = [v3 unitString];
      v20 = [WFDurationQuantityFieldParameter calendarUnitFromUnitString:v19];

      v21 = a1[5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [a1[5] event];
        v23 = [v22 startDate];
      }

      else
      {
        v23 = [MEMORY[0x1E695DF00] date];
      }

      v24 = [MEMORY[0x1E695DEE8] currentCalendar];
      v25 = [v3 magnitude];
      v26 = [v24 dateByAddingUnit:v20 value:objc_msgSend(v25 toDate:"integerValue") options:{v23, 0}];

      v27 = MEMORY[0x1E696AD98];
      [v26 timeIntervalSinceDate:v23];
      v28 = [v27 numberWithDouble:?];

      v3 = v28;
    }
  }

  (*(a1[6] + 2))();
LABEL_22:
}

void __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_13(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_14;
  v4[3] = &unk_1E837E220;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v3 = [a2 if_map:v4];
  (*(v2 + 16))(v2, v3);
}

void __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) setAdditionalPropertyIfNecessaryForValue:a2];
  (*(v2 + 16))(v2, v3);
}

void __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectedProperty];
  v5 = [v4 hasPropertyClass:objc_opt_class()];

  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_8;
    v11[3] = &unk_1E837F588;
    v6 = &v12;
    v12 = *(a1 + 40);
    [v3 getFileRepresentations:v11 forType:0];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_9;
    v9[3] = &unk_1E8378790;
    v6 = &v10;
    v10 = *(a1 + 40);
    v7 = [*(a1 + 32) selectedProperty];
    v8 = [v7 propertyClasses];
    [v3 getObjectRepresentations:v9 forClass:{objc_msgSend(v8, "firstObject")}];
  }
}

uint64_t __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 participant];
  v3 = [v2 isCurrentUser];

  return v3 ^ 1u;
}

id __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E6996D58] itemWithFile:v2];
  }

  else
  {
    [MEMORY[0x1E6996D58] itemWithObject:v2];
  }
  v3 = ;

  return v3;
}

uint64_t __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_3;
    v6[3] = &unk_1E8378720;
    v3 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    return [v3 saveWithCompletionHandler:v6 isNew:0];
  }

  else
  {
    v5 = *(a1 + 32);

    return [v5 finishRunningWithError:0];
  }
}

uint64_t __56__WFContentItemSetterAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 output];
    [v5 addItem:v4];
  }

  v6 = *(a1 + 32);

  return [v6 finishRunningWithError:0];
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  enumerationCopy = enumeration;
  stateCopy = state;
  v8 = [enumerationCopy key];
  v9 = [v8 isEqual:@"WFContentItemPropertyName"];

  if (v9)
  {
    v10 = [(WFAction *)self parameterStateForKey:@"Mode"];
    contentItemClass = [(WFAction *)self contentItemClass];
    value = [stateCopy value];
    v13 = [(objc_class *)contentItemClass propertyForName:value];

    if (!v13)
    {
      v22 = 0;
LABEL_14:

      goto LABEL_15;
    }

    value2 = [v10 value];
    if ([value2 isEqual:*MEMORY[0x1E6997018]])
    {
      singularItemName = [v13 singularItemName];

      if (singularItemName)
      {
        localizedSingularItemName = [v13 localizedSingularItemName];
LABEL_13:
        v22 = localizedSingularItemName;
        goto LABEL_14;
      }
    }

    else
    {
    }

    localizedSingularItemName = [v13 localizedName];
    goto LABEL_13;
  }

  v17 = [enumerationCopy key];
  v18 = [v17 isEqual:@"ValueLabel"];

  if (v18)
  {
    value3 = [stateCopy value];

    if (value3)
    {
      v20 = MEMORY[0x1E6996D18];
      value4 = [stateCopy value];
      v22 = [v20 localizedStringForLabel:value4];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = [(WFContentItemSetterAction *)self displayStringForTransactionModeState:stateCopy];
  }

LABEL_15:

  return v22;
}

- (id)possibleStatesForEnumeration:(id)enumeration
{
  enumerationCopy = enumeration;
  v5 = [enumerationCopy key];
  v6 = [v5 isEqual:@"WFContentItemPropertyName"];

  if (v6)
  {
    properties = [(WFContentItemSetterAction *)self properties];
    v8 = [properties if_compactMap:&__block_literal_global_431_33777];
    goto LABEL_9;
  }

  v9 = [enumerationCopy key];
  v10 = [v9 isEqual:@"ValueLabel"];

  if (v10)
  {
    properties = [(WFContentItemSetterAction *)self selectedProperty];
    possibleLabels = [properties possibleLabels];
    v8 = [possibleLabels if_map:&__block_literal_global_434];
  }

  else
  {
    properties = [(WFAction *)self parameterStateForKey:@"WFContentItemPropertyName"];
    variable = [properties variable];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = MEMORY[0x1E695E0F0];
      goto LABEL_9;
    }

    possibleLabels = [(WFContentItemSetterAction *)self selectedProperty];
    allowedTransactionModes = [possibleLabels allowedTransactionModes];
    allObjects = [allowedTransactionModes allObjects];
    v8 = [allObjects if_map:&__block_literal_global_437];
  }

LABEL_9:

  return v8;
}

WFStringSubstitutableState *__58__WFContentItemSetterAction_possibleStatesForEnumeration___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:v2];

  return v3;
}

WFStringSubstitutableState *__58__WFContentItemSetterAction_possibleStatesForEnumeration___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:v2];

  return v3;
}

WFStringSubstitutableState *__58__WFContentItemSetterAction_possibleStatesForEnumeration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WFStringSubstitutableState alloc];
  v4 = [v2 name];

  v5 = [(WFVariableSubstitutableParameterState *)v3 initWithValue:v4];

  return v5;
}

- (id)displayStringForTransactionModeState:(id)state
{
  stateCopy = state;
  value = [stateCopy value];
  v5 = [value isEqual:*MEMORY[0x1E6997018]];

  if (v5)
  {
    v6 = WFLocalizedStringWithKey(@"Add (WFContentItemChangeTransactionMode)", @"Add");
  }

  else
  {
    value2 = [stateCopy value];
    v8 = [value2 isEqual:*MEMORY[0x1E6997020]];

    if (v8)
    {
      v9 = @"Remove";
    }

    else
    {
      value3 = [stateCopy value];
      v11 = [value3 isEqual:*MEMORY[0x1E6997028]];

      if (v11)
      {
        v9 = @"Remove All";
      }

      else
      {
        v9 = @"Set";
      }
    }

    v6 = WFLocalizedString(v9);
  }

  v12 = v6;

  return v12;
}

- (void)setPromptForSelectedParameter
{
  v3 = [(WFAction *)self parameterStateForKey:@"Mode"];
  if (v3)
  {
    v24 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v3 = v24;
    if (isKindOfClass)
    {
      selectedProperty = [(WFContentItemSetterAction *)self selectedProperty];
      v6 = [(WFContentItemSetterAction *)self parameterKeyForProperty:selectedProperty];
      v7 = [(WFAction *)self parameterForKey:v6];

      value = [v24 value];
      v9 = [value isEqual:*MEMORY[0x1E6997018]];

      if (v9)
      {
        singularItemName = [selectedProperty singularItemName];
        if (singularItemName)
        {
          [selectedProperty localizedSingularItemName];
        }

        else
        {
          [selectedProperty localizedName];
        }
        localizedName = ;

        if ([selectedProperty canLowercaseName])
        {
          localizedLowercaseString = [localizedName localizedLowercaseString];

          localizedName = localizedLowercaseString;
        }

        v19 = MEMORY[0x1E696AEC0];
        v20 = WFLocalizedString(@"What %@ do you want to add?");
        v21 = [v19 localizedStringWithFormat:v20, localizedName];
        [v7 setLocalizedPrompt:v21];

        v16 = [(WFAction *)self parameterForKey:@"ValueLabel"];
        if (!v16)
        {
          goto LABEL_18;
        }

        v22 = MEMORY[0x1E696AEC0];
        v17 = WFLocalizedString(@"What label do you want for the %@?");
        v23 = [v22 localizedStringWithFormat:v17, localizedName];
        [v16 setLocalizedPrompt:v23];
      }

      else
      {
        localizedName = [selectedProperty localizedName];
        if ([selectedProperty canLowercaseName])
        {
          localizedLowercaseString2 = [localizedName localizedLowercaseString];

          localizedName = localizedLowercaseString2;
        }

        multipleValues = [selectedProperty multipleValues];
        v14 = MEMORY[0x1E696AEC0];
        if (multipleValues)
        {
          v15 = @"What %@ do you want to set? (Plural)";
        }

        else
        {
          v15 = @"What %@ do you want to set? (Singular)";
        }

        v16 = WFLocalizedStringWithKey(v15, @"What %@ do you want to set?");
        v17 = [v14 localizedStringWithFormat:v16, localizedName];
        [v7 setLocalizedPrompt:v17];
      }

LABEL_18:
      v3 = v24;
    }
  }
}

- (id)parameterDefinitions
{
  v139[5] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [WFParameterDefinition alloc];
  v138[0] = @"Class";
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v139[0] = v6;
  v139[1] = @"WFContentItemPropertyName";
  v138[1] = @"Key";
  v138[2] = @"Label";
  v7 = WFLocalizedStringResourceWithKey(@"Detail (ContentItemSetter)", @"Detail");
  v139[2] = v7;
  v138[3] = @"DisallowedVariableTypes";
  v137 = @"Variable";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
  v139[3] = v8;
  v138[4] = @"Description";
  v9 = [[WFContentItemSetterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:1];
  v139[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v139 forKeys:v138 count:5];
  v11 = [(WFParameterDefinition *)v4 initWithDictionary:v10];
  [v3 addObject:v11];

  v12 = [WFParameterDefinition alloc];
  v135[0] = @"Class";
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v136[0] = v14;
  v136[1] = @"Mode";
  v135[1] = @"Key";
  v135[2] = @"Description";
  v15 = [[WFContentItemSetterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:2];
  v136[2] = v15;
  v135[3] = @"DisallowedVariableTypes";
  v134 = @"Variable";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
  v136[3] = v16;
  v135[4] = @"Label";
  v17 = WFLocalizedStringResourceWithKey(@"Edit (ContentItemSetter)", @"Edit");
  v135[5] = @"DefaultValue";
  v18 = *MEMORY[0x1E6997030];
  v136[4] = v17;
  v136[5] = v18;
  v92 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v136 forKeys:v135 count:6];
  v20 = [(WFParameterDefinition *)v12 initWithDictionary:v19];
  [v3 addObject:v20];

  inputParameterKey = [(WFContentItemSetterAction *)self inputParameterKey];
  if (inputParameterKey)
  {
    v22 = [WFParameterDefinition alloc];
    v132[0] = @"Class";
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v133[0] = v24;
    v133[1] = inputParameterKey;
    v132[1] = @"Key";
    v132[2] = @"Label";
    v25 = [[WFContentItemSetterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:0];
    v133[2] = v25;
    v132[3] = @"Placeholder";
    v26 = [[WFContentItemSetterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:0];
    v133[3] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:v132 count:4];
    v28 = [(WFParameterDefinition *)v22 initWithDictionary:v27];
    [v3 addObject:v28];
  }

  v98 = inputParameterKey;
  v99 = [WFParameterDefinition alloc];
  v130[0] = @"Class";
  v29 = objc_opt_class();
  v103 = NSStringFromClass(v29);
  v131[0] = v103;
  v131[1] = @"RemoveSpecifiedValue";
  v130[1] = @"Key";
  v130[2] = @"Label";
  v101 = WFLocalizedStringResourceWithKey(@"Specified (ContentItemSetter)", @"Specified");
  v131[2] = v101;
  v130[3] = @"Description";
  v95 = [[WFContentItemSetterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:3];
  v131[3] = v95;
  v130[4] = @"RequiredResources";
  v127[0] = @"WFParameterKey";
  v127[1] = @"WFParameterValue";
  v30 = *MEMORY[0x1E6997020];
  v128[0] = @"Mode";
  v128[1] = v30;
  v127[2] = @"WFResourceClass";
  v31 = objc_opt_class();
  v93 = NSStringFromClass(v31);
  v128[2] = v93;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:3];
  v129[0] = v32;
  v126[0] = @"WFContentItemPropertyName";
  v125[0] = @"WFParameterKey";
  v125[1] = @"WFParameterValues";
  properties = [(WFContentItemSetterAction *)self properties];
  v34 = [properties if_compactMap:&__block_literal_global_33840];
  v126[1] = v34;
  v125[2] = @"WFResourceClass";
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  v126[2] = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:3];
  v129[1] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:2];
  v131[4] = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:5];
  v40 = [(WFParameterDefinition *)v99 initWithDictionary:v39];
  v100 = v3;
  [v3 addObject:v40];

  v41 = objc_opt_new();
  v104 = objc_opt_new();
  v102 = objc_opt_new();
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  properties2 = [(WFContentItemSetterAction *)self properties];
  v43 = [properties2 countByEnumeratingWithState:&v105 objects:v124 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v106;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v106 != v45)
        {
          objc_enumerationMutation(properties2);
        }

        v47 = *(*(&v105 + 1) + 8 * i);
        v48 = [(WFContentItemSetterAction *)self parameterKeyForProperty:v47];
        v49 = [v41 valueForKey:v48];

        if (!v49)
        {
          v50 = MEMORY[0x1E695DF90];
          parameterDefinition = [v47 parameterDefinition];
          v52 = [v50 dictionaryWithDictionary:parameterDefinition];

          [v52 setObject:v48 forKeyedSubscript:@"Key"];
          v53 = [(WFContentItemSetterAction *)self requiredResourceForProperty:v47];
          [v52 setObject:v53 forKeyedSubscript:@"RequiredResources"];

          v54 = [[WFParameterDefinition alloc] initWithDictionary:v52];
          [v41 setObject:v54 forKeyedSubscript:v48];

          if ([v47 isLabeledValue])
          {
            name = [v47 name];
            [v104 addObject:name];
          }

          if ([v47 hasPropertyClass:objc_opt_class()])
          {
            name2 = [v47 name];
            [v102 addObject:name2];
          }
        }
      }

      v44 = [properties2 countByEnumeratingWithState:&v105 objects:v124 count:16];
    }

    while (v44);
  }

  allValues = [v41 allValues];
  [v100 addObjectsFromArray:allValues];

  v58 = v104;
  if ([v104 count])
  {
    v59 = [WFParameterDefinition alloc];
    v122[0] = @"Class";
    v60 = objc_opt_class();
    v96 = NSStringFromClass(v60);
    v123[0] = v96;
    v123[1] = @"ValueLabel";
    v122[1] = @"Key";
    v122[2] = @"Label";
    v61 = WFLocalizedStringResourceWithKey(@"Label (ContentItemSetter)", @"Label");
    v62 = *MEMORY[0x1E69E1260];
    v123[2] = v61;
    v123[3] = v62;
    v122[3] = @"AutocapitalizationType";
    v122[4] = @"RequiredResources";
    v119[0] = @"WFParameterKey";
    v119[1] = @"WFParameterValues";
    v120[0] = @"WFContentItemPropertyName";
    v120[1] = v104;
    v119[2] = @"WFResourceClass";
    v63 = objc_opt_class();
    v64 = NSStringFromClass(v63);
    v120[2] = v64;
    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:3];
    v121[0] = v65;
    v117[0] = @"WFParameterKey";
    v117[1] = @"WFParameterValue";
    v66 = *MEMORY[0x1E6997018];
    v118[0] = @"Mode";
    v118[1] = v66;
    v117[2] = @"WFResourceClass";
    v67 = objc_opt_class();
    v68 = NSStringFromClass(v67);
    v118[2] = v68;
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:3];
    v121[1] = v69;
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:2];
    v123[4] = v70;
    v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:5];
    v72 = [(WFParameterDefinition *)v59 initWithDictionary:v71];
    [v100 addObject:v72];

    v58 = v104;
  }

  v73 = v102;
  if ([v102 count])
  {
    v90 = [WFParameterDefinition alloc];
    v115[0] = @"Class";
    v74 = objc_opt_class();
    v97 = NSStringFromClass(v74);
    v116[0] = v97;
    v116[1] = @"ValueLabel";
    v115[1] = @"Key";
    v115[2] = @"Label";
    v94 = WFLocalizedStringResourceWithKey(@"Role (ContentItemSetter)", @"Role");
    v116[2] = v94;
    v115[3] = @"OnDisplayName";
    v91 = WFLocalizedStringResourceWithKey(@"Required (ContentItemSetterRole)", @"Required");
    v116[3] = v91;
    v115[4] = @"OffDisplayName";
    v89 = WFLocalizedStringResourceWithKey(@"Optional (ContentItemSetterRole)", @"Optional");
    v116[4] = v89;
    v115[5] = @"DefaultValue";
    v75 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v116[5] = v75;
    v115[6] = @"RequiredResources";
    v112[0] = @"WFParameterKey";
    v112[1] = @"WFParameterValues";
    v113[0] = @"WFContentItemPropertyName";
    v113[1] = v102;
    v112[2] = @"WFResourceClass";
    v76 = objc_opt_class();
    v77 = NSStringFromClass(v76);
    v113[2] = v77;
    v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:3];
    v114[0] = v78;
    v111[0] = @"Mode";
    v110[0] = @"WFParameterKey";
    v110[1] = @"WFParameterValues";
    v79 = *MEMORY[0x1E6997018];
    v109[0] = v92;
    v109[1] = v79;
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:2];
    v111[1] = v80;
    v110[2] = @"WFResourceClass";
    v81 = objc_opt_class();
    v82 = NSStringFromClass(v81);
    v111[2] = v82;
    v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:3];
    v114[1] = v83;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:2];
    v116[6] = v84;
    v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:7];
    v86 = [(WFParameterDefinition *)v90 initWithDictionary:v85];
    [v100 addObject:v86];

    v73 = v102;
    v58 = v104;
  }

  v87 = *MEMORY[0x1E69E9840];

  return v100;
}

id __49__WFContentItemSetterAction_parameterDefinitions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 multipleValues])
  {
    v3 = [v2 name];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = WFContentItemSetterAction;
  v7 = [(WFAction *)&v19 setParameterState:state forKey:keyCopy];
  if (v7 && [keyCopy isEqualToString:@"WFContentItemPropertyName"])
  {
    [(WFAction *)self outputDetailsUpdated];
    v8 = [(WFAction *)self parameterStateForKey:@"Mode"];
    variable = [v8 variable];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [WFStringSubstitutableState alloc];
      v12 = objc_alloc_init(WFAskEachTimeVariable);
      v13 = [(WFVariableSubstitutableParameterState *)v11 initWithVariable:v12];
    }

    else
    {
      selectedProperty = [(WFContentItemSetterAction *)self selectedProperty];
      value = [v8 value];
      v12 = [selectedProperty preferredTransactionModeWithCurrentMode:value];

      if (!v12)
      {
        [(WFContentItemSetterAction *)self setParameterState:0 forKey:@"Mode"];
        goto LABEL_8;
      }

      v13 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:v12];
    }

    v16 = v13;
    [(WFContentItemSetterAction *)self setParameterState:v13 forKey:@"Mode"];

LABEL_8:
    v17 = [(WFAction *)self parameterForKey:@"Mode"];
    [v17 reloadPossibleStates];
  }

  if (([keyCopy isEqualToString:@"WFContentItemPropertyName"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"Mode"))
  {
    [(WFContentItemSetterAction *)self setPromptForSelectedParameter];
  }

  return v7;
}

- (id)requiredResourceForProperty:(id)property
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19[0] = @"WFContentItemPropertyName";
  v18[0] = @"WFParameterKey";
  v18[1] = @"WFParameterValue";
  name = [property name];
  v19[1] = name;
  v18[2] = @"WFResourceClass";
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v19[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v20[0] = v6;
  v17[0] = @"Mode";
  v16[0] = @"WFParameterKey";
  v16[1] = @"WFParameterValues";
  v7 = *MEMORY[0x1E6997018];
  v15[0] = *MEMORY[0x1E6997030];
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v17[1] = v8;
  v16[2] = @"WFResourceClass";
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v17[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v20[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)parameterKeyForProperty:(id)property
{
  v4 = MEMORY[0x1E696AEC0];
  propertyCopy = property;
  v6 = [(objc_class *)[(WFAction *)self contentItemClass] description];
  name = [propertyCopy name];

  v8 = [name stringByReplacingOccurrencesOfString:@" " withString:&stru_1F4A1C408];
  v9 = [v4 stringWithFormat:@"%@%@", v6, v8];

  return v9;
}

- (void)initializeParameters
{
  v6.receiver = self;
  v6.super_class = WFContentItemSetterAction;
  [(WFAction *)&v6 initializeParameters];
  v3 = [(WFAction *)self parameterForKey:@"Mode"];
  [v3 setDataSource:self];
  v4 = [(WFAction *)self parameterForKey:@"WFContentItemPropertyName"];
  [v4 setDataSource:self];
  v5 = [(WFAction *)self parameterForKey:@"ValueLabel"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setDataSource:self];
    }
  }

  [(WFContentItemSetterAction *)self setPromptForSelectedParameter];
}

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  v4 = MEMORY[0x1E696AEC0];
  contextCopy = context;
  v6 = WFLocalizedStringResourceWithKey(@"Edited %@", @"Edited %@");
  v7 = [contextCopy localize:v6];

  localizedTypeDescription = [(objc_class *)[(WFAction *)self contentItemClass] localizedTypeDescription];
  v9 = [v4 localizedStringWithFormat:v7, localizedTypeDescription];

  return v9;
}

- (WFContentProperty)selectedProperty
{
  if ([(WFAction *)self isRunning]&& ([(WFAction *)self processedParameters], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    value = [(WFAction *)self parameterValueForKey:@"WFContentItemPropertyName" ofClass:objc_opt_class()];
  }

  else
  {
    v5 = [(WFAction *)self parameterStateForKey:@"WFContentItemPropertyName"];
    value = [v5 value];
  }

  v6 = [(objc_class *)[(WFAction *)self contentItemClass] propertyForName:value];

  return v6;
}

- (id)outputContentClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = [(WFAction *)self contentItemClass];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)localizedKeywordsWithContext:(id)context
{
  v10.receiver = self;
  v10.super_class = WFContentItemSetterAction;
  contextCopy = context;
  v4 = [(WFAction *)&v10 localizedKeywordsWithContext:contextCopy];
  v5 = WFLocalizedStringResourceWithKey(@"property|properties|add|update", @"property|properties|add|update");
  v6 = [contextCopy localize:{v5, v10.receiver, v10.super_class}];

  v7 = [v6 componentsSeparatedByString:@"|"];

  v8 = [v4 arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  localizedTypeDescription = [(objc_class *)[(WFAction *)self contentItemClass] localizedTypeDescription];
  if ([(objc_class *)[(WFAction *)self contentItemClass] canLowercaseTypeDescription])
  {
    lowercaseString = [localizedTypeDescription lowercaseString];

    localizedTypeDescription = lowercaseString;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = WFLocalizedStringResourceWithKey(@"Sets a specific field of the %@ passed into the action.", @"Sets a specific field of the %@ passed into the action.");
  v9 = [contextCopy localize:v8];

  v10 = [v7 localizedStringWithFormat:v9, localizedTypeDescription];

  return v10;
}

- (id)parameterSummary
{
  v68 = *MEMORY[0x1E69E9840];
  v51 = WFLocalizedStringResourceWithKey(@"${Mode} ${WFContentItemPropertyName} of ${WFInput} to ${__PARAMETER__}", @"${Mode} ${WFContentItemPropertyName} of ${WFInput} to ${__PARAMETER__}");
  v50 = WFLocalizedStringResourceWithKey(@"${Mode} ${WFContentItemPropertyName} of ${WFInput} to ${__PARAMETER__} as ${ValueLabel}", @"${Mode} ${WFContentItemPropertyName} of ${WFInput} to ${__PARAMETER__} as ${ValueLabel}");
  v49 = WFLocalizedStringResourceWithKey(@"${Mode} ${WFContentItemPropertyName} ${__PARAMETER__} to ${WFInput}", @"${Mode} ${WFContentItemPropertyName} ${__PARAMETER__} to ${WFInput}");
  v48 = WFLocalizedStringResourceWithKey(@"${Mode} ${WFContentItemPropertyName} ${__PARAMETER__} to ${WFInput} as ${ValueLabel}", @"${Mode} ${WFContentItemPropertyName} ${__PARAMETER__} to ${WFInput} as ${ValueLabel}");
  v52 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v54 = *MEMORY[0x1E6997018];
  v3 = *MEMORY[0x1E6997018];
  v55 = *MEMORY[0x1E6997030];
  v66[0] = *MEMORY[0x1E6997030];
  v66[1] = v3;
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
  v46 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v46)
  {
    v45 = *v62;
    selfCopy = self;
    do
    {
      v4 = 0;
      do
      {
        if (*v62 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v4;
        v5 = *(*(&v61 + 1) + 8 * v4);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        properties = [(WFContentItemSetterAction *)self properties];
        v6 = [properties countByEnumeratingWithState:&v57 objects:v65 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v58;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v58 != v8)
              {
                objc_enumerationMutation(properties);
              }

              v10 = *(*(&v57 + 1) + 8 * i);
              allowedTransactionModes = [v10 allowedTransactionModes];
              v12 = [allowedTransactionModes containsObject:v5];

              if (v12)
              {
                if ([v10 isLabeledValue] && (objc_msgSend(v5, "isEqual:", v54) & 1) != 0 || objc_msgSend(v10, "hasPropertyClass:", objc_opt_class()))
                {
                  v13 = 1;
                  v14 = @",ValueLabel";
                }

                else
                {
                  v13 = 0;
                  v14 = &stru_1F4A1C408;
                }

                if ([v5 isEqual:v55])
                {
                  v15 = MEMORY[0x1E696AEC0];
                  v16 = selfCopy;
                  v17 = [(WFContentItemSetterAction *)selfCopy parameterKeyForProperty:v10];
                  v18 = [v15 stringWithFormat:@"Mode(Set), WFContentItemPropertyName, WFInput, %@%@", v17, v14];

                  v19 = v13 == 0;
                  v21 = v50;
                  v20 = v51;
                }

                else
                {
                  if (![v5 isEqual:v54])
                  {
                    continue;
                  }

                  v22 = MEMORY[0x1E696AEC0];
                  v16 = selfCopy;
                  v23 = [(WFContentItemSetterAction *)selfCopy parameterKeyForProperty:v10];
                  v18 = [v22 stringWithFormat:@"Mode(Append), WFInput, WFContentItemPropertyName, %@%@", v23, v14];

                  v19 = v13 == 0;
                  v21 = v48;
                  v20 = v49;
                }

                if (v19)
                {
                  v24 = v20;
                }

                else
                {
                  v24 = v21;
                }

                localize = [v24 localize];
                v26 = [(WFContentItemSetterAction *)v16 parameterKeyForProperty:v10];
                v27 = [localize stringByReplacingOccurrencesOfString:@"__PARAMETER__" withString:v26];

                v28 = [[WFActionParameterSummaryValue alloc] initWithKey:v18 localizedSummaryString:v27];
                [v52 addObject:v28];
              }
            }

            v7 = [properties countByEnumeratingWithState:&v57 objects:v65 count:16];
          }

          while (v7);
        }

        v4 = v47 + 1;
        self = selfCopy;
      }

      while (v47 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v46);
  }

  v29 = [WFActionParameterSummaryValue alloc];
  v30 = WFLocalizedStringResourceWithKey(@"${Mode} ${WFContentItemPropertyName} of ${WFInput}", @"${Mode} ${WFContentItemPropertyName} of ${WFInput}");
  v31 = [(WFActionParameterSummaryValue *)v29 initWithKey:@"Mode summaryString:WFContentItemPropertyName, WFInput", v30];
  [v52 addObject:v31];

  v32 = [WFActionParameterSummaryValue alloc];
  v33 = WFLocalizedStringResourceWithKey(@"${Mode} ${RemoveSpecifiedValue} ${WFContentItemPropertyName} from ${WFInput}", @"${Mode} ${RemoveSpecifiedValue} ${WFContentItemPropertyName} from ${WFInput}");
  v34 = [(WFActionParameterSummaryValue *)v32 initWithKey:@"Mode(Remove) summaryString:RemoveSpecifiedValue, WFContentItemPropertyName, WFInput", v33];
  [v52 addObject:v34];

  v35 = [WFActionParameterSummaryValue alloc];
  v36 = WFLocalizedStringResourceWithKey(@"${Mode} ${WFContentItemPropertyName} from ${WFInput}", @"${Mode} ${WFContentItemPropertyName} from ${WFInput}");
  v37 = [(WFActionParameterSummaryValue *)v35 initWithKey:@"Mode(Remove) summaryString:WFContentItemPropertyName, WFInput", v36];
  [v52 addObject:v37];

  v38 = [WFActionParameterSummaryValue alloc];
  v39 = WFLocalizedStringResourceWithKey(@"${Mode} ${WFContentItemPropertyName} from ${WFInput}", @"${Mode} ${WFContentItemPropertyName} from ${WFInput}");
  v40 = [(WFActionParameterSummaryValue *)v38 initWithKey:@"Mode(RemoveAll) summaryString:WFContentItemPropertyName, WFInput", v39];
  [v52 addObject:v40];

  v41 = [[WFActionParameterSummary alloc] initWithValues:v52];
  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  definition = [(WFAction *)self definition];
  name = [definition name];

  if (name)
  {
    v13.receiver = self;
    v13.super_class = WFContentItemSetterAction;
    v7 = [(WFAction *)&v13 localizedNameWithContext:contextCopy];
  }

  else
  {
    v8 = WFLocalizedStringResourceWithKey(@"WFContentItemSetterAction - Action Name", @"Edit %@");
    v9 = MEMORY[0x1E696AEC0];
    v10 = [contextCopy localize:v8];
    localizedTypeDescription = [(objc_class *)[(WFAction *)self contentItemClass] localizedTypeDescription];
    v7 = [v9 localizedStringWithFormat:v10, localizedTypeDescription];
  }

  return v7;
}

- (NSArray)properties
{
  allProperties = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = YES", @"settable"];
  v4 = [allProperties filteredArrayUsingPredicate:v3];

  return v4;
}

@end