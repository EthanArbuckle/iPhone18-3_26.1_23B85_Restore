@interface STDataAccessStatusDomainDisplayNameTransformer
- (STDataAccessStatusDomainDisplayNameTransformer)initWithEntityResolver:(id)resolver;
- (id)transformedDataForData:(id)data domain:(unint64_t)domain;
@end

@implementation STDataAccessStatusDomainDisplayNameTransformer

- (STDataAccessStatusDomainDisplayNameTransformer)initWithEntityResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = STDataAccessStatusDomainDisplayNameTransformer;
  v6 = [(STDataAccessStatusDomainDisplayNameTransformer *)&v9 init];
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
    dataAccessAttributions = [v7 dataAccessAttributions];
    v11 = [dataAccessAttributions bs_map:&__block_literal_global_8];
    [array addObjectsFromArray:v11];

    if (self)
    {
      entityResolver = self->_entityResolver;
    }

    else
    {
      entityResolver = 0;
    }

    v13 = entityResolver;
    [(STAttributedEntityBatchResolving *)v13 resolveEntities:array];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__STDataAccessStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_2;
    v17[3] = &unk_279D35718;
    v18 = v13;
    v14 = v13;
    v15 = [dataAccessAttributions bs_map:v17];
    v8 = objc_alloc_init(MEMORY[0x277D6BA08]);
    [v8 setDataAccessAttributions:v15];
  }

  return v8;
}

id __80__STDataAccessStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_2(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 dataAccessType];
  v5 = v4;
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      v6 = [v3 mutedMicrophoneRecordingActivityAttribution];
      v7 = [v6 attributedEntity];
      v8 = [*(a1 + 32) resolveEntity:v7];
      v40 = [v8 attributedEntity];
      v41 = [v8 activeEntity];
      v42 = [v6 copyReplacingAttributedEntity:v40 activeEntity:v41];

      v43 = objc_alloc(MEMORY[0x277D6B950]);
      v44 = [v3 isRecent];
      [v3 accessStartTimestamp];
      v46 = v45;
      [v3 accessEndTimestamp];
      v21 = [v43 initWithMutedMicrophoneRecordingActivityAttribution:v42 recent:v44 startTimestamp:v46 endTimestamp:v47];

      goto LABEL_15;
    }

    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = [v3 locationAttribution];
    v7 = [v6 activityAttribution];
    v8 = [v7 attributedEntity];
    v9 = [*(a1 + 32) resolveEntity:v8];
    v22 = [v9 attributedEntity];
    v23 = [v9 activeEntity];
    v12 = [v7 copyReplacingAttributedEntity:v22 activeEntity:v23];

    v24 = [objc_alloc(MEMORY[0x277D6B9A8]) initWithLocationState:objc_msgSend(v6 activityAttribution:"locationState") eligibleDisplayModes:{v12, objc_msgSend(v6, "eligibleDisplayModes")}];
    v25 = objc_alloc(MEMORY[0x277D6B950]);
    v26 = [v3 isRecent];
    [v3 accessStartTimestamp];
    v28 = v27;
    [v3 accessEndTimestamp];
    v30 = [v25 initWithLocationAttribution:v24 recent:v26 startTimestamp:v28 endTimestamp:v29];
LABEL_12:
    v21 = v30;

    goto LABEL_13;
  }

  if (!v4)
  {
    v6 = [v3 microphoneRecordingAttribution];
    v7 = [v6 activityAttribution];
    v8 = [v7 attributedEntity];
    v9 = [*(a1 + 32) resolveEntity:v8];
    v32 = [v9 attributedEntity];
    v33 = [v9 activeEntity];
    v12 = [v7 copyReplacingAttributedEntity:v32 activeEntity:v33];

    v34 = objc_alloc(MEMORY[0x277D6B9D0]);
    [v6 maximumHistoryAccessed];
    v24 = [v34 initWithActivityAttribution:v12 maximumHistoryAccessed:?];
    v35 = objc_alloc(MEMORY[0x277D6B950]);
    v36 = [v3 isRecent];
    [v3 accessStartTimestamp];
    v38 = v37;
    [v3 accessEndTimestamp];
    v30 = [v35 initWithMicrophoneRecordingAttribution:v24 recent:v36 startTimestamp:v38 endTimestamp:v39];
    goto LABEL_12;
  }

  if (v4 == 1)
  {
    v6 = [v3 cameraCaptureAttribution];
    v7 = [v6 activityAttribution];
    v8 = [v7 attributedEntity];
    v9 = [*(a1 + 32) resolveEntity:v8];
    v10 = [v9 attributedEntity];
    v11 = [v9 activeEntity];
    v12 = [v7 copyReplacingAttributedEntity:v10 activeEntity:v11];

    v13 = objc_alloc(MEMORY[0x277D6B9B8]);
    v14 = [v6 cameraDescriptor];
    v15 = [v13 initWithCameraDescriptor:v14 activityAttribution:v12];

    v16 = objc_alloc(MEMORY[0x277D6B950]);
    v17 = [v3 isRecent];
    [v3 accessStartTimestamp];
    v19 = v18;
    [v3 accessEndTimestamp];
    v21 = [v16 initWithCameraCaptureAttribution:v15 recent:v17 startTimestamp:v19 endTimestamp:v20];

LABEL_13:
LABEL_15:

    goto LABEL_16;
  }

LABEL_8:
  v31 = STSystemStatusLogDataIntegrity();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v50 = STDescriptionForDataAccessType();
    v51 = 134349314;
    v52 = v5;
    v53 = 2114;
    v54 = v50;
    _os_log_error_impl(&dword_26C4AD000, v31, OS_LOG_TYPE_ERROR, "transformer encountered data access attribution of invalid type: %{public}lu (%{public}@)", &v51, 0x16u);
  }

  v21 = 0;
LABEL_16:

  v48 = *MEMORY[0x277D85DE8];

  return v21;
}

@end