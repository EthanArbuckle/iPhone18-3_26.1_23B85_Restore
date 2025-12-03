@interface WFCalendarPickerParameter
- (WFCalendarPickerParameter)initWithDefinition:(id)definition;
- (id)enumeration:(id)enumeration accessoryColorForPossibleState:(id)state;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (void)clearPossibleStates;
- (void)loadDefaultSerializedRepresentationForEnumeration:(id)enumeration completionHandler:(id)handler;
- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler;
- (void)possibleStatesDidChange;
- (void)wasAddedToWorkflow;
- (void)wasRemovedFromWorkflow;
@end

@implementation WFCalendarPickerParameter

- (id)enumeration:(id)enumeration accessoryColorForPossibleState:(id)state
{
  v30 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  value = [stateCopy value];
  calendarRGBAValue = [value calendarRGBAValue];

  if (calendarRGBAValue)
  {
    v7 = MEMORY[0x1E69E09E0];
    value2 = [stateCopy value];
    calendarRGBAValue2 = [value2 calendarRGBAValue];
    v10 = [v7 colorWithRGBAValue:{objc_msgSend(calendarRGBAValue2, "unsignedIntValue")}];
  }

  else
  {
    v11 = WFGetWorkflowEventStore();
    v12 = [v11 calendarsForEntityType:0];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v12;
    v10 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v14 = *v26;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          title = [v16 title];
          value3 = [stateCopy value];
          calendarTitle = [value3 calendarTitle];
          v20 = [title isEqualToString:calendarTitle];

          if (v20)
          {
            v21 = MEMORY[0x1E69E09E0];
            v22 = [MEMORY[0x1E69E09E0] colorWithCGColor:{objc_msgSend(v16, "CGColor")}];
            v10 = [v21 colorWithRGBAValue:{objc_msgSend(v22, "RGBAValue")}];

            goto LABEL_13;
          }
        }

        v10 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v23 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  stateCopy = state;
  value = [stateCopy value];
  allCalendars = [value allCalendars];

  if (allCalendars)
  {
    v7 = @"All Calendars";
LABEL_7:
    calendarTitle3 = WFLocalizedString(v7);
    goto LABEL_8;
  }

  value2 = [stateCopy value];
  calendarTitle = [value2 calendarTitle];
  v10 = [calendarTitle isEqualToString:@"Found in Mail"];

  if (v10)
  {
    v7 = @"Found in Mail";
    goto LABEL_7;
  }

  value3 = [stateCopy value];
  calendarTitle2 = [value3 calendarTitle];
  v13 = [calendarTitle2 isEqualToString:@"Birthdays"];

  if (v13)
  {
    v7 = @"Birthdays";
    goto LABEL_7;
  }

  value4 = [stateCopy value];
  calendarTitle3 = [value4 calendarTitle];

LABEL_8:

  return calendarTitle3;
}

- (void)possibleStatesDidChange
{
  v3.receiver = self;
  v3.super_class = WFCalendarPickerParameter;
  [(WFDynamicEnumerationParameter *)&v3 possibleStatesDidChange];
  [(WFDynamicEnumerationParameter *)self defaultSerializedRepresentationDidChange];
}

- (void)loadDefaultSerializedRepresentationForEnumeration:(id)enumeration completionHandler:(id)handler
{
  enumerationCopy = enumeration;
  handlerCopy = handler;
  defaultSerializedCalendarRepresentation = [(WFCalendarPickerParameter *)self defaultSerializedCalendarRepresentation];

  if (defaultSerializedCalendarRepresentation)
  {
    defaultSerializedCalendarRepresentation2 = [(WFCalendarPickerParameter *)self defaultSerializedCalendarRepresentation];
    handlerCopy[2](handlerCopy, defaultSerializedCalendarRepresentation2, 0);
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __97__WFCalendarPickerParameter_loadDefaultSerializedRepresentationForEnumeration_completionHandler___block_invoke;
    v10[3] = &unk_1E837D448;
    v10[4] = self;
    v11 = handlerCopy;
    [(WFCalendarPickerParameter *)self loadPossibleStatesForEnumeration:enumerationCopy searchTerm:0 completionHandler:v10];
  }
}

void __97__WFCalendarPickerParameter_loadDefaultSerializedRepresentationForEnumeration_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a3;
  v6 = [v4 defaultSerializedCalendarRepresentation];
  (*(v3 + 16))(v3, v6, v5);
}

- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler
{
  enumerationCopy = enumeration;
  handlerCopy = handler;
  stateQueue = [(WFCalendarPickerParameter *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__WFCalendarPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
  block[3] = &unk_1E837ECE0;
  v13 = enumerationCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = enumerationCopy;
  dispatch_async(stateQueue, block);
}

void __91__WFCalendarPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke(id *a1)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] possibleStates];
  if (v2 && ([a1[5] calendarsCollection], v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    v4 = a1[6];
    v29 = [a1[5] calendarsCollection];
    v4[2](v4);
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = WFGetWorkflowEventStore();
    v7 = [v6 defaultCalendarForNewEvents];
    v8 = objc_opt_new();
    v9 = [WFCalendarSubstitutableState alloc];
    v10 = [[WFEKCalendarDescriptor alloc] initWithAllCalendars];
    v11 = [(WFVariableSubstitutableParameterState *)v9 initWithValue:v10];

    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__31932;
    v39 = __Block_byref_object_dispose__31933;
    v40 = 0;
    if ([a1[5] allowsAllCalendars])
    {
      v12 = objc_alloc(MEMORY[0x1E696E928]);
      v42[0] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
      v14 = [v12 initWithTitle:0 items:v13];

      [v8 addObject:v14];
    }

    v15 = [v6 sourcesEnabledForEntityType:0];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __91__WFCalendarPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_184;
    v32[3] = &unk_1E8378498;
    v32[4] = a1[5];
    v16 = v7;
    v33 = v16;
    v34 = &v35;
    v17 = [v15 if_compactMap:v32];
    v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:1 selector:sel_localizedStandardCompare_];
    v41 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    v20 = [v17 sortedArrayUsingDescriptors:v19];

    [v8 addObjectsFromArray:v20];
    v21 = [objc_alloc(MEMORY[0x1E696E918]) initWithSections:v8];
    [a1[5] setCalendarsCollection:v21];

    if ([a1[5] allowsAllCalendars])
    {
      v22 = [(WFVariableSubstitutableParameterState *)v11 serializedRepresentation];
      v23 = a1[5];
      v24 = v23[42];
      v23[42] = v22;
    }

    else
    {
      v25 = a1[5];
      v26 = v36[5];
      v24 = v25[42];
      v25[42] = v26;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__WFCalendarPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_4;
    block[3] = &unk_1E837E1F8;
    v27 = a1[6];
    block[4] = a1[5];
    v31 = v27;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(&v35, 8);
    v28 = *MEMORY[0x1E69E9840];
  }
}

id __91__WFCalendarPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_184(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 calendarsForEntityType:0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__WFCalendarPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_2;
  v20[3] = &unk_1E8378448;
  v20[4] = *(a1 + 32);
  v5 = [v4 objectsPassingTest:v20];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:1 selector:sel_localizedStandardCompare_];
  v21[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__WFCalendarPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_3;
  v17[3] = &unk_1E8378470;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v18 = v9;
  v19 = v10;
  v11 = [v8 if_map:v17];
  if ([v11 count])
  {
    v12 = objc_alloc(MEMORY[0x1E696E928]);
    v13 = [v3 title];
    v14 = [v12 initWithTitle:v13 items:v11];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __91__WFCalendarPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) calendarsCollection];
  (*(v1 + 16))(v1, v2, 0);
}

BOOL __91__WFCalendarPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ![*(a1 + 32) hidesReadOnlyCalendars] || objc_msgSend(v3, "allowsContentModifications");

  return v4;
}

WFCalendarSubstitutableState *__91__WFCalendarPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[WFCalendarSubstitutableState alloc] initWithCalendar:v3];
  v5 = [*(a1 + 32) isEqual:v3];

  if (v5)
  {
    v6 = [(WFVariableSubstitutableParameterState *)v4 serializedRepresentation];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return v4;
}

- (void)clearPossibleStates
{
  stateQueue = [(WFCalendarPickerParameter *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WFCalendarPickerParameter_clearPossibleStates__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(stateQueue, block);

  v4.receiver = self;
  v4.super_class = WFCalendarPickerParameter;
  [(WFDynamicEnumerationParameter *)&v4 clearPossibleStates];
}

uint64_t __48__WFCalendarPickerParameter_clearPossibleStates__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDefaultSerializedCalendarRepresentation:0];
  v2 = *(a1 + 32);

  return [v2 setCalendarsCollection:0];
}

- (void)wasRemovedFromWorkflow
{
  v5.receiver = self;
  v5.super_class = WFCalendarPickerParameter;
  [(WFParameter *)&v5 wasRemovedFromWorkflow];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getEKEventStoreChangedNotification();
  [defaultCenter removeObserver:self name:v4 object:0];
}

- (void)wasAddedToWorkflow
{
  v5.receiver = self;
  v5.super_class = WFCalendarPickerParameter;
  [(WFParameter *)&v5 wasAddedToWorkflow];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getEKEventStoreChangedNotification();
  [defaultCenter addObserver:self selector:sel_reloadPossibleStates name:v4 object:0];
}

- (WFCalendarPickerParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v21.receiver = self;
  v21.super_class = WFCalendarPickerParameter;
  v5 = [(WFDynamicEnumerationParameter *)&v21 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"AllowsAllCalendars"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    v5->_allowsAllCalendars = [v8 BOOLValue];

    v9 = [definitionCopy objectForKey:@"HidesReadOnlyCalendars"];
    v10 = objc_opt_class();
    v11 = WFEnforceClass_1501(v9, v10);
    v5->_hidesReadOnlyCalendars = [v11 BOOLValue];

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    uTF8String = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_UTILITY, 0);
    v17 = dispatch_queue_create(uTF8String, v16);
    stateQueue = v5->_stateQueue;
    v5->_stateQueue = v17;

    [(WFDynamicEnumerationParameter *)v5 setDataSource:v5];
    v19 = v5;
  }

  return v5;
}

@end