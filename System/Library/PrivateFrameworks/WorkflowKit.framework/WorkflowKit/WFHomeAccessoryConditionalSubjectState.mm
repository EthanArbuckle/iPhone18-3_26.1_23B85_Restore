@interface WFHomeAccessoryConditionalSubjectState
- (BOOL)isEnumeration;
- (BOOL)isEqual:(id)a3;
- (HMCharacteristic)characteristic;
- (HMHome)home;
- (HMService)service;
- (NSFormatter)characteristicValueFormatter;
- (WFHMCharacteristicSubstitutableState)characteristicSubstitutableState;
- (WFHMServiceParameterState)serviceParameterState;
- (WFHomeAccessoryConditionalSubjectState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFHomeAccessoryConditionalSubjectState)initWithSerializedWFHMServiceParameter:(id)a3 serializedWFHMCharacteristicSubstitutableState:(id)a4 negatesValue:(BOOL)a5;
- (id)homeIdentifier;
- (id)localizedLabelForEnumerationPossibleState:(id)a3;
- (id)maximumLength;
- (id)maximumValue;
- (id)minimumValue;
- (id)serializedRepresentation;
- (id)stepValue;
- (id)unit;
- (id)unitType;
- (int64_t)contentType;
- (unint64_t)hash;
- (void)getContentWithContext:(id)a3 completionHandler:(id)a4;
- (void)getEnumerationPossibleStatesWithCompletionHandler:(id)a3;
@end

@implementation WFHomeAccessoryConditionalSubjectState

- (NSFormatter)characteristicValueFormatter
{
  v3 = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  v4 = v3;
  characteristicValueFormatter = self->_characteristicValueFormatter;
  if (characteristicValueFormatter)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    if (HomeLibrary_sOnce != -1)
    {
      dispatch_once(&HomeLibrary_sOnce, &__block_literal_global_294);
    }

    v7 = [MEMORY[0x1E696AC40] hf_valueFormatterForCharacteristic:v4 options:0];
    v8 = self->_characteristicValueFormatter;
    self->_characteristicValueFormatter = v7;

    characteristicValueFormatter = self->_characteristicValueFormatter;
  }

  v9 = characteristicValueFormatter;

  return characteristicValueFormatter;
}

- (id)localizedLabelForEnumerationPossibleState:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = WFEnforceClass_1501(v4, v5);

  v7 = [v6 number];
  if (v7)
  {
    v8 = [(WFHomeAccessoryConditionalSubjectState *)self characteristicValueFormatter];
    v9 = [v8 stringForObjectValue:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)getEnumerationPossibleStatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[WFHomeManager sharedManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__WFHomeAccessoryConditionalSubjectState_getEnumerationPossibleStatesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E837E1F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 ensureHomesAreLoadedWithCompletionHandler:v7];
}

void __92__WFHomeAccessoryConditionalSubjectState_getEnumerationPossibleStatesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) characteristic];
  v3 = [v2 metadata];
  v4 = [v3 validValues];

  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v6 = [*(a1 + 32) minimumValue];
    v7 = [v6 integerValue];

    v8 = [*(a1 + 32) maximumValue];
    v9 = [v8 integerValue];

    v10 = [*(a1 + 32) stepValue];
    v11 = [v10 integerValue];

    for (i = objc_opt_new(); v7 <= v9; v7 += v11)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      [i addObject:v12];
    }

    v5 = i;
  }

  v13 = *(a1 + 40);
  v16 = v5;
  v14 = [v5 if_map:&__block_literal_global_2130];
  (*(v13 + 16))(v13, v14);
}

WFNumberSubstitutableState *__92__WFHomeAccessoryConditionalSubjectState_getEnumerationPossibleStatesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFNumberSubstitutableState alloc] initWithNumber:v2];

  return v3;
}

- (BOOL)isEnumeration
{
  v3 = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];

  if (!v3)
  {
    return 0;
  }

  v4 = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  IsEnumeration = WFHMCharacteristicIsEnumeration(v4);

  return IsEnumeration;
}

- (WFHMCharacteristicSubstitutableState)characteristicSubstitutableState
{
  if (!self->_characteristicSubstitutableState)
  {
    v3 = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMCharacteristicSubstitutableState];

    if (v3)
    {
      v4 = [WFHMCharacteristicSubstitutableState alloc];
      v5 = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMCharacteristicSubstitutableState];
      v6 = [(WFHMCharacteristicSubstitutableState *)v4 initWithSerializedRepresentation:v5 variableProvider:0 parameter:0];
      characteristicSubstitutableState = self->_characteristicSubstitutableState;
      self->_characteristicSubstitutableState = v6;
    }
  }

  v8 = self->_characteristicSubstitutableState;

  return v8;
}

