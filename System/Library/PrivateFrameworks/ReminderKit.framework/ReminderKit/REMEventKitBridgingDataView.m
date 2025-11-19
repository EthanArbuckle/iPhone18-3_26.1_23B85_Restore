@interface REMEventKitBridgingDataView
- (REMEventKitBridgingDataView)initWithStore:(id)a3;
- (id)fetchCompletedRemindersWithCompletionDateFrom:(id)a3 to:(id)a4 withListIDs:(id)a5 error:(id *)a6;
- (id)fetchIncompleteRemindersWithDueDateFrom:(id)a3 to:(id)a4 withListIDs:(id)a5 error:(id *)a6;
- (id)fetchListsWithError:(id *)a3;
- (id)fetchRemindersWithListIDs:(id)a3 error:(id *)a4;
@end

@implementation REMEventKitBridgingDataView

- (REMEventKitBridgingDataView)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMEventKitBridgingDataView;
  v6 = [(REMEventKitBridgingDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)fetchListsWithError:(id *)a3
{
  v5 = objc_alloc_init(REMEventKitBridgingDataViewInvocation_fetchLists);
  v6 = [(REMEventKitBridgingDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  v10 = [v9 accountStorages];
  v11 = [v9 listStorages];
  v12 = [(REMEventKitBridgingDataView *)self store];
  v13 = [v9 objectIDs];
  v14 = [REMListsDataView listsFromAccountStorages:v10 listStorages:v11 store:v12 requestedListIDs:v13];

  return v14;
}

- (id)fetchRemindersWithListIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMEventKitBridgingDataViewInvocation_fetchReminders alloc] initWithListIDs:v6];

  v8 = [(REMEventKitBridgingDataView *)self store];
  v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  v12 = [v11 accountStorages];
  v13 = [v11 listStorages];
  v14 = [v11 reminderStorages];
  v15 = [(REMEventKitBridgingDataView *)self store];
  v16 = [v11 objectIDs];
  v17 = [REMRemindersDataView remindersFromAccountStorages:v12 listStorages:v13 reminderStorages:v14 store:v15 requestedReminderIDs:v16];

  return v17;
}

- (id)fetchIncompleteRemindersWithDueDateFrom:(id)a3 to:(id)a4 withListIDs:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[REMEventKitBridgingDataViewInvocation_fetchIncompleteRemindersWithDueDate alloc] initWithListIDs:v10 startDate:v12 endDate:v11];

  v14 = [(REMEventKitBridgingDataView *)self store];
  v15 = [v14 resultFromPerformingInvocation:v13 error:a6];

  v16 = objc_opt_class();
  v17 = REMDynamicCast(v16, v15);
  v18 = [v17 accountStorages];
  v19 = [v17 listStorages];
  v20 = [v17 reminderStorages];
  v21 = [(REMEventKitBridgingDataView *)self store];
  v22 = [v17 objectIDs];
  v23 = [REMRemindersDataView remindersFromAccountStorages:v18 listStorages:v19 reminderStorages:v20 store:v21 requestedReminderIDs:v22];

  return v23;
}

- (id)fetchCompletedRemindersWithCompletionDateFrom:(id)a3 to:(id)a4 withListIDs:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate alloc] initWithListIDs:v10 startDate:v12 endDate:v11];

  v14 = [(REMEventKitBridgingDataView *)self store];
  v15 = [v14 resultFromPerformingInvocation:v13 error:a6];

  v16 = objc_opt_class();
  v17 = REMDynamicCast(v16, v15);
  v18 = [v17 accountStorages];
  v19 = [v17 listStorages];
  v20 = [v17 reminderStorages];
  v21 = [(REMEventKitBridgingDataView *)self store];
  v22 = [v17 objectIDs];
  v23 = [REMRemindersDataView remindersFromAccountStorages:v18 listStorages:v19 reminderStorages:v20 store:v21 requestedReminderIDs:v22];

  return v23;
}

@end