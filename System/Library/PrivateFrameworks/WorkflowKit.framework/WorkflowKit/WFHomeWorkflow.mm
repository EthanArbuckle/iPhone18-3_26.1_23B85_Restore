@interface WFHomeWorkflow
+ (void)setCachedHomes:(id)a3;
- (BOOL)requiresDeviceUnlock;
- (BOOL)requiresDeviceUnlockEnsuringHomesAreLoaded;
- (HFTriggerActionsSetsUISummary)actionSetsSummary;
- (NSArray)shortcutsDictionaryRepresentations;
- (NSArray)summaryIconDescriptors;
- (NSArray)summaryIconNames;
- (NSString)summaryString;
- (NSUUID)homeIdentifier;
- (WFHomeWorkflow)initWithData:(id)a3;
- (WFHomeWorkflow)workflowWithEnvironment:(int64_t)a3 error:(id *)a4;
- (id)actionSetsFromTriggerActionSetsBuilders:(id)a3;
- (id)debugDescription;
- (id)triggerActionSetsBuilders;
- (id)workflowRecordWithEnvironment:(int64_t)a3 error:(id *)a4;
@end

@implementation WFHomeWorkflow

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WFHomeWorkflow *)self data];
  v5 = [v3 stringWithFormat:@"data length = %lu", objc_msgSend(v4, "length")];

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@: %p %@>", v8, self, v5];

  return v9;
}

- (WFHomeWorkflow)workflowWithEnvironment:(int64_t)a3 error:(id *)a4
{
  cachedWorkflow = self->_cachedWorkflow;
  if (!cachedWorkflow)
  {
    v8 = [WFHomeWorkflow workflowRecordWithEnvironment:"workflowRecordWithEnvironment:error:" error:?];
    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = v8;
    v10 = [[WFWorkflow alloc] initWithRecord:v8 reference:0 storageProvider:0 migrateIfNecessary:1 environment:a3 error:a4];
    v11 = self->_cachedWorkflow;
    self->_cachedWorkflow = v10;

    cachedWorkflow = self->_cachedWorkflow;
  }

  v8 = cachedWorkflow;
LABEL_5:

  return v8;
}

- (id)workflowRecordWithEnvironment:(int64_t)a3 error:(id *)a4
{
  cachedWorkflowRecord = self->_cachedWorkflowRecord;
  if (cachedWorkflowRecord)
  {
    goto LABEL_4;
  }

  v7 = [WFWorkflowFile alloc];
  v8 = [(WFHomeWorkflow *)self data];
  v9 = [(WFWorkflowFile *)v7 initWithFileData:v8 name:0 error:a4];

  if (v9)
  {
    v10 = [(WFWorkflowFile *)v9 recordRepresentationWithError:a4];
    v11 = self->_cachedWorkflowRecord;
    self->_cachedWorkflowRecord = v10;

    cachedWorkflowRecord = self->_cachedWorkflowRecord;
LABEL_4:
    v12 = cachedWorkflowRecord;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_5:

  return v12;
}

- (id)actionSetsFromTriggerActionSetsBuilders:(id)a3
{
  v3 = [a3 if_map:&__block_literal_global_189_4494];
  v4 = [v3 valueForKeyPath:@"@unionOfArrays.self"];

  return v4;
}

- (id)triggerActionSetsBuilders
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v2 = [(WFHomeWorkflow *)self workflowWithEnvironment:1 error:&v9];
  v3 = v9;
  if (v2)
  {
    v4 = [v2 actions];
    v5 = [v4 if_compactMap:&__block_literal_global_183];

    if ([v5 count])
    {
      v6 = [v5 if_compactMap:&__block_literal_global_186];
      goto LABEL_7;
    }
  }

  else
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[WFHomeWorkflow triggerActionSetsBuilders]";
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Unable to get workflow from home workflow. %@", buf, 0x16u);
    }
  }

  v6 = 0;
