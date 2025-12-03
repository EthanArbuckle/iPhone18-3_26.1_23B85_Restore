@interface REMReminderDueDateDeltaAlertContextChangeItem
- (REMReminderDueDateDeltaAlertContextChangeItem)initWithReminderChangeItem:(id)item;
- (id)addDueDateDeltaAlertWithDueDateDelta:(id)delta identifier:(id)identifier creationDate:(id)date;
- (id)addDueDateDeltaAlertWithDueDateDeltaAlert:(id)alert;
- (id)updateDueDateDeltaAlert:(id)alert;
- (void)_addOrUpdateDueDateDeltaAlert:(id)alert;
- (void)clearPendingDueDateDeltaAlertUpserts;
- (void)removeAllFetchedDueDateDeltaAlerts;
- (void)removeDueDateDeltaAlertsWithIdentifiers:(id)identifiers;
@end

@implementation REMReminderDueDateDeltaAlertContextChangeItem

- (REMReminderDueDateDeltaAlertContextChangeItem)initWithReminderChangeItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "reminderChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMReminderDueDateDeltaAlertContextChangeItem;
  v6 = [(REMReminderDueDateDeltaAlertContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderChangeItem, item);
  }

  return v7;
}

- (id)addDueDateDeltaAlertWithDueDateDelta:(id)delta identifier:(id)identifier creationDate:(id)date
{
  deltaCopy = delta;
  identifierCopy = identifier;
  dateCopy = date;
  rem_now = dateCopy;
  if (identifierCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    identifierCopy = [MEMORY[0x1E696AFB0] UUID];
    if (rem_now)
    {
      goto LABEL_3;
    }
  }

  rem_now = [MEMORY[0x1E695DF00] rem_now];
LABEL_3:
  v12 = [REMDueDateDeltaAlert alloc];
  reminderChangeItem = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  objectID = [reminderChangeItem objectID];
  reminderChangeItem2 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  accountID = [reminderChangeItem2 accountID];
  v17 = [(REMDueDateDeltaAlert *)v12 initWithIdentifier:identifierCopy reminderID:objectID accountID:accountID dueDateDelta:deltaCopy creationDate:rem_now acknowledgedDate:0 minimumSupportedAppVersion:0];

  [(REMReminderDueDateDeltaAlertContextChangeItem *)self _addOrUpdateDueDateDeltaAlert:v17];

  return v17;
}

- (id)updateDueDateDeltaAlert:(id)alert
{
  alertCopy = alert;
  v5 = [[REMDueDateDeltaAlertChangeItem alloc] initWithReminderDueDateDeltaAlertContextChangeItem:self dueDateDeltaAlert:alertCopy];

  return v5;
}

