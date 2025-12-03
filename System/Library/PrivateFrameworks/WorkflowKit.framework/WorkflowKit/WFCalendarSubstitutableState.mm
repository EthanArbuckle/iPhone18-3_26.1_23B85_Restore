@interface WFCalendarSubstitutableState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFCalendarSubstitutableState)initWithCalendar:(id)calendar;
- (WFCalendarSubstitutableState)initWithRemindersList:(id)list;
- (id)legacySerializedRepresentation;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFCalendarSubstitutableState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  valueHandlerCopy = valueHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__WFCalendarSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
  v13[3] = &unk_1E837DA10;
  v13[4] = self;
  v14 = contextCopy;
  v15 = valueHandlerCopy;
  v12.receiver = self;
  v12.super_class = WFCalendarSubstitutableState;
  v10 = valueHandlerCopy;
  v11 = contextCopy;
  [(WFVariableSubstitutableParameterState *)&v12 processWithContext:v11 userInputRequiredHandler:handler valueHandler:v13];
}

void __89__WFCalendarSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 || ([*(a1 + 32) variable], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) variable];
    v9 = objc_opt_class();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89__WFCalendarSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
    v11[3] = &unk_1E837DE50;
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    [v8 getObjectRepresentationForClass:v9 context:v10 completionHandler:v11];
  }
}

void __89__WFCalendarSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v12 = v7;
  if (v7)
  {
    v9 = a5;
    v10 = [[WFEKCalendarDescriptor alloc] initWithCalendarTitle:v12 identifier:0 RGBAValue:0];
    (*(v8 + 16))(v8, v10, v9);
  }

  else
  {
    v11 = *(v8 + 16);
    v10 = a5;
    v11(v8, 0, v10);
  }
}

- (WFCalendarSubstitutableState)initWithRemindersList:(id)list
{
  listCopy = list;
  v5 = [WFEKCalendarDescriptor alloc];
  name = [listCopy name];
  objectID = [listCopy objectID];

  stringRepresentation = [objectID stringRepresentation];
  v9 = [(WFEKCalendarDescriptor *)v5 initWithCalendarTitle:name identifier:stringRepresentation RGBAValue:0];

  v12.receiver = self;
  v12.super_class = WFCalendarSubstitutableState;
  v10 = [(WFVariableSubstitutableParameterState *)&v12 initWithValue:v9];

  return v10;
}

- (WFCalendarSubstitutableState)initWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v5 = [WFEKCalendarDescriptor alloc];
  title = [calendarCopy title];
  calendarIdentifier = [calendarCopy calendarIdentifier];
  v8 = MEMORY[0x1E696AD98];
  v9 = MEMORY[0x1E69E09E0];
  cGColor = [calendarCopy CGColor];

  v11 = [v9 colorWithCGColor:cGColor];
  v12 = [v8 numberWithUnsignedInt:{objc_msgSend(v11, "RGBAValue")}];
  v13 = [(WFEKCalendarDescriptor *)v5 initWithCalendarTitle:title identifier:calendarIdentifier RGBAValue:v12];

  v16.receiver = self;
  v16.super_class = WFCalendarSubstitutableState;
  v14 = [(WFVariableSubstitutableParameterState *)&v16 initWithValue:v13];

  return v14;
}

- (id)legacySerializedRepresentation
{
  value = [(WFVariableSubstitutableParameterState *)self value];
  if ([value allCalendars])
  {
    calendarTitle = &stru_1F4A1C408;
  }

  else
  {
    value2 = [(WFVariableSubstitutableParameterState *)self value];
    calendarTitle = [value2 calendarTitle];
  }

  return calendarTitle;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCalendarSubstitutableState.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFEKCalendarDescriptor class]]"}];
  }

  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(valueCopy, "allCalendars")}];
  [v6 setObject:v7 forKeyedSubscript:@"IsAllCalendar"];

  if (([valueCopy allCalendars] & 1) == 0)
  {
    calendarTitle = [valueCopy calendarTitle];
    [v6 if_setObjectIfNonNil:calendarTitle forKey:@"Title"];

    calendarIdentifier = [valueCopy calendarIdentifier];
    [v6 if_setObjectIfNonNil:calendarIdentifier forKey:@"Identifier"];

    calendarRGBAValue = [valueCopy calendarRGBAValue];
    [v6 if_setObjectIfNonNil:calendarRGBAValue forKey:@"RGBAValue"];
  }

  return v6;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v41 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  v10 = representationCopy;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 objectForKeyedSubscript:@"IsAllCalendar"];
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v20 = v12;

      bOOLValue = [v20 BOOLValue];
      if (bOOLValue)
      {
        initWithAllCalendars = [[WFEKCalendarDescriptor alloc] initWithAllCalendars];
      }

      else
      {
        v22 = [v10 objectForKeyedSubscript:@"Title"];
        if (v22)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        v25 = [v10 objectForKeyedSubscript:@"Identifier"];
        if (v25)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;

        v28 = [v10 objectForKeyedSubscript:@"RGBAValue"];
        if (v28)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;

        initWithAllCalendars = [[WFEKCalendarDescriptor alloc] initWithCalendarTitle:v24 identifier:v27 RGBAValue:v30];
      }

      v15 = v10;
      goto LABEL_39;
    }
  }

  v13 = objc_opt_class();
  v14 = v10;
  if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = getWFGeneralLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v33 = 136315906;
      v34 = "WFEnforceClass";
      v35 = 2114;
      v36 = v14;
      v37 = 2114;
      v38 = objc_opt_class();
      v39 = 2114;
      v40 = v13;
      v17 = v38;
      _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v33, 0x2Au);
    }

    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if ([v15 isEqualToString:&stru_1F4A1C408])
  {
    initWithAllCalendars2 = [[WFEKCalendarDescriptor alloc] initWithAllCalendars];
LABEL_17:
    initWithAllCalendars = initWithAllCalendars2;
    goto LABEL_39;
  }

  if (v15)
  {
    initWithAllCalendars2 = [[WFEKCalendarDescriptor alloc] initWithCalendarTitle:v15 identifier:0 RGBAValue:0];
    goto LABEL_17;
  }

  initWithAllCalendars = 0;
LABEL_39:

  v31 = *MEMORY[0x1E69E9840];

  return initWithAllCalendars;
}

@end