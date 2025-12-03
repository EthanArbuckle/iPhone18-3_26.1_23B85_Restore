@interface LNActionMetadata(Workflow)
- (id)wf_actionMetadataWithOutputType:()Workflow;
- (id)wf_parameterDefinitions;
- (uint64_t)wf_validateParametersForAction:()Workflow error:;
@end

@implementation LNActionMetadata(Workflow)

- (id)wf_parameterDefinitions
{
  parameters = [self parameters];
  v2 = [parameters if_compactMap:&__block_literal_global_55613];

  return v2;
}

- (id)wf_actionMetadataWithOutputType:()Workflow
{
  v4 = MEMORY[0x1E69AC670];
  v23 = a3;
  v26 = [v4 alloc];
  identifier = [self identifier];
  mangledTypeName = [self mangledTypeName];
  mangledTypeNameByBundleIdentifier = [self mangledTypeNameByBundleIdentifier];
  effectiveBundleIdentifiers = [self effectiveBundleIdentifiers];
  bundleMetadataVersion = [self bundleMetadataVersion];
  title = [self title];
  descriptionMetadata = [self descriptionMetadata];
  deprecationMetadata = [self deprecationMetadata];
  openAppWhenRun = [self openAppWhenRun];
  isDiscoverable = [self isDiscoverable];
  authenticationPolicy = [self authenticationPolicy];
  outputFlags = [self outputFlags];
  parameters = [self parameters];
  systemProtocolMetadata = [self systemProtocolMetadata];
  actionConfiguration = [self actionConfiguration];
  typeSpecificMetadata = [self typeSpecificMetadata];
  customIntentClassName = [self customIntentClassName];
  availabilityAnnotations = [self availabilityAnnotations];
  shortcutsMetadata = [self shortcutsMetadata];
  requiredCapabilities = [self requiredCapabilities];
  attributionBundleIdentifier = [self attributionBundleIdentifier];
  sideEffect = [self sideEffect];
  assistantDefinedSchemas = [self assistantDefinedSchemas];
  BYTE1(v11) = isDiscoverable;
  LOBYTE(v11) = openAppWhenRun;
  v27 = [v26 initWithIdentifier:identifier mangledTypeName:mangledTypeName mangledTypeNameByBundleIdentifier:mangledTypeNameByBundleIdentifier effectiveBundleIdentifiers:effectiveBundleIdentifiers bundleMetadataVersion:bundleMetadataVersion title:title descriptionMetadata:descriptionMetadata deprecationMetadata:deprecationMetadata openAppWhenRun:v11 discoverable:authenticationPolicy authenticationPolicy:v23 outputType:outputFlags outputFlags:parameters parameters:systemProtocolMetadata systemProtocolMetadata:actionConfiguration actionConfiguration:typeSpecificMetadata typeSpecificMetadata:customIntentClassName customIntentClassName:availabilityAnnotations availabilityAnnotations:shortcutsMetadata shortcutsMetadata:requiredCapabilities requiredCapabilities:attributionBundleIdentifier attributionBundleIdentifier:sideEffect sideEffect:assistantDefinedSchemas assistantDefinedSchemas:?];

  return v27;
}

- (uint64_t)wf_validateParametersForAction:()Workflow error:
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  parameters = [v6 parameters];
  v8 = [parameters if_map:&__block_literal_global_163];

  v9 = MEMORY[0x1E695DF20];
  parameters2 = [v6 parameters];
  v11 = [v9 dictionaryWithObjects:parameters2 forKeys:v8];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  parameters3 = [self parameters];
  v13 = [parameters3 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(parameters3);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        name = [v17 name];
        v19 = [v11 objectForKeyedSubscript:name];

        value = [v19 value];
        LODWORD(v17) = [v17 wf_validateParameterValue:value error:a4];

        if (!v17)
        {
          v21 = 0;
          goto LABEL_11;
        }
      }

      v14 = [parameters3 countByEnumeratingWithState:&v25 objects:v29 count:16];
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