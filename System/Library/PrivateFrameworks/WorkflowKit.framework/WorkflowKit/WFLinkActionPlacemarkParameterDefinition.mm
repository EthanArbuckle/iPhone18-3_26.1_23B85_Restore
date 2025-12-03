@interface WFLinkActionPlacemarkParameterDefinition
- (WFLinkActionPlacemarkParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)addressForPlacemark:(id)placemark;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)nameForPlacemark:(id)placemark;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionPlacemarkParameterDefinition

- (id)addressForPlacemark:(id)placemark
{
  placemarkCopy = placemark;
  formattedAddressLines = [placemarkCopy formattedAddressLines];
  v5 = [formattedAddressLines count];

  if (v5)
  {
    formattedAddressLines2 = [placemarkCopy formattedAddressLines];
    firstObject = [formattedAddressLines2 firstObject];
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v8 = getCNPostalAddressFormatterClass_softClass;
    v16 = getCNPostalAddressFormatterClass_softClass;
    if (!getCNPostalAddressFormatterClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getCNPostalAddressFormatterClass_block_invoke;
      v12[3] = &unk_1E837FAC0;
      v12[4] = &v13;
      __getCNPostalAddressFormatterClass_block_invoke(v12);
      v8 = v14[3];
    }

    v9 = v8;
    _Block_object_dispose(&v13, 8);
    formattedAddressLines2 = [placemarkCopy postalAddress];
    firstObject = [v8 singleLineStringFromPostalAddress:formattedAddressLines2 addCountryName:0];
  }

  v10 = firstObject;

  return v10;
}

- (id)nameForPlacemark:(id)placemark
{
  placemarkCopy = placemark;
  name = [placemarkCopy name];

  if (name)
  {
    [placemarkCopy name];
  }

  else
  {
    [(WFLinkActionPlacemarkParameterDefinition *)self addressForPlacemark:placemarkCopy];
  }
  v6 = ;

  return v6;
}

- (id)localizedTitleForLinkValue:(id)value
{
  v4 = *MEMORY[0x1E69AC550];
  valueCopy = value;
  v6 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:v4 defaultValue:0];
  value = [valueCopy value];

  if (v6 == 2)
  {
    locality = [value locality];
  }

  else
  {
    if (v6 == 1)
    {
      [(WFLinkActionPlacemarkParameterDefinition *)self addressForPlacemark:value];
    }

    else
    {
      [(WFLinkActionPlacemarkParameterDefinition *)self nameForPlacemark:value];
    }
    locality = ;
  }

  v9 = locality;

  return v9;
}

- (id)parameterStateFromLinkValue:(id)value
{
  v23 = *MEMORY[0x1E69E9840];
  value = [value value];
  if (value)
  {
    valueType = [(WFLinkActionParameterDefinition *)self valueType];
    v6 = [valueType objectIsMemberOfType:value];

    if (v6)
    {
      v7 = value;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v10 = [[WFLocationValue alloc] initWithPlacemark:v9];
      v11 = [WFLocationParameterState alloc];

      v12 = [(WFLocationParameterState *)v11 initWithValue:v10];
      goto LABEL_11;
    }

    v13 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v17 = 136315650;
      v18 = "[WFLinkActionPlacemarkParameterDefinition parameterStateFromLinkValue:]";
      v19 = 2114;
      v20 = value;
      v21 = 2114;
      v22 = valueType2;
    }
  }

  v12 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  stateCopy = state;
  requestorCopy = requestor;
  actionCopy = action;
  keyCopy = key;
  handlerCopy = handler;
  v20 = handlerCopy;
  if (valueCopy)
  {
    v21 = valueCopy;
    objc_opt_class();
    v22 = objc_opt_isKindOfClass() & 1;
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (v22)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __176__WFLinkActionPlacemarkParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke;
      v30[3] = &unk_1E837AF20;
      v30[4] = self;
      v31 = v20;
      v32 = 0;
      v33 = &v32;
      v34 = 0x2050000000;
      v25 = getCLPlacemarkClass_softClass;
      v35 = getCLPlacemarkClass_softClass;
      if (!getCLPlacemarkClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCLPlacemarkClass_block_invoke;
        v37 = &unk_1E837FAC0;
        v38 = &v32;
        __getCLPlacemarkClass_block_invoke(buf);
        v25 = v33[3];
      }

      v26 = v25;
      _Block_object_dispose(&v32, 8);
      [v21 getObjectRepresentation:v30 forClass:v25];
    }

    else
    {
      v27 = getWFActionsLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[WFLinkActionPlacemarkParameterDefinition getLinkValueFromProcessedParameterValue:parameterState:permissionRequestor:runningFromToolKit:action:parameterKey:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = objc_opt_class();
        v28 = *&buf[14];
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_FAULT, "%s Action expected WFContentCollection as processed parameter type for placemark, but got %@ instead", buf, 0x16u);
      }

      v20[2](v20, 0, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __176__WFLinkActionPlacemarkParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = [objc_alloc(MEMORY[0x1E695FC20]) initWithPlacemark:v8];
    v4 = *(a1 + 40);
    v5 = objc_alloc(MEMORY[0x1E69ACA90]);
    v6 = [*(a1 + 32) valueType];
    v7 = [v5 initWithValue:v3 valueType:v6];
    (*(v4 + 16))(v4, v7, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  if (stateCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = stateCopy;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  value = [v9 value];
  placemark = [value placemark];

  if (placemark)
  {
    v12 = objc_alloc(MEMORY[0x1E695FC20]);
    value2 = [v9 value];
    placemark2 = [value2 placemark];
    v15 = [v12 initWithPlacemark:placemark2];

    v16 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)parameterDefinitionDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC550] defaultValue:0]== 2)
  {
    [v3 setValue:@"ThreeKilometers" forKey:@"CurrentLocationAccuracy"];
  }

  v7.receiver = self;
  v7.super_class = WFLinkActionPlacemarkParameterDefinition;
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v7 parameterDefinitionDictionary];
  v5 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v3];

  return v5;
}

- (WFLinkActionPlacemarkParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC938];
  metadataCopy = metadata;
  placemarkValueType = [v4 placemarkValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionPlacemarkParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:placemarkValueType parameterMetadata:metadataCopy];

  return v7;
}

@end