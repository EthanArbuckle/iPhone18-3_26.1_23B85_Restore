@interface REMReminderSubtaskContext
- (BOOL)hasSubtasksWithError:(id *)error;
- (REMReminder)parentReminder;
- (REMReminderSubtaskContext)initWithReminder:(id)reminder;
- (id)fetchObjectIDsOfCompletedSubtasksWithError:(id *)error;
- (id)fetchObjectIDsOfUnsupportedSubtasksWithError:(id *)error;
- (id)fetchRemindersForMovingWithError:(id *)error;
- (id)fetchRemindersForMovingWithFetchOptions:(id)options error:(id *)error;
- (id)fetchRemindersWithError:(id *)error;
- (id)fetchRemindersWithFetchOptions:(id)options error:(id *)error;
- (id)fetchSubtasksMarkedForDeletionWithError:(id *)error;
- (int64_t)fetchSubtasksMasksIncludingConcealedWithError:(id *)error;
- (int64_t)fetchSubtasksMasksWithError:(id *)error;
@end

@implementation REMReminderSubtaskContext

- (REMReminderSubtaskContext)initWithReminder:(id)reminder
{
  reminderCopy = reminder;
  v9.receiver = self;
  v9.super_class = REMReminderSubtaskContext;
  v6 = [(REMReminderSubtaskContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminder, reminder);
  }

  return v7;
}

- (REMReminder)parentReminder
{
  reminder = [(REMReminderSubtaskContext *)self reminder];
  parentReminder = [reminder parentReminder];

  return parentReminder;
}

- (BOOL)hasSubtasksWithError:(id *)error
{
  v5 = [REMRemindersDataView alloc];
  reminder = [(REMReminderSubtaskContext *)self reminder];
  store = [reminder store];
  v8 = [(REMRemindersDataView *)v5 initWithStore:store];

  reminder2 = [(REMReminderSubtaskContext *)self reminder];
  objectID = [reminder2 objectID];
  v11 = [(REMRemindersDataView *)v8 fetchObjectIDsOfRemindersWithParentReminderID:objectID includeIncomplete:1 includeCompleted:1 isUnsupported:0 error:error];

  LOBYTE(reminder2) = [v11 count] != 0;
  return reminder2;
}

- (int64_t)fetchSubtasksMasksWithError:(id *)error
{
  v5 = [REMRemindersDataView alloc];
  reminder = [(REMReminderSubtaskContext *)self reminder];
  store = [reminder store];
  v8 = [(REMRemindersDataView *)v5 initWithStore:store];

  reminder2 = [(REMReminderSubtaskContext *)self reminder];
  objectID = [reminder2 objectID];
  v11 = [(REMRemindersDataView *)v8 fetchSubtasksMasksWithParentReminderID:objectID includingConcealed:0 error:error];

  return v11;
}

- (int64_t)fetchSubtasksMasksIncludingConcealedWithError:(id *)error
{
  v5 = [REMRemindersDataView alloc];
  reminder = [(REMReminderSubtaskContext *)self reminder];
  store = [reminder store];
  v8 = [(REMRemindersDataView *)v5 initWithStore:store];

  reminder2 = [(REMReminderSubtaskContext *)self reminder];
  objectID = [reminder2 objectID];
  v11 = [(REMRemindersDataView *)v8 fetchSubtasksMasksWithParentReminderID:objectID includingConcealed:1 error:error];

  return v11;
}

- (id)fetchRemindersWithError:(id *)error
{
  v5 = +[REMReminderFetchOptions defaultFetchOptions];
  v6 = [(REMReminderSubtaskContext *)self fetchRemindersWithFetchOptions:v5 error:error];

  return v6;
}

- (id)fetchRemindersWithFetchOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [REMRemindersDataView alloc];
  reminder = [(REMReminderSubtaskContext *)self reminder];
  store = [reminder store];
  v10 = [(REMRemindersDataView *)v7 initWithStore:store];

  reminder2 = [(REMReminderSubtaskContext *)self reminder];
  v12 = [(REMRemindersDataView *)v10 fetchSubtasksOfParentReminder:reminder2 subtaskFetchOption:0 reminderFetchOptions:optionsCopy error:error];

  return v12;
}

- (id)fetchSubtasksMarkedForDeletionWithError:(id *)error
{
  v5 = [REMRemindersDataView alloc];
  reminder = [(REMReminderSubtaskContext *)self reminder];
  store = [reminder store];
  v8 = [(REMRemindersDataView *)v5 initWithStore:store];

  reminder2 = [(REMReminderSubtaskContext *)self reminder];
  v10 = +[REMReminderFetchOptions defaultFetchOptions];
  v11 = [(REMRemindersDataView *)v8 fetchSubtasksOfParentReminder:reminder2 subtaskFetchOption:2 reminderFetchOptions:v10 error:error];

  return v11;
}

- (id)fetchRemindersForMovingWithError:(id *)error
{
  v5 = +[REMReminderFetchOptions defaultFetchOptions];
  v6 = [(REMReminderSubtaskContext *)self fetchRemindersForMovingWithFetchOptions:v5 error:error];

  return v6;
}

- (id)fetchRemindersForMovingWithFetchOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [REMRemindersDataView alloc];
  reminder = [(REMReminderSubtaskContext *)self reminder];
  store = [reminder store];
  v10 = [(REMRemindersDataView *)v7 initWithStore:store];

  reminder2 = [(REMReminderSubtaskContext *)self reminder];
  v12 = [(REMRemindersDataView *)v10 fetchSubtasksOfParentReminder:reminder2 subtaskFetchOption:1 reminderFetchOptions:optionsCopy error:error];

  return v12;
}

- (id)fetchObjectIDsOfCompletedSubtasksWithError:(id *)error
{
  v5 = [REMRemindersDataView alloc];
  reminder = [(REMReminderSubtaskContext *)self reminder];
  store = [reminder store];
  v8 = [(REMRemindersDataView *)v5 initWithStore:store];

  reminder2 = [(REMReminderSubtaskContext *)self reminder];
  objectID = [reminder2 objectID];
  v11 = [(REMRemindersDataView *)v8 fetchObjectIDsOfRemindersWithParentReminderID:objectID includeIncomplete:0 includeCompleted:1 isUnsupported:0 error:error];

  return v11;
}

- (id)fetchObjectIDsOfUnsupportedSubtasksWithError:(id *)error
{
  v5 = [REMRemindersDataView alloc];
  reminder = [(REMReminderSubtaskContext *)self reminder];
  store = [reminder store];
  v8 = [(REMRemindersDataView *)v5 initWithStore:store];

  reminder2 = [(REMReminderSubtaskContext *)self reminder];
  objectID = [reminder2 objectID];
  v11 = [(REMRemindersDataView *)v8 fetchObjectIDsOfRemindersWithParentReminderID:objectID includeIncomplete:1 includeCompleted:1 isUnsupported:1 error:error];

  return v11;
}

@end