- (WFHMServiceParameterState)serviceParameterState
{
  serviceParameterState = self->_serviceParameterState;
  if (!serviceParameterState)
  {
    v4 = [WFHMServiceParameterState alloc];
    v5 = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMServiceParameter];
    v6 = [(WFHMServiceParameterState *)v4 initWithSerializedRepresentation:v5 variableProvider:0 parameter:0];
    v7 = self->_serviceParameterState;
    self->_serviceParameterState = v6;

    serviceParameterState = self->_serviceParameterState;
  }

  return serviceParameterState;
}

- (id)unit
{
  v3 = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];

  if (v3)
  {
    v4 = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
    v5 = WFUnitForHMCharacteristic(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stepValue
{
  v2 = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  v3 = [v2 metadata];
  v4 = [v3 stepValue];

  return v4;
}

- (id)maximumValue
{
  v2 = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  v3 = [v2 metadata];
  v4 = [v3 maximumValue];

  return v4;
}

- (id)minimumValue
{
  v2 = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  v3 = [v2 metadata];
  v4 = [v3 minimumValue];

  return v4;
}

- (id)maximumLength
{
  v2 = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  v3 = [v2 metadata];
  v4 = [v3 maxLength];

  return v4;
}

- (int64_t)contentType
{
  v3 = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  v4 = [v3 metadata];
  v5 = [v4 format];

  v6 = getHMCharacteristicMetadataFormatBool_2135();
  LOBYTE(v4) = [v5 isEqualToString:v6];

  if (v4)
  {
    v7 = 1;
    goto LABEL_19;
  }

  v8 = getHMCharacteristicMetadataFormatString_2136();
  v9 = [v5 isEqualToString:v8];

  if (v9)
  {
    v7 = 2;
    goto LABEL_19;
  }

  v10 = getHMCharacteristicMetadataFormatInt_2137();
  if (([v5 isEqualToString:v10] & 1) == 0)
  {
    v11 = getHMCharacteristicMetadataFormatFloat_2138();
    if (([v5 isEqualToString:v11] & 1) == 0)
    {
      v12 = getHMCharacteristicMetadataFormatUInt8_2139();
      if (([v5 isEqualToString:v12] & 1) == 0)
      {
        v13 = getHMCharacteristicMetadataFormatUInt16_2140();
        if (([v5 isEqualToString:v13] & 1) == 0)
        {
          v14 = getHMCharacteristicMetadataFormatUInt32_2141();
          if (([v5 isEqualToString:v14] & 1) == 0)
          {
            v17 = getHMCharacteristicMetadataFormatUInt64_2142();
            v18 = [v5 isEqualToString:v17];

            if ((v18 & 1) == 0)
            {
              v7 = 0;
              goto LABEL_19;
            }

            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_15:
  v15 = [(WFHomeAccessoryConditionalSubjectState *)self unit];
  if (v15)
  {
    v7 = 5;
  }

  else
  {
    v7 = 3;
  }

LABEL_19:
  return v7;
}

- (void)getContentWithContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = +[WFHomeManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__WFHomeAccessoryConditionalSubjectState_getContentWithContext_completionHandler___block_invoke;
  v8[3] = &unk_1E837E1F8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 ensureHomesAreLoadedWithCompletionHandler:v8];
}

void __82__WFHomeAccessoryConditionalSubjectState_getContentWithContext_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) characteristic];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__WFHomeAccessoryConditionalSubjectState_getContentWithContext_completionHandler___block_invoke_2;
  v4[3] = &unk_1E837FA10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 readValueWithCompletionHandler:v4];
}

void __82__WFHomeAccessoryConditionalSubjectState_getContentWithContext_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) characteristic];
    v17 = [v5 value];

    if ([*(a1 + 32) negatesValue])
    {
      v6 = MEMORY[0x1E696AD98];
      v7 = objc_opt_class();
      v8 = WFEnforceClass_1501(v17, v7);
      v9 = [v6 numberWithInt:{objc_msgSend(v8, "BOOLValue") ^ 1}];

      v17 = v9;
    }

    v10 = objc_opt_new();
    v11 = [*(a1 + 32) unit];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E696AD28]);
      [v17 doubleValue];
      v14 = v13;
      v15 = [*(a1 + 32) unit];
      v16 = [v12 initWithDoubleValue:v15 unit:v14];

      [v10 addObject:v16];
    }

    else
    {
      [v10 addObject:v17];
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMServiceParameter];
      v8 = [(WFHomeAccessoryConditionalSubjectState *)v6 serializedWFHMServiceParameter];
      if (![v7 isEqual:v8])
      {
        LOBYTE(v11) = 0;
LABEL_13:

        goto LABEL_14;
      }

      v9 = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMCharacteristicSubstitutableState];
      v10 = [(WFHomeAccessoryConditionalSubjectState *)v6 serializedWFHMCharacteristicSubstitutableState];
      if (v9 == v10 || (-[WFHomeAccessoryConditionalSubjectState serializedWFHMCharacteristicSubstitutableState](self, "serializedWFHMCharacteristicSubstitutableState"), v3 = objc_claimAutoreleasedReturnValue(), -[WFHomeAccessoryConditionalSubjectState serializedWFHMCharacteristicSubstitutableState](v6, "serializedWFHMCharacteristicSubstitutableState"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v12 = [(WFHomeAccessoryConditionalSubjectState *)self negatesValue];
        v11 = v12 ^ [(WFHomeAccessoryConditionalSubjectState *)v6 negatesValue]^ 1;
        if (v9 == v10)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }

      goto LABEL_12;
    }

    LOBYTE(v11) = 0;
  }

