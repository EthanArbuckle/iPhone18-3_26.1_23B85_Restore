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
      v9 = [a1 unitNameForUnit:a3];
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
  v6 = [a1 defaultUnit];
  v7 = v6;
  switch(v6)
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
  v11 = [v10 stringValue];
  v12 = [(WFNumberStringSubstitutableState *)v9 initWithValue:v11];

  v13 = [WFQuantityParameterState alloc];
  v14 = [a1 unitNameForUnit:v7];
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
      v12 = [v11 unitString];
      v13 = [WFDurationQuantityFieldParameter calendarUnitFromUnitString:v12];

      v14 = [v11 magnitude];
      [v14 doubleValue];
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
  v1 = a1;
  v17[4] = *MEMORY[0x1E69E9840];
  v15.receiver = a1;
  v15.super_class = &off_1F4B04770;
  v2 = objc_msgSendSuper2(&v15, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_);
  v3 = [v1 unitNamesWithMinimumUnit:objc_msgSend(v1 maximumUnit:{"minimumUnit"), objc_msgSend(v1, "maximumUnit")}];
  v17[0] = v3;
  v16[0] = @"PossibleUnits";
  v16[1] = @"DefaultUnit";
  v4 = [v3 firstObject];
  v17[1] = v4;
  v16[2] = @"DefaultValue";
  v5 = [v1 defaultValue];
  v6 = [v5 stringValue];
  v17[2] = v6;
  v16[3] = @"AllowsNegativeNumbers";
  v7 = MEMORY[0x1E696AD98];
  v8 = [v1 minimumValue];
  if (v8)
  {
    v1 = [v1 minimumValue];
    v9 = [v1 compare:&unk_1F4A9A708] == -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 numberWithInt:v9];
  v17[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v12 = [v2 definitionByAddingEntriesInDictionary:v11];

  if (v8)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end