LABEL_7:

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __43__WFHomeWorkflow_triggerActionSetsBuilders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 home];
  if (v3)
  {
    v4 = objc_alloc(getHFTriggerActionSetsBuilderClass());
    v5 = [v2 actionSets];
    v6 = [v4 initWithActionSets:v5 inHome:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __43__WFHomeWorkflow_triggerActionSetsBuilders__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HFTriggerActionsSetsUISummary)actionSetsSummary
{
  actionSetsSummary = self->_actionSetsSummary;
  if (!actionSetsSummary)
  {
    v4 = [(WFHomeWorkflow *)self triggerActionSetsBuilders];
    v5 = [v4 firstObject];
    v6 = [v5 home];

    v7 = [(WFHomeWorkflow *)self actionSetsFromTriggerActionSetsBuilders:v4];
    v8 = [objc_alloc(getHFTriggerActionSetsBuilderClass()) initWithActionSets:v7 inHome:v6];
    v9 = [v8 actionSetsSummary];
    v10 = self->_actionSetsSummary;
    self->_actionSetsSummary = v9;

    actionSetsSummary = self->_actionSetsSummary;
  }

  return actionSetsSummary;
}

- (BOOL)requiresDeviceUnlockEnsuringHomesAreLoaded
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = dispatch_semaphore_create(0);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = getWFHomeLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v18 = "[WFHomeWorkflow requiresDeviceUnlockEnsuringHomesAreLoaded]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEBUG, "%s Attempting to load homes", buf, 0xCu);
  }

  v5 = +[WFHomeManager sharedManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__WFHomeWorkflow_requiresDeviceUnlockEnsuringHomesAreLoaded__block_invoke;
  v10[3] = &unk_1E837C4B0;
  v12 = &v13;
  v10[4] = self;
  v6 = v3;
  v11 = v6;
  [v5 ensureHomesAreLoadedWithCompletionHandler:v10];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

intptr_t __60__WFHomeWorkflow_requiresDeviceUnlockEnsuringHomesAreLoaded__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = getWFHomeLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[WFHomeWorkflow requiresDeviceUnlockEnsuringHomesAreLoaded]_block_invoke";
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_DEBUG, "%s Homes loaded", &v5, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) requiresDeviceUnlock];
  result = dispatch_semaphore_signal(*(a1 + 40));
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)requiresDeviceUnlock
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(WFHomeWorkflow *)self triggerActionSetsBuilders];
  v4 = [(WFHomeWorkflow *)self actionSetsFromTriggerActionSetsBuilders:v3];
  v5 = getWFHomeLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[WFHomeWorkflow requiresDeviceUnlock]";
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Retrieved action sets: %@", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 requiresDeviceUnlock])
        {
          v7 = getWFHomeLogObject();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v19 = "[WFHomeWorkflow requiresDeviceUnlock]";
            v20 = 2112;
            v21 = v10;
            _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s Action set: %@ requires device unlock", buf, 0x16u);
          }

          LOBYTE(v7) = 1;
          goto LABEL_15;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSArray)shortcutsDictionaryRepresentations
{
  v23 = *MEMORY[0x1E69E9840];
  shortcutsDictionaryRepresentations = self->_shortcutsDictionaryRepresentations;
  if (shortcutsDictionaryRepresentations)
  {
    v3 = shortcutsDictionaryRepresentations;
    goto LABEL_15;
  }

  v16 = 0;
  v5 = [(WFHomeWorkflow *)self workflowWithEnvironment:1 error:&v16];
  v6 = v16;
  if (v5)
  {
    v7 = [v5 actions];
    v8 = [v7 if_compactMap:&__block_literal_global_176];

    if ([v8 count])
    {
      v9 = [v8 if_flatMap:&__block_literal_global_180];
      v10 = self->_shortcutsDictionaryRepresentations;
      self->_shortcutsDictionaryRepresentations = v9;

      v11 = getWFHomeLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_shortcutsDictionaryRepresentations;
        *buf = 136315650;
        v18 = "[WFHomeWorkflow shortcutsDictionaryRepresentations]";
        v19 = 2112;
        v20 = v12;
        v21 = 2112;
        v22 = self;
        _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s Got dictionary representations: %@ for workflow: %@", buf, 0x20u);
      }

      v3 = self->_shortcutsDictionaryRepresentations;
      goto LABEL_14;
    }

    v13 = getWFHomeLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[WFHomeWorkflow shortcutsDictionaryRepresentations]";
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Found no home actions", buf, 0xCu);
    }
  }

  else
  {
    v8 = getWFHomeLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[WFHomeWorkflow shortcutsDictionaryRepresentations]";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Unable to get workflow from home workflow. %@", buf, 0x16u);
    }
  }

  v3 = 0;
LABEL_14:

LABEL_15:
  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

id __52__WFHomeWorkflow_shortcutsDictionaryRepresentations__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSUUID)homeIdentifier
{
  v22 = *MEMORY[0x1E69E9840];
  homeIdentifier = self->_homeIdentifier;
  if (homeIdentifier)
  {
    v3 = homeIdentifier;
    goto LABEL_12;
  }

  v15 = 0;
  v5 = [(WFHomeWorkflow *)self workflowWithEnvironment:1 error:&v15];
  v6 = v15;
  if (v5)
  {
    v7 = [v5 actions];
    v8 = [v7 if_compactMap:&__block_literal_global_4521];

    if ([v8 count])
    {
      v9 = [v8 if_compactMap:&__block_literal_global_173];
      v10 = [v9 firstObject];
      v11 = [v10 copy];

      v12 = getWFHomeLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = "[WFHomeWorkflow homeIdentifier]";
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = self;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s Got home identifier: %@ for workflow: %@", buf, 0x20u);
      }

      v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v11];
      goto LABEL_11;
    }
  }

  else
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[WFHomeWorkflow homeIdentifier]";
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Unable to get workflow from home workflow. %@", buf, 0x16u);
    }
  }

  v3 = 0;
LABEL_11:

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

id __32__WFHomeWorkflow_homeIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)summaryIconDescriptors
{
  v2 = [(WFHomeWorkflow *)self actionSetsSummary];
  v3 = [v2 summaryIconDescriptors];

  return v3;
}

- (NSArray)summaryIconNames
{
  v2 = [(WFHomeWorkflow *)self actionSetsSummary];
  v3 = [v2 summaryIcons];

  return v3;
}

- (NSString)summaryString
{
  v2 = [(WFHomeWorkflow *)self actionSetsSummary];
  v3 = [v2 summaryText];

  return v3;
}

- (WFHomeWorkflow)initWithData:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFHomeWorkflow;
  v5 = [(WFHomeWorkflow *)&v12 init];
  if (v5)
  {
    if (!v4)
    {
      v6 = getWFHomeLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v14 = "[WFHomeWorkflow initWithData:]";
        _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s WFHomeWorkflow was initialized with nil data", buf, 0xCu);
      }
    }

    v7 = [v4 copy];
    data = v5->_data;
    v5->_data = v7;

    v9 = v5;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (void)setCachedHomes:(id)a3
{
  v3 = a3;
  v4 = +[WFHomeManager sharedManager];
  [v4 _setHomes:v3];
}

@end