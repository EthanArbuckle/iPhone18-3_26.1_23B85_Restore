@interface REMAppStoreDataView
- (REMAppStoreDataView)initWithStore:(id)a3;
- (id)fetchAppStoreCloudConfigurationPropertiesWithError:(id *)a3;
- (id)fetchCreatedOrCompletedRemindersCountFromDate:(id)a3 toDate:(id)a4 error:(id *)a5;
@end

@implementation REMAppStoreDataView

- (REMAppStoreDataView)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMAppStoreDataView;
  v6 = [(REMAppStoreDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)fetchCreatedOrCompletedRemindersCountFromDate:(id)a3 toDate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [[REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount alloc] initWithFromDate:v8 toDate:v9];
    v12 = [(REMAppStoreDataView *)self store];
    v13 = [v12 resultFromPerformingInvocation:v11 error:a5];

    v14 = objc_opt_class();
    v15 = [v13 storedPropertyForKey:@"CreatedOrCompletedRemindersLastMonthCount"];
    v16 = REMDynamicCast(v14, v15);

    if (a5 && !v16 && !*a5)
    {
      *a5 = [REMError internalErrorWithDebugDescription:@"Failed to fetch created/completed reminders count"];
    }
  }

  else if (a5 && !*a5)
  {
    [REMError internalErrorWithDebugDescription:@"Non-nil fromDate and toDate required for fetchCreatedOrCompletedRemindersCountFromDate:toDate:error:"];
    *a5 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)fetchAppStoreCloudConfigurationPropertiesWithError:(id *)a3
{
  v5 = objc_alloc_init(REMAppStoreDataViewInvocation_fetchICCloudConfigurationProperties);
  v6 = [(REMAppStoreDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  if ([v9 createdOrCompletedRemindersCountThreshold])
  {
    v10 = [_REMAppStoreReviewCloudConfigurationStorage alloc];
    v11 = [v9 createdOrCompletedRemindersCountThreshold];
    v12 = [v9 numberOfForegroundsThreshold];
    [v9 timeIntervalOfInterest];
    v14 = v13;
    [v9 timeIntervalSinceInitialForeground];
    v16 = v15;
    [v9 timeIntervalSinceLastFetch];
    v18 = v17;
    [v9 timeIntervalSinceLastPrompt];
    v20 = [(_REMAppStoreReviewCloudConfigurationStorage *)v10 initWithCreatedOrCompletedRemindersCountThreshold:v11 numberOfForegroundsThreshold:v12 timeIntervalOfInterest:v14 timeIntervalSinceInitialForeground:v16 timeIntervalSinceLastFetch:v18 timeIntervalSinceLastPrompt:v19];
  }

  else if (a3 && !*a3)
  {
    [REMError internalErrorWithDebugDescription:@"Failed to fetch REMAppStoreReviewCloudConfiguration properties"];
    *a3 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end