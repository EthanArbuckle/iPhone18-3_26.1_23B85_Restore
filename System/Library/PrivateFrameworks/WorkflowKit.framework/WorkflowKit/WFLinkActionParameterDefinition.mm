@interface WFLinkActionParameterDefinition
- (BOOL)BOOLForTypeSpecificMetadataKey:(id)key defaultValue:(BOOL)value;
- (Class)parameterClass;
- (NSDictionary)typeSpecificMetadata;
- (WFLinkActionParameterDefinition)initWithValueType:(id)type parameterMetadata:(id)metadata;
- (WFParameterDefinition)parameterDefinitionDictionary;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)linkValueWithValue:(id)value;
- (id)localizedTitleForLinkValue:(id)value;
- (id)objectForTypeSpecificMetadataKey:(id)key ofClass:(Class)class;
- (id)parameterStateFromLinkValue:(id)value;
- (int64_t)integerForTypeSpecificMetadataKey:(id)key defaultValue:(int64_t)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionParameterDefinition

- (NSDictionary)typeSpecificMetadata
{
  parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  typeSpecificMetadata = [parameterMetadata typeSpecificMetadata];

  return typeSpecificMetadata;
}

- (WFParameterDefinition)parameterDefinitionDictionary
{
  v3 = objc_opt_new();
  parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  name = [parameterMetadata name];
  [v3 if_setObjectIfNonNil:name forKey:@"Key"];

  parameterMetadata2 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  wf_localizedTitle = [parameterMetadata2 wf_localizedTitle];
  [v3 if_setObjectIfNonNil:wf_localizedTitle forKey:@"Label"];

  parameterMetadata3 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  wf_localizedTitle2 = [parameterMetadata3 wf_localizedTitle];
  [v3 if_setObjectIfNonNil:wf_localizedTitle2 forKey:@"Placeholder"];

  parameterMetadata4 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  wf_localizedDescription = [parameterMetadata4 wf_localizedDescription];
  [v3 if_setObjectIfNonNil:wf_localizedDescription forKey:@"Description"];

  v12 = NSStringFromClass([(WFLinkActionParameterDefinition *)self parameterClass]);
  [v3 if_setObjectIfNonNil:v12 forKey:@"Class"];

  typeSpecificMetadata = [(WFLinkActionParameterDefinition *)self typeSpecificMetadata];
  v14 = [typeSpecificMetadata objectForKey:*MEMORY[0x1E69AC590]];

  v15 = [(WFLinkActionParameterDefinition *)self defaultSerializedRepresentationFromParameterMetadataDefaultValue:v14];
  [v3 if_setObjectIfNonNil:v15 forKey:@"DefaultValue"];

  v16 = [[WFParameterDefinition alloc] initWithDictionary:v3];

  return v16;
}

- (BOOL)BOOLForTypeSpecificMetadataKey:(id)key defaultValue:(BOOL)value
{
  keyCopy = key;
  v7 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:keyCopy ofClass:objc_opt_class()];

  if (v7)
  {
    value = [v7 BOOLValue];
  }

  return value;
}

- (int64_t)integerForTypeSpecificMetadataKey:(id)key defaultValue:(int64_t)value
{
  keyCopy = key;
  v7 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:keyCopy ofClass:objc_opt_class()];

  if (v7)
  {
    value = [v7 integerValue];
  }

  return value;
}

- (id)objectForTypeSpecificMetadataKey:(id)key ofClass:(Class)class
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  typeSpecificMetadata = [(WFLinkActionParameterDefinition *)self typeSpecificMetadata];
  v8 = [typeSpecificMetadata objectForKey:keyCopy];

  v9 = v8;
  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v15 = 136315906;
      v16 = "WFEnforceClass";
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = objc_opt_class();
      v21 = 2114;
      classCopy = class;
      v12 = v20;
    }

    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)localizedTitleForLinkValue:(id)value
{
  valueCopy = value;
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[WFLinkActionParameterDefinition localizedTitleForValue:parameterMetadata:] must be overridden"];
  __break(1u);
  return result;
}

- (id)parameterStateFromLinkValue:(id)value
{
  valueCopy = value;
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[WFLinkActionParameterDefinition parameterStateFromLinkValue:] must be overridden"];
  __break(1u);
  return result;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value
{
  valueCopy = value;
  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  [valueType objectClass];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = valueCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (Class)parameterClass
{
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[WFLinkActionParameterDefinition parameterClassWithParameterMetadata:] must be overridden"];
  __break(1u);
  return result;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  handlerCopy = handler;
  v12 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:value];
  (*(handler + 2))(handlerCopy, v12, 0);
}

- (id)linkValueWithValue:(id)value
{
  v35 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy)
  {
    v5 = 0;
    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
    goto LABEL_30;
  }

  v6 = valueCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69ACA90]);
    fileValueType = [MEMORY[0x1E69AC888] fileValueType];
    v5 = [v9 initWithValue:v8 valueType:fileValueType];
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[WFLinkActionParameterDefinition valueType](self, "valueType"), v11 = objc_claimAutoreleasedReturnValue(), [v6 value], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "objectIsMemberOfType:", v12), v12, v11, !v13))
  {
    v14 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    fileValueType = v15;

    if ([fileValueType count])
    {
      v16 = objc_alloc(MEMORY[0x1E69ACA90]);
      v17 = objc_alloc(MEMORY[0x1E69AC6C0]);
      firstObject = [fileValueType firstObject];
      valueType = [firstObject valueType];
      v20 = [v17 initWithMemberValueType:valueType];
      v5 = [v16 initWithValue:v14 valueType:v20];
    }

    else
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v22 = [valueType2 objectIsMemberOfType:v14];

      if ((v22 & 1) == 0)
      {
        v23 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          valueType3 = [(WFLinkActionParameterDefinition *)self valueType];
          v29 = 136315650;
          v30 = "[WFLinkActionParameterDefinition linkValueWithValue:]";
          v31 = 2112;
          v32 = v14;
          v33 = 2112;
          v34 = valueType3;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v29 = 136315138;
          v30 = "[WFLinkActionParameterDefinition linkValueWithValue:]";
          _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_DEBUG, "%s Temporarily returning nil for a NSDictionary used to initialize a LNValue", &v29, 0xCu);
        }

        v5 = 0;
        goto LABEL_28;
      }

      v26 = objc_alloc(MEMORY[0x1E69ACA90]);
      firstObject = [(WFLinkActionParameterDefinition *)self valueType];
      v5 = [v26 initWithValue:v14 valueType:firstObject];
    }

LABEL_28:
    goto LABEL_29;
  }

  v5 = v6;
LABEL_29:

LABEL_30:
  v27 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  if (stateCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = stateCopy;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  value = [v7 value];

  v9 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:value];

  return v9;
}

- (WFLinkActionParameterDefinition)initWithValueType:(id)type parameterMetadata:(id)metadata
{
  typeCopy = type;
  metadataCopy = metadata;
  v10 = metadataCopy;
  if (typeCopy)
  {
    if (metadataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLinkActionParameterDefinition.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFLinkActionParameterDefinition.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"parameterMetadata"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFLinkActionParameterDefinition;
  v11 = [(WFLinkActionParameterDefinition *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_valueType, type);
    objc_storeStrong(&v12->_parameterMetadata, metadata);
    v13 = v12;
  }

  return v12;
}

@end