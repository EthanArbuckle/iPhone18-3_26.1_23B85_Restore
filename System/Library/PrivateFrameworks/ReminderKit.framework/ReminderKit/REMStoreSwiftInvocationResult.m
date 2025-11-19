@interface REMStoreSwiftInvocationResult
- (REMStoreSwiftInvocationResult)initWithCoder:(id)a3;
- (REMStoreSwiftInvocationResult)initWithResultData:(id)a3 storages:(id)a4 latestFetchResultToken:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMStoreSwiftInvocationResult

- (REMStoreSwiftInvocationResult)initWithResultData:(id)a3 storages:(id)a4 latestFetchResultToken:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = REMStoreSwiftInvocationResult;
  v12 = [(REMStoreSwiftInvocationResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_resultData, a3);
    objc_storeStrong(&v13->_resultStorages, a4);
    objc_storeStrong(&v13->_latestFetchResultToken, a5);
  }

  return v13;
}

- (REMStoreSwiftInvocationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resultData"];
  v6 = +[REMXPCStorageClasses remStorageClasses];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"resultStorages"];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestFetchResultToken"];

  v9 = [(REMStoreSwiftInvocationResult *)self initWithResultData:v5 storages:v7 latestFetchResultToken:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMStoreSwiftInvocationResult *)self resultData];
  [v4 encodeObject:v5 forKey:@"resultData"];

  v6 = [(REMStoreSwiftInvocationResult *)self resultStorages];
  [v4 encodeObject:v6 forKey:@"resultStorages"];

  v7 = [(REMStoreSwiftInvocationResult *)self latestFetchResultToken];
  [v4 encodeObject:v7 forKey:@"latestFetchResultToken"];
}

@end