@interface WFSoundRecognitionTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFSoundRecognitionTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 eventBody];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v14 = MEMORY[0x277CBEB98];
  v15 = [a1 soundDetectionTypes];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __100__WFSoundRecognitionTrigger_BiomeContext__shouldFireInResponseToEvent_triggerIdentifier_completion___block_invoke;
  v23[3] = &unk_2788FE4B0;
  v23[4] = &v24;
  v16 = [v15 if_map:v23];
  v17 = [v14 setWithSet:v16];

  if (*(v25 + 24) == 1)
  {
    v18 = [MEMORY[0x277D7C088] allBMApplianceTypes];
    v19 = [v17 setByAddingObjectsFromArray:v18];

    v17 = v19;
  }

  v20 = getWFTriggersLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "[WFSoundRecognitionTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
    v30 = 2114;
    v31 = v13;
    v32 = 2114;
    v33 = v17;
    _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_DEFAULT, "%s Received sound detection event %{public}@ for trigger containing sound detection types %{public}@", buf, 0x20u);
  }

  v21 = [v13 type];
  v10[2](v10, [v17 containsObject:v21]);

  _Block_object_dispose(&v24, 8);
  v22 = *MEMORY[0x277D85DE8];
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = MEMORY[0x277CF1B58];
  v4 = a3;
  v5 = [v3 soundDetection];
  v6 = [v5 publisher];
  v7 = [v6 subscribeOn:v4];

  return v7;
}

@end