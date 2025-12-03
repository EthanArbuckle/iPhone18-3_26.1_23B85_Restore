@interface REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount
- (BOOL)isEqual:(id)equal;
- (REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount)initWithAccountObjectID:(id)d;
- (REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount

- (REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount)initWithAccountObjectID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountObjectID, d);
  }

  return v7;
}

- (REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountObjectID"];

  if (v5)
  {
    self = [(REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount *)self initWithAccountObjectID:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountObjectID = [(REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount *)self accountObjectID];
  [coderCopy encodeObject:accountObjectID forKey:@"accountObjectID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accountObjectID = [(REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount *)self accountObjectID];
    accountObjectID2 = [equalCopy accountObjectID];
    if (accountObjectID == accountObjectID2)
    {
      v9 = 1;
    }

    else
    {
      accountObjectID3 = [(REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount *)self accountObjectID];
      accountObjectID4 = [equalCopy accountObjectID];
      v9 = [accountObjectID3 isEqual:accountObjectID4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  accountObjectID = [(REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount *)self accountObjectID];
  v3 = [accountObjectID hash];

  return v3;
}

@end