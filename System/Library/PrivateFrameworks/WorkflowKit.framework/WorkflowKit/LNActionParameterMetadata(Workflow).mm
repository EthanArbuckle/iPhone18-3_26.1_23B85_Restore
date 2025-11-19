@interface LNActionParameterMetadata(Workflow)
- (id)wf_localizedDescription;
- (id)wf_localizedTitle;
- (id)wf_parameterDefinition;
- (id)wf_parameterDictionaryRepresentation;
- (id)wf_parameterMetadataWithTypeSpecificMetadata:()Workflow;
- (id)wf_parameterMetadataWithValueType:()Workflow typeSpecificMetadata:;
- (uint64_t)wf_isPersistentFileIdentifiableEntity;
- (uint64_t)wf_supportsImportFromCodableValueType:()Workflow;
- (uint64_t)wf_validateParameterValue:()Workflow error:;
@end

@implementation LNActionParameterMetadata(Workflow)

- (uint64_t)wf_isPersistentFileIdentifiableEntity
{
  v1 = [a1 typeSpecificMetadata];
  v2 = [v1 objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];

  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 systemProtocolMetadata];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69AC2C0]];

    if (v4)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)wf_parameterDefinition
{
  v2 = [a1 valueType];
  v3 = [v2 wf_parameterDefinitionWithParameterMetadata:a1];

  return v3;
}

- (id)wf_parameterDictionaryRepresentation
{
  v1 = [a1 wf_parameterDefinition];
  v2 = [v1 parameterDefinitionDictionary];

  return v2;
}

- (id)wf_localizedDescription
{
  v1 = [a1 parameterDescription];
  v2 = [v1 localizedStringForLocaleIdentifier:0];

  return v2;
}

- (id)wf_localizedTitle
{
  v2 = [a1 title];
  v3 = [v2 localizedStringWithPluralizationNumber:&unk_1F4A9AD98 forLocaleIdentifier:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 name];
  }

  v6 = v5;

  return v6;
}

- (uint64_t)wf_supportsImportFromCodableValueType:()Workflow
{
  v4 = a3;
  v5 = [a1 typeSpecificMetadata];
  v6 = [v5 objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 transferableContentTypes];
    v8 = [v7 importableTypes];
    v9 = [v8 if_map:&__block_literal_global_61168];
    v10 = [v4 contentTypeIdentifier];
    v11 = [v9 containsObject:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)wf_validateParameterValue:()Workflow error:
{
  v27[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 isOptional];
  if (v6 || (v7 & 1) != 0)
  {
    if (v6 && ([a1 valueType], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "value"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "objectIsMemberOfType:", v18), v18, v17, (v19 & 1) == 0))
    {
      if (a4)
      {
        v20 = MEMORY[0x1E696ABC0];
        v21 = *MEMORY[0x1E69ACC68];
        v24[0] = *MEMORY[0x1E696A578];
        v10 = WFLocalizedString(@"The value is invalid");
        v25[0] = v10;
        v24[1] = *MEMORY[0x1E696A598];
        v11 = WFLocalizedString(@"Please ensure that a value is valid");
        v25[1] = v11;
        v24[2] = *MEMORY[0x1E69ACC78];
        v12 = [a1 name];
        v25[2] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
        v14 = v20;
        v15 = v21;
        v16 = 2008;
        goto LABEL_10;
      }
    }

    else
    {
      a4 = 1;
    }
  }

  else if (a4)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69ACC68];
    v26[0] = *MEMORY[0x1E696A578];
    v10 = WFLocalizedString(@"The value for a required parameter is missing");
    v27[0] = v10;
    v26[1] = *MEMORY[0x1E696A598];
    v11 = WFLocalizedString(@"Please ensure that a value is provided for the parameter");
    v27[1] = v11;
    v26[2] = *MEMORY[0x1E69ACC78];
    v12 = [a1 name];
    v27[2] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v14 = v8;
    v15 = v9;
    v16 = 2005;
LABEL_10:
    *a4 = [v14 errorWithDomain:v15 code:v16 userInfo:v13];

    a4 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)wf_parameterMetadataWithValueType:()Workflow typeSpecificMetadata:
{
  v6 = a4;
  v7 = a3;
  v19 = objc_alloc(objc_opt_class());
  v18 = [a1 name];
  v8 = [a1 isOptional];
  v9 = [a1 title];
  v10 = [a1 parameterDescription];
  v11 = [a1 resolvableInputTypes];
  v12 = [a1 dynamicOptionsSupport];
  v13 = [a1 inputConnectionBehavior];
  v14 = [a1 capabilities];
  v15 = [a1 queryIdentifier];
  v16 = [v19 initWithName:v18 valueType:v7 optional:v8 title:v9 description:v10 resolvableInputTypes:v11 typeSpecificMetadata:v6 dynamicOptionsSupport:v12 inputConnectionBehavior:v13 capabilities:v14 queryIdentifier:v15];

  return v16;
}

- (id)wf_parameterMetadataWithTypeSpecificMetadata:()Workflow
{
  v4 = MEMORY[0x1E69AC680];
  v5 = a3;
  v18 = [v4 alloc];
  v17 = [a1 name];
  v6 = [a1 valueType];
  v7 = [a1 isOptional];
  v8 = [a1 title];
  v9 = [a1 parameterDescription];
  v10 = [a1 resolvableInputTypes];
  v11 = [a1 dynamicOptionsSupport];
  v12 = [a1 inputConnectionBehavior];
  v13 = [a1 capabilities];
  v14 = [a1 queryIdentifier];
  v15 = [v18 initWithName:v17 valueType:v6 optional:v7 title:v8 description:v9 resolvableInputTypes:v10 typeSpecificMetadata:v5 dynamicOptionsSupport:v11 inputConnectionBehavior:v12 capabilities:v13 queryIdentifier:v14];

  return v15;
}

@end