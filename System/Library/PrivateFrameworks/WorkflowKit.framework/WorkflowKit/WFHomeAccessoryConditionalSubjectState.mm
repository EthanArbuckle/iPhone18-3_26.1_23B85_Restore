@interface WFHomeAccessoryConditionalSubjectState
- (BOOL)isEnumeration;
- (BOOL)isEqual:(id)equal;
- (HMCharacteristic)characteristic;
- (HMHome)home;
- (HMService)service;
- (NSFormatter)characteristicValueFormatter;
- (WFHMCharacteristicSubstitutableState)characteristicSubstitutableState;
- (WFHMServiceParameterState)serviceParameterState;
- (WFHomeAccessoryConditionalSubjectState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFHomeAccessoryConditionalSubjectState)initWithSerializedWFHMServiceParameter:(id)parameter serializedWFHMCharacteristicSubstitutableState:(id)state negatesValue:(BOOL)value;
- (id)homeIdentifier;
- (id)localizedLabelForEnumerationPossibleState:(id)state;
- (id)maximumLength;
- (id)maximumValue;
- (id)minimumValue;
- (id)serializedRepresentation;
- (id)stepValue;
- (id)unit;
- (id)unitType;
- (int64_t)contentType;
- (unint64_t)hash;
- (void)getContentWithContext:(id)context completionHandler:(id)handler;
- (void)getEnumerationPossibleStatesWithCompletionHandler:(id)handler;
@end

@implementation WFHomeAccessoryConditionalSubjectState

- (NSFormatter)characteristicValueFormatter
{
  characteristic = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  v4 = characteristic;
  characteristicValueFormatter = self->_characteristicValueFormatter;
  if (characteristicValueFormatter)
  {
    v6 = 1;
  }

  else
  {
    v6 = characteristic == 0;
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

- (id)localizedLabelForEnumerationPossibleState:(id)state
{
  stateCopy = state;
  v5 = objc_opt_class();
  v6 = WFEnforceClass_1501(stateCopy, v5);

  number = [v6 number];
  if (number)
  {
    characteristicValueFormatter = [(WFHomeAccessoryConditionalSubjectState *)self characteristicValueFormatter];
    v9 = [characteristicValueFormatter stringForObjectValue:number];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)getEnumerationPossibleStatesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[WFHomeManager sharedManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__WFHomeAccessoryConditionalSubjectState_getEnumerationPossibleStatesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E837E1F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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
  characteristic = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];

  if (!characteristic)
  {
    return 0;
  }

  characteristic2 = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  IsEnumeration = WFHMCharacteristicIsEnumeration(characteristic2);

  return IsEnumeration;
}

- (WFHMCharacteristicSubstitutableState)characteristicSubstitutableState
{
  if (!self->_characteristicSubstitutableState)
  {
    serializedWFHMCharacteristicSubstitutableState = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMCharacteristicSubstitutableState];

    if (serializedWFHMCharacteristicSubstitutableState)
    {
      v4 = [WFHMCharacteristicSubstitutableState alloc];
      serializedWFHMCharacteristicSubstitutableState2 = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMCharacteristicSubstitutableState];
      v6 = [(WFHMCharacteristicSubstitutableState *)v4 initWithSerializedRepresentation:serializedWFHMCharacteristicSubstitutableState2 variableProvider:0 parameter:0];
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
    serializedWFHMServiceParameter = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMServiceParameter];
    v6 = [(WFHMServiceParameterState *)v4 initWithSerializedRepresentation:serializedWFHMServiceParameter variableProvider:0 parameter:0];
    v7 = self->_serviceParameterState;
    self->_serviceParameterState = v6;

    serviceParameterState = self->_serviceParameterState;
  }

  return serviceParameterState;
}