- (void)removeDueDateDeltaAlertsWithIdentifiers:(id)identifiers
{
  v31 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v5 = +[REMLogStore write];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      reminderChangeItem = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
      *buf = 138412546;
      v28 = reminderChangeItem;
      v29 = 2112;
      v30 = identifiersCopy;
      _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing dueDateDeltaAlerts {reminderChangeItem: %@, identifiers: %@}", buf, 0x16u);
    }

    reminderChangeItem2 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    storage = [reminderChangeItem2 storage];
    dueDateDeltaAlertIdentifiersToDelete = [storage dueDateDeltaAlertIdentifiersToDelete];
    v10 = [dueDateDeltaAlertIdentifiersToDelete mutableCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    allObjects = [identifiersCopy allObjects];
    [v10 addObjectsFromArray:allObjects];

    reminderChangeItem3 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    storage2 = [reminderChangeItem3 storage];
    [storage2 setDueDateDeltaAlertIdentifiersToDelete:v10];

    reminderChangeItem4 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    storage3 = [reminderChangeItem4 storage];
    fetchedDueDateDeltaAlerts = [storage3 fetchedDueDateDeltaAlerts];
    v17 = MEMORY[0x1E696AE18];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __89__REMReminderDueDateDeltaAlertContextChangeItem_removeDueDateDeltaAlertsWithIdentifiers___block_invoke;
    v25[3] = &unk_1E7507A78;
    v26 = identifiersCopy;
    v18 = [v17 predicateWithBlock:v25];
    v19 = [fetchedDueDateDeltaAlerts filteredArrayUsingPredicate:v18];

    reminderChangeItem5 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    storage4 = [reminderChangeItem5 storage];
    [storage4 setFetchedDueDateDeltaAlerts:v19];

    reminderChangeItem6 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    changedKeysObserver = [reminderChangeItem6 changedKeysObserver];
    [changedKeysObserver keyDidChange:@"dueDateDeltaAlertsData"];
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

- (void)_addOrUpdateDueDateDeltaAlert:(id)alert
{
  v22 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    v18 = 138412546;
    v19 = reminderChangeItem;
    v20 = 2112;
    v21 = alertCopy;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Adding dueDateDeltaAlert {reminderChangeItem: %@, dueDateDeltaAlert: %@}", &v18, 0x16u);
  }

  reminderChangeItem2 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  storage = [reminderChangeItem2 storage];
  dueDateDeltaAlertsToUpsert = [storage dueDateDeltaAlertsToUpsert];
  v10 = [dueDateDeltaAlertsToUpsert mutableCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v10 addObject:alertCopy];
  reminderChangeItem3 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  storage2 = [reminderChangeItem3 storage];
  [storage2 setDueDateDeltaAlertsToUpsert:v10];

  reminderChangeItem4 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  storage3 = [reminderChangeItem4 storage];
  [storage3 setFetchedDueDateDeltaAlerts:v10];

  reminderChangeItem5 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  changedKeysObserver = [reminderChangeItem5 changedKeysObserver];
  [changedKeysObserver keyDidChange:@"dueDateDeltaAlertsData"];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)clearPendingDueDateDeltaAlertUpserts
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    reminderChangeItem2 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
    storage = [reminderChangeItem2 storage];
    dueDateDeltaAlertsToUpsert = [storage dueDateDeltaAlertsToUpsert];
    v13 = 138412546;
    v14 = reminderChangeItem;
    v15 = 2048;
    v16 = [dueDateDeltaAlertsToUpsert count];
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_INFO, "Clearing dueDateDeltaAlertsToUpsert {reminderChangeItem: %@, dueDateDeltaAlertsToUpsertCount: %lu}", &v13, 0x16u);
  }

  reminderChangeItem3 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  storage2 = [reminderChangeItem3 storage];
  [storage2 setDueDateDeltaAlertsToUpsert:0];

  reminderChangeItem4 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  changedKeysObserver = [reminderChangeItem4 changedKeysObserver];
  [changedKeysObserver keyDidChange:@"dueDateDeltaAlertsData"];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)addDueDateDeltaAlertWithDueDateDeltaAlert:(id)alert
{
  alertCopy = alert;
  v16 = [REMDueDateDeltaAlert alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  reminderChangeItem = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  objectID = [reminderChangeItem objectID];
  reminderChangeItem2 = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  accountID = [reminderChangeItem2 accountID];
  dueDateDelta = [alertCopy dueDateDelta];
  creationDate = [alertCopy creationDate];
  acknowledgedDate = [alertCopy acknowledgedDate];
  minimumSupportedAppVersion = [alertCopy minimumSupportedAppVersion];

  v13 = [(REMDueDateDeltaAlert *)v16 initWithIdentifier:uUID reminderID:objectID accountID:accountID dueDateDelta:dueDateDelta creationDate:creationDate acknowledgedDate:acknowledgedDate minimumSupportedAppVersion:minimumSupportedAppVersion];
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
  reminderChangeItem = [(REMReminderDueDateDeltaAlertContextChangeItem *)self reminderChangeItem];
  storage = [reminderChangeItem storage];
  fetchedDueDateDeltaAlerts = [storage fetchedDueDateDeltaAlerts];

  v7 = [fetchedDueDateDeltaAlerts countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(fetchedDueDateDeltaAlerts);
        }

        identifier = [*(*(&v13 + 1) + 8 * v10) identifier];
        [v3 addObject:identifier];

        ++v10;
      }

      while (v8 != v10);
      v8 = [fetchedDueDateDeltaAlerts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(REMReminderDueDateDeltaAlertContextChangeItem *)self removeDueDateDeltaAlertsWithIdentifiers:v3];
  v12 = *MEMORY[0x1E69E9840];
}

@end