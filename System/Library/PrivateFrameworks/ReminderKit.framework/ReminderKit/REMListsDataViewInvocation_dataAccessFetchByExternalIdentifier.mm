@interface REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier
- (BOOL)isEqual:(id)equal;
- (REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier)initWithCoder:(id)coder;
- (REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier)initWithExternalIdentifiers:(id)identifiers accountObjectID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier

- (REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier)initWithExternalIdentifiers:(id)identifiers accountObjectID:(id)d
{
  identifiersCopy = identifiers;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_externalIdentifiers, identifiers);
    objc_storeStrong(&v10->_accountObjectID, d);
  }

  return v10;
}

- (REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"externalIdentifiers"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountObjectID"];

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self initWithExternalIdentifiers:v8 accountObjectID:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  externalIdentifiers = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self externalIdentifiers];
  [coderCopy encodeObject:externalIdentifiers forKey:@"externalIdentifiers"];

  accountObjectID = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self accountObjectID];
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

  externalIdentifiers = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self externalIdentifiers];
  externalIdentifiers2 = [equalCopy externalIdentifiers];
  v7 = externalIdentifiers2;
  if (externalIdentifiers == externalIdentifiers2)
  {
  }

  else
  {
    externalIdentifiers3 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self externalIdentifiers];
    externalIdentifiers4 = [equalCopy externalIdentifiers];
    v10 = [externalIdentifiers3 isEqual:externalIdentifiers4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  accountObjectID = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self accountObjectID];
  accountObjectID2 = [equalCopy accountObjectID];
  if (accountObjectID == accountObjectID2)
  {
    v11 = 1;
  }

  else
  {
    accountObjectID3 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self accountObjectID];
    accountObjectID4 = [equalCopy accountObjectID];
    v11 = [accountObjectID3 isEqual:accountObjectID4];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  externalIdentifiers = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self externalIdentifiers];
  v4 = [externalIdentifiers hash];
  accountObjectID = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self accountObjectID];
  v6 = [accountObjectID hash];

  return v6 ^ v4;
}

@end