@interface REMEventKitBridgingDataView
- (REMEventKitBridgingDataView)initWithStore:(id)store;
- (id)fetchCompletedRemindersWithCompletionDateFrom:(id)from to:(id)to withListIDs:(id)ds error:(id *)error;
- (id)fetchIncompleteRemindersWithDueDateFrom:(id)from to:(id)to withListIDs:(id)ds error:(id *)error;
- (id)fetchListsWithError:(id *)error;
- (id)fetchRemindersWithListIDs:(id)ds error:(id *)error;
@end

@implementation REMEventKitBridgingDataView

- (REMEventKitBridgingDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMEventKitBridgingDataView;
  v6 = [(REMEventKitBridgingDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchListsWithError:(id *)error
{
  v5 = objc_alloc_init(REMEventKitBridgingDataViewInvocation_fetchLists);
  store = [(REMEventKitBridgingDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountStorages = [v9 accountStorages];
  listStorages = [v9 listStorages];
  store2 = [(REMEventKitBridgingDataView *)self store];
  objectIDs = [v9 objectIDs];
  v14 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:objectIDs];

  return v14;
}

- (id)fetchRemindersWithListIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v7 = [[REMEventKitBridgingDataViewInvocation_fetchReminders alloc] initWithListIDs:dsCopy];

  store = [(REMEventKitBridgingDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  listStorages = [v11 listStorages];
  reminderStorages = [v11 reminderStorages];
  store2 = [(REMEventKitBridgingDataView *)self store];
  objectIDs = [v11 objectIDs];
  v17 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v17;
}

- (id)fetchIncompleteRemindersWithDueDateFrom:(id)from to:(id)to withListIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  toCopy = to;
  fromCopy = from;
  v13 = [[REMEventKitBridgingDataViewInvocation_fetchIncompleteRemindersWithDueDate alloc] initWithListIDs:dsCopy startDate:fromCopy endDate:toCopy];

  store = [(REMEventKitBridgingDataView *)self store];
  v15 = [store resultFromPerformingInvocation:v13 error:error];

  v16 = objc_opt_class();
  v17 = REMDynamicCast(v16, v15);
  accountStorages = [v17 accountStorages];
  listStorages = [v17 listStorages];
  reminderStorages = [v17 reminderStorages];
  store2 = [(REMEventKitBridgingDataView *)self store];
  objectIDs = [v17 objectIDs];
  v23 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v23;
}

- (id)fetchCompletedRemindersWithCompletionDateFrom:(id)from to:(id)to withListIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  toCopy = to;
  fromCopy = from;
  v13 = [[REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate alloc] initWithListIDs:dsCopy startDate:fromCopy endDate:toCopy];

  store = [(REMEventKitBridgingDataView *)self store];
  v15 = [store resultFromPerformingInvocation:v13 error:error];

  v16 = objc_opt_class();
  v17 = REMDynamicCast(v16, v15);
  accountStorages = [v17 accountStorages];
  listStorages = [v17 listStorages];
  reminderStorages = [v17 reminderStorages];
  store2 = [(REMEventKitBridgingDataView *)self store];
  objectIDs = [v17 objectIDs];
  v23 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v23;
}

@end