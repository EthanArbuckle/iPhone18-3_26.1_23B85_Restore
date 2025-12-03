@interface WFAutomationTriggerDataSource
- (WFAutomationTriggerDataSource)initWithDatabase:(id)database;
- (WFAutomationTriggerDataSourceDelegate)delegate;
- (WFDatabaseResult)personalAutomationsDatabaseResult;
- (id)allConfiguredTriggers;
- (id)allHomeTriggers;
- (id)workflowForIdentifier:(id)identifier;
- (void)databaseResultDidChange:(id)change;
- (void)dealloc;
- (void)home:(id)home didAddTrigger:(id)trigger;
- (void)home:(id)home didRemoveTrigger:(id)trigger;
- (void)home:(id)home didUpdateNameForTrigger:(id)trigger;
- (void)home:(id)home didUpdateTrigger:(id)trigger;
- (void)homeDidUpdateName:(id)name;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)prewarm;
@end

@implementation WFAutomationTriggerDataSource

- (void)prewarm
{
  queue = [(WFAutomationTriggerDataSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WFAutomationTriggerDataSource_prewarm__block_invoke;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  dispatch_async(queue, block);
}

void __40__WFAutomationTriggerDataSource_prewarm__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allConfiguredTriggers];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__WFAutomationTriggerDataSource_prewarm__block_invoke_2;
  v3[3] = &unk_279EE81F8;
  v3[4] = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v3];
}

- (id)allConfiguredTriggers
{
  personalAutomationsDatabaseResult = [(WFAutomationTriggerDataSource *)self personalAutomationsDatabaseResult];
  [personalAutomationsDatabaseResult reset];

  personalAutomationsDatabaseResult2 = [(WFAutomationTriggerDataSource *)self personalAutomationsDatabaseResult];
  descriptors = [personalAutomationsDatabaseResult2 descriptors];

  return descriptors;
}

- (WFDatabaseResult)personalAutomationsDatabaseResult
{
  personalAutomationsDatabaseResult = self->_personalAutomationsDatabaseResult;
  if (!personalAutomationsDatabaseResult)
  {
    database = [(WFAutomationTriggerDataSource *)self database];
    allConfiguredTriggers = [database allConfiguredTriggers];
    v6 = self->_personalAutomationsDatabaseResult;
    self->_personalAutomationsDatabaseResult = allConfiguredTriggers;

    [(WFDatabaseResult *)self->_personalAutomationsDatabaseResult registerObserver:self];
    personalAutomationsDatabaseResult = self->_personalAutomationsDatabaseResult;
  }

  return personalAutomationsDatabaseResult;
}

- (WFAutomationTriggerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  homeManager = [(WFAutomationTriggerDataSource *)self homeManager];
  [homeManager removeEventObserver:self];

  v4.receiver = self;
  v4.super_class = WFAutomationTriggerDataSource;
  [(WFAutomationTriggerDataSource *)&v4 dealloc];
}

- (void)databaseResultDidChange:(id)change
{
  delegate = [(WFAutomationTriggerDataSource *)self delegate];
  [delegate dataSourceDidUpdateTriggers:self];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  delegate = [(WFAutomationTriggerDataSource *)self delegate];
  [delegate dataSourceDidUpdateTriggers:self];
}

- (void)home:(id)home didUpdateTrigger:(id)trigger
{
  v5 = [(WFAutomationTriggerDataSource *)self delegate:home];
  [v5 dataSourceDidUpdateTriggers:self];
}

- (void)home:(id)home didUpdateNameForTrigger:(id)trigger
{
  v5 = [(WFAutomationTriggerDataSource *)self delegate:home];
  [v5 dataSourceDidUpdateTriggers:self];
}

- (void)home:(id)home didRemoveTrigger:(id)trigger
{
  v5 = [(WFAutomationTriggerDataSource *)self delegate:home];
  [v5 dataSourceDidUpdateTriggers:self];
}

- (void)home:(id)home didAddTrigger:(id)trigger
{
  v5 = [(WFAutomationTriggerDataSource *)self delegate:home];
  [v5 dataSourceDidUpdateTriggers:self];
}

- (void)homeDidUpdateName:(id)name
{
  delegate = [(WFAutomationTriggerDataSource *)self delegate];
  [delegate dataSourceDidUpdateTriggers:self];
}

