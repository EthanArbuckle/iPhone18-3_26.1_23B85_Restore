@interface WFLinkActionMeasurementParameterDefinition
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
- (id)unitFromUnitString:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionMeasurementParameterDefinition

- (id)localizedTitleForLinkValue:(id)a3
{
  v3 = MEMORY[0x1E696AD30];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 value];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v5 stringFromMeasurement:v8];

  return v9;
}

- (id)parameterStateFromLinkValue:(id)a3
{
  v3 = [a3 value];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = objc_alloc(MEMORY[0x1E696AB90]);
    [v3 doubleValue];
    v5 = [v4 initWithDouble:?];
    v6 = [WFNumberStringSubstitutableState alloc];
    v7 = [v5 stringValue];
    v8 = [(WFNumberStringSubstitutableState *)v6 initWithValue:v7];

    v9 = [WFQuantityParameterState alloc];
    v10 = [v3 unit];
    v11 = [v10 symbol];
    v12 = [(WFQuantityParameterState *)v9 initWithMagnitudeState:v8 unitString:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = v14;
  v28 = v20;
  if (v20 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v20 = v28, (isKindOfClass & 1) != 0))
  {
    v22 = [v28 unitString];
    v23 = [(WFLinkActionMeasurementParameterDefinition *)self unitFromUnitString:v22];

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x1E696AD28]);
      v25 = [v28 magnitude];
      [v25 doubleValue];
      v26 = [v24 initWithDoubleValue:v23 unit:?];

      v27 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v26];
      v19[2](v19, v27, 0);
    }

    else
    {
      v19[2](v19, 0, 0);
    }
  }

  else
  {

    v19[2](v19, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (!v8)
  {
    v9 = 0;
    v19 = 0;
    v18 = 0;
LABEL_10:

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = 0;
    v18 = 0;
    v9 = v8;
    goto LABEL_10;
  }

  v9 = [v8 magnitudeState];
  v10 = [v9 decimalNumber];
  if (!v10)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [v8 unitString];

  if (v12)
  {
    v13 = [v8 unitString];
    v9 = [(WFLinkActionMeasurementParameterDefinition *)self unitFromUnitString:v13];

    v14 = objc_alloc(MEMORY[0x1E696AD28]);
    v15 = [v8 magnitudeState];
    v16 = [v15 decimalNumber];
    [v16 doubleValue];
    v17 = [v14 initWithDoubleValue:v9 unit:?];

    v18 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v17];

LABEL_9:
    v19 = v8;
    goto LABEL_10;
  }

  v18 = 0;
  v19 = v8;
LABEL_11:

  return v18;
}

- (id)unitFromUnitString:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69E0BE8] unitFromString:v3];
  if (!v4)
  {
    if ([v3 isEqualToString:@"sec"])
    {
      v5 = [MEMORY[0x1E696B008] seconds];
LABEL_8:
      v4 = v5;
      goto LABEL_9;
    }

    if ([v3 isEqualToString:@"min"])
    {
      v5 = [MEMORY[0x1E696B008] minutes];
      goto LABEL_8;
    }

    if ([v3 isEqualToString:@"hr"])
    {
      v5 = [MEMORY[0x1E696B008] hours];
      goto LABEL_8;
    }

    v8 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315394;
      v10 = "[WFLinkActionMeasurementParameterDefinition unitFromUnitString:]";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Unexpected nil WFMeasurementUnit for unit string: %@", &v9, 0x16u);
    }

    v4 = 0;
  }

LABEL_9:

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)parameterDefinitionDictionary
{
  v43[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69E0BE8];
  v4 = [(WFLinkActionParameterDefinition *)self valueType];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 unitType];
  v8 = [v3 unitTypeFromLinkMeasurementUnitType:v7];
  if (!v8)
  {
    v42.receiver = self;
    v42.super_class = WFLinkActionMeasurementParameterDefinition;
    v17 = [(WFLinkActionParameterDefinition *)&v42 parameterDefinitionDictionary];
    goto LABEL_28;
  }

  v9 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v10 = [v9 typeSpecificMetadata];

  v11 = [v10 objectForKey:*MEMORY[0x1E69AC5B8]];
  v39 = [v11 BOOLValue];

  v12 = [v10 objectForKey:*MEMORY[0x1E69AC5C0]];
  v13 = [v12 BOOLValue];

  v14 = [v10 objectForKey:*MEMORY[0x1E69AC5C8]];
  v15 = [v10 objectForKey:*MEMORY[0x1E69AC5B0]];
  v40 = v15;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v18 = [MEMORY[0x1E69E0BE8] unitFromString:v16 unitType:v8 caseSensitive:0];
  v19 = v18;
  if (v13)
  {
    v20 = v18;
    v21 = WFMetricToImperialUnitMapping();
    v22 = [v21 allKeys];
    v23 = [v22 containsObject:v20];

    v24 = WFImperialToMetricUnitMapping();
    v25 = [v24 allKeys];
    v26 = [v25 containsObject:v20];

    if ((v23 & 1) == 0 && (v26 & 1) == 0)
    {
      v19 = v20;
LABEL_24:

      goto LABEL_25;
    }

    v27 = [MEMORY[0x1E69E0BE8] unitTypeForUnitClass:objc_opt_class()];
    v28 = [MEMORY[0x1E69E0BE8] usesMetricSystemForUnitType:v27];
    if (v23 & v28 & 1) == 0 && ((v26 ^ 1 | v28))
    {
      if (v23)
      {
        v29 = WFMetricToImperialUnitMapping();
LABEL_21:
        v30 = v29;
        v19 = [v29 objectForKey:v20];

LABEL_23:
        goto LABEL_24;
      }

      if (v26)
      {
        v29 = WFImperialToMetricUnitMapping();
        goto LABEL_21;
      }
    }

    v19 = v20;
    goto LABEL_23;
  }

LABEL_25:
  v31 = objc_opt_new();
  [v31 setValue:v8 forKey:@"WFUnitType"];
  [v31 setValue:v19 forKey:@"WFParameterUnit"];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:v13];
  [v31 setValue:v32 forKey:@"WFParameterUnitAdjustForLocale"];

  if (v14)
  {
    v33 = [v19 symbol];
    v43[0] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    [v31 setValue:v34 forKey:@"PossibleUnits"];
  }

  v35 = [MEMORY[0x1E696AD98] numberWithBool:v39];
  [v31 setValue:v35 forKey:@"AllowsNegativeNumbers"];

  v41.receiver = self;
  v41.super_class = WFLinkActionMeasurementParameterDefinition;
  v36 = [(WFLinkActionParameterDefinition *)&v41 parameterDefinitionDictionary];
  v17 = [v36 definitionByAddingEntriesInDictionary:v31];

LABEL_28:
  v37 = *MEMORY[0x1E69E9840];

  return v17;
}

@end