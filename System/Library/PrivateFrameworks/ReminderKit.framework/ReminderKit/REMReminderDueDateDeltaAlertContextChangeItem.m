@interface REMReminderDueDateDeltaAlertContextChangeItem
- (REMReminderDueDateDeltaAlertContextChangeItem)initWithReminderChangeItem:(id)a3;
- (id)addDueDateDeltaAlertWithDueDateDelta:(id)a3 identifier:(id)a4 creationDate:(id)a5;
- (id)addDueDateDeltaAlertWithDueDateDeltaAlert:(id)a3;
- (id)updateDueDateDeltaAlert:(id)a3;
- (void)_addOrUpdateDueDateDeltaAlert:(id)a3;
- (void)clearPendingDueDateDeltaAlertUpserts;
- (void)removeAllFetchedDueDateDeltaAlerts;
- (void)removeDueDateDeltaAlertsWithIdentifiers:(id)a3;
@end

@implementation REMReminderDueDateDeltaAlertContextChangeItem

- (REMReminderDueDateDeltaAlertContextChangeItem)initWithReminderChangeItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "reminderChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMReminderDueDateDeltaAlertContextChangeItem;
  v6 = [(REMReminderDueDateDeltaAlertContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderChangeItem, a3);
  }

  return v7;
}

- (id)addDueDateDeltaAlertWithDueDateDelta:(id)a3 identifier:(id)a4 creationDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E695DF00] rem_now];
LABEL_3:
  v12 = [REMDueDateDeltaAlert alloc];
  v13 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  v14 = [v13 objectID];
  v15 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  v16 = [v15 accountID];
  v17 = [(REMDueDateDeltaAlert *)v12 initWithIdentifier:v9 reminderID:v14 accountID:v16 dueDateDelta:v8 creationDate:v11 acknowledgedDate:0 minimumSupportedAppVersion:0];

  [(REMReminderDueDateDeltaAlertContextChangeItem *)self _addOrUpdateDueDateDeltaAlert:v17];

  return v17;
}

- (id)updateDueDateDeltaAlert:(id)a3
{
  v4 = a3;
  v5 = [[REMDueDateDeltaAlertChangeItem alloc] initWithReminderDueDateDeltaAlertContextChangeItem:self dueDateDeltaAlert:v4];

  return v5;
}

- (void)removeDueDateDeltaAlertsWithIdentifiers:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = +[REMLogStore write];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
      *buf = 138412546;
      v28 = v6;
      v29 = 2112;
      v30 = v4;
      _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing dueDateDeltaAlerts {reminderChangeItem: %@, identifiers: %@}", buf, 0x16u);
    }

    v7 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    v8 = [v7 storage];
    v9 = [v8 dueDateDeltaAlertIdentifiersToDelete];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v11 = [v4 allObjects];
    [v10 addObjectsFromArray:v11];

    v12 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    v13 = [v12 storage];
    [v13 setDueDateDeltaAlertIdentifiersToDelete:v10];

    v14 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    v15 = [v14 storage];
    v16 = [v15 fetchedDueDateDeltaAlerts];
    v17 = MEMORY[0x1E696AE18];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __89__REMReminderDueDateDeltaAlertContextChangeItem_removeDueDateDeltaAlertsWithIdentifiers___block_invoke;
    v25[3] = &unk_1E7507A78;
    v26 = v4;
    v18 = [v17 predicateWithBlock:v25];
    v19 = [v16 filteredArrayUsingPredicate:v18];

    v20 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    v21 = [v20 storage];
    [v21 setFetchedDueDateDeltaAlerts:v19];

    v22 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    v23 = [v22 changedKeysObserver];
    [v23 keyDidChange:@"dueDateDeltaAlertsData"];
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __89__REMReminderDueDateDeltaAlertContextChangeItem_removeDueDateDeltaAlertsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = REMDynamicCast(v4, v3);

  v6 = *(a1 + 32);
  v7 = [v5 identifier];
  LODWORD(v6) = [v6 containsObject:v7];

  return v6 ^ 1;
}

- (void)_addOrUpdateDueDateDeltaAlert:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    v18 = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Adding dueDateDeltaAlert {reminderChangeItem: %@, dueDateDeltaAlert: %@}", &v18, 0x16u);
  }

  v7 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  v8 = [v7 storage];
  v9 = [v8 dueDateDeltaAlertsToUpsert];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v10 addObject:v4];
  v11 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  v12 = [v11 storage];
  [v12 setDueDateDeltaAlertsToUpsert:v10];

  v13 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  v14 = [v13 storage];
  [v14 setFetchedDueDateDeltaAlerts:v10];

  v15 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  v16 = [v15 changedKeysObserver];
  [v16 keyDidChange:@"dueDateDeltaAlertsData"];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)clearPendingDueDateDeltaAlertUpserts
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    v5 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    v6 = [v5 storage];
    v7 = [v6 dueDateDeltaAlertsToUpsert];
    v13 = 138412546;
    v14 = v4;
    v15 = 2048;
    v16 = [v7 count];
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_INFO, "Clearing dueDateDeltaAlertsToUpsert {reminderChangeItem: %@, dueDateDeltaAlertsToUpsertCount: %lu}", &v13, 0x16u);
  }

  v8 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  v9 = [v8 storage];
  [v9 setDueDateDeltaAlertsToUpsert:0];

  v10 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  v11 = [v10 changedKeysObserver];
  [v11 keyDidChange:@"dueDateDeltaAlertsData"];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)addDueDateDeltaAlertWithDueDateDeltaAlert:(id)a3
{
  v4 = a3;
  v16 = [REMDueDateDeltaAlert alloc];
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  v6 = [v5 objectID];
  v7 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  v8 = [v7 accountID];
  v9 = [v4 dueDateDelta];
  v10 = [v4 creationDate];
  v11 = [v4 acknowledgedDate];
  v12 = [v4 minimumSupportedAppVersion];

  v13 = [(REMDueDateDeltaAlert *)v16 initWithIdentifier:v15 reminderID:v6 accountID:v8 dueDateDelta:v9 creationDate:v10 acknowledgedDate:v11 minimumSupportedAppVersion:v12];
  [(REMReminderDueDateDeltaAlertContextChangeItem *)self _addOrUpdateDueDateDeltaAlert:v13];

  return v13;
}

- (void)removeAllFetchedDueDateDeltaAlerts
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  v5 = [v4 storage];
  v6 = [v5 fetchedDueDateDeltaAlerts];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) identifier];
        [v3 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(REMReminderDueDateDeltaAlertContextChangeItem *)self removeDueDateDeltaAlertsWithIdentifiers:v3];
  v12 = *MEMORY[0x1E69E9840];
}

@end