LABEL_14:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMServiceParameter];
  v4 = [v3 hash];
  v5 = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMCharacteristicSubstitutableState];
  v6 = [v5 hash] ^ v4;
  if ([(WFHomeAccessoryConditionalSubjectState *)self negatesValue])
  {
    v7 = 305449726;
  }

  else
  {
    v7 = 3405660961;
  }

  return v6 ^ v7;
}

- (HMCharacteristic)characteristic
{
  v2 = [(WFHomeAccessoryConditionalSubjectState *)self characteristicSubstitutableState];
  v3 = [v2 characteristic];

  return v3;
}

- (HMService)service
{
  v2 = [(WFHomeAccessoryConditionalSubjectState *)self serviceParameterState];
  v3 = [v2 service];

  return v3;
}

- (HMHome)home
{
  v3 = +[WFHomeManager sharedManager];
  v4 = [(WFHomeAccessoryConditionalSubjectState *)self homeIdentifier];
  v5 = [v3 homeWithIdentifier:v4];

  return v5;
}

- (id)homeIdentifier
{
  v2 = [(WFHomeAccessoryConditionalSubjectState *)self serviceParameterState];
  v3 = [v2 homeIdentifier];

  return v3;
}

- (id)unitType
{
  v2 = [(WFHomeAccessoryConditionalSubjectState *)self unit];
  if (v2)
  {
    v3 = [MEMORY[0x1E69E0BE8] unitTypeForUnitClass:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)serializedRepresentation
{
  v9.receiver = self;
  v9.super_class = WFHomeAccessoryConditionalSubjectState;
  v3 = [(WFConditionalSubjectParameterState *)&v9 serializedRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMServiceParameter];
  [v4 setObject:v5 forKeyedSubscript:@"HomeService"];

  v6 = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMCharacteristicSubstitutableState];

  if (v6)
  {
    v7 = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMCharacteristicSubstitutableState];
    [v4 setObject:v7 forKeyedSubscript:@"HomeCharacteristic"];
  }

  if ([(WFHomeAccessoryConditionalSubjectState *)self negatesValue])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NegatesValue"];
  }

  return v4;
}

- (WFHomeAccessoryConditionalSubjectState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = WFEnforceClass_1501(v6, v7);

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:@"HomeService"];
    v10 = objc_opt_class();
    v11 = WFEnforceClass_1501(v9, v10);

    v12 = [v8 objectForKeyedSubscript:@"HomeCharacteristic"];
    v13 = objc_opt_class();
    v14 = WFEnforceClass_1501(v12, v13);

    if (v11)
    {
      v15 = [v8 objectForKeyedSubscript:@"NegatesValue"];
      v16 = objc_opt_class();
      v17 = WFEnforceClass_1501(v15, v16);
      v18 = [v17 BOOLValue];

      self = [(WFHomeAccessoryConditionalSubjectState *)self initWithSerializedWFHMServiceParameter:v11 serializedWFHMCharacteristicSubstitutableState:v14 negatesValue:v18];
      v19 = self;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (WFHomeAccessoryConditionalSubjectState)initWithSerializedWFHMServiceParameter:(id)a3 serializedWFHMCharacteristicSubstitutableState:(id)a4 negatesValue:(BOOL)a5
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFHomeAccessoryConditionalSubjectState.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"serializedWFHMServiceParameter"}];
  }

  v17.receiver = self;
  v17.super_class = WFHomeAccessoryConditionalSubjectState;
  v12 = [(WFHomeAccessoryConditionalSubjectState *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serializedWFHMServiceParameter, a3);
    objc_storeStrong(&v13->_serializedWFHMCharacteristicSubstitutableState, a4);
    v13->_negatesValue = a5;
    v14 = v13;
  }

  return v13;
}

@end