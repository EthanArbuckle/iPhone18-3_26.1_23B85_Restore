@interface REMTipKitDataViewInvocation_fetchUncompletedRemindersCount
- (BOOL)isEqual:(id)equal;
- (REMTipKitDataViewInvocation_fetchUncompletedRemindersCount)init;
- (unint64_t)hash;
@end

@implementation REMTipKitDataViewInvocation_fetchUncompletedRemindersCount

- (REMTipKitDataViewInvocation_fetchUncompletedRemindersCount)init
{
  v3.receiver = self;
  v3.super_class = REMTipKitDataViewInvocation_fetchUncompletedRemindersCount;
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
  v3.super_class = REMTipKitDataViewInvocation_fetchUncompletedRemindersCount;
  return [(REMStoreInvocationValueStorage *)&v3 hash];
}

@end