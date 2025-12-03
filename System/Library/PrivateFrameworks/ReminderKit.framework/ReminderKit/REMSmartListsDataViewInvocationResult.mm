@interface REMSmartListsDataViewInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMSmartListsDataViewInvocationResult)initWithCoder:(id)coder;
- (REMSmartListsDataViewInvocationResult)initWithSmartListStorages:(id)storages accountStorages:(id)accountStorages parentListStorages:(id)listStorages;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMSmartListsDataViewInvocationResult

- (REMSmartListsDataViewInvocationResult)initWithSmartListStorages:(id)storages accountStorages:(id)accountStorages parentListStorages:(id)listStorages
{
  storagesCopy = storages;
  accountStoragesCopy = accountStorages;
  listStoragesCopy = listStorages;
  v15.receiver = self;
  v15.super_class = REMSmartListsDataViewInvocationResult;
  v12 = [(REMStoreInvocationValueStorage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_smartListStorages, storages);
    objc_storeStrong(&v13->_accountStorages, accountStorages);
    objc_storeStrong(&v13->_parentListStorages, listStorages);
  }

  return v13;
}

- (REMSmartListsDataViewInvocationResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"smartListStorages"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"accountStorages"];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"parentListStorages"];

  if (v8)
  {
    if (v13 && v18)
    {
      v19 = [(REMSmartListsDataViewInvocationResult *)self initWithSmartListStorages:v8 accountStorages:v13 parentListStorages:v18];
    }

    else
    {
      v19 = [(REMSmartListsDataViewInvocationResult *)self initWithSmartListStorages:v8];
    }

    self = v19;
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
  smartListStorages = [(REMSmartListsDataViewInvocationResult *)self smartListStorages];
  [coderCopy encodeObject:smartListStorages forKey:@"smartListStorages"];

  accountStorages = [(REMSmartListsDataViewInvocationResult *)self accountStorages];
  [coderCopy encodeObject:accountStorages forKey:@"accountStorages"];

  parentListStorages = [(REMSmartListsDataViewInvocationResult *)self parentListStorages];
  [coderCopy encodeObject:parentListStorages forKey:@"parentListStorages"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  smartListStorages = [(REMSmartListsDataViewInvocationResult *)self smartListStorages];
  smartListStorages2 = [equalCopy smartListStorages];
  v7 = smartListStorages2;
  if (smartListStorages == smartListStorages2)
  {
  }

  else
  {
    smartListStorages3 = [(REMSmartListsDataViewInvocationResult *)self smartListStorages];
    smartListStorages4 = [equalCopy smartListStorages];
    v10 = [smartListStorages3 isEqual:smartListStorages4];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  accountStorages = [(REMSmartListsDataViewInvocationResult *)self accountStorages];
  accountStorages2 = [equalCopy accountStorages];
  v13 = accountStorages2;
  if (accountStorages == accountStorages2)
  {
  }

  else
  {
    accountStorages3 = [(REMSmartListsDataViewInvocationResult *)self accountStorages];
    accountStorages4 = [equalCopy accountStorages];
    v16 = [accountStorages3 isEqual:accountStorages4];

    if (!v16)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_14;
    }
  }

  parentListStorages = [(REMSmartListsDataViewInvocationResult *)self parentListStorages];
  parentListStorages2 = [equalCopy parentListStorages];
  if (parentListStorages == parentListStorages2)
  {
    v17 = 1;
  }

  else
  {
    parentListStorages3 = [(REMSmartListsDataViewInvocationResult *)self parentListStorages];
    parentListStorages4 = [equalCopy parentListStorages];
    v17 = [parentListStorages3 isEqual:parentListStorages4];
  }

LABEL_14:
  return v17 & 1;
}

- (unint64_t)hash
{
  smartListStorages = [(REMSmartListsDataViewInvocationResult *)self smartListStorages];
  v4 = [smartListStorages hash];
  accountStorages = [(REMSmartListsDataViewInvocationResult *)self accountStorages];
  v6 = [accountStorages hash] ^ v4;
  parentListStorages = [(REMSmartListsDataViewInvocationResult *)self parentListStorages];
  v8 = [parentListStorages hash];

  return v6 ^ v8;
}

@end