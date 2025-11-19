@interface WFLinkActionParameterDefinition
- (BOOL)BOOLForTypeSpecificMetadataKey:(id)a3 defaultValue:(BOOL)a4;
- (Class)parameterClass;
- (NSDictionary)typeSpecificMetadata;
- (WFLinkActionParameterDefinition)initWithValueType:(id)a3 parameterMetadata:(id)a4;
- (WFParameterDefinition)parameterDefinitionDictionary;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)linkValueWithValue:(id)a3;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)objectForTypeSpecificMetadataKey:(id)a3 ofClass:(Class)a4;
- (id)parameterStateFromLinkValue:(id)a3;
- (int64_t)integerForTypeSpecificMetadataKey:(id)a3 defaultValue:(int64_t)a4;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionParameterDefinition

- (NSDictionary)typeSpecificMetadata
{
  v2 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v3 = [v2 typeSpecificMetadata];

  return v3;
}

- (WFParameterDefinition)parameterDefinitionDictionary
{
  v3 = objc_opt_new();
  v4 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v5 = [v4 name];
  [v3 if_setObjectIfNonNil:v5 forKey:@"Key"];

  v6 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v7 = [v6 wf_localizedTitle];
  [v3 if_setObjectIfNonNil:v7 forKey:@"Label"];

  v8 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v9 = [v8 wf_localizedTitle];
  [v3 if_setObjectIfNonNil:v9 forKey:@"Placeholder"];

  v10 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v11 = [v10 wf_localizedDescription];
  [v3 if_setObjectIfNonNil:v11 forKey:@"Description"];

  v12 = NSStringFromClass([(WFLinkActionParameterDefinition *)self parameterClass]);
  [v3 if_setObjectIfNonNil:v12 forKey:@"Class"];

  v13 = [(WFLinkActionParameterDefinition *)self typeSpecificMetadata];
  v14 = [v13 objectForKey:*MEMORY[0x1E69AC590]];

  v15 = [(WFLinkActionParameterDefinition *)self defaultSerializedRepresentationFromParameterMetadataDefaultValue:v14];
  [v3 if_setObjectIfNonNil:v15 forKey:@"DefaultValue"];

  v16 = [[WFParameterDefinition alloc] initWithDictionary:v3];

  return v16;
}

- (BOOL)BOOLForTypeSpecificMetadataKey:(id)a3 defaultValue:(BOOL)a4
{
  v6 = a3;
  v7 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:v6 ofClass:objc_opt_class()];

  if (v7)
  {
    a4 = [v7 BOOLValue];
  }

  return a4;
}

- (int64_t)integerForTypeSpecificMetadataKey:(id)a3 defaultValue:(int64_t)a4
{
  v6 = a3;
  v7 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:v6 ofClass:objc_opt_class()];

  if (v7)
  {
    a4 = [v7 integerValue];
  }

  return a4;
}

- (id)objectForTypeSpecificMetadataKey:(id)a3 ofClass:(Class)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(WFLinkActionParameterDefinition *)self typeSpecificMetadata];
  v8 = [v7 objectForKey:v6];

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
      v22 = a4;
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

- (id)localizedTitleForLinkValue:(id)a3
{
  v3 = a3;
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[WFLinkActionParameterDefinition localizedTitleForValue:parameterMetadata:] must be overridden"];
  __break(1u);
  return result;
}

- (id)parameterStateFromLinkValue:(id)a3
{
  v3 = a3;
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[WFLinkActionParameterDefinition parameterStateFromLinkValue:] must be overridden"];
  __break(1u);
  return result;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkActionParameterDefinition *)self valueType];
  [v5 objectClass];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = v4;
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

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v11 = a9;
  v12 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:a3];
  (*(a9 + 2))(v11, v12, 0);
}

- (id)linkValueWithValue:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = 0;
    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    goto LABEL_30;
  }

  v6 = v4;
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
    v10 = [MEMORY[0x1E69AC888] fileValueType];
    v5 = [v9 initWithValue:v8 valueType:v10];
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

    v10 = v15;

    if ([v10 count])
    {
      v16 = objc_alloc(MEMORY[0x1E69ACA90]);
      v17 = objc_alloc(MEMORY[0x1E69AC6C0]);
      v18 = [v10 firstObject];
      v19 = [v18 valueType];
      v20 = [v17 initWithMemberValueType:v19];
      v5 = [v16 initWithValue:v14 valueType:v20];
    }

    else
    {
      v21 = [(WFLinkActionParameterDefinition *)self valueType];
      v22 = [v21 objectIsMemberOfType:v14];

      if ((v22 & 1) == 0)
      {
        v23 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          v24 = [(WFLinkActionParameterDefinition *)self valueType];
          v29 = 136315650;
          v30 = "[WFLinkActionParameterDefinition linkValueWithValue:]";
          v31 = 2112;
          v32 = v14;
          v33 = 2112;
          v34 = v24;
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
      v18 = [(WFLinkActionParameterDefinition *)self valueType];
      v5 = [v26 initWithValue:v14 valueType:v18];
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

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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
  v8 = [v7 value];

  v9 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v8];

  return v9;
}

- (WFLinkActionParameterDefinition)initWithValueType:(id)a3 parameterMetadata:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFLinkActionParameterDefinition.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"WFLinkActionParameterDefinition.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"parameterMetadata"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFLinkActionParameterDefinition;
  v11 = [(WFLinkActionParameterDefinition *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_valueType, a3);
    objc_storeStrong(&v12->_parameterMetadata, a4);
    v13 = v12;
  }

  return v12;
}

@end