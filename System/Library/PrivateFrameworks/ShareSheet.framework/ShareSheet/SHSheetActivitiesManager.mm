@interface SHSheetActivitiesManager
- (BOOL)activityHelper:(id)helper matchingWithContext:(id)context shouldIncludeSystemActivityType:(id)type sessionID:(id)d;
- (NSArray)excludedActivityTypes;
- (NSArray)hiddenActivities;
- (NSArray)orderedActivities;
- (SHSheetActivitiesManager)initWithSessionIdentifier:(id)identifier applicationActivities:(id)activities;
- (SHSheetActivitiesManagerDelegate)delegate;
- (id)activitiesByUUID;
- (id)activityForActivityType:(id)type;
- (id)activityForIdentifier:(id)identifier;
- (void)_addActivities:(id)activities;
- (void)addActivity:(id)activity;
- (void)preheatActivitiesIfNeeded;
- (void)removeActivity:(id)activity;
- (void)updateActivitiesWithContext:(id)context;
@end

@implementation SHSheetActivitiesManager

- (SHSheetActivitiesManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SHSheetActivitiesManager)initWithSessionIdentifier:(id)identifier applicationActivities:(id)activities
{
  identifierCopy = identifier;
  activitiesCopy = activities;
  v29.receiver = self;
  v29.super_class = SHSheetActivitiesManager;
  v8 = [(SHSheetActivitiesManager *)&v29 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    sessionIdentifier = v8->_sessionIdentifier;
    v8->_sessionIdentifier = v9;

    v11 = [[_UIActivityHelper alloc] initWithDelegate:v8 sessionID:v8->_sessionIdentifier fetchShortcutsBlock:0];
    activityHelper = v8->_activityHelper;
    v8->_activityHelper = v11;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    internalActivitiesByUUID = v8->_internalActivitiesByUUID;
    v8->_internalActivitiesByUUID = dictionary;

    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(activitiesCopy, "count")}];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __76__SHSheetActivitiesManager_initWithSessionIdentifier_applicationActivities___block_invoke;
    v26 = &unk_1E71FA4E8;
    v16 = v8;
    v27 = v16;
    v28 = v15;
    v17 = v15;
    [activitiesCopy enumerateObjectsUsingBlock:&v23];
    v18 = [v17 copy];
    applicationActivityTypes = v16->_applicationActivityTypes;
    v16->_applicationActivityTypes = v18;

    v20 = [activitiesCopy copy];
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
  internalActivitiesByUUID = [(SHSheetActivitiesManager *)self internalActivitiesByUUID];
  v3 = [internalActivitiesByUUID copy];

  return v3;
}

- (NSArray)orderedActivities
{
  currentResults = [(SHSheetActivitiesManager *)self currentResults];
  orderedActivities = [currentResults orderedActivities];

  return orderedActivities;
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
  currentResults = [(SHSheetActivitiesManager *)self currentResults];
  excludedActivityTypes = [currentResults excludedActivityTypes];

  return excludedActivityTypes;
}

- (void)updateActivitiesWithContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = contextCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Update activities with context:%@", &v12, 0xCu);
  }

  activityHelper = [(SHSheetActivitiesManager *)self activityHelper];
  v7 = [activityHelper orderedAvailableActivitiesForMatchingContext:contextCopy];

  orderedActivities = [v7 orderedActivities];
  [(SHSheetActivitiesManager *)self _addActivities:orderedActivities];

  hiddenActivities = [v7 hiddenActivities];
  [(SHSheetActivitiesManager *)self _addActivities:hiddenActivities];

  hiddenActivities2 = [v7 hiddenActivities];
  hiddenActivities = self->_hiddenActivities;
  self->_hiddenActivities = hiddenActivities2;

  [(SHSheetActivitiesManager *)self setCurrentContext:contextCopy];
  [(SHSheetActivitiesManager *)self setCurrentResults:v7];
}

- (id)activityForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  internalActivitiesByUUID = [(SHSheetActivitiesManager *)self internalActivitiesByUUID];
  v6 = [internalActivitiesByUUID objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)activityForActivityType:(id)type
{
  v19 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  internalActivitiesByUUID = [(SHSheetActivitiesManager *)self internalActivitiesByUUID];
  allValues = [internalActivitiesByUUID allValues];

  v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        activityType = [v10 activityType];
        v12 = [activityType isEqualToString:typeCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_addActivities:(id)activities
{
  v21 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = activitiesCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Add activities:%@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = activitiesCopy;
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
        internalActivitiesByUUID = [(SHSheetActivitiesManager *)self internalActivitiesByUUID];
        activityUUID = [v11 activityUUID];
        [internalActivitiesByUUID setObject:v11 forKeyedSubscript:activityUUID];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)addActivity:(id)activity
{
  v8 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v4 = MEMORY[0x1E695DEC8];
  activityCopy2 = activity;
  v6 = [v4 arrayWithObjects:&activityCopy count:1];

  [(SHSheetActivitiesManager *)self _addActivities:v6, activityCopy, v8];
}

- (void)removeActivity:(id)activity
{
  activityCopy = activity;
  internalActivitiesByUUID = [(SHSheetActivitiesManager *)self internalActivitiesByUUID];
  activityUUID = [activityCopy activityUUID];

  [internalActivitiesByUUID removeObjectForKey:activityUUID];
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

- (BOOL)activityHelper:(id)helper matchingWithContext:(id)context shouldIncludeSystemActivityType:(id)type sessionID:(id)d
{
  typeCopy = type;
  delegate = [(SHSheetActivitiesManager *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SHSheetActivitiesManager *)self delegate];
    v11 = [delegate2 activitiesManager:self shouldShowSystemActivityType:typeCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end