- (id)allHomeTriggers
{
  v46 = *MEMORY[0x277D85DE8];
  homeManager = [(WFAutomationTriggerDataSource *)self homeManager];
  homes = [homeManager homes];
  v4 = [homes sortedArrayUsingComparator:&__block_literal_global_14503];

  v22 = objc_opt_new();
  HomeLibrary();
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v25 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v25)
  {
    v23 = *v34;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v33 + 1) + 8 * i);
        [v27 setDelegate:self];
        v28 = objc_opt_new();
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        triggers = [v27 triggers];
        v6 = [triggers countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v6)
        {
          v7 = *v30;
          do
          {
            for (j = 0; j != v6; ++j)
            {
              if (*v30 != v7)
              {
                objc_enumerationMutation(triggers);
              }

              v9 = *(*(&v29 + 1) + 8 * j);
              v10 = v9;
              if (v9 && ([v9 conformsToProtocol:&unk_288451A58]& 1) != 0)
              {
                if (([v10 hf_shouldDisplayTrigger]& 1) != 0)
                {
                  hf_triggerType = [v10 hf_triggerType];
                  if (hf_triggerType != 7 && hf_triggerType != 0)
                  {
                    v37 = 0;
                    v38 = &v37;
                    v39 = 0x2050000000;
                    v17 = getHFTriggerItemClass_softClass;
                    v40 = getHFTriggerItemClass_softClass;
                    if (!getHFTriggerItemClass_softClass)
                    {
                      *buf = MEMORY[0x277D85DD0];
                      *&buf[8] = 3221225472;
                      *&buf[16] = __getHFTriggerItemClass_block_invoke;
                      v44 = &unk_279EE8CF8;
                      v45 = &v37;
                      __getHFTriggerItemClass_block_invoke(buf);
                      v17 = v38[3];
                    }

                    v18 = v17;
                    _Block_object_dispose(&v37, 8);
                    v19 = [[v17 alloc] initWithHome:v27 trigger:v10];
                    [v28 addObject:v19];

                    goto LABEL_30;
                  }

                  v13 = getWFTriggersLogObject();
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "[WFAutomationTriggerDataSource allHomeTriggers]";
                    *&buf[12] = 2112;
                    *&buf[14] = v10;
                    _os_log_impl(&dword_274719000, v13, OS_LOG_TYPE_DEFAULT, "%s Ignoring trigger of unknown or placeholder type: %@", buf, 0x16u);
                  }
                }

                else
                {
                  v13 = getWFTriggersLogObject();
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "[WFAutomationTriggerDataSource allHomeTriggers]";
                    *&buf[12] = 2112;
                    *&buf[14] = v10;
                    _os_log_impl(&dword_274719000, v13, OS_LOG_TYPE_DEFAULT, "%s Ignoring non-visible trigger: %@", buf, 0x16u);
                  }
                }

LABEL_30:
                v14 = v10;
                goto LABEL_31;
              }

              v14 = getWFTriggersLogObject();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                v15 = objc_opt_class();
                *buf = 136315394;
                *&buf[4] = "[WFAutomationTriggerDataSource allHomeTriggers]";
                *&buf[12] = 2114;
                *&buf[14] = v15;
                v16 = v15;
                _os_log_impl(&dword_274719000, v14, OS_LOG_TYPE_DEFAULT, "%s Ignoring Home trigger that isn't HFTriggerProtocol: %{public}@", buf, 0x16u);
              }

LABEL_31:
            }

            v6 = [triggers countByEnumeratingWithState:&v29 objects:v41 count:16];
          }

          while (v6);
        }

        [v28 sortUsingComparator:&__block_literal_global_227];
        if ([v28 count])
        {
          [v22 addObject:v28];
        }
      }

      v25 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v25);
  }

  return v22;
}

uint64_t __48__WFAutomationTriggerDataSource_allHomeTriggers__block_invoke_224(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_alloc(getHFTriggerUISummaryClass_14509());
  v7 = [v5 trigger];
  v8 = [v5 home];

  v9 = [v6 initWithTrigger:v7 inHome:v8 forceDisabled:0];
  v10 = objc_alloc(getHFTriggerUISummaryClass_14509());
  v11 = [v4 trigger];
  v12 = [v4 home];

  v13 = [v10 initWithTrigger:v11 inHome:v12 forceDisabled:0];
  v14 = [v9 triggerDisplayTitle];
  v15 = [v13 triggerDisplayTitle];
  v16 = [v14 localizedStandardCompare:v15];

  return v16;
}

uint64_t __48__WFAutomationTriggerDataSource_allHomeTriggers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)workflowForIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    os_unfair_lock_lock(&self->_cacheLock);
    workflowCache = [(WFAutomationTriggerDataSource *)self workflowCache];
    v6 = [workflowCache objectForKey:identifierCopy];

    if (v6)
    {
      workflowCache2 = [(WFAutomationTriggerDataSource *)self workflowCache];
      v8 = [workflowCache2 objectForKey:identifierCopy];
    }

    else
    {
      database = [(WFAutomationTriggerDataSource *)self database];
      workflowCache2 = [database referenceForWorkflowID:identifierCopy];

      v10 = MEMORY[0x277D7CA60];
      database2 = [(WFAutomationTriggerDataSource *)self database];
      v15 = 0;
      v8 = [v10 workflowWithReference:workflowCache2 database:database2 error:&v15];
      v12 = v15;

      if (v8)
      {
        workflowCache3 = [(WFAutomationTriggerDataSource *)self workflowCache];
        [workflowCache3 setObject:v8 forKey:identifierCopy];
      }

      else
      {
        workflowCache3 = getWFTriggersLogObject();
        if (os_log_type_enabled(workflowCache3, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v17 = "[WFAutomationTriggerDataSource workflowForIdentifier:]";
          v18 = 2112;
          v19 = identifierCopy;
          v20 = 2114;
          v21 = v12;
          _os_log_impl(&dword_274719000, workflowCache3, OS_LOG_TYPE_ERROR, "%s Failed to fetch workflow (%@): %{public}@", buf, 0x20u);
        }
      }
    }

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __40__WFAutomationTriggerDataSource_prewarm__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 workflowID];
  v3 = [v2 workflowForIdentifier:v4];
}

- (WFAutomationTriggerDataSource)initWithDatabase:(id)database
{
  databaseCopy = database;
  v18.receiver = self;
  v18.super_class = WFAutomationTriggerDataSource;
  v6 = [(WFAutomationTriggerDataSource *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
    mEMORY[0x277D7C4F0] = [MEMORY[0x277D7C4F0] sharedManager];
    homeManager = v7->_homeManager;
    v7->_homeManager = mEMORY[0x277D7C4F0];

    [(WFHomeManager *)v7->_homeManager addEventObserver:v7];
    v7->_cacheLock._os_unfair_lock_opaque = 0;
    v10 = objc_opt_new();
    workflowCache = v7->_workflowCache;
    v7->_workflowCache = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("com.apple.shortcuts.WFAutomationTriggerDataSource", v13);
    queue = v7->_queue;
    v7->_queue = v14;

    v16 = v7;
  }

  return v7;
}

@end