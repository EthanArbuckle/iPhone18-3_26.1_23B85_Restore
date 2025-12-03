@interface REMTemplatesDataViewInvocation_fetchTemplatesInAccount
- (BOOL)isEqual:(id)equal;
- (REMTemplatesDataViewInvocation_fetchTemplatesInAccount)initWithCoder:(id)coder;
- (REMTemplatesDataViewInvocation_fetchTemplatesInAccount)initWithParentAccountObjectID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMTemplatesDataViewInvocation_fetchTemplatesInAccount

- (REMTemplatesDataViewInvocation_fetchTemplatesInAccount)initWithParentAccountObjectID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = REMTemplatesDataViewInvocation_fetchTemplatesInAccount;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountObjectID, d);
  }

  return v7;
}

- (REMTemplatesDataViewInvocation_fetchTemplatesInAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountObjectID"];

  if (v5)
  {
    self = [(REMTemplatesDataViewInvocation_fetchTemplatesInAccount *)self initWithParentAccountObjectID:v5];
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
  accountObjectID = [(REMTemplatesDataViewInvocation_fetchTemplatesInAccount *)self accountObjectID];
  [coderCopy encodeObject:accountObjectID forKey:@"accountObjectID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accountObjectID = [(REMTemplatesDataViewInvocation_fetchTemplatesInAccount *)self accountObjectID];
    accountObjectID2 = [equalCopy accountObjectID];
    if (accountObjectID == accountObjectID2)
    {
      v9 = 1;
    }

    else
    {
      accountObjectID3 = [(REMTemplatesDataViewInvocation_fetchTemplatesInAccount *)self accountObjectID];
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
  accountObjectID = [(REMTemplatesDataViewInvocation_fetchTemplatesInAccount *)self accountObjectID];
  v3 = [accountObjectID hash];

  return v3;
}

@end