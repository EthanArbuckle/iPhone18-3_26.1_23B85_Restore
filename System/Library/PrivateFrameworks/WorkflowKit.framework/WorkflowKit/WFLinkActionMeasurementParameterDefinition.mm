@interface WFLinkActionMeasurementParameterDefinition
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (id)unitFromUnitString:(id)string;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionMeasurementParameterDefinition

- (id)localizedTitleForLinkValue:(id)value
{
  v3 = MEMORY[0x1E696AD30];
  valueCopy = value;
  v5 = objc_alloc_init(v3);
  value = [valueCopy value];

  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = value;
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

- (id)parameterStateFromLinkValue:(id)value
{
  value = [value value];
  if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = objc_alloc(MEMORY[0x1E696AB90]);
    [value doubleValue];
    v5 = [v4 initWithDouble:?];
    v6 = [WFNumberStringSubstitutableState alloc];
    stringValue = [v5 stringValue];
    v8 = [(WFNumberStringSubstitutableState *)v6 initWithValue:stringValue];

    v9 = [WFQuantityParameterState alloc];
    unit = [value unit];
    symbol = [unit symbol];
    v12 = [(WFQuantityParameterState *)v9 initWithMagnitudeState:v8 unitString:symbol];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  stateCopy = state;
  requestorCopy = requestor;
  actionCopy = action;
  keyCopy = key;
  handlerCopy = handler;
  v20 = valueCopy;
  v28 = v20;
  if (v20 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v20 = v28, (isKindOfClass & 1) != 0))
  {
    unitString = [v28 unitString];
    v23 = [(WFLinkActionMeasurementParameterDefinition *)self unitFromUnitString:unitString];

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x1E696AD28]);
      magnitude = [v28 magnitude];
      [magnitude doubleValue];
      v26 = [v24 initWithDoubleValue:v23 unit:?];

      v27 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v26];
      handlerCopy[2](handlerCopy, v27, 0);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, 0);
    }
  }

  else
  {

    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v8 = stateCopy;
  if (!v8)
  {
    magnitudeState = 0;
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
    magnitudeState = v8;
    goto LABEL_10;
  }

  magnitudeState = [v8 magnitudeState];
  decimalNumber = [magnitudeState decimalNumber];
  if (!decimalNumber)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v11 = decimalNumber;
  unitString = [v8 unitString];

  if (unitString)
  {
    unitString2 = [v8 unitString];
    magnitudeState = [(WFLinkActionMeasurementParameterDefinition *)self unitFromUnitString:unitString2];

    v14 = objc_alloc(MEMORY[0x1E696AD28]);
    magnitudeState2 = [v8 magnitudeState];
    decimalNumber2 = [magnitudeState2 decimalNumber];
    [decimalNumber2 doubleValue];
    v17 = [v14 initWithDoubleValue:magnitudeState unit:?];

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

- (id)unitFromUnitString:(id)string
{
  v13 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = [MEMORY[0x1E69E0BE8] unitFromString:stringCopy];
  if (!v4)
  {
    if ([stringCopy isEqualToString:@"sec"])
    {
      seconds = [MEMORY[0x1E696B008] seconds];
LABEL_8:
      v4 = seconds;
      goto LABEL_9;
    }

    if ([stringCopy isEqualToString:@"min"])
    {
      seconds = [MEMORY[0x1E696B008] minutes];
      goto LABEL_8;
    }

    if ([stringCopy isEqualToString:@"hr"])
    {
      seconds = [MEMORY[0x1E696B008] hours];
      goto LABEL_8;
    }

    v8 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315394;
      v10 = "[WFLinkActionMeasurementParameterDefinition unitFromUnitString:]";
      v11 = 2112;
      v12 = stringCopy;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Unexpected nil WFMeasurementUnit for unit string: %@", &v9, 0x16u);
    }

    v4 = 0;
  }

LABEL_9:

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = valueCopy;
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
  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  if (valueType)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = valueType;
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

  unitType = [v6 unitType];
  v8 = [v3 unitTypeFromLinkMeasurementUnitType:unitType];
  if (!v8)
  {
    v42.receiver = self;
    v42.super_class = WFLinkActionMeasurementParameterDefinition;
    parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v42 parameterDefinitionDictionary];
    goto LABEL_28;
  }

  parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  typeSpecificMetadata = [parameterMetadata typeSpecificMetadata];

  v11 = [typeSpecificMetadata objectForKey:*MEMORY[0x1E69AC5B8]];
  bOOLValue = [v11 BOOLValue];

  v12 = [typeSpecificMetadata objectForKey:*MEMORY[0x1E69AC5C0]];
  bOOLValue2 = [v12 BOOLValue];

  v14 = [typeSpecificMetadata objectForKey:*MEMORY[0x1E69AC5C8]];
  v15 = [typeSpecificMetadata objectForKey:*MEMORY[0x1E69AC5B0]];
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
  if (bOOLValue2)
  {
    v20 = v18;
    v21 = WFMetricToImperialUnitMapping();
    allKeys = [v21 allKeys];
    v23 = [allKeys containsObject:v20];

    v24 = WFImperialToMetricUnitMapping();
    allKeys2 = [v24 allKeys];
    v26 = [allKeys2 containsObject:v20];

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
  v32 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue2];
  [v31 setValue:v32 forKey:@"WFParameterUnitAdjustForLocale"];

  if (v14)
  {
    symbol = [v19 symbol];
    v43[0] = symbol;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    [v31 setValue:v34 forKey:@"PossibleUnits"];
  }

  v35 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
  [v31 setValue:v35 forKey:@"AllowsNegativeNumbers"];

  v41.receiver = self;
  v41.super_class = WFLinkActionMeasurementParameterDefinition;
  parameterDefinitionDictionary2 = [(WFLinkActionParameterDefinition *)&v41 parameterDefinitionDictionary];
  parameterDefinitionDictionary = [parameterDefinitionDictionary2 definitionByAddingEntriesInDictionary:v31];

LABEL_28:
  v37 = *MEMORY[0x1E69E9840];

  return parameterDefinitionDictionary;
}

@end