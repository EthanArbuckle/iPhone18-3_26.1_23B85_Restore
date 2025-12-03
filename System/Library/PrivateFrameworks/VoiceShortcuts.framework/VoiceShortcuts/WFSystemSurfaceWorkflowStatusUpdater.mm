@interface WFSystemSurfaceWorkflowStatusUpdater
- (WFSystemSurfaceWorkflowStatusUpdater)initWithDatabaseProvider:(id)provider;
- (id)shareSheetStateForWorkflows:(id)workflows database:(id)database;
- (void)updateFromDatabase:(id)database;
- (void)updateIfPossible;
@end

@implementation WFSystemSurfaceWorkflowStatusUpdater

- (id)shareSheetStateForWorkflows:(id)workflows database:(id)database
{
  v28 = *MEMORY[0x277D85DE8];
  workflowsCopy = workflows;
  databaseCopy = database;
  v7 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = workflowsCopy;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [MEMORY[0x277CBEB98] setWithObject:@"inputClasses"];
        v15 = [databaseCopy recordWithDescriptor:v12 properties:v14 error:0];

        inputClasses = [v15 inputClasses];
        v17 = inputClasses;
        if (inputClasses)
        {
          v18 = inputClasses;
        }

        else
        {
          v18 = MEMORY[0x277CBEBF8];
        }

        identifier = [v12 identifier];
        [v7 setObject:v18 forKey:identifier];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)updateFromDatabase:(id)database
{
  v21 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v5 = [databaseCopy sortedVisibleWorkflowsWithType:*MEMORY[0x277D7A898]];
  v6 = [v5 count];
  v7 = getWFGeneralLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"YES";
    if (!v6)
    {
      v8 = @"NO";
    }

    v17 = 136315394;
    v18 = "[WFSystemSurfaceWorkflowStatusUpdater updateFromDatabase:]";
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_INFO, "%s Setting share sheet shortcuts present to %{public}@", &v17, 0x16u);
  }

  registry = [(WFSystemSurfaceWorkflowStatusUpdater *)self registry];
  v10 = registry;
  if (v6)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  [registry setStatus:v11 forSystemSurface:0];

  v12 = +[WFShareSheetState shareSheetShortcuts];
  if (v6)
  {
    descriptors = [v5 descriptors];
    defaultCenter = [(WFSystemSurfaceWorkflowStatusUpdater *)self shareSheetStateForWorkflows:descriptors database:databaseCopy];

    if (v12 && ([defaultCenter isEqualToDictionary:v12] & 1) != 0)
    {
      [WFShareSheetState setShareSheetShortcuts:defaultCenter];
LABEL_17:

      goto LABEL_18;
    }

    [WFShareSheetState setShareSheetShortcuts:defaultCenter];

LABEL_14:
    v15 = getWFGeneralLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "[WFSystemSurfaceWorkflowStatusUpdater updateFromDatabase:]";
      _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_INFO, "%s Posting share sheet workflows change notification", &v17, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D7A580] object:0];
    goto LABEL_17;
  }

  [WFShareSheetState setShareSheetShortcuts:0];
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_18:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateIfPossible
{
  v14 = *MEMORY[0x277D85DE8];
  databaseProvider = [(WFSystemSurfaceWorkflowStatusUpdater *)self databaseProvider];
  v9 = 0;
  v4 = [databaseProvider databaseWithError:&v9];
  v5 = v9;

  if (v4)
  {
    [(WFSystemSurfaceWorkflowStatusUpdater *)self updateFromDatabase:v4];
  }

  else
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[WFSystemSurfaceWorkflowStatusUpdater updateIfPossible]";
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Failed to load database, assuming no shortcuts are present to show in system surfaces: %{public}@", buf, 0x16u);
    }

    registry = [(WFSystemSurfaceWorkflowStatusUpdater *)self registry];
    [registry setStatus:1 forSystemSurface:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (WFSystemSurfaceWorkflowStatusUpdater)initWithDatabaseProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSystemSurfaceWorkflowStatusUpdater.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];
  }

  v13.receiver = self;
  v13.super_class = WFSystemSurfaceWorkflowStatusUpdater;
  v7 = [(WFSystemSurfaceWorkflowStatusUpdater *)&v13 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277D7A160]);
    registry = v7->_registry;
    v7->_registry = v8;

    objc_storeStrong(&v7->_databaseProvider, provider);
    v10 = v7;
  }

  return v7;
}

@end