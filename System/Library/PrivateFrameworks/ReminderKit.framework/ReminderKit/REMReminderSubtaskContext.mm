@interface REMReminderSubtaskContext
- (BOOL)hasSubtasksWithError:(id *)a3;
- (REMReminder)parentReminder;
- (REMReminderSubtaskContext)initWithReminder:(id)a3;
- (id)fetchObjectIDsOfCompletedSubtasksWithError:(id *)a3;
- (id)fetchObjectIDsOfUnsupportedSubtasksWithError:(id *)a3;
- (id)fetchRemindersForMovingWithError:(id *)a3;
- (id)fetchRemindersForMovingWithFetchOptions:(id)a3 error:(id *)a4;
- (id)fetchRemindersWithError:(id *)a3;
- (id)fetchRemindersWithFetchOptions:(id)a3 error:(id *)a4;
- (id)fetchSubtasksMarkedForDeletionWithError:(id *)a3;
- (int64_t)fetchSubtasksMasksIncludingConcealedWithError:(id *)a3;
- (int64_t)fetchSubtasksMasksWithError:(id *)a3;
@end

@implementation REMReminderSubtaskContext

- (REMReminderSubtaskContext)initWithReminder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMReminderSubtaskContext;
  v6 = [(REMReminderSubtaskContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminder, a3);
  }

  return v7;
}

- (REMReminder)parentReminder
{
  v2 = [(REMReminderSubtaskContext *)self reminder];
  v3 = [v2 parentReminder];

  return v3;
}

- (BOOL)hasSubtasksWithError:(id *)a3
{
  v5 = [REMRemindersDataView alloc];
  v6 = [(REMReminderSubtaskContext *)self reminder];
  v7 = [v6 store];
  v8 = [(REMRemindersDataView *)v5 initWithStore:v7];

  v9 = [(REMReminderSubtaskContext *)self reminder];
  v10 = [v9 objectID];
  v11 = [(REMRemindersDataView *)v8 fetchObjectIDsOfRemindersWithParentReminderID:v10 includeIncomplete:1 includeCompleted:1 isUnsupported:0 error:a3];

  LOBYTE(v9) = [v11 count] != 0;
  return v9;
}

- (int64_t)fetchSubtasksMasksWithError:(id *)a3
{
  v5 = [REMRemindersDataView alloc];
  v6 = [(REMReminderSubtaskContext *)self reminder];
  v7 = [v6 store];
  v8 = [(REMRemindersDataView *)v5 initWithStore:v7];

  v9 = [(REMReminderSubtaskContext *)self reminder];
  v10 = [v9 objectID];
  v11 = [(REMRemindersDataView *)v8 fetchSubtasksMasksWithParentReminderID:v10 includingConcealed:0 error:a3];

  return v11;
}

- (int64_t)fetchSubtasksMasksIncludingConcealedWithError:(id *)a3
{
  v5 = [REMRemindersDataView alloc];
  v6 = [(REMReminderSubtaskContext *)self reminder];
  v7 = [v6 store];
  v8 = [(REMRemindersDataView *)v5 initWithStore:v7];

  v9 = [(REMReminderSubtaskContext *)self reminder];
  v10 = [v9 objectID];
  v11 = [(REMRemindersDataView *)v8 fetchSubtasksMasksWithParentReminderID:v10 includingConcealed:1 error:a3];

  return v11;
}

- (id)fetchRemindersWithError:(id *)a3
{
  v5 = +[REMReminderFetchOptions defaultFetchOptions];
  v6 = [(REMReminderSubtaskContext *)self fetchRemindersWithFetchOptions:v5 error:a3];

  return v6;
}

- (id)fetchRemindersWithFetchOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [REMRemindersDataView alloc];
  v8 = [(REMReminderSubtaskContext *)self reminder];
  v9 = [v8 store];
  v10 = [(REMRemindersDataView *)v7 initWithStore:v9];

  v11 = [(REMReminderSubtaskContext *)self reminder];
  v12 = [(REMRemindersDataView *)v10 fetchSubtasksOfParentReminder:v11 subtaskFetchOption:0 reminderFetchOptions:v6 error:a4];

  return v12;
}

- (id)fetchSubtasksMarkedForDeletionWithError:(id *)a3
{
  v5 = [REMRemindersDataView alloc];
  v6 = [(REMReminderSubtaskContext *)self reminder];
  v7 = [v6 store];
  v8 = [(REMRemindersDataView *)v5 initWithStore:v7];

  v9 = [(REMReminderSubtaskContext *)self reminder];
  v10 = +[REMReminderFetchOptions defaultFetchOptions];
  v11 = [(REMRemindersDataView *)v8 fetchSubtasksOfParentReminder:v9 subtaskFetchOption:2 reminderFetchOptions:v10 error:a3];

  return v11;
}

- (id)fetchRemindersForMovingWithError:(id *)a3
{
  v5 = +[REMReminderFetchOptions defaultFetchOptions];
  v6 = [(REMReminderSubtaskContext *)self fetchRemindersForMovingWithFetchOptions:v5 error:a3];

  return v6;
}

- (id)fetchRemindersForMovingWithFetchOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [REMRemindersDataView alloc];
  v8 = [(REMReminderSubtaskContext *)self reminder];
  v9 = [v8 store];
  v10 = [(REMRemindersDataView *)v7 initWithStore:v9];

  v11 = [(REMReminderSubtaskContext *)self reminder];
  v12 = [(REMRemindersDataView *)v10 fetchSubtasksOfParentReminder:v11 subtaskFetchOption:1 reminderFetchOptions:v6 error:a4];

  return v12;
}

- (id)fetchObjectIDsOfCompletedSubtasksWithError:(id *)a3
{
  v5 = [REMRemindersDataView alloc];
  v6 = [(REMReminderSubtaskContext *)self reminder];
  v7 = [v6 store];
  v8 = [(REMRemindersDataView *)v5 initWithStore:v7];

  v9 = [(REMReminderSubtaskContext *)self reminder];
  v10 = [v9 objectID];
  v11 = [(REMRemindersDataView *)v8 fetchObjectIDsOfRemindersWithParentReminderID:v10 includeIncomplete:0 includeCompleted:1 isUnsupported:0 error:a3];

  return v11;
}

- (id)fetchObjectIDsOfUnsupportedSubtasksWithError:(id *)a3
{
  v5 = [REMRemindersDataView alloc];
  v6 = [(REMReminderSubtaskContext *)self reminder];
  v7 = [v6 store];
  v8 = [(REMRemindersDataView *)v5 initWithStore:v7];

  v9 = [(REMReminderSubtaskContext *)self reminder];
  v10 = [v9 objectID];
  v11 = [(REMRemindersDataView *)v8 fetchObjectIDsOfRemindersWithParentReminderID:v10 includeIncomplete:1 includeCompleted:1 isUnsupported:1 error:a3];

  return v11;
}

@end