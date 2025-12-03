@interface REMTipKitDataViewInvocation_fetchCompletedRemindersCount
- (BOOL)isEqual:(id)equal;
- (REMTipKitDataViewInvocation_fetchCompletedRemindersCount)init;
- (unint64_t)hash;
@end

@implementation REMTipKitDataViewInvocation_fetchCompletedRemindersCount

- (REMTipKitDataViewInvocation_fetchCompletedRemindersCount)init
{
  v3.receiver = self;
  v3.super_class = REMTipKitDataViewInvocation_fetchCompletedRemindersCount;
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
  v3.super_class = REMTipKitDataViewInvocation_fetchCompletedRemindersCount;
  return [(REMStoreInvocationValueStorage *)&v3 hash];
}

@end