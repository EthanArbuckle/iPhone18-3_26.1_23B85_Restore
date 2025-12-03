@interface REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult)initWithCoder:(id)coder;
- (REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult)initWithHasAnyDirtyCloudObject:(id)object;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult

- (REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult)initWithHasAnyDirtyCloudObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hasAnyDirtyCloudObject, object);
  }

  return v7;
}

- (REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"hasAnyDirtyCloudObject"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v6 = [(REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult *)self initWithHasAnyDirtyCloudObject:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hasAnyDirtyCloudObject = [(REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult *)self hasAnyDirtyCloudObject];
  [coderCopy encodeBool:objc_msgSend(hasAnyDirtyCloudObject forKey:{"BOOLValue"), @"hasAnyDirtyCloudObject"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hasAnyDirtyCloudObject = [(REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult *)self hasAnyDirtyCloudObject];
    hasAnyDirtyCloudObject2 = [equalCopy hasAnyDirtyCloudObject];
    v7 = hasAnyDirtyCloudObject == hasAnyDirtyCloudObject2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  hasAnyDirtyCloudObject = [(REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult *)self hasAnyDirtyCloudObject];
  unsignedIntegerValue = [hasAnyDirtyCloudObject unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end