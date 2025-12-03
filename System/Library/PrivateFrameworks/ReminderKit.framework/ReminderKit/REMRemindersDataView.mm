@interface REMRemindersDataView
+ (id)remindersFromAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages store:(id)store requestedReminderIDs:(id)ds;
+ (id)remindersFromAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages store:(id)store requestedStringIdentifiers:(id)identifiers identifierSelector:(SEL)selector;
+ (id)remindersFromAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages store:(id)store showMarkedForDeleteObjects:(BOOL)objects;
- (REMRemindersDataView)initWithStore:(id)store;
- (id)fetchAllRemindersWithExternalIdentifier:(id)identifier error:(id *)error;
- (id)fetchReminderWithDACalendarItemUniqueIdentifier:(id)identifier inList:(id)list error:(id *)error;
- (id)fetchReminderWithExternalIdentifier:(id)identifier inList:(id)list error:(id *)error;
- (id)fetchReminderWithObjectID:(id)d fetchOptions:(id)options error:(id *)error;
- (id)fetchRemindersCountWithParentReminderID:(id)d error:(id *)error;
- (id)fetchRemindersIncludingUnsupportedWithObjectIDs:(id)ds error:(id *)error;
- (id)fetchRemindersMatchingPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors options:(id)options error:(id *)error;
- (id)fetchRemindersWithDACalendarItemUniqueIdentifiers:(id)identifiers inList:(id)list error:(id *)error;
- (id)fetchRemindersWithExternalIdentifiers:(id)identifiers inList:(id)list error:(id *)error;
- (id)fetchRemindersWithObjectIDs:(id)ds fetchOptions:(id)options error:(id *)error;
- (id)fetchRemindersWithParentReminderID:(id)d accountID:(id)iD subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options error:(id *)error;
- (id)fetchRemindersWithParentReminderIDs:(id)ds error:(id *)error;
- (id)fetchSubtasksOfParentReminder:(id)reminder subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options error:(id *)error;
- (id)fetchSubtasksOfParentReminderChangeItem:(id)item subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options error:(id *)error;
@end

@implementation REMRemindersDataView

- (REMRemindersDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMRemindersDataView;
  v6 = [(REMRemindersDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchRemindersWithParentReminderID:(id)d accountID:(id)iD subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  iDCopy = iD;
  dCopy = d;
  v15 = [[REMRemindersDataViewInvocation_fetchByParentReminderID alloc] initWithParentReminderID:dCopy accountID:iDCopy subtaskFetchOption:option reminderFetchOptions:optionsCopy];

  store = [(REMRemindersDataView *)self store];
  v17 = [store resultFromPerformingInvocation:v15 error:error];

  v18 = objc_opt_class();
  v19 = REMDynamicCast(v18, v17);
  accountStorages = [v19 accountStorages];
  listStorages = [v19 listStorages];
  reminderStorages = [v19 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  objectIDs = [v19 objectIDs];
  v25 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v25;
}

- (id)fetchSubtasksOfParentReminder:(id)reminder subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  reminderCopy = reminder;
  objectID = [reminderCopy objectID];
  accountID = [reminderCopy accountID];

  v14 = [(REMRemindersDataView *)self fetchRemindersWithParentReminderID:objectID accountID:accountID subtaskFetchOption:option reminderFetchOptions:optionsCopy error:error];

  return v14;
}

- (id)fetchSubtasksOfParentReminderChangeItem:(id)item subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  itemCopy = item;
  objectID = [itemCopy objectID];
  accountID = [itemCopy accountID];

  v14 = [(REMRemindersDataView *)self fetchRemindersWithParentReminderID:objectID accountID:accountID subtaskFetchOption:option reminderFetchOptions:optionsCopy error:error];

  return v14;
}

- (id)fetchReminderWithObjectID:(id)d fetchOptions:(id)options error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v19[0] = dCopy;
  v9 = MEMORY[0x1E695DEC8];
  optionsCopy = options;
  v11 = [v9 arrayWithObjects:v19 count:1];
  v12 = [(REMRemindersDataView *)self fetchRemindersWithObjectIDs:v11 fetchOptions:optionsCopy error:error];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [v12 objectForKeyedSubscript:dCopy];
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = +[REMLogStore read];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = dCopy;
    _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_DEFAULT, "REMRemindersDataView: Requested to fetch non-existent reminder {objectID: %{public}@}", &v17, 0xCu);
  }

  if (error)
  {
    [REMError noSuchObjectErrorWithObjectID:dCopy];
    *error = v13 = 0;
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

LABEL_8:

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)fetchRemindersWithObjectIDs:(id)ds fetchOptions:(id)options error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  optionsCopy = options;
  if ([dsCopy count])
  {
    includeConcealed = [optionsCopy includeConcealed];
    v11 = [[REMRemindersDataViewInvocation_fetchByObjectID alloc] initWithObjectIDs:dsCopy fetchOptions:optionsCopy];
    store = [(REMRemindersDataView *)self store];
    v34 = v11;
    v13 = [store resultFromPerformingInvocation:v11 error:error];

    v14 = objc_opt_class();
    v15 = REMDynamicCast(v14, v13);
    accountStorages = [v15 accountStorages];
    listStorages = [v15 listStorages];
    reminderStorages = [v15 reminderStorages];
    store2 = [(REMRemindersDataView *)self store];
    v20 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 showMarkedForDeleteObjects:includeConcealed];

    if (v20)
    {
      v32 = v13;
      v33 = optionsCopy;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = dsCopy;
      v23 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v36;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v36 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [v20 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * i)];
            v28 = v27;
            if (v27)
            {
              objectID = [v27 objectID];
              [dictionary setObject:v28 forKeyedSubscript:objectID];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v24);
      }

      v13 = v32;
      optionsCopy = v33;
    }

    else
    {
      dictionary = 0;
    }
  }

  else
  {
    dictionary = MEMORY[0x1E695E0F8];
  }

  v30 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)fetchRemindersIncludingUnsupportedWithObjectIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v7 = +[REMReminderFetchOptions fetchOptionsIncludingConcealed];
  v8 = [(REMRemindersDataView *)self fetchRemindersWithObjectIDs:dsCopy fetchOptions:v7 error:error];

  return v8;
}

- (id)fetchRemindersMatchingPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors options:(id)options error:(id *)error
{
  optionsCopy = options;
  descriptorsCopy = descriptors;
  descriptorCopy = descriptor;
  v13 = [[REMRemindersDataViewInvocation_fetchByPredicateDescriptor alloc] initWithPredicateDescriptor:descriptorCopy sortDescriptors:descriptorsCopy options:optionsCopy];

  store = [(REMRemindersDataView *)self store];
  v15 = [store resultFromPerformingInvocation:v13 error:error];

  v16 = objc_opt_class();
  v17 = REMDynamicCast(v16, v15);
  accountStorages = [v17 accountStorages];
  listStorages = [v17 listStorages];
  reminderStorages = [v17 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  objectIDs = [v17 objectIDs];
  v23 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v23;
}

- (id)fetchRemindersWithParentReminderIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v7 = [[REMRemindersDataViewInvocation_fetchByParentReminderIDs alloc] initWithParentReminderIDs:dsCopy];

  store = [(REMRemindersDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  listStorages = [v11 listStorages];
  reminderStorages = [v11 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  objectIDs = [v11 objectIDs];
  v17 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v17;
}

- (id)fetchRemindersCountWithParentReminderID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [[REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID alloc] initWithParentReminderID:dCopy];
  store = [(REMRemindersDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = [v9 storedPropertyForKey:@"RemindersCount"];
  v12 = REMDynamicCast(v10, v11);

  if (!v12)
  {
    v14 = +[REMLogStore read];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [REMRemindersDataView fetchRemindersCountWithParentReminderID:dCopy error:v14];
    }

    if (error && !*error)
    {
      *error = +[REMError unexpectedError];
    }
  }

  return v12;
}

- (id)fetchReminderWithExternalIdentifier:(id)identifier inList:(id)list error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (!identifierCopy)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v20[0] = identifierCopy;
  v10 = MEMORY[0x1E695DEC8];
  listCopy = list;
  v12 = [v10 arrayWithObjects:v20 count:1];
  v13 = [(REMRemindersDataView *)self fetchRemindersWithExternalIdentifiers:v12 inList:listCopy error:error];

  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = [v13 objectForKeyedSubscript:v9];
  if (!v14)
  {
    v15 = +[REMLogStore read];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&dword_19A0DB000, v15, OS_LOG_TYPE_DEFAULT, "Requested non-existent reminder {externalIdentifier: %@}", &v18, 0xCu);
    }

    if (error)
    {
      [REMError noSuchObjectErrorWithExternalIdentifier:v9];
      *error = v14 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v14 = 0;
  }

LABEL_10:

LABEL_11:
  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)fetchRemindersWithExternalIdentifiers:(id)identifiers inList:(id)list error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  listCopy = list;
  v10 = [REMRemindersDataViewInvocation_fetchByExternalIdentifier alloc];
  v34 = listCopy;
  objectID = [listCopy objectID];
  v12 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)v10 initWithExternalIdentifiers:identifiersCopy listObjectID:objectID];

  store = [(REMRemindersDataView *)self store];
  v14 = [store resultFromPerformingInvocation:v12 error:error];

  v15 = objc_opt_class();
  v16 = REMDynamicCast(v15, v14);
  accountStorages = [v16 accountStorages];
  listStorages = [v16 listStorages];
  reminderStorages = [v16 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  v21 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedStringIdentifiers:identifiersCopy identifierSelector:sel_externalIdentifier];

  if (v21)
  {
    v32 = v14;
    v33 = v12;
    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v21, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v35 + 1) + 8 * i);
          externalIdentifier = [v28 externalIdentifier];
          [v22 setObject:v28 forKeyedSubscript:externalIdentifier];
        }

        v25 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v25);
    }

    v14 = v32;
    v12 = v33;
  }

  else
  {
    v22 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)fetchAllRemindersWithExternalIdentifier:(id)identifier error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [REMRemindersDataViewInvocation_fetchByExternalIdentifier alloc];
  v28[0] = identifierCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v9 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)v7 initWithExternalIdentifiers:v8 listObjectID:0];

  store = [(REMRemindersDataView *)self store];
  errorCopy = error;
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  reminderStorages = [v13 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  v18 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2];

  allValues = [v18 allValues];
  v20 = allValues;
  if (allValues && [allValues count])
  {
    v21 = v20;
  }

  else
  {
    v22 = +[REMLogStore read];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = identifierCopy;
      _os_log_impl(&dword_19A0DB000, v22, OS_LOG_TYPE_DEFAULT, "REMRemindersDataView: Requested to fetch non-existent reminders {externalIdentifier: %{public}@}", buf, 0xCu);
    }

    if (errorCopy)
    {
      [REMError noSuchObjectErrorWithExternalIdentifier:identifierCopy];
      *errorCopy = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)fetchReminderWithDACalendarItemUniqueIdentifier:(id)identifier inList:(id)list error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v19[0] = identifierCopy;
  v9 = MEMORY[0x1E695DEC8];
  listCopy = list;
  v11 = [v9 arrayWithObjects:v19 count:1];
  v12 = [(REMRemindersDataView *)self fetchRemindersWithDACalendarItemUniqueIdentifiers:v11 inList:listCopy error:error];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [v12 objectForKeyedSubscript:identifierCopy];
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = +[REMLogStore read];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = identifierCopy;
    _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_DEFAULT, "REMRemindersDataView: Requested to fetch non-existent reminder {daCalendarItemUniqueIdentifier: %{public}@}", &v17, 0xCu);
  }

  if (error)
  {
    [REMError noSuchObjectErrorWithDACalendarItemUniqueIdentifier:identifierCopy];
    *error = v13 = 0;
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

LABEL_8:

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)fetchRemindersWithDACalendarItemUniqueIdentifiers:(id)identifiers inList:(id)list error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  listCopy = list;
  v10 = [REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier alloc];
  v34 = listCopy;
  objectID = [listCopy objectID];
  v12 = [(REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier *)v10 initWithDACalendarItemUniqueIdentifiers:identifiersCopy listObjectID:objectID];

  store = [(REMRemindersDataView *)self store];
  v14 = [store resultFromPerformingInvocation:v12 error:error];

  v15 = objc_opt_class();
  v16 = REMDynamicCast(v15, v14);
  accountStorages = [v16 accountStorages];
  listStorages = [v16 listStorages];
  reminderStorages = [v16 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  v21 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedStringIdentifiers:identifiersCopy identifierSelector:sel_daCalendarItemUniqueIdentifier];

  if (v21)
  {
    v32 = v14;
    v33 = v12;
    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v21, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v35 + 1) + 8 * i);
          daCalendarItemUniqueIdentifier = [v28 daCalendarItemUniqueIdentifier];
          [v22 setObject:v28 forKeyedSubscript:daCalendarItemUniqueIdentifier];
        }

        v25 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v25);
    }

    v14 = v32;
    v12 = v33;
  }

  else
  {
    v22 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)remindersFromAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages store:(id)store requestedReminderIDs:(id)ds
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v13 = [self remindersFromAccountStorages:storages listStorages:listStorages reminderStorages:reminderStorages store:store];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = dsCopy;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [v13 objectForKeyedSubscript:{*(*(&v23 + 1) + 8 * i), v23}];
          if (v20)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v14 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)remindersFromAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages store:(id)store requestedStringIdentifiers:(id)identifiers identifierSelector:(SEL)selector
{
  v47 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v15 = [self remindersFromAccountStorages:storages listStorages:listStorages reminderStorages:reminderStorages store:store];
  v16 = v15;
  if (v15)
  {
    v36 = identifiersCopy;
    allValues = [v15 allValues];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = allValues;
    v20 = [v19 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v42;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v42 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v41 + 1) + 8 * i);
          v25 = NSStringFromSelector(selector);
          v26 = [v24 valueForKey:v25];

          if (v26)
          {
            [dictionary setObject:v24 forKeyedSubscript:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v21);
    }

    identifiersCopy = v36;
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v36, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v28 = v36;
    v29 = [v28 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v38;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v38 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [dictionary objectForKeyedSubscript:*(*(&v37 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v30);
    }
  }

  else
  {
    v27 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)remindersFromAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages store:(id)store showMarkedForDeleteObjects:(BOOL)objects
{
  objectsCopy = objects;
  v60 = *MEMORY[0x1E69E9840];
  listStoragesCopy = listStorages;
  reminderStoragesCopy = reminderStorages;
  storeCopy = store;
  if (!reminderStoragesCopy)
  {
    v13 = 0;
    goto LABEL_29;
  }

  v43 = [REMAccountsDataView accountsFromAccountStorages:storages store:storeCopy];
  v40 = listStoragesCopy;
  v45 = [REMListsDataView listsFromAccounts:"listsFromAccounts:listStorages:store:" listStorages:? store:?];
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(reminderStoragesCopy, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v39 = reminderStoragesCopy;
  v14 = reminderStoragesCopy;
  v15 = [v14 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v17 = *v51;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v51 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v50 + 1) + 8 * i);
      listID = [v19 listID];

      if (listID)
      {
        listID2 = [v19 listID];
        v22 = [v45 objectForKeyedSubscript:listID2];

        v23 = [[REMReminder alloc] initWithStore:storeCopy list:v22 storage:v19];
      }

      else
      {
        if (!objectsCopy)
        {
          continue;
        }

        accountID = [v19 accountID];
        v22 = [v43 objectForKeyedSubscript:accountID];

        if (!v22)
        {
          v25 = +[REMLogStore read];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            objectID = [v19 objectID];
            accountID2 = [v19 accountID];
            *buf = 138543618;
            v56 = objectID;
            v57 = 2114;
            v58 = accountID2;
            _os_log_fault_impl(&dword_19A0DB000, v25, OS_LOG_TYPE_FAULT, "REMRemindersDataView: Could not map an account for the fetched reminder {reminderID: %{public}@, accountID: %{public}@}", buf, 0x16u);
          }
        }

        v23 = [[REMReminder alloc] initWithStore:storeCopy account:v22 storage:v19];
      }

      v26 = v23;
      objectID2 = [(REMReminder *)v23 objectID];
      [v13 setObject:v26 forKeyedSubscript:objectID2];
    }

    v16 = [v14 countByEnumeratingWithState:&v50 objects:v59 count:16];
  }

  while (v16);
LABEL_18:

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  allValues = [v13 allValues];
  v29 = [allValues countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v47;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(allValues);
        }

        v33 = *(*(&v46 + 1) + 8 * j);
        storage = [v33 storage];
        parentReminderID = [storage parentReminderID];
        if (parentReminderID)
        {
          v36 = [v13 objectForKeyedSubscript:parentReminderID];
          [v33 setParentReminder:v36];
        }
      }

      v30 = [allValues countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v30);
  }

  reminderStoragesCopy = v39;
  listStoragesCopy = v40;
LABEL_29:

  v37 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)fetchRemindersCountWithParentReminderID:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch reminders count with parentReminderID {parentReminderID: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fetchSubtasksMasksWithParentReminderID:(uint64_t)a1 includingConcealed:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch reminder subtasks masks with parentReminderID {parentReminderID: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end