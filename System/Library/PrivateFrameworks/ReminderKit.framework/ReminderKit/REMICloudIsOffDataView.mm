@interface REMICloudIsOffDataView
- (REMICloudIsOffDataView)initWithStore:(id)store;
- (id)fetchHasAnyDirtyCloudObjectInAccount:(id)account error:(id *)error;
- (id)fetchICloudIsOffCloudConfigurationPropertiesWithError:(id *)error;
@end

@implementation REMICloudIsOffDataView

- (REMICloudIsOffDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMICloudIsOffDataView;
  v6 = [(REMICloudIsOffDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchICloudIsOffCloudConfigurationPropertiesWithError:(id *)error
{
  v5 = objc_alloc_init(REMICloudIsOffDataViewInvocation_fetchICCloudConfigurationProperties);
  store = [(REMICloudIsOffDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  [v9 timeIntervalSinceLastPrompt];
  if (v10 == 0.0)
  {
    if (error && !*error)
    {
      [REMError internalErrorWithDebugDescription:@"REMICloudIsOff: The ICCloudConfigurationProperty timeIntervalSinceLastPrompt is 0 and has not been set"];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v11 = [_REMICloudIsOffCloudConfigurationStorage alloc];
    [v9 timeIntervalSinceLastPrompt];
    v12 = [(_REMICloudIsOffCloudConfigurationStorage *)v11 initWithTimeIntervalSinceLastPrompt:?];
  }

  return v12;
}

- (id)fetchHasAnyDirtyCloudObjectInAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v7 = [[REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount alloc] initWithAccountObjectID:accountCopy];

  store = [(REMICloudIsOffDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  if (error && *error)
  {
    hasAnyDirtyCloudObject = 0;
  }

  else
  {
    v11 = objc_opt_class();
    v12 = REMDynamicCast(v11, v9);
    hasAnyDirtyCloudObject = [v12 hasAnyDirtyCloudObject];
  }

  return hasAnyDirtyCloudObject;
}

@end