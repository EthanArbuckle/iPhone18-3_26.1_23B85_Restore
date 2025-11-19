@interface REMTipKitDataViewInvocation_fetchListsCount
- (BOOL)isEqual:(id)a3;
- (REMTipKitDataViewInvocation_fetchListsCount)init;
- (unint64_t)hash;
@end

@implementation REMTipKitDataViewInvocation_fetchListsCount

- (REMTipKitDataViewInvocation_fetchListsCount)init
{
  v3.receiver = self;
  v3.super_class = REMTipKitDataViewInvocation_fetchListsCount;
  return [(REMStoreInvocationValueStorage *)&v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = REMTipKitDataViewInvocation_fetchListsCount;
  return [(REMStoreInvocationValueStorage *)&v3 hash];
}

@end