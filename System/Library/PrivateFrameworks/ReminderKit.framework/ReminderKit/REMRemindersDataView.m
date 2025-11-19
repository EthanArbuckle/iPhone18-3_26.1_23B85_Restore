@interface REMRemindersDataView
+ (id)remindersFromAccountStorages:(id)a3 listStorages:(id)a4 reminderStorages:(id)a5 store:(id)a6 requestedReminderIDs:(id)a7;
+ (id)remindersFromAccountStorages:(id)a3 listStorages:(id)a4 reminderStorages:(id)a5 store:(id)a6 requestedStringIdentifiers:(id)a7 identifierSelector:(SEL)a8;
+ (id)remindersFromAccountStorages:(id)a3 listStorages:(id)a4 reminderStorages:(id)a5 store:(id)a6 showMarkedForDeleteObjects:(BOOL)a7;
- (REMRemindersDataView)initWithStore:(id)a3;
- (id)fetchAllRemindersWithExternalIdentifier:(id)a3 error:(id *)a4;
- (id)fetchReminderWithDACalendarItemUniqueIdentifier:(id)a3 inList:(id)a4 error:(id *)a5;
- (id)fetchReminderWithExternalIdentifier:(id)a3 inList:(id)a4 error:(id *)a5;
- (id)fetchReminderWithObjectID:(id)a3 fetchOptions:(id)a4 error:(id *)a5;
- (id)fetchRemindersCountWithParentReminderID:(id)a3 error:(id *)a4;
- (id)fetchRemindersIncludingUnsupportedWithObjectIDs:(id)a3 error:(id *)a4;
- (id)fetchRemindersMatchingPredicateDescriptor:(id)a3 sortDescriptors:(id)a4 options:(id)a5 error:(id *)a6;
- (id)fetchRemindersWithDACalendarItemUniqueIdentifiers:(id)a3 inList:(id)a4 error:(id *)a5;
- (id)fetchRemindersWithExternalIdentifiers:(id)a3 inList:(id)a4 error:(id *)a5;
- (id)fetchRemindersWithObjectIDs:(id)a3 fetchOptions:(id)a4 error:(id *)a5;
- (id)fetchRemindersWithParentReminderID:(id)a3 accountID:(id)a4 subtaskFetchOption:(int64_t)a5 reminderFetchOptions:(id)a6 error:(id *)a7;
- (id)fetchRemindersWithParentReminderIDs:(id)a3 error:(id *)a4;
- (id)fetchSubtasksOfParentReminder:(id)a3 subtaskFetchOption:(int64_t)a4 reminderFetchOptions:(id)a5 error:(id *)a6;
- (id)fetchSubtasksOfParentReminderChangeItem:(id)a3 subtaskFetchOption:(int64_t)a4 reminderFetchOptions:(id)a5 error:(id *)a6;
@end

@implementation REMRemindersDataView

- (REMRemindersDataView)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMRemindersDataView;
  v6 = [(REMRemindersDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)fetchRemindersWithParentReminderID:(id)a3 accountID:(id)a4 subtaskFetchOption:(int64_t)a5 reminderFetchOptions:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [[REMRemindersDataViewInvocation_fetchByParentReminderID alloc] initWithParentReminderID:v14 accountID:v13 subtaskFetchOption:a5 reminderFetchOptions:v12];

  v16 = [(REMRemindersDataView *)self store];
  v17 = [v16 resultFromPerformingInvocation:v15 error:a7];

  v18 = objc_opt_class();
  v19 = REMDynamicCast(v18, v17);
  v20 = [v19 accountStorages];
  v21 = [v19 listStorages];
  v22 = [v19 reminderStorages];
  v23 = [(REMRemindersDataView *)self store];
  v24 = [v19 objectIDs];
  v25 = [REMRemindersDataView remindersFromAccountStorages:v20 listStorages:v21 reminderStorages:v22 store:v23 requestedReminderIDs:v24];

  return v25;
}

- (id)fetchSubtasksOfParentReminder:(id)a3 subtaskFetchOption:(int64_t)a4 reminderFetchOptions:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [v11 objectID];
  v13 = [v11 accountID];

  v14 = [(REMRemindersDataView *)self fetchRemindersWithParentReminderID:v12 accountID:v13 subtaskFetchOption:a4 reminderFetchOptions:v10 error:a6];

  return v14;
}

