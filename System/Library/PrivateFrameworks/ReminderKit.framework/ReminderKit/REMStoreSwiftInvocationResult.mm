@interface REMStoreSwiftInvocationResult
- (REMStoreSwiftInvocationResult)initWithCoder:(id)coder;
- (REMStoreSwiftInvocationResult)initWithResultData:(id)data storages:(id)storages latestFetchResultToken:(id)token;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMStoreSwiftInvocationResult

- (REMStoreSwiftInvocationResult)initWithResultData:(id)data storages:(id)storages latestFetchResultToken:(id)token
{
  dataCopy = data;
  storagesCopy = storages;
  tokenCopy = token;
  v15.receiver = self;
  v15.super_class = REMStoreSwiftInvocationResult;
  v12 = [(REMStoreSwiftInvocationResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_resultData, data);
    objc_storeStrong(&v13->_resultStorages, storages);
    objc_storeStrong(&v13->_latestFetchResultToken, token);
  }

  return v13;
}

- (REMStoreSwiftInvocationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resultData"];
  v6 = +[REMXPCStorageClasses remStorageClasses];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"resultStorages"];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestFetchResultToken"];

  v9 = [(REMStoreSwiftInvocationResult *)self initWithResultData:v5 storages:v7 latestFetchResultToken:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  resultData = [(REMStoreSwiftInvocationResult *)self resultData];
  [coderCopy encodeObject:resultData forKey:@"resultData"];

  resultStorages = [(REMStoreSwiftInvocationResult *)self resultStorages];
  [coderCopy encodeObject:resultStorages forKey:@"resultStorages"];

  latestFetchResultToken = [(REMStoreSwiftInvocationResult *)self latestFetchResultToken];
  [coderCopy encodeObject:latestFetchResultToken forKey:@"latestFetchResultToken"];
}

@end