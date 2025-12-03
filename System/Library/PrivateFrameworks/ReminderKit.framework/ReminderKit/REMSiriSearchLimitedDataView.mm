@interface REMSiriSearchLimitedDataView
- (REMSiriSearchLimitedDataView)initWithStore:(id)store;
- (id)fetchRemindersMatchingTitle:(id)title dueAfter:(id)after dueBefore:(id)before isCompleted:(id)completed hasLocation:(id)location location:(id)a8 error:(id *)error;
@end

@implementation REMSiriSearchLimitedDataView

- (REMSiriSearchLimitedDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMSiriSearchLimitedDataView;
  v6 = [(REMSiriSearchLimitedDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchRemindersMatchingTitle:(id)title dueAfter:(id)after dueBefore:(id)before isCompleted:(id)completed hasLocation:(id)location location:(id)a8 error:(id *)error
{
  v15 = a8;
  locationCopy = location;
  completedCopy = completed;
  beforeCopy = before;
  afterCopy = after;
  titleCopy = title;
  v21 = [[REMSiriSearchLimitedDataViewInvocation_fetchReminders alloc] initWithTitle:titleCopy dueAfter:afterCopy dueBefore:beforeCopy isCompleted:completedCopy hasLocation:locationCopy location:v15];

  store = [(REMSiriSearchLimitedDataView *)self store];
  v23 = [store resultFromPerformingInvocation:v21 error:error];

  v24 = objc_opt_class();
  v25 = REMDynamicCast(v24, v23);
  accountStorages = [v25 accountStorages];
  listStorages = [v25 listStorages];
  reminderStorages = [v25 reminderStorages];
  store2 = [(REMSiriSearchLimitedDataView *)self store];
  objectIDs = [v25 objectIDs];
  v31 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v31;
}

@end