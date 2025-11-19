@interface LNActionMetadata(Workflow)
- (id)wf_actionMetadataWithOutputType:()Workflow;
- (id)wf_parameterDefinitions;
- (uint64_t)wf_validateParametersForAction:()Workflow error:;
@end

@implementation LNActionMetadata(Workflow)

- (id)wf_parameterDefinitions
{
  v1 = [a1 parameters];
  v2 = [v1 if_compactMap:&__block_literal_global_55613];

  return v2;
}

- (id)wf_actionMetadataWithOutputType:()Workflow
{
  v4 = MEMORY[0x1E69AC670];
  v23 = a3;
  v26 = [v4 alloc];
  v32 = [a1 identifier];
  v28 = [a1 mangledTypeName];
  v25 = [a1 mangledTypeNameByBundleIdentifier];
  v24 = [a1 effectiveBundleIdentifiers];
  v22 = [a1 bundleMetadataVersion];
  v21 = [a1 title];
  v31 = [a1 descriptionMetadata];
  v30 = [a1 deprecationMetadata];
  v20 = [a1 openAppWhenRun];
  v19 = [a1 isDiscoverable];
  v18 = [a1 authenticationPolicy];
  v17 = [a1 outputFlags];
  v29 = [a1 parameters];
  v16 = [a1 systemProtocolMetadata];
  v15 = [a1 actionConfiguration];
  v14 = [a1 typeSpecificMetadata];
  v13 = [a1 customIntentClassName];
  v5 = [a1 availabilityAnnotations];
  v6 = [a1 shortcutsMetadata];
  v12 = [a1 requiredCapabilities];
  v7 = [a1 attributionBundleIdentifier];
  v8 = [a1 sideEffect];
  v9 = [a1 assistantDefinedSchemas];
  BYTE1(v11) = v19;
  LOBYTE(v11) = v20;
  v27 = [v26 initWithIdentifier:v32 mangledTypeName:v28 mangledTypeNameByBundleIdentifier:v25 effectiveBundleIdentifiers:v24 bundleMetadataVersion:v22 title:v21 descriptionMetadata:v31 deprecationMetadata:v30 openAppWhenRun:v11 discoverable:v18 authenticationPolicy:v23 outputType:v17 outputFlags:v29 parameters:v16 systemProtocolMetadata:v15 actionConfiguration:v14 typeSpecificMetadata:v13 customIntentClassName:v5 availabilityAnnotations:v6 shortcutsMetadata:v12 requiredCapabilities:v7 attributionBundleIdentifier:v8 sideEffect:v9 assistantDefinedSchemas:?];

  return v27;
}

- (uint64_t)wf_validateParametersForAction:()Workflow error:
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 parameters];
  v8 = [v7 if_map:&__block_literal_global_163];

  v9 = MEMORY[0x1E695DF20];
  v10 = [v6 parameters];
  v11 = [v9 dictionaryWithObjects:v10 forKeys:v8];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [a1 parameters];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v24 = v8;
    v15 = *v26;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [v17 name];
        v19 = [v11 objectForKeyedSubscript:v18];

        v20 = [v19 value];
        LODWORD(v17) = [v17 wf_validateParameterValue:v20 error:a4];

        if (!v17)
        {
          v21 = 0;
          goto LABEL_11;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v21 = 1;
LABEL_11:
    v8 = v24;
  }

  else
  {
    v21 = 1;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

@end