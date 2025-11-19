@interface REMListsDataViewInvocation_fetchDefaultList
- (BOOL)isEqual:(id)a3;
- (REMListsDataViewInvocation_fetchDefaultList)initWithCoder:(id)a3;
- (REMListsDataViewInvocation_fetchDefaultList)initWithDebugUseInMemoryPreferredDefaultListStorage:(BOOL)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListsDataViewInvocation_fetchDefaultList

- (REMListsDataViewInvocation_fetchDefaultList)initWithDebugUseInMemoryPreferredDefaultListStorage:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = REMListsDataViewInvocation_fetchDefaultList;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_debug_useInMemoryPreferredDefaultListStorage = a3;
  }

  return result;
}

- (REMListsDataViewInvocation_fetchDefaultList)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"debug_useInMemoryPreferredDefaultListStorage"];

  return [(REMListsDataViewInvocation_fetchDefaultList *)self initWithDebugUseInMemoryPreferredDefaultListStorage:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[REMListsDataViewInvocation_fetchDefaultList debug_useInMemoryPreferredDefaultListStorage](self forKey:{"debug_useInMemoryPreferredDefaultListStorage"), @"debug_useInMemoryPreferredDefaultListStorage"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(REMListsDataViewInvocation_fetchDefaultList *)self debug_useInMemoryPreferredDefaultListStorage];
    v7 = [v5 debug_useInMemoryPreferredDefaultListStorage];

    v8 = v6 ^ v7 ^ 1;
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