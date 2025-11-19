@interface SHSheetActivitiesManager
- (BOOL)activityHelper:(id)a3 matchingWithContext:(id)a4 shouldIncludeSystemActivityType:(id)a5 sessionID:(id)a6;
- (NSArray)excludedActivityTypes;
- (NSArray)hiddenActivities;
- (NSArray)orderedActivities;
- (SHSheetActivitiesManager)initWithSessionIdentifier:(id)a3 applicationActivities:(id)a4;
- (SHSheetActivitiesManagerDelegate)delegate;
- (id)activitiesByUUID;
- (id)activityForActivityType:(id)a3;
- (id)activityForIdentifier:(id)a3;
- (void)_addActivities:(id)a3;
- (void)addActivity:(id)a3;
- (void)preheatActivitiesIfNeeded;
- (void)removeActivity:(id)a3;
- (void)updateActivitiesWithContext:(id)a3;
@end

@implementation SHSheetActivitiesManager

- (SHSheetActivitiesManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SHSheetActivitiesManager)initWithSessionIdentifier:(id)a3 applicationActivities:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = SHSheetActivitiesManager;
  v8 = [(SHSheetActivitiesManager *)&v29 init];
  if (v8)
  {
    v9 = [v6 copy];
    sessionIdentifier = v8->_sessionIdentifier;
    v8->_sessionIdentifier = v9;

    v11 = [[_UIActivityHelper alloc] initWithDelegate:v8 sessionID:v8->_sessionIdentifier fetchShortcutsBlock:0];
    activityHelper = v8->_activityHelper;
    v8->_activityHelper = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    internalActivitiesByUUID = v8->_internalActivitiesByUUID;
    v8->_internalActivitiesByUUID = v13;

    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __76__SHSheetActivitiesManager_initWithSessionIdentifier_applicationActivities___block_invoke;
    v26 = &unk_1E71FA4E8;
    v16 = v8;
    v27 = v16;
    v28 = v15;
    v17 = v15;
    [v7 enumerateObjectsUsingBlock:&v23];
    v18 = [v17 copy];
    applicationActivityTypes = v16->_applicationActivityTypes;
    v16->_applicationActivityTypes = v18;

    v20 = [v7 copy];
    applicationActivities = v16->_applicationActivities;
    v16->_applicationActivities = v20;
  }

  return v8;
}

void __76__SHSheetActivitiesManager_initWithSessionIdentifier_applicationActivities___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  [v10 setIndexInApplicationDefinedActivities:a3];
  v5 = *(*(a1 + 32) + 72);
  v6 = [v10 activityUUID];
  [v5 setObject:v10 forKeyedSubscript:v6];

  v7 = [v10 activityType];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v10 activityType];
    [v8 addObject:v9];
  }
}

- (id)activitiesByUUID
{
  v2 = [(SHSheetActivitiesManager *)self internalActivitiesByUUID];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)orderedActivities
{
  v2 = [(SHSheetActivitiesManager *)self currentResults];
  v3 = [v2 orderedActivities];

  return v3;
}

- (NSArray)hiddenActivities
{
  if (self->_hiddenActivities)
  {
    return self->_hiddenActivities;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSArray)excludedActivityTypes
{
  v2 = [(SHSheetActivitiesManager *)self currentResults];
  v3 = [v2 excludedActivityTypes];

  return v3;
}

- (void)updateActivitiesWithContext:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Update activities with context:%@", &v12, 0xCu);
  }

  v6 = [(SHSheetActivitiesManager *)self activityHelper];
  v7 = [v6 orderedAvailableActivitiesForMatchingContext:v4];

  v8 = [v7 orderedActivities];
  [(SHSheetActivitiesManager *)self _addActivities:v8];

  v9 = [v7 hiddenActivities];
  [(SHSheetActivitiesManager *)self _addActivities:v9];

  v10 = [v7 hiddenActivities];
  hiddenActivities = self->_hiddenActivities;
  self->_hiddenActivities = v10;

  [(SHSheetActivitiesManager *)self setCurrentContext:v4];
  [(SHSheetActivitiesManager *)self setCurrentResults:v7];
}

- (id)activityForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetActivitiesManager *)self internalActivitiesByUUID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)activityForActivityType:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SHSheetActivitiesManager *)self internalActivitiesByUUID];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 activityType];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)_addActivities:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Add activities:%@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(SHSheetActivitiesManager *)self internalActivitiesByUUID];
        v13 = [v11 activityUUID];
        [v12 setObject:v11 forKeyedSubscript:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)addActivity:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(SHSheetActivitiesManager *)self _addActivities:v6, v7, v8];
}

- (void)removeActivity:(id)a3
{
  v4 = a3;
  v6 = [(SHSheetActivitiesManager *)self internalActivitiesByUUID];
  v5 = [v4 activityUUID];

  [v6 removeObjectForKey:v5];
}

- (void)preheatActivitiesIfNeeded
{
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "Preheating activities", v3, 2u);
  }

  +[UIMessageActivity _preheatAsyncIfNeeded];
}

- (BOOL)activityHelper:(id)a3 matchingWithContext:(id)a4 shouldIncludeSystemActivityType:(id)a5 sessionID:(id)a6
{
  v7 = a5;
  v8 = [(SHSheetActivitiesManager *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SHSheetActivitiesManager *)self delegate];
    v11 = [v10 activitiesManager:self shouldShowSystemActivityType:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end