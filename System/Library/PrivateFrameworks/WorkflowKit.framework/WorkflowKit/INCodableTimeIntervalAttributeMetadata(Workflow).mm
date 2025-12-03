@interface INCodableTimeIntervalAttributeMetadata(Workflow)
- (WFQuantityParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (__CFString)unitNameForUnit:()Workflow;
- (id)unitNamesWithMinimumUnit:()Workflow maximumUnit:;
- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
- (uint64_t)wf_processParameterValue:()Workflow forParameter:parameterState:codableAttribute:completionHandler:;
@end

@implementation INCodableTimeIntervalAttributeMetadata(Workflow)

- (id)unitNamesWithMinimumUnit:()Workflow maximumUnit:
{
  v7 = objc_opt_new();
  if (a3 <= a4)
  {
    v8 = a4 + 1;
    do
    {
      v9 = [self unitNameForUnit:a3];
      [v7 addObject:v9];

      ++a3;
    }

    while (v8 != a3);
  }

  return v7;
}

- (__CFString)unitNameForUnit:()Workflow
{
  if (a3 > 2)
  {
    return @"days";
  }

  else
  {
    return off_1E8379690[a3];
  }
}

- (WFQuantityParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  [a3 doubleValue];
  v5 = v4;
  defaultUnit = [self defaultUnit];
  v7 = defaultUnit;
  switch(defaultUnit)
  {
    case 1:
      v8 = 60.0;
      break;
    case 2:
      v8 = 3600.0;
      break;
    case 3:
      v8 = 86400.0;
      break;
    default:
      goto LABEL_8;
  }

  v5 = v5 / v8;
LABEL_8:
  v9 = [WFNumberStringSubstitutableState alloc];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  stringValue = [v10 stringValue];
  v12 = [(WFNumberStringSubstitutableState *)v9 initWithValue:stringValue];

  v13 = [WFQuantityParameterState alloc];
  v14 = [self unitNameForUnit:v7];
  v15 = [(WFQuantityParameterState *)v13 initWithMagnitudeState:v12 unitString:v14];

  return v15;
}

- (uint64_t)wf_processParameterValue:()Workflow forParameter:parameterState:codableAttribute:completionHandler:
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a7;
  v10 = objc_opt_class();
  v11 = v8;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      unitString = [v11 unitString];
      v13 = [WFDurationQuantityFieldParameter calendarUnitFromUnitString:unitString];

      magnitude = [v11 magnitude];
      [magnitude doubleValue];
      v16 = v15;

      switch(v13)
      {
        case 0x40uLL:
          v17 = 60.0;
          break;
        case 0x20uLL:
          v17 = 3600.0;
          break;
        case 0x10uLL:
          v17 = 86400.0;
          break;
        default:
LABEL_14:
          v21 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
          v20 = v11;
          goto LABEL_15;
      }

      v16 = v16 * v17;
      goto LABEL_14;
    }

    v18 = getWFGeneralLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v24 = 136315906;
      v25 = "WFEnforceClass";
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = objc_opt_class();
      v30 = 2114;
      v31 = v10;
      v19 = v29;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v24, 0x2Au);
    }
  }

  v20 = 0;
  v21 = 0;
LABEL_15:
  v9[2](v9, v21, 0);

  v22 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  selfCopy = self;
  v17[4] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = &off_1F4B04770;
  v2 = objc_msgSendSuper2(&v15, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_);
  v3 = [selfCopy unitNamesWithMinimumUnit:objc_msgSend(selfCopy maximumUnit:{"minimumUnit"), objc_msgSend(selfCopy, "maximumUnit")}];
  v17[0] = v3;
  v16[0] = @"PossibleUnits";
  v16[1] = @"DefaultUnit";
  firstObject = [v3 firstObject];
  v17[1] = firstObject;
  v16[2] = @"DefaultValue";
  defaultValue = [selfCopy defaultValue];
  stringValue = [defaultValue stringValue];
  v17[2] = stringValue;
  v16[3] = @"AllowsNegativeNumbers";
  v7 = MEMORY[0x1E696AD98];
  minimumValue = [selfCopy minimumValue];
  if (minimumValue)
  {
    selfCopy = [selfCopy minimumValue];
    v9 = [selfCopy compare:&unk_1F4A9A708] == -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 numberWithInt:v9];
  v17[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v12 = [v2 definitionByAddingEntriesInDictionary:v11];

  if (minimumValue)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end