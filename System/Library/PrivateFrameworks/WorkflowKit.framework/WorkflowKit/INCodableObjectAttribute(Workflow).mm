@interface INCodableObjectAttribute(Workflow)
- (WFPodcastSubstitutableState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (__CFString)mediaTypeFromIntentMediaType:()Workflow;
- (id)wf_contentItemForValue:()Workflow;
- (id)wf_facadeClass;
- (id)wf_parameterClass;
- (id)wf_processedParameterValueForValue:()Workflow;
- (id)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:;
- (void)wf_getProcessedIntentValueForParameterValue:()Workflow parameter:parameterState:completionHandler:;
- (void)wf_objectClass;
@end

@implementation INCodableObjectAttribute(Workflow)

- (__CFString)mediaTypeFromIntentMediaType:()Workflow
{
  if ((a3 - 1) > 4)
  {
    v3 = WFMediaTypeSong;
  }

  else
  {
    v3 = off_1E8376FA0[a3 - 1];
  }

  return *v3;
}

- (id)wf_processedParameterValueForValue:()Workflow
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class()))
  {
    v7 = v4;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &off_1F4B00488;
    v7 = objc_msgSendSuper2(&v10, sel_wf_processedParameterValueForValue_, v4);
  }

  v8 = v7;

  return v8;
}

- (id)wf_contentItemForValue:()Workflow
{
  v4 = a3;
  metadata = [self metadata];
  v6 = [metadata wf_contentItemForValue:v4];

  if (!v6)
  {
    if (![v4 conformsToProtocol:&unk_1F4B0C168] || (objc_msgSend(v4, "wf_contentItemWithCodableAttribute:", self), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = [MEMORY[0x1E6996D58] itemWithObject:v4];
    }

    v6 = v7;
  }

  return v6;
}

- (WFPodcastSubstitutableState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v6 = a3;
  v7 = a4;
  metadata = [self metadata];

  if (!metadata)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_17:
      v38.receiver = self;
      v38.super_class = &off_1F4B00488;
      v10 = objc_msgSendSuper2(&v38, sel_wf_parameterStateForIntentValue_parameterDefinition_, v6, v7, v36);
      goto LABEL_18;
    }

    v14 = v6;
    identifier = [v14 identifier];

    if (identifier)
    {
      v16 = MEMORY[0x1E696AF20];
      identifier2 = [v14 identifier];
      v18 = [v16 componentsWithString:identifier2];

      if ([v14 type] == 6)
      {
        queryItems = [v18 queryItems];
        v36 = [queryItems objectMatchingKey:@"name" value:@"storeCollectionId"];

        queryItems2 = [v18 queryItems];
        v21 = [queryItems2 objectMatchingKey:@"name" value:@"uuid"];

        v22 = [WFiTunesPodcastObject alloc];
        [v14 title];
        v23 = v37 = v18;
        value = [v36 value];
        value2 = [v21 value];
        value3 = [(WFiTunesPodcastObject *)v22 initWithName:v23 identifier:value podcastUUID:value2 feedURL:0 kind:@"podcast"];

        v27 = v21;
        v28 = v36;
        v18 = v37;
        v10 = [(WFVariableSubstitutableParameterState *)[WFPodcastSubstitutableState alloc] initWithValue:value3];
      }

      else
      {
        if ([v14 type] == 8 || (objc_msgSend(v18, "queryItems"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "objectMatchingKey:value:", @"name", @"deviceLibraryPersistentID"), v28 = objc_claimAutoreleasedReturnValue(), v29, !v28))
        {

          v10 = 0;
          goto LABEL_18;
        }

        v30 = [WFMediaItemState alloc];
        v31 = [self mediaTypeFromIntentMediaType:{objc_msgSend(v14, "type")}];
        v32 = MEMORY[0x1E696AD98];
        value3 = [v28 value];
        v33 = [v32 numberWithInteger:{-[WFiTunesPodcastObject integerValue](value3, "integerValue")}];
        v34 = v30;
        v27 = v31;
        v10 = [(WFMediaItemState *)v34 initWithMediaType:v31 persistentID:v33];
      }
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  metadata2 = [self metadata];
  v10 = [metadata2 wf_parameterStateForIntentValue:v6 parameterDefinition:v7];

  if (!v10)
  {
    if (![self wf_multipleValues])
    {
      goto LABEL_17;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    v11 = v6;
    v12 = [WFMultipleValueParameterState alloc];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __90__INCodableObjectAttribute_Workflow__wf_parameterStateForIntentValue_parameterDefinition___block_invoke;
    v39[3] = &unk_1E837B580;
    v39[4] = self;
    v40 = v7;
    v13 = [v11 if_compactMap:v39];

    v10 = [(WFMultipleValueParameterState *)v12 initWithParameterStates:v13];
    if (!v10)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  return v10;
}

- (void)wf_getProcessedIntentValueForParameterValue:()Workflow parameter:parameterState:completionHandler:
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  if (v14 == objc_opt_class())
  {
    v13[2](v13, v10, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = v10;
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v28;
        while (2)
        {
          v19 = 0;
          do
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v27 + 1) + 8 * v19);
            v21 = objc_opt_class();
            if (v21 == objc_opt_class())
            {
              v13[2](v13, v15, 0);

              goto LABEL_16;
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      self = selfCopy;
    }

    metadata = [self metadata];
    v23 = [metadata wf_processParameterValue:v10 forParameter:v11 parameterState:v12 codableAttribute:self completionHandler:v13];

    if ((v23 & 1) == 0)
    {
      v26.receiver = self;
      v26.super_class = &off_1F4B00488;
      objc_msgSendSuper2(&v26, sel_wf_getProcessedIntentValueForParameterValue_parameter_parameterState_completionHandler_, v10, v11, v12, v13);
    }
  }

LABEL_16:

  v24 = *MEMORY[0x1E69E9840];
}

- (id)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = &off_1F4B00488;
  v9 = objc_msgSendSuper2(&v14, sel_wf_updatedParameterDefinition_parameterClass_localizer_, a3, a4, v8);
  if ([self supportsDynamicEnumeration] || (objc_msgSend(self, "metadata"), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v12 = v9;
  }

  else
  {
    metadata = [self metadata];
    v12 = [metadata wf_updatedParameterDefinition:v9 forCodableAttribute:self localizer:v8];
  }

  return v12;
}

- (id)wf_parameterClass
{
  metadata = [self metadata];
  wf_parameterClass = [metadata wf_parameterClass];

  return wf_parameterClass;
}

- (void)wf_objectClass
{
  metadata = [self metadata];
  wf_objectClass = [metadata wf_objectClass];
  if (!wf_objectClass)
  {
    wf_objectClass = [self wf_facadeClass];
  }

  v4 = wf_objectClass;

  return wf_objectClass;
}

- (id)wf_facadeClass
{
  valueTransformer = [self valueTransformer];
  transformedValueClass = [objc_opt_class() transformedValueClass];

  return transformedValueClass;
}

@end