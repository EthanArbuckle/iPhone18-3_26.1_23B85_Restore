@interface REMListsDataViewInvocation_debugFetchPhantomLists
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation REMListsDataViewInvocation_debugFetchPhantomLists

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
  v3.super_class = REMListsDataViewInvocation_debugFetchPhantomLists;
  return [(REMStoreInvocationValueStorage *)&v3 hash];
}

@end