@interface WFRemindersListPickerParameter
- (WFRemindersListPickerParameter)initWithDefinition:(id)a3;
- (id)accessoryColorForPossibleState:(id)a3;
- (id)defaultSerializedRepresentationForEnumeration:(id)a3;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5;
- (void)storeDidChange;
- (void)wasAddedToWorkflow;
- (void)wasRemovedFromWorkflow;
@end

@implementation WFRemindersListPickerParameter

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 value];
  v8 = [v7 allCalendars];

  if (v8)
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
    v12 = [v6 value];
    v13 = [v12 calendarTitle];
    v9 = [v10 displayNameFromListName:v13 isPlaceholder:0];
  }

  return v9;
}

- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [MEMORY[0x1E6996F38] allLists];
  v8 = objc_opt_new();
  v9 = [WFCalendarSubstitutableState alloc];
  v10 = [[WFEKCalendarDescriptor alloc] initWithAllCalendars];
  v11 = [(WFVariableSubstitutableParameterState *)v9 initWithValue:v10];

  if ([(WFRemindersListPickerParameter *)self allowsAllLists])
  {
    [v8 addObject:v11];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v7;
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
  v6[2](v6, v20, 0);

  v21 = *MEMORY[0x1E69E9840];
}

- (id)defaultSerializedRepresentationForEnumeration:(id)a3
{
  v3 = [(WFRemindersListPickerParameter *)self allowsAllLists];
  v4 = [WFCalendarSubstitutableState alloc];
  if (v3)
  {
    v5 = [[WFEKCalendarDescriptor alloc] initWithAllCalendars];
    v6 = [(WFVariableSubstitutableParameterState *)v4 initWithValue:v5];
  }

  else
  {
    v5 = [MEMORY[0x1E6996F38] defaultList];
    v6 = [(WFCalendarSubstitutableState *)v4 initWithRemindersList:v5];
  }

  v7 = v6;

  v8 = [v7 serializedRepresentation];

  return v8;
}

- (id)accessoryColorForPossibleState:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 value];
  v5 = [v4 calendarRGBAValue];

  if (v5)
  {
    v6 = MEMORY[0x1E69E09E0];
    v7 = [v3 value];
    v8 = [v7 calendarRGBAValue];
    v9 = [v6 colorWithRGBAValue:{objc_msgSend(v8, "unsignedIntValue")}];
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
          v14 = [v13 name];
          v15 = [v3 value];
          v16 = [v15 calendarTitle];
          v17 = [v14 isEqualToString:v16];

          if (v17)
          {
            v18 = MEMORY[0x1E69E09E0];
            v19 = [v13 color];
            v9 = [v18 colorWithRemindersColor:v19];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [getREMStoreClass() storeDidChangeNotificationName];
  [v3 removeObserver:self name:v4 object:0];
}

- (void)wasAddedToWorkflow
{
  v5.receiver = self;
  v5.super_class = WFRemindersListPickerParameter;
  [(WFParameter *)&v5 wasAddedToWorkflow];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [getREMStoreClass() storeDidChangeNotificationName];
  [v3 addObserver:self selector:sel_storeDidChange name:v4 object:0];

  [(WFDynamicEnumerationParameter *)self reloadPossibleStates];
}

- (WFRemindersListPickerParameter)initWithDefinition:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WFRemindersListPickerParameter;
  v5 = [(WFDynamicEnumerationParameter *)&v16 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AllowsAllLists"];
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