- (id)fetchSubtasksOfParentReminderChangeItem:(id)a3 subtaskFetchOption:(int64_t)a4 reminderFetchOptions:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [v11 objectID];
  v13 = [v11 accountID];

  v14 = [(REMRemindersDataView *)self fetchRemindersWithParentReminderID:v12 accountID:v13 subtaskFetchOption:a4 reminderFetchOptions:v10 error:a6];

  return v14;
}

- (id)fetchReminderWithObjectID:(id)a3 fetchOptions:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v19[0] = v8;
  v9 = MEMORY[0x1E695DEC8];
  v10 = a4;
  v11 = [v9 arrayWithObjects:v19 count:1];
  v12 = [(REMRemindersDataView *)self fetchRemindersWithObjectIDs:v11 fetchOptions:v10 error:a5];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [v12 objectForKeyedSubscript:v8];
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = +[REMLogStore read];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_DEFAULT, "REMRemindersDataView: Requested to fetch non-existent reminder {objectID: %{public}@}", &v17, 0xCu);
  }

  if (a5)
  {
    [REMError noSuchObjectErrorWithObjectID:v8];
    *a5 = v13 = 0;
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

- (id)fetchRemindersWithObjectIDs:(id)a3 fetchOptions:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = [v9 includeConcealed];
    v11 = [[REMRemindersDataViewInvocation_fetchByObjectID alloc] initWithObjectIDs:v8 fetchOptions:v9];
    v12 = [(REMRemindersDataView *)self store];
    v34 = v11;
    v13 = [v12 resultFromPerformingInvocation:v11 error:a5];

    v14 = objc_opt_class();
    v15 = REMDynamicCast(v14, v13);
    v16 = [v15 accountStorages];
    v17 = [v15 listStorages];
    v18 = [v15 reminderStorages];
    v19 = [(REMRemindersDataView *)self store];
    v20 = [REMRemindersDataView remindersFromAccountStorages:v16 listStorages:v17 reminderStorages:v18 store:v19 showMarkedForDeleteObjects:v10];

    if (v20)
    {
      v32 = v13;
      v33 = v9;
      v21 = [MEMORY[0x1E695DF90] dictionary];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = v8;
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
              v29 = [v27 objectID];
              [v21 setObject:v28 forKeyedSubscript:v29];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v24);
      }

      v13 = v32;
      v9 = v33;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = MEMORY[0x1E695E0F8];
  }

  v30 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)fetchRemindersIncludingUnsupportedWithObjectIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[REMReminderFetchOptions fetchOptionsIncludingConcealed];
  v8 = [(REMRemindersDataView *)self fetchRemindersWithObjectIDs:v6 fetchOptions:v7 error:a4];

  return v8;
}

- (id)fetchRemindersMatchingPredicateDescriptor:(id)a3 sortDescriptors:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[REMRemindersDataViewInvocation_fetchByPredicateDescriptor alloc] initWithPredicateDescriptor:v12 sortDescriptors:v11 options:v10];

  v14 = [(REMRemindersDataView *)self store];
  v15 = [v14 resultFromPerformingInvocation:v13 error:a6];

  v16 = objc_opt_class();
  v17 = REMDynamicCast(v16, v15);
  v18 = [v17 accountStorages];
  v19 = [v17 listStorages];
  v20 = [v17 reminderStorages];
  v21 = [(REMRemindersDataView *)self store];
  v22 = [v17 objectIDs];
  v23 = [REMRemindersDataView remindersFromAccountStorages:v18 listStorages:v19 reminderStorages:v20 store:v21 requestedReminderIDs:v22];

  return v23;
}

- (id)fetchRemindersWithParentReminderIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMRemindersDataViewInvocation_fetchByParentReminderIDs alloc] initWithParentReminderIDs:v6];

  v8 = [(REMRemindersDataView *)self store];
  v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  v12 = [v11 accountStorages];
  v13 = [v11 listStorages];
  v14 = [v11 reminderStorages];
  v15 = [(REMRemindersDataView *)self store];
  v16 = [v11 objectIDs];
  v17 = [REMRemindersDataView remindersFromAccountStorages:v12 listStorages:v13 reminderStorages:v14 store:v15 requestedReminderIDs:v16];

  return v17;
}