- (id)unit
{
  characteristic = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];

  if (characteristic)
  {
    characteristic2 = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
    v5 = WFUnitForHMCharacteristic(characteristic2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stepValue
{
  characteristic = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  metadata = [characteristic metadata];
  stepValue = [metadata stepValue];

  return stepValue;
}

- (id)maximumValue
{
  characteristic = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  metadata = [characteristic metadata];
  maximumValue = [metadata maximumValue];

  return maximumValue;
}

- (id)minimumValue
{
  characteristic = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  metadata = [characteristic metadata];
  minimumValue = [metadata minimumValue];

  return minimumValue;
}

- (id)maximumLength
{
  characteristic = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  metadata = [characteristic metadata];
  maxLength = [metadata maxLength];

  return maxLength;
}

- (int64_t)contentType
{
  characteristic = [(WFHomeAccessoryConditionalSubjectState *)self characteristic];
  metadata = [characteristic metadata];
  format = [metadata format];

  v6 = getHMCharacteristicMetadataFormatBool_2135();
  LOBYTE(metadata) = [format isEqualToString:v6];

  if (metadata)
  {
    v7 = 1;
    goto LABEL_19;
  }

  v8 = getHMCharacteristicMetadataFormatString_2136();
  v9 = [format isEqualToString:v8];

  if (v9)
  {
    v7 = 2;
    goto LABEL_19;
  }

  v10 = getHMCharacteristicMetadataFormatInt_2137();
  if (([format isEqualToString:v10] & 1) == 0)
  {
    v11 = getHMCharacteristicMetadataFormatFloat_2138();
    if (([format isEqualToString:v11] & 1) == 0)
    {
      v12 = getHMCharacteristicMetadataFormatUInt8_2139();
      if (([format isEqualToString:v12] & 1) == 0)
      {
        v13 = getHMCharacteristicMetadataFormatUInt16_2140();
        if (([format isEqualToString:v13] & 1) == 0)
        {
          v14 = getHMCharacteristicMetadataFormatUInt32_2141();
          if (([format isEqualToString:v14] & 1) == 0)
          {
            v17 = getHMCharacteristicMetadataFormatUInt64_2142();
            v18 = [format isEqualToString:v17];

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
  unit = [(WFHomeAccessoryConditionalSubjectState *)self unit];
  if (unit)
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

- (void)getContentWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[WFHomeManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__WFHomeAccessoryConditionalSubjectState_getContentWithContext_completionHandler___block_invoke;
  v8[3] = &unk_1E837E1F8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      serializedWFHMServiceParameter = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMServiceParameter];
      serializedWFHMServiceParameter2 = [(WFHomeAccessoryConditionalSubjectState *)equalCopy serializedWFHMServiceParameter];
      if (![serializedWFHMServiceParameter isEqual:serializedWFHMServiceParameter2])
      {
        LOBYTE(v11) = 0;
LABEL_13:

        goto LABEL_14;
      }

      serializedWFHMCharacteristicSubstitutableState = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMCharacteristicSubstitutableState];
      serializedWFHMCharacteristicSubstitutableState2 = [(WFHomeAccessoryConditionalSubjectState *)equalCopy serializedWFHMCharacteristicSubstitutableState];
      if (serializedWFHMCharacteristicSubstitutableState == serializedWFHMCharacteristicSubstitutableState2 || (-[WFHomeAccessoryConditionalSubjectState serializedWFHMCharacteristicSubstitutableState](self, "serializedWFHMCharacteristicSubstitutableState"), v3 = objc_claimAutoreleasedReturnValue(), -[WFHomeAccessoryConditionalSubjectState serializedWFHMCharacteristicSubstitutableState](equalCopy, "serializedWFHMCharacteristicSubstitutableState"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        negatesValue = [(WFHomeAccessoryConditionalSubjectState *)self negatesValue];
        v11 = negatesValue ^ [(WFHomeAccessoryConditionalSubjectState *)equalCopy negatesValue]^ 1;
        if (serializedWFHMCharacteristicSubstitutableState == serializedWFHMCharacteristicSubstitutableState2)
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
  serializedWFHMServiceParameter = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMServiceParameter];
  v4 = [serializedWFHMServiceParameter hash];
  serializedWFHMCharacteristicSubstitutableState = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMCharacteristicSubstitutableState];
  v6 = [serializedWFHMCharacteristicSubstitutableState hash] ^ v4;
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
  characteristicSubstitutableState = [(WFHomeAccessoryConditionalSubjectState *)self characteristicSubstitutableState];
  characteristic = [characteristicSubstitutableState characteristic];

  return characteristic;
}

- (HMService)service
{
  serviceParameterState = [(WFHomeAccessoryConditionalSubjectState *)self serviceParameterState];
  service = [serviceParameterState service];

  return service;
}

- (HMHome)home
{
  v3 = +[WFHomeManager sharedManager];
  homeIdentifier = [(WFHomeAccessoryConditionalSubjectState *)self homeIdentifier];
  v5 = [v3 homeWithIdentifier:homeIdentifier];

  return v5;
}

- (id)homeIdentifier
{
  serviceParameterState = [(WFHomeAccessoryConditionalSubjectState *)self serviceParameterState];
  homeIdentifier = [serviceParameterState homeIdentifier];

  return homeIdentifier;
}

- (id)unitType
{
  unit = [(WFHomeAccessoryConditionalSubjectState *)self unit];
  if (unit)
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
  serializedRepresentation = [(WFConditionalSubjectParameterState *)&v9 serializedRepresentation];
  v4 = [serializedRepresentation mutableCopy];

  serializedWFHMServiceParameter = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMServiceParameter];
  [v4 setObject:serializedWFHMServiceParameter forKeyedSubscript:@"HomeService"];

  serializedWFHMCharacteristicSubstitutableState = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMCharacteristicSubstitutableState];

  if (serializedWFHMCharacteristicSubstitutableState)
  {
    serializedWFHMCharacteristicSubstitutableState2 = [(WFHomeAccessoryConditionalSubjectState *)self serializedWFHMCharacteristicSubstitutableState];
    [v4 setObject:serializedWFHMCharacteristicSubstitutableState2 forKeyedSubscript:@"HomeCharacteristic"];
  }

  if ([(WFHomeAccessoryConditionalSubjectState *)self negatesValue])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NegatesValue"];
  }

  return v4;
}

- (WFHomeAccessoryConditionalSubjectState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  v7 = objc_opt_class();
  v8 = WFEnforceClass_1501(representationCopy, v7);

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
      bOOLValue = [v17 BOOLValue];

      self = [(WFHomeAccessoryConditionalSubjectState *)self initWithSerializedWFHMServiceParameter:v11 serializedWFHMCharacteristicSubstitutableState:v14 negatesValue:bOOLValue];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFHomeAccessoryConditionalSubjectState)initWithSerializedWFHMServiceParameter:(id)parameter serializedWFHMCharacteristicSubstitutableState:(id)state negatesValue:(BOOL)value
{
  parameterCopy = parameter;
  stateCopy = state;
  if (!parameterCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHomeAccessoryConditionalSubjectState.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"serializedWFHMServiceParameter"}];
  }

  v17.receiver = self;
  v17.super_class = WFHomeAccessoryConditionalSubjectState;
  v12 = [(WFHomeAccessoryConditionalSubjectState *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serializedWFHMServiceParameter, parameter);
    objc_storeStrong(&v13->_serializedWFHMCharacteristicSubstitutableState, state);
    v13->_negatesValue = value;
    v14 = v13;
  }

  return v13;
}

@end