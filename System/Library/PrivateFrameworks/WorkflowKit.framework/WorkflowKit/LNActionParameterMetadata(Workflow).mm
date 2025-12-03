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
  typeSpecificMetadata = [self typeSpecificMetadata];
  v2 = [typeSpecificMetadata objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];

  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    systemProtocolMetadata = [v2 systemProtocolMetadata];
    v4 = [systemProtocolMetadata objectForKeyedSubscript:*MEMORY[0x1E69AC2C0]];

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
  valueType = [self valueType];
  v3 = [valueType wf_parameterDefinitionWithParameterMetadata:self];

  return v3;
}

- (id)wf_parameterDictionaryRepresentation
{
  wf_parameterDefinition = [self wf_parameterDefinition];
  parameterDefinitionDictionary = [wf_parameterDefinition parameterDefinitionDictionary];

  return parameterDefinitionDictionary;
}

- (id)wf_localizedDescription
{
  parameterDescription = [self parameterDescription];
  v2 = [parameterDescription localizedStringForLocaleIdentifier:0];

  return v2;
}

- (id)wf_localizedTitle
{
  title = [self title];
  v3 = [title localizedStringWithPluralizationNumber:&unk_1F4A9AD98 forLocaleIdentifier:0];
  v4 = v3;
  if (v3)
  {
    name = v3;
  }

  else
  {
    name = [self name];
  }

  v6 = name;

  return v6;
}

- (uint64_t)wf_supportsImportFromCodableValueType:()Workflow
{
  v4 = a3;
  typeSpecificMetadata = [self typeSpecificMetadata];
  v6 = [typeSpecificMetadata objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    transferableContentTypes = [v6 transferableContentTypes];
    importableTypes = [transferableContentTypes importableTypes];
    v9 = [importableTypes if_map:&__block_literal_global_61168];
    contentTypeIdentifier = [v4 contentTypeIdentifier];
    v11 = [v9 containsObject:contentTypeIdentifier];
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
  isOptional = [self isOptional];
  if (v6 || (isOptional & 1) != 0)
  {
    if (v6 && ([self valueType], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "value"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "objectIsMemberOfType:", v18), v18, v17, (v19 & 1) == 0))
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
        name = [self name];
        v25[2] = name;
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
    name = [self name];
    v27[2] = name;
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
  name = [self name];
  isOptional = [self isOptional];
  title = [self title];
  parameterDescription = [self parameterDescription];
  resolvableInputTypes = [self resolvableInputTypes];
  dynamicOptionsSupport = [self dynamicOptionsSupport];
  inputConnectionBehavior = [self inputConnectionBehavior];
  capabilities = [self capabilities];
  queryIdentifier = [self queryIdentifier];
  v16 = [v19 initWithName:name valueType:v7 optional:isOptional title:title description:parameterDescription resolvableInputTypes:resolvableInputTypes typeSpecificMetadata:v6 dynamicOptionsSupport:dynamicOptionsSupport inputConnectionBehavior:inputConnectionBehavior capabilities:capabilities queryIdentifier:queryIdentifier];

  return v16;
}

- (id)wf_parameterMetadataWithTypeSpecificMetadata:()Workflow
{
  v4 = MEMORY[0x1E69AC680];
  v5 = a3;
  v18 = [v4 alloc];
  name = [self name];
  valueType = [self valueType];
  isOptional = [self isOptional];
  title = [self title];
  parameterDescription = [self parameterDescription];
  resolvableInputTypes = [self resolvableInputTypes];
  dynamicOptionsSupport = [self dynamicOptionsSupport];
  inputConnectionBehavior = [self inputConnectionBehavior];
  capabilities = [self capabilities];
  queryIdentifier = [self queryIdentifier];
  v15 = [v18 initWithName:name valueType:valueType optional:isOptional title:title description:parameterDescription resolvableInputTypes:resolvableInputTypes typeSpecificMetadata:v5 dynamicOptionsSupport:dynamicOptionsSupport inputConnectionBehavior:inputConnectionBehavior capabilities:capabilities queryIdentifier:queryIdentifier];

  return v15;
}

@end