- (id)fetchRemindersCountWithParentReminderID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID alloc] initWithParentReminderID:v6];
  v8 = [(REMRemindersDataView *)self store];
  v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

  v10 = objc_opt_class();
  v11 = [v9 storedPropertyForKey:@"RemindersCount"];
  v12 = REMDynamicCast(v10, v11);

  if (!v12)
  {
    v14 = +[REMLogStore read];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [REMRemindersDataView fetchRemindersCountWithParentReminderID:v6 error:v14];
    }

    if (a4 && !*a4)
    {
      *a4 = +[REMError unexpectedError];
    }
  }

  return v12;
}

- (id)fetchReminderWithExternalIdentifier:(id)a3 inList:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v20[0] = v8;
  v10 = MEMORY[0x1E695DEC8];
  v11 = a4;
  v12 = [v10 arrayWithObjects:v20 count:1];
  v13 = [(REMRemindersDataView *)self fetchRemindersWithExternalIdentifiers:v12 inList:v11 error:a5];

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

    if (a5)
    {
      [REMError noSuchObjectErrorWithExternalIdentifier:v9];
      *a5 = v14 = 0;
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

- (id)fetchRemindersWithExternalIdentifiers:(id)a3 inList:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [REMRemindersDataViewInvocation_fetchByExternalIdentifier alloc];
  v34 = v9;
  v11 = [v9 objectID];
  v12 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)v10 initWithExternalIdentifiers:v8 listObjectID:v11];

  v13 = [(REMRemindersDataView *)self store];
  v14 = [v13 resultFromPerformingInvocation:v12 error:a5];

  v15 = objc_opt_class();
  v16 = REMDynamicCast(v15, v14);
  v17 = [v16 accountStorages];
  v18 = [v16 listStorages];
  v19 = [v16 reminderStorages];
  v20 = [(REMRemindersDataView *)self store];
  v21 = [REMRemindersDataView remindersFromAccountStorages:v17 listStorages:v18 reminderStorages:v19 store:v20 requestedStringIdentifiers:v8 identifierSelector:sel_externalIdentifier];

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
          v29 = [v28 externalIdentifier];
          [v22 setObject:v28 forKeyedSubscript:v29];
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

- (id)fetchAllRemindersWithExternalIdentifier:(id)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [REMRemindersDataViewInvocation_fetchByExternalIdentifier alloc];
  v28[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v9 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)v7 initWithExternalIdentifiers:v8 listObjectID:0];

  v10 = [(REMRemindersDataView *)self store];
  v25 = a4;
  v11 = [v10 resultFromPerformingInvocation:v9 error:a4];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  v14 = [v13 accountStorages];
  v15 = [v13 listStorages];
  v16 = [v13 reminderStorages];
  v17 = [(REMRemindersDataView *)self store];
  v18 = [REMRemindersDataView remindersFromAccountStorages:v14 listStorages:v15 reminderStorages:v16 store:v17];

  v19 = [v18 allValues];
  v20 = v19;
  if (v19 && [v19 count])
  {
    v21 = v20;
  }

  else
  {
    v22 = +[REMLogStore read];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v6;
      _os_log_impl(&dword_19A0DB000, v22, OS_LOG_TYPE_DEFAULT, "REMRemindersDataView: Requested to fetch non-existent reminders {externalIdentifier: %{public}@}", buf, 0xCu);
    }

    if (v25)
    {
      [REMError noSuchObjectErrorWithExternalIdentifier:v6];
      *v25 = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)fetchReminderWithDACalendarItemUniqueIdentifier:(id)a3 inList:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v19[0] = v8;
  v9 = MEMORY[0x1E695DEC8];
  v10 = a4;
  v11 = [v9 arrayWithObjects:v19 count:1];
  v12 = [(REMRemindersDataView *)self fetchRemindersWithDACalendarItemUniqueIdentifiers:v11 inList:v10 error:a5];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [v12 objectForKeyedSubscript:v8];
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = +[REMLogStore read];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_DEFAULT, "REMRemindersDataView: Requested to fetch non-existent reminder {daCalendarItemUniqueIdentifier: %{public}@}", &v17, 0xCu);
  }

  if (a5)
  {
    [REMError noSuchObjectErrorWithDACalendarItemUniqueIdentifier:v8];
    *a5 = v13 = 0;
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

- (id)fetchRemindersWithDACalendarItemUniqueIdentifiers:(id)a3 inList:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier alloc];
  v34 = v9;
  v11 = [v9 objectID];
  v12 = [(REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier *)v10 initWithDACalendarItemUniqueIdentifiers:v8 listObjectID:v11];

  v13 = [(REMRemindersDataView *)self store];
  v14 = [v13 resultFromPerformingInvocation:v12 error:a5];

  v15 = objc_opt_class();
  v16 = REMDynamicCast(v15, v14);
  v17 = [v16 accountStorages];
  v18 = [v16 listStorages];
  v19 = [v16 reminderStorages];
  v20 = [(REMRemindersDataView *)self store];
  v21 = [REMRemindersDataView remindersFromAccountStorages:v17 listStorages:v18 reminderStorages:v19 store:v20 requestedStringIdentifiers:v8 identifierSelector:sel_daCalendarItemUniqueIdentifier];

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
          v29 = [v28 daCalendarItemUniqueIdentifier];
          [v22 setObject:v28 forKeyedSubscript:v29];
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

