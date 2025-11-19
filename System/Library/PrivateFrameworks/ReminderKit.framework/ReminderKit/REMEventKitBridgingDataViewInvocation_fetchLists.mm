@interface REMEventKitBridgingDataViewInvocation_fetchLists
- (BOOL)isEqual:(id)a3;
- (REMEventKitBridgingDataViewInvocation_fetchLists)init;
@end

@implementation REMEventKitBridgingDataViewInvocation_fetchLists

- (REMEventKitBridgingDataViewInvocation_fetchLists)init
{
  v3.receiver = self;
  v3.super_class = REMEventKitBridgingDataViewInvocation_fetchLists;
  return [(REMStoreInvocationValueStorage *)&v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v3 != 0) & isKindOfClass;
}

@end