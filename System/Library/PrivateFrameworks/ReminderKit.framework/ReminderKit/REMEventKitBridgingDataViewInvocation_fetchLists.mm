@interface REMEventKitBridgingDataViewInvocation_fetchLists
- (BOOL)isEqual:(id)equal;
- (REMEventKitBridgingDataViewInvocation_fetchLists)init;
@end

@implementation REMEventKitBridgingDataViewInvocation_fetchLists

- (REMEventKitBridgingDataViewInvocation_fetchLists)init
{
  v3.receiver = self;
  v3.super_class = REMEventKitBridgingDataViewInvocation_fetchLists;
  return [(REMStoreInvocationValueStorage *)&v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (equalCopy != 0) & isKindOfClass;
}

@end