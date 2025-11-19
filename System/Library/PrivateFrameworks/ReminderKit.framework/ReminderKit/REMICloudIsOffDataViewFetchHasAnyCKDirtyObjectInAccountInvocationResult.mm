@interface REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult
- (BOOL)isEqual:(id)a3;
- (REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult)initWithCoder:(id)a3;
- (REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult)initWithHasAnyDirtyCloudObject:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult

- (REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult)initWithHasAnyDirtyCloudObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hasAnyDirtyCloudObject, a3);
  }

  return v7;
}

- (REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"hasAnyDirtyCloudObject"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v6 = [(REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult *)self initWithHasAnyDirtyCloudObject:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult *)self hasAnyDirtyCloudObject];
  [v4 encodeBool:objc_msgSend(v5 forKey:{"BOOLValue"), @"hasAnyDirtyCloudObject"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult *)self hasAnyDirtyCloudObject];
    v6 = [v4 hasAnyDirtyCloudObject];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult *)self hasAnyDirtyCloudObject];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

@end