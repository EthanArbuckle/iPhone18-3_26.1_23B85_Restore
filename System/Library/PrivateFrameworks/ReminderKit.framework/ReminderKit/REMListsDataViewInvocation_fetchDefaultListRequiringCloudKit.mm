@interface REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit
- (BOOL)isEqual:(id)equal;
- (REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit)initWithAccountObjectID:(id)d debugUseInMemoryPreferredDefaultListStorage:(BOOL)storage;
- (REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit

- (REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit)initWithAccountObjectID:(id)d debugUseInMemoryPreferredDefaultListStorage:(BOOL)storage
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit;
  v8 = [(REMStoreInvocationValueStorage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accountObjectID, d);
    v9->_debug_useInMemoryPreferredDefaultListStorage = storage;
  }

  return v9;
}

- (REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountObjectID"];
  v6 = [coderCopy decodeBoolForKey:@"debug_useInMemoryPreferredDefaultListStorage"];

  v7 = [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self initWithAccountObjectID:v5 debugUseInMemoryPreferredDefaultListStorage:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountObjectID = [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self accountObjectID];
  [coderCopy encodeObject:accountObjectID forKey:@"accountObjectID"];

  [coderCopy encodeBool:-[REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit debug_useInMemoryPreferredDefaultListStorage](self forKey:{"debug_useInMemoryPreferredDefaultListStorage"), @"debug_useInMemoryPreferredDefaultListStorage"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    accountObjectID = [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self accountObjectID];
    accountObjectID2 = [v5 accountObjectID];
    v8 = accountObjectID2;
    if (accountObjectID == accountObjectID2)
    {
    }

    else
    {
      accountObjectID3 = [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self accountObjectID];
      accountObjectID4 = [v5 accountObjectID];
      v11 = [accountObjectID3 isEqual:accountObjectID4];

      if (!v11)
      {
        LOBYTE(v12) = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    debug_useInMemoryPreferredDefaultListStorage = [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self debug_useInMemoryPreferredDefaultListStorage];
    v12 = debug_useInMemoryPreferredDefaultListStorage ^ [v5 debug_useInMemoryPreferredDefaultListStorage] ^ 1;
    goto LABEL_8;
  }

  LOBYTE(v12) = 0;
LABEL_9:

  return v12;
}

- (unint64_t)hash
{
  accountObjectID = [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self accountObjectID];
  v4 = [accountObjectID hash];
  v5 = v4 + [(REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit *)self debug_useInMemoryPreferredDefaultListStorage];

  return v5;
}

@end