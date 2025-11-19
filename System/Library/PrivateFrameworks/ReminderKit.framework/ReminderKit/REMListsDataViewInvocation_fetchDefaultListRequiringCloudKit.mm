@interface REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit
- (BOOL)isEqual:(id)a3;
- (REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit)initWithAccountObjectID:(id)a3 debugUseInMemoryPreferredDefaultListStorage:(BOOL)a4;
- (REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit

- (REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit)initWithAccountObjectID:(id)a3 debugUseInMemoryPreferredDefaultListStorage:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit;
  v8 = [(REMStoreInvocationValueStorage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accountObjectID, a3);
    v9->_debug_useInMemoryPreferredDefaultListStorage = a4;
  }

  return v9;
}

- (REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountObjectID"];
  v6 = [v4 decodeBoolForKey:@"debug_useInMemoryPreferredDefaultListStorage"];

  v7 = [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self initWithAccountObjectID:v5 debugUseInMemoryPreferredDefaultListStorage:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self accountObjectID];
  [v5 encodeObject:v4 forKey:@"accountObjectID"];

  [v5 encodeBool:-[REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit debug_useInMemoryPreferredDefaultListStorage](self forKey:{"debug_useInMemoryPreferredDefaultListStorage"), @"debug_useInMemoryPreferredDefaultListStorage"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self accountObjectID];
    v7 = [v5 accountObjectID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self accountObjectID];
      v10 = [v5 accountObjectID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        LOBYTE(v12) = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    v13 = [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self debug_useInMemoryPreferredDefaultListStorage];
    v12 = v13 ^ [v5 debug_useInMemoryPreferredDefaultListStorage] ^ 1;
    goto LABEL_8;
  }

  LOBYTE(v12) = 0;
LABEL_9:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self accountObjectID];
  v4 = [v3 hash];
  v5 = v4 + [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self debug_useInMemoryPreferredDefaultListStorage];

  return v5;
}

@end