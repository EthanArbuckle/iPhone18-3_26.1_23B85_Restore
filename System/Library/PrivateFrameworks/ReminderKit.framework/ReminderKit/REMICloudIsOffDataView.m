@interface REMICloudIsOffDataView
- (REMICloudIsOffDataView)initWithStore:(id)a3;
- (id)fetchHasAnyDirtyCloudObjectInAccount:(id)a3 error:(id *)a4;
- (id)fetchICloudIsOffCloudConfigurationPropertiesWithError:(id *)a3;
@end

@implementation REMICloudIsOffDataView

- (REMICloudIsOffDataView)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMICloudIsOffDataView;
  v6 = [(REMICloudIsOffDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)fetchICloudIsOffCloudConfigurationPropertiesWithError:(id *)a3
{
  v5 = objc_alloc_init(REMICloudIsOffDataViewInvocation_fetchICCloudConfigurationProperties);
  v6 = [(REMICloudIsOffDataView *)self store];
  v7 = [v6 resultFromPerformingInvocation:v5 error:a3];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  [v9 timeIntervalSinceLastPrompt];
  if (v10 == 0.0)
  {
    if (a3 && !*a3)
    {
      [REMError internalErrorWithDebugDescription:@"REMICloudIsOff: The ICCloudConfigurationProperty timeIntervalSinceLastPrompt is 0 and has not been set"];
      *a3 = v12 = 0;
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

- (id)fetchHasAnyDirtyCloudObjectInAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount alloc] initWithAccountObjectID:v6];

  v8 = [(REMICloudIsOffDataView *)self store];
  v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

  if (a4 && *a4)
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_opt_class();
    v12 = REMDynamicCast(v11, v9);
    v10 = [v12 hasAnyDirtyCloudObject];
  }

  return v10;
}

@end