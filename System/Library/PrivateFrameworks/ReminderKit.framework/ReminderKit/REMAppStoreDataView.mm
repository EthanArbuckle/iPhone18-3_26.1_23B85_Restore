@interface REMAppStoreDataView
- (REMAppStoreDataView)initWithStore:(id)store;
- (id)fetchAppStoreCloudConfigurationPropertiesWithError:(id *)error;
- (id)fetchCreatedOrCompletedRemindersCountFromDate:(id)date toDate:(id)toDate error:(id *)error;
@end

@implementation REMAppStoreDataView

- (REMAppStoreDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMAppStoreDataView;
  v6 = [(REMAppStoreDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchCreatedOrCompletedRemindersCountFromDate:(id)date toDate:(id)toDate error:(id *)error
{
  dateCopy = date;
  toDateCopy = toDate;
  v10 = toDateCopy;
  if (dateCopy && toDateCopy)
  {
    v11 = [[REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount alloc] initWithFromDate:dateCopy toDate:toDateCopy];
    store = [(REMAppStoreDataView *)self store];
    v13 = [store resultFromPerformingInvocation:v11 error:error];

    v14 = objc_opt_class();
    v15 = [v13 storedPropertyForKey:@"CreatedOrCompletedRemindersLastMonthCount"];
    v16 = REMDynamicCast(v14, v15);

    if (error && !v16 && !*error)
    {
      *error = [REMError internalErrorWithDebugDescription:@"Failed to fetch created/completed reminders count"];
    }
  }

  else if (error && !*error)
  {
    [REMError internalErrorWithDebugDescription:@"Non-nil fromDate and toDate required for fetchCreatedOrCompletedRemindersCountFromDate:toDate:error:"];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)fetchAppStoreCloudConfigurationPropertiesWithError:(id *)error
{
  v5 = objc_alloc_init(REMAppStoreDataViewInvocation_fetchICCloudConfigurationProperties);
  store = [(REMAppStoreDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  if ([v9 createdOrCompletedRemindersCountThreshold])
  {
    v10 = [_REMAppStoreReviewCloudConfigurationStorage alloc];
    createdOrCompletedRemindersCountThreshold = [v9 createdOrCompletedRemindersCountThreshold];
    numberOfForegroundsThreshold = [v9 numberOfForegroundsThreshold];
    [v9 timeIntervalOfInterest];
    v14 = v13;
    [v9 timeIntervalSinceInitialForeground];
    v16 = v15;
    [v9 timeIntervalSinceLastFetch];
    v18 = v17;
    [v9 timeIntervalSinceLastPrompt];
    v20 = [(_REMAppStoreReviewCloudConfigurationStorage *)v10 initWithCreatedOrCompletedRemindersCountThreshold:createdOrCompletedRemindersCountThreshold numberOfForegroundsThreshold:numberOfForegroundsThreshold timeIntervalOfInterest:v14 timeIntervalSinceInitialForeground:v16 timeIntervalSinceLastFetch:v18 timeIntervalSinceLastPrompt:v19];
  }

  else if (error && !*error)
  {
    [REMError internalErrorWithDebugDescription:@"Failed to fetch REMAppStoreReviewCloudConfiguration properties"];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end