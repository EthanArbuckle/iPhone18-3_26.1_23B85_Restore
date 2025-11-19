@interface LNAlternativeValueType
@end

@implementation LNAlternativeValueType

NSObject *__91__LNAlternativeValueType_ContentItem__memberTypeParameterDefinitionsFromParameterMetadata___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a1[4] objectAtIndex:a3];
  v7 = [a1[5] wf_parameterMetadataWithValueType:v5 typeSpecificMetadata:v6];
  v8 = [v7 wf_parameterDefinition];

  v9 = [v8 parameterDefinitionDictionary];
  if (v9)
  {
    v10 = v9;
    v29 = objc_alloc(MEMORY[0x1E69AC680]);
    [a1[5] name];
    v11 = v32 = v5;
    v12 = [a1[5] isOptional];
    v13 = [a1[5] title];
    v14 = [a1[5] parameterDescription];
    v15 = [a1[5] resolvableInputTypes];
    v30 = v8;
    v16 = [a1[5] inputConnectionBehavior];
    v31 = v6;
    v17 = [a1[5] capabilities];
    v18 = [a1[5] queryIdentifier];
    v19 = [v29 initWithName:v11 valueType:v32 optional:v12 title:v13 description:v14 resolvableInputTypes:v15 typeSpecificMetadata:v31 dynamicOptionsSupport:0 inputConnectionBehavior:v16 capabilities:v17 queryIdentifier:v18];

    v5 = v32;
    v20 = [a1[6] uniqueTypeNameForValueType:v32];
    v33[0] = @"LinkUnionSubparameterMetadata";
    v33[1] = @"WFLinkActionUnionParameterMemberValueTypeClassName";
    v34[0] = v19;
    v34[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v22 = [v10 definitionByAddingEntriesInDictionary:v21];

    v8 = v30;
    v23 = v22;

    v6 = v31;
    v24 = v23;
  }

  else
  {
    v23 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 136315394;
      v36 = "[LNAlternativeValueType(ContentItem) memberTypeParameterDefinitionsFromParameterMetadata:]_block_invoke";
      v37 = 2112;
      v38 = v26;
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s [Union] Unable to build a subdefinition for member type: %@", buf, 0x16u);
    }

    v24 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v24;
}

@end