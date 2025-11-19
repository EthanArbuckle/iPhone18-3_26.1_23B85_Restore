@interface REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier
- (BOOL)isEqual:(id)a3;
- (REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier)initWithCoder:(id)a3;
- (REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier)initWithExternalIdentifiers:(id)a3 accountObjectID:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier

- (REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier)initWithExternalIdentifiers:(id)a3 accountObjectID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_externalIdentifiers, a3);
    objc_storeStrong(&v10->_accountObjectID, a4);
  }

  return v10;
}

- (REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"externalIdentifiers"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"accountObjectID"];

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
    v11 = 0;
  }

  else
  {
    self = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self initWithExternalIdentifiers:v8 accountObjectID:v9];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self externalIdentifiers];
  [v4 encodeObject:v5 forKey:@"externalIdentifiers"];

  v6 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self accountObjectID];
  [v4 encodeObject:v6 forKey:@"accountObjectID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self externalIdentifiers];
  v6 = [v4 externalIdentifiers];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self externalIdentifiers];
    v9 = [v4 externalIdentifiers];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self accountObjectID];
  v13 = [v4 accountObjectID];
  if (v12 == v13)
  {
    v11 = 1;
  }

  else
  {
    v14 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self accountObjectID];
    v15 = [v4 accountObjectID];
    v11 = [v14 isEqual:v15];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self externalIdentifiers];
  v4 = [v3 hash];
  v5 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)self accountObjectID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end