@interface REMTipKitDataViewInvocation_fetchListsWithCustomBadgeCount
- (BOOL)isEqual:(id)equal;
- (REMTipKitDataViewInvocation_fetchListsWithCustomBadgeCount)init;
- (unint64_t)hash;
@end

@implementation REMTipKitDataViewInvocation_fetchListsWithCustomBadgeCount

- (REMTipKitDataViewInvocation_fetchListsWithCustomBadgeCount)init
{
  v3.receiver = self;
  v3.super_class = REMTipKitDataViewInvocation_fetchListsWithCustomBadgeCount;
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
  v3.super_class = REMTipKitDataViewInvocation_fetchListsWithCustomBadgeCount;
  return [(REMStoreInvocationValueStorage *)&v3 hash];
}

@end