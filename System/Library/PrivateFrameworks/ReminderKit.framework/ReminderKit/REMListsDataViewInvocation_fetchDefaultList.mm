@interface REMListsDataViewInvocation_fetchDefaultList
- (BOOL)isEqual:(id)equal;
- (REMListsDataViewInvocation_fetchDefaultList)initWithCoder:(id)coder;
- (REMListsDataViewInvocation_fetchDefaultList)initWithDebugUseInMemoryPreferredDefaultListStorage:(BOOL)storage;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListsDataViewInvocation_fetchDefaultList

- (REMListsDataViewInvocation_fetchDefaultList)initWithDebugUseInMemoryPreferredDefaultListStorage:(BOOL)storage
{
  v5.receiver = self;
  v5.super_class = REMListsDataViewInvocation_fetchDefaultList;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_debug_useInMemoryPreferredDefaultListStorage = storage;
  }

  return result;
}

- (REMListsDataViewInvocation_fetchDefaultList)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"debug_useInMemoryPreferredDefaultListStorage"];

  return [(REMListsDataViewInvocation_fetchDefaultList *)self initWithDebugUseInMemoryPreferredDefaultListStorage:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[REMListsDataViewInvocation_fetchDefaultList debug_useInMemoryPreferredDefaultListStorage](self forKey:{"debug_useInMemoryPreferredDefaultListStorage"), @"debug_useInMemoryPreferredDefaultListStorage"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    debug_useInMemoryPreferredDefaultListStorage = [(REMListsDataViewInvocation_fetchDefaultList *)self debug_useInMemoryPreferredDefaultListStorage];
    debug_useInMemoryPreferredDefaultListStorage2 = [v5 debug_useInMemoryPreferredDefaultListStorage];

    v8 = debug_useInMemoryPreferredDefaultListStorage ^ debug_useInMemoryPreferredDefaultListStorage2 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = REMListsDataViewInvocation_fetchDefaultList;
  v3 = [(REMStoreInvocationValueStorage *)&v5 hash];
  return v3 + [(REMListsDataViewInvocation_fetchDefaultList *)self debug_useInMemoryPreferredDefaultListStorage];
}

@end