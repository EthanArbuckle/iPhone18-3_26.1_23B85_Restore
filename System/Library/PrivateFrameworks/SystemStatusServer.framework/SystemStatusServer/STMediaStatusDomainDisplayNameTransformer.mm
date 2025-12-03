@interface STMediaStatusDomainDisplayNameTransformer
- (STMediaStatusDomainDisplayNameTransformer)initWithEntityResolver:(id)resolver;
- (id)transformedDataForData:(id)data domain:(unint64_t)domain;
@end

@implementation STMediaStatusDomainDisplayNameTransformer

- (STMediaStatusDomainDisplayNameTransformer)initWithEntityResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = STMediaStatusDomainDisplayNameTransformer;
  v6 = [(STMediaStatusDomainDisplayNameTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entityResolver, resolver);
  }

  return v7;
}

- (id)transformedDataForData:(id)data domain:(unint64_t)domain
{
  dataCopy = data;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = dataCopy;
  v8 = v7;
  if (isKindOfClass)
  {
    array = [MEMORY[0x277CBEB18] array];
    microphoneAttributions = [v7 microphoneAttributions];
    v11 = [microphoneAttributions bs_map:&__block_literal_global];
    [array addObjectsFromArray:v11];

    mutedMicrophoneRecordingAttributions = [v7 mutedMicrophoneRecordingAttributions];
    v13 = [mutedMicrophoneRecordingAttributions bs_map:&__block_literal_global_4];
    [array addObjectsFromArray:v13];

    systemAudioRecordingAttributions = [v7 systemAudioRecordingAttributions];
    v15 = [systemAudioRecordingAttributions bs_map:&__block_literal_global_6];
    [array addObjectsFromArray:v15];

    cameraAttributions = [v7 cameraAttributions];
    v17 = [cameraAttributions bs_map:&__block_literal_global_9];
    [array addObjectsFromArray:v17];

    screenCaptureAttributions = [v7 screenCaptureAttributions];
    v19 = [screenCaptureAttributions bs_map:&__block_literal_global_12];
    [array addObjectsFromArray:v19];

    if (self)
    {
      entityResolver = self->_entityResolver;
    }

    else
    {
      entityResolver = 0;
    }

    v21 = entityResolver;
    [(STAttributedEntityBatchResolving *)v21 resolveEntities:array];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_6;
    v45[3] = &unk_279D34BE8;
    v22 = v21;
    v46 = v22;
    v34 = [microphoneAttributions bs_map:v45];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v36 = microphoneAttributions;
    v43[2] = __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_7;
    v43[3] = &unk_279D34C10;
    v23 = v22;
    v44 = v23;
    v24 = [mutedMicrophoneRecordingAttributions bs_map:v43];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_8;
    v41[3] = &unk_279D34C10;
    v25 = v23;
    v42 = v25;
    v26 = [systemAudioRecordingAttributions bs_map:v41];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_9;
    v39[3] = &unk_279D34C38;
    v27 = v25;
    v40 = v27;
    [cameraAttributions bs_map:v39];
    v28 = v35 = mutedMicrophoneRecordingAttributions;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_10;
    v37[3] = &unk_279D34C60;
    v38 = v27;
    v32 = v27;
    [screenCaptureAttributions bs_map:v37];
    v29 = v33 = systemAudioRecordingAttributions;
    v30 = screenCaptureAttributions;
    v8 = objc_alloc_init(MEMORY[0x277D6BA18]);
    [v8 setMicrophoneAttributions:v34];
    [v8 setMutedMicrophoneRecordingAttributions:v24];
    [v8 setSystemAudioRecordingAttributions:v26];
    [v8 setCameraAttributions:v28];
    [v8 setScreenCaptureAttributions:v29];
  }

  return v8;
}

id __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 activityAttribution];
  v3 = [v2 attributedEntity];

  return v3;
}

id __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 activityAttribution];
  v3 = [v2 attributedEntity];

  return v3;
}

id __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 activityAttribution];
  v3 = [v2 attributedEntity];

  return v3;
}

id __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activityAttribution];
  v5 = [v4 attributedEntity];
  v6 = [*(a1 + 32) resolveEntity:v5];
  v7 = [v6 attributedEntity];
  v8 = [v6 activeEntity];
  v9 = [v4 copyReplacingAttributedEntity:v7 activeEntity:v8];

  v10 = objc_alloc(MEMORY[0x277D6B9D0]);
  [v3 maximumHistoryAccessed];
  v12 = v11;

  v13 = [v10 initWithActivityAttribution:v9 maximumHistoryAccessed:v12];

  return v13;
}

id __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attributedEntity];
  v5 = [*(a1 + 32) resolveEntity:v4];
  v6 = [v5 attributedEntity];
  v7 = [v5 activeEntity];
  v8 = [v3 copyReplacingAttributedEntity:v6 activeEntity:v7];

  return v8;
}

id __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attributedEntity];
  v5 = [*(a1 + 32) resolveEntity:v4];
  v6 = [v5 attributedEntity];
  v7 = [v5 activeEntity];
  v8 = [v3 copyReplacingAttributedEntity:v6 activeEntity:v7];

  return v8;
}

id __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activityAttribution];
  v5 = [v4 attributedEntity];
  v6 = [*(a1 + 32) resolveEntity:v5];
  v7 = [v6 attributedEntity];
  v8 = [v6 activeEntity];
  v9 = [v4 copyReplacingAttributedEntity:v7 activeEntity:v8];

  v10 = objc_alloc(MEMORY[0x277D6B9B8]);
  v11 = [v3 cameraDescriptor];

  v12 = [v10 initWithCameraDescriptor:v11 activityAttribution:v9];

  return v12;
}

id __75__STMediaStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = [a2 activityAttribution];
  v4 = [v3 attributedEntity];

  v5 = [*(a1 + 32) resolveEntity:v4];
  v6 = objc_alloc(MEMORY[0x277D6B8E8]);
  v7 = [v5 attributedEntity];
  v8 = [v5 activeEntity];
  v9 = [v6 initWithAttributedEntity:v7 activeEntity:v8];

  v10 = [objc_alloc(MEMORY[0x277D6B9F0]) initWithActivityAttribution:v9];

  return v10;
}

@end