@interface WFRemindersListPickerParameter
- (WFRemindersListPickerParameter)initWithDefinition:(id)definition;
- (id)accessoryColorForPossibleState:(id)state;
- (id)defaultSerializedRepresentationForEnumeration:(id)enumeration;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler;
- (void)storeDidChange;
- (void)wasAddedToWorkflow;
- (void)wasRemovedFromWorkflow;
@end

@implementation WFRemindersListPickerParameter

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  enumerationCopy = enumeration;
  stateCopy = state;
  value = [stateCopy value];
  allCalendars = [value allCalendars];

  if (allCalendars)
  {
    v9 = WFLocalizedString(@"All Lists");
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v10 = getREMDisplayNameUtilsClass_softClass;
    v19 = getREMDisplayNameUtilsClass_softClass;
    if (!getREMDisplayNameUtilsClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getREMDisplayNameUtilsClass_block_invoke;
      v15[3] = &unk_1E837FAC0;
      v15[4] = &v16;
      __getREMDisplayNameUtilsClass_block_invoke(v15);
      v10 = v17[3];
    }

    v11 = v10;
    _Block_object_dispose(&v16, 8);
    value2 = [stateCopy value];
    calendarTitle = [value2 calendarTitle];
    v9 = [v10 displayNameFromListName:calendarTitle isPlaceholder:0];
  }

  return v9;
}

- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  allLists = [MEMORY[0x1E6996F38] allLists];
  v8 = objc_opt_new();
  v9 = [WFCalendarSubstitutableState alloc];
  initWithAllCalendars = [[WFEKCalendarDescriptor alloc] initWithAllCalendars];
  v11 = [(WFVariableSubstitutableParameterState *)v9 initWithValue:initWithAllCalendars];

  if ([(WFRemindersListPickerParameter *)self allowsAllLists])
  {
    [v8 addObject:v11];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = allLists;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        v18 = [WFCalendarSubstitutableState alloc];
        v19 = [(WFCalendarSubstitutableState *)v18 initWithRemindersList:v17, v22];
        [v8 addObject:v19];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  [(WFDynamicEnumerationParameter *)self defaultSerializedRepresentationDidChange];
  v20 = [objc_alloc(MEMORY[0x1E696E918]) initWithItems:v8];
  handlerCopy[2](handlerCopy, v20, 0);

  v21 = *MEMORY[0x1E69E9840];
}

- (id)defaultSerializedRepresentationForEnumeration:(id)enumeration
{
  allowsAllLists = [(WFRemindersListPickerParameter *)self allowsAllLists];
  v4 = [WFCalendarSubstitutableState alloc];
  if (allowsAllLists)
  {
    initWithAllCalendars = [[WFEKCalendarDescriptor alloc] initWithAllCalendars];
    v6 = [(WFVariableSubstitutableParameterState *)v4 initWithValue:initWithAllCalendars];
  }

  else
  {
    initWithAllCalendars = [MEMORY[0x1E6996F38] defaultList];
    v6 = [(WFCalendarSubstitutableState *)v4 initWithRemindersList:initWithAllCalendars];
  }

  v7 = v6;

  serializedRepresentation = [v7 serializedRepresentation];

  return serializedRepresentation;
}

- (id)accessoryColorForPossibleState:(id)state
{
  v27 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  value = [stateCopy value];
  calendarRGBAValue = [value calendarRGBAValue];

  if (calendarRGBAValue)
  {
    v6 = MEMORY[0x1E69E09E0];
    value2 = [stateCopy value];
    calendarRGBAValue2 = [value2 calendarRGBAValue];
    v9 = [v6 colorWithRGBAValue:{objc_msgSend(calendarRGBAValue2, "unsignedIntValue")}];
  }

  else
  {
    [MEMORY[0x1E6996F38] allLists];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v25 = 0u;
    v9 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v11 = *v23;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v10);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          name = [v13 name];
          value3 = [stateCopy value];
          calendarTitle = [value3 calendarTitle];
          v17 = [name isEqualToString:calendarTitle];

          if (v17)
          {
            v18 = MEMORY[0x1E69E09E0];
            color = [v13 color];
            v9 = [v18 colorWithRemindersColor:color];

            goto LABEL_13;
          }
        }

        v9 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v20 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)storeDidChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WFRemindersListPickerParameter_storeDidChange__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)wasRemovedFromWorkflow
{
  v5.receiver = self;
  v5.super_class = WFRemindersListPickerParameter;
  [(WFParameter *)&v5 wasRemovedFromWorkflow];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  storeDidChangeNotificationName = [getREMStoreClass() storeDidChangeNotificationName];
  [defaultCenter removeObserver:self name:storeDidChangeNotificationName object:0];
}

- (void)wasAddedToWorkflow
{
  v5.receiver = self;
  v5.super_class = WFRemindersListPickerParameter;
  [(WFParameter *)&v5 wasAddedToWorkflow];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  storeDidChangeNotificationName = [getREMStoreClass() storeDidChangeNotificationName];
  [defaultCenter addObserver:self selector:sel_storeDidChange name:storeDidChangeNotificationName object:0];

  [(WFDynamicEnumerationParameter *)self reloadPossibleStates];
}

- (WFRemindersListPickerParameter)initWithDefinition:(id)definition
{
  v25 = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  v16.receiver = self;
  v16.super_class = WFRemindersListPickerParameter;
  v5 = [(WFDynamicEnumerationParameter *)&v16 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"AllowsAllLists"];
    v7 = objc_opt_class();
    v8 = v6;
    if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = getWFGeneralLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = objc_opt_class();
        *buf = 136315906;
        v18 = "WFEnforceClass";
        v19 = 2114;
        v20 = v8;
        v21 = 2114;
        v22 = v11;
        v23 = 2114;
        v24 = v7;
        v12 = v11;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v5->_allowsAllLists = [v9 BOOLValue];
    [(WFDynamicEnumerationParameter *)v5 setDataSource:v5];
    v13 = v5;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

@end