+ (id)remindersFromAccountStorages:(id)a3 listStorages:(id)a4 reminderStorages:(id)a5 store:(id)a6 requestedReminderIDs:(id)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = [a1 remindersFromAccountStorages:a3 listStorages:a4 reminderStorages:a5 store:a6];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v12;
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

+ (id)remindersFromAccountStorages:(id)a3 listStorages:(id)a4 reminderStorages:(id)a5 store:(id)a6 requestedStringIdentifiers:(id)a7 identifierSelector:(SEL)a8
{
  v47 = *MEMORY[0x1E69E9840];
  v14 = a7;
  v15 = [a1 remindersFromAccountStorages:a3 listStorages:a4 reminderStorages:a5 store:a6];
  v16 = v15;
  if (v15)
  {
    v36 = v14;
    v17 = [v15 allValues];
    v18 = [MEMORY[0x1E695DF90] dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = v17;
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
          v25 = NSStringFromSelector(a8);
          v26 = [v24 valueForKey:v25];

          if (v26)
          {
            [v18 setObject:v24 forKeyedSubscript:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v21);
    }

    v14 = v36;
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

          v33 = [v18 objectForKeyedSubscript:*(*(&v37 + 1) + 8 * j)];
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

+ (id)remindersFromAccountStorages:(id)a3 listStorages:(id)a4 reminderStorages:(id)a5 store:(id)a6 showMarkedForDeleteObjects:(BOOL)a7
{
  v44 = a7;
  v60 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v11)
  {
    v13 = 0;
    goto LABEL_29;
  }

  v43 = [REMAccountsDataView accountsFromAccountStorages:a3 store:v12];
  v40 = v10;
  v45 = [REMListsDataView listsFromAccounts:"listsFromAccounts:listStorages:store:" listStorages:? store:?];
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v39 = v11;
  v14 = v11;
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
      v20 = [v19 listID];

      if (v20)
      {
        v21 = [v19 listID];
        v22 = [v45 objectForKeyedSubscript:v21];

        v23 = [[REMReminder alloc] initWithStore:v12 list:v22 storage:v19];
      }

      else
      {
        if (!v44)
        {
          continue;
        }

        v24 = [v19 accountID];
        v22 = [v43 objectForKeyedSubscript:v24];

        if (!v22)
        {
          v25 = +[REMLogStore read];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            v42 = [v19 objectID];
            v41 = [v19 accountID];
            *buf = 138543618;
            v56 = v42;
            v57 = 2114;
            v58 = v41;
            _os_log_fault_impl(&dword_19A0DB000, v25, OS_LOG_TYPE_FAULT, "REMRemindersDataView: Could not map an account for the fetched reminder {reminderID: %{public}@, accountID: %{public}@}", buf, 0x16u);
          }
        }

        v23 = [[REMReminder alloc] initWithStore:v12 account:v22 storage:v19];
      }

      v26 = v23;
      v27 = [(REMReminder *)v23 objectID];
      [v13 setObject:v26 forKeyedSubscript:v27];
    }

    v16 = [v14 countByEnumeratingWithState:&v50 objects:v59 count:16];
  }

  while (v16);
LABEL_18:

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v28 = [v13 allValues];
  v29 = [v28 countByEnumeratingWithState:&v46 objects:v54 count:16];
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
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v46 + 1) + 8 * j);
        v34 = [v33 storage];
        v35 = [v34 parentReminderID];
        if (v35)
        {
          v36 = [v13 objectForKeyedSubscript:v35];
          [v33 setParentReminder:v36];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v30);
  }

  v11 = v39;
  v10 = v40;
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