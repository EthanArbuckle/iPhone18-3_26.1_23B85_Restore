@interface REMListsDataViewInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMListsDataViewInvocationResult)initWithAccountStorages:(id)storages listStorages:(id)listStorages objectIDs:(id)ds;
- (REMListsDataViewInvocationResult)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListsDataViewInvocationResult

- (REMListsDataViewInvocationResult)initWithAccountStorages:(id)storages listStorages:(id)listStorages objectIDs:(id)ds
{
  storagesCopy = storages;
  listStoragesCopy = listStorages;
  dsCopy = ds;
  v15.receiver = self;
  v15.super_class = REMListsDataViewInvocationResult;
  v12 = [(REMStoreInvocationValueStorage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountStorages, storages);
    objc_storeStrong(&v13->_listStorages, listStorages);
    objc_storeStrong(&v13->_objectIDs, ds);
  }

  return v13;
}

- (REMListsDataViewInvocationResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"accountStorages"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"listStorages"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"objectIDs"];

  selfCopy = 0;
  if (v8 && v12 && v16)
  {
    self = [(REMListsDataViewInvocationResult *)self initWithAccountStorages:v8 listStorages:v12 objectIDs:v16];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountStorages = [(REMListsDataViewInvocationResult *)self accountStorages];
  [coderCopy encodeObject:accountStorages forKey:@"accountStorages"];

  listStorages = [(REMListsDataViewInvocationResult *)self listStorages];
  [coderCopy encodeObject:listStorages forKey:@"listStorages"];

  objectIDs = [(REMListsDataViewInvocationResult *)self objectIDs];
  [coderCopy encodeObject:objectIDs forKey:@"objectIDs"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  accountStorages = [(REMListsDataViewInvocationResult *)self accountStorages];
  accountStorages2 = [equalCopy accountStorages];
  v7 = accountStorages2;
  if (accountStorages == accountStorages2)
  {
  }

  else
  {
    accountStorages3 = [(REMListsDataViewInvocationResult *)self accountStorages];
    accountStorages4 = [equalCopy accountStorages];
    v10 = [accountStorages3 isEqual:accountStorages4];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  listStorages = [(REMListsDataViewInvocationResult *)self listStorages];
  listStorages2 = [equalCopy listStorages];
  v13 = listStorages2;
  if (listStorages == listStorages2)
  {
  }

  else
  {
    listStorages3 = [(REMListsDataViewInvocationResult *)self listStorages];
    listStorages4 = [equalCopy listStorages];
    v16 = [listStorages3 isEqual:listStorages4];

    if (!v16)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_14;
    }
  }

  objectIDs = [(REMListsDataViewInvocationResult *)self objectIDs];
  objectIDs2 = [equalCopy objectIDs];
  if (objectIDs == objectIDs2)
  {
    v17 = 1;
  }

  else
  {
    objectIDs3 = [(REMListsDataViewInvocationResult *)self objectIDs];
    objectIDs4 = [equalCopy objectIDs];
    v17 = [objectIDs3 isEqual:objectIDs4];
  }

LABEL_14:
  return v17 & 1;
}

- (unint64_t)hash
{
  accountStorages = [(REMListsDataViewInvocationResult *)self accountStorages];
  v4 = [accountStorages hash];
  listStorages = [(REMListsDataViewInvocationResult *)self listStorages];
  v6 = [listStorages hash] ^ v4;
  objectIDs = [(REMListsDataViewInvocationResult *)self objectIDs];
  v8 = [objectIDs hash];

  return v6 ^ v8;
}

@end