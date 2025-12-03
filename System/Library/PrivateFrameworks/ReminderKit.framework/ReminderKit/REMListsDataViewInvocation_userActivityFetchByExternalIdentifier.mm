@interface REMListsDataViewInvocation_userActivityFetchByExternalIdentifier
- (BOOL)isEqual:(id)equal;
- (REMListsDataViewInvocation_userActivityFetchByExternalIdentifier)initWithCoder:(id)coder;
- (REMListsDataViewInvocation_userActivityFetchByExternalIdentifier)initWithExternalIdentifier:(id)identifier accountObjectID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListsDataViewInvocation_userActivityFetchByExternalIdentifier

- (REMListsDataViewInvocation_userActivityFetchByExternalIdentifier)initWithExternalIdentifier:(id)identifier accountObjectID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = REMListsDataViewInvocation_userActivityFetchByExternalIdentifier;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_externalIdentifier, identifier);
    objc_storeStrong(&v10->_accountObjectID, d);
  }

  return v10;
}

- (REMListsDataViewInvocation_userActivityFetchByExternalIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountObjectID"];

  if (v5)
  {
    self = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self initWithExternalIdentifier:v5 accountObjectID:v6];
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
  externalIdentifier = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self externalIdentifier];
  [coderCopy encodeObject:externalIdentifier forKey:@"externalIdentifier"];

  accountObjectID = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self accountObjectID];
  [coderCopy encodeObject:accountObjectID forKey:@"accountObjectID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  externalIdentifier = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self externalIdentifier];
  externalIdentifier2 = [equalCopy externalIdentifier];
  v7 = externalIdentifier2;
  if (externalIdentifier == externalIdentifier2)
  {
  }

  else
  {
    externalIdentifier3 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self externalIdentifier];
    externalIdentifier4 = [equalCopy externalIdentifier];
    v10 = [externalIdentifier3 isEqual:externalIdentifier4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  accountObjectID = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self accountObjectID];
  accountObjectID2 = [equalCopy accountObjectID];
  if (accountObjectID == accountObjectID2)
  {
    v11 = 1;
  }

  else
  {
    accountObjectID3 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self accountObjectID];
    accountObjectID4 = [equalCopy accountObjectID];
    v11 = [accountObjectID3 isEqual:accountObjectID4];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  accountObjectID = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self accountObjectID];
  externalIdentifier = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self externalIdentifier];
  v5 = [externalIdentifier hash];
  if (accountObjectID)
  {
    accountObjectID2 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)self accountObjectID];
    v5 ^= [accountObjectID2 hash];
  }

  return v5;
}

@end