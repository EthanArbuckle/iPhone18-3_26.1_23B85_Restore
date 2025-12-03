@interface REMTipKitDataViewInvocation_fetchCustomSmartListsCount
- (BOOL)isEqual:(id)equal;
- (REMTipKitDataViewInvocation_fetchCustomSmartListsCount)init;
- (unint64_t)hash;
@end

@implementation REMTipKitDataViewInvocation_fetchCustomSmartListsCount

- (REMTipKitDataViewInvocation_fetchCustomSmartListsCount)init
{
  v3.receiver = self;
  v3.super_class = REMTipKitDataViewInvocation_fetchCustomSmartListsCount;
  return [(REMStoreInvocationValueStorage *)&v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = REMTipKitDataViewInvocation_fetchCustomSmartListsCount;
  return [(REMStoreInvocationValueStorage *)&v3 hash];
}

@end