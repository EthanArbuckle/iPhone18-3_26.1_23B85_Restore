@interface REMSiriSearchLimitedDataView
- (REMSiriSearchLimitedDataView)initWithStore:(id)a3;
- (id)fetchRemindersMatchingTitle:(id)a3 dueAfter:(id)a4 dueBefore:(id)a5 isCompleted:(id)a6 hasLocation:(id)a7 location:(id)a8 error:(id *)a9;
@end

@implementation REMSiriSearchLimitedDataView

- (REMSiriSearchLimitedDataView)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMSiriSearchLimitedDataView;
  v6 = [(REMSiriSearchLimitedDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)fetchRemindersMatchingTitle:(id)a3 dueAfter:(id)a4 dueBefore:(id)a5 isCompleted:(id)a6 hasLocation:(id)a7 location:(id)a8 error:(id *)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [[REMSiriSearchLimitedDataViewInvocation_fetchReminders alloc] initWithTitle:v20 dueAfter:v19 dueBefore:v18 isCompleted:v17 hasLocation:v16 location:v15];

  v22 = [(REMSiriSearchLimitedDataView *)self store];
  v23 = [v22 resultFromPerformingInvocation:v21 error:a9];

  v24 = objc_opt_class();
  v25 = REMDynamicCast(v24, v23);
  v26 = [v25 accountStorages];
  v27 = [v25 listStorages];
  v28 = [v25 reminderStorages];
  v29 = [(REMSiriSearchLimitedDataView *)self store];
  v30 = [v25 objectIDs];
  v31 = [REMRemindersDataView remindersFromAccountStorages:v26 listStorages:v27 reminderStorages:v28 store:v29 requestedReminderIDs:v30];

  return v31;
}

@end