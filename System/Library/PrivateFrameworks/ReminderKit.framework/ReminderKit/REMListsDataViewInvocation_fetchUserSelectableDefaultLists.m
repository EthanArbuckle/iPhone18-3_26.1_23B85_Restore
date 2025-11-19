@interface REMListsDataViewInvocation_fetchUserSelectableDefaultLists
- (BOOL)isEqual:(id)a3;
- (REMListsDataViewInvocation_fetchUserSelectableDefaultLists)initWithCoder:(id)a3;
- (REMListsDataViewInvocation_fetchUserSelectableDefaultLists)initWithDebugUseInMemoryPreferredDefaultListStorage:(BOOL)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListsDataViewInvocation_fetchUserSelectableDefaultLists

- (REMListsDataViewInvocation_fetchUserSelectableDefaultLists)initWithDebugUseInMemoryPreferredDefaultListStorage:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = REMListsDataViewInvocation_fetchUserSelectableDefaultLists;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_debug_useInMemoryPreferredDefaultListStorage = a3;
  }

  return result;
}

- (REMListsDataViewInvocation_fetchUserSelectableDefaultLists)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"debug_useInMemoryPreferredDefaultListStorage"];

  return [(REMListsDataViewInvocation_fetchUserSelectableDefaultLists *)self initWithDebugUseInMemoryPreferredDefaultListStorage:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[REMListsDataViewInvocation_fetchUserSelectableDefaultLists debug_useInMemoryPreferredDefaultListStorage](self forKey:{"debug_useInMemoryPreferredDefaultListStorage"), @"debug_useInMemoryPreferredDefaultListStorage"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(REMListsDataViewInvocation_fetchUserSelectableDefaultLists *)self debug_useInMemoryPreferredDefaultListStorage];
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
  v5.super_class = REMListsDataViewInvocation_fetchUserSelectableDefaultLists;
  v3 = [(REMStoreInvocationValueStorage *)&v5 hash];
  return v3 + [(REMListsDataViewInvocation_fetchUserSelectableDefaultLists *)self debug_useInMemoryPreferredDefaultListStorage];
}

@end