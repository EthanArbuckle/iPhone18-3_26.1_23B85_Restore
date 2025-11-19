@interface INCodableMeasurementAttributeMetadata(Workflow)
- (WFQuantityParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_measurementType;
- (uint64_t)wf_processParameterValue:()Workflow forParameter:parameterState:codableAttribute:completionHandler:;
- (void)wf_updateWithParameterState:()Workflow;
- (void)wf_updateWithParameterValue:()Workflow;
- (void)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
@end

@implementation INCodableMeasurementAttributeMetadata(Workflow)

- (void)wf_updateWithParameterValue:()Workflow
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v5 unit];
      [a1 setUnit:v4];
    }
  }
}

- (void)wf_updateWithParameterState:()Workflow
{
  v9 = a3;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [a1 name];
      v5 = WFUnitTypeFromAttributeName(v4);

      v6 = MEMORY[0x1E69E0BE8];
      v7 = [v9 unitString];
      v8 = [v6 unitFromString:v7 unitType:v5 caseSensitive:1];
      [a1 setUnit:v8];
    }
  }
}

- (WFQuantityParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [WFNumberStringSubstitutableState alloc];
    v10 = MEMORY[0x1E696AD98];
    [v8 doubleValue];
    v11 = [v10 numberWithDouble:?];
    v12 = [v11 stringValue];
    v13 = [(WFNumberStringSubstitutableState *)v9 initWithValue:v12];

    v14 = [WFQuantityParameterState alloc];
    v15 = [v8 unit];

    v16 = [v15 symbol];
    v17 = [(WFQuantityParameterState *)v14 initWithMagnitudeState:v13 unitString:v16];
  }

  else
  {
    v19.receiver = a1;
    v19.super_class = &off_1F4B0ED28;
    v17 = objc_msgSendSuper2(&v19, sel_wf_parameterStateForIntentValue_parameterDefinition_, v6, v7);
  }

  return v17;
}

- (uint64_t)wf_processParameterValue:()Workflow forParameter:parameterState:codableAttribute:completionHandler:
{
  v9 = a3;
  v10 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
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

    v16 = v12;

    v15 = [v16 measurement];
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = v14;

    v17 = [a1 name];
    v18 = WFUnitTypeFromAttributeName(v17);

    if (v18)
    {
      v19 = MEMORY[0x1E69E0BE8];
      v20 = [v16 unitString];
      v21 = [v19 unitFromString:v20 unitType:v18 caseSensitive:1];

      if (v21)
      {
        v22 = objc_alloc(MEMORY[0x1E696AD28]);
        v23 = [v16 magnitude];
        [v23 doubleValue];
        v15 = [v22 initWithDoubleValue:v21 unit:?];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = 0;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v24 = v13;
      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v21 = v25;

      v15 = [v21 measurement];
    }

    goto LABEL_28;
  }

  v15 = 0;
LABEL_30:
  v10[2](v10, v15, 0);

  return 1;
}

- (void)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v32[2] = *MEMORY[0x1E69E9840];
  v25.receiver = a1;
  v25.super_class = &off_1F4B0ED28;
  v2 = objc_msgSendSuper2(&v25, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_);
  v3 = [a1 name];
  v4 = WFUnitTypeFromAttributeName(v3);

  if (v4)
  {
    v31[0] = @"WFUnitType";
    v31[1] = @"AllowsNegativeNumbers";
    v32[0] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "supportsNegativeNumbers")}];
    v32[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v7 = [v2 definitionByAddingEntriesInDictionary:v6];

    v8 = [a1 unit];

    if (v8)
    {
      v29[0] = @"DefaultUnit";
      v9 = [a1 unit];
      v10 = [v9 symbol];
      v30[0] = v10;
      v29[1] = @"PossibleUnits";
      v11 = [a1 unit];
      v12 = [v11 symbol];
      v28 = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      v30[1] = v13;
      v29[2] = @"DefaultValue";
      v14 = MEMORY[0x1E696AD98];
      [a1 defaultValue];
      v15 = [v14 numberWithDouble:?];
      v30[2] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
      v2 = [v7 definitionByAddingEntriesInDictionary:v16];

      v7 = v13;
LABEL_10:

      goto LABEL_11;
    }

    v17 = [a1 defaultUnits];

    if (v17)
    {
      v18 = [MEMORY[0x1E695DF58] currentLocale];
      v19 = [v18 objectForKey:*MEMORY[0x1E695DA08]];
      v20 = [v19 BOOLValue];

      v26 = @"DefaultUnit";
      v21 = [a1 defaultUnits];
      v9 = v21;
      if (v20)
      {
        [v21 firstObject];
      }

      else
      {
        [v21 lastObject];
      }
      v10 = ;
      v11 = [v10 symbol];
      v27 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v2 = [v7 definitionByAddingEntriesInDictionary:v12];
      goto LABEL_10;
    }

    v2 = v7;
  }

LABEL_11:
  v22 = v2;

  v23 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)wf_measurementType
{
  v1 = [a1 name];
  v2 = WFUnitTypeFromAttributeName(v1);

  return v2;
}

@end