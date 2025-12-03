@interface REMRemindersDataViewInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocationResult)initWithAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages objectIDs:(id)ds;
- (REMRemindersDataViewInvocationResult)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocationResult

- (REMRemindersDataViewInvocationResult)initWithAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages objectIDs:(id)ds
{
  storagesCopy = storages;
  listStoragesCopy = listStorages;
  reminderStoragesCopy = reminderStorages;
  dsCopy = ds;
  v18.receiver = self;
  v18.super_class = REMRemindersDataViewInvocationResult;
  v15 = [(REMStoreInvocationValueStorage *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountStorages, storages);
    objc_storeStrong(&v16->_listStorages, listStorages);
    objc_storeStrong(&v16->_reminderStorages, reminderStorages);
    objc_storeStrong(&v16->_objectIDs, ds);
  }

  return v16;
}

- (REMRemindersDataViewInvocationResult)initWithCoder:(id)coder
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
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"reminderStorages"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"objectIDs"];

  selfCopy = 0;
  if (v8 && v12 && v16 && v20)
  {
    self = [(REMRemindersDataViewInvocationResult *)self initWithAccountStorages:v8 listStorages:v12 reminderStorages:v16 objectIDs:v20];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountStorages = [(REMRemindersDataViewInvocationResult *)self accountStorages];
  [coderCopy encodeObject:accountStorages forKey:@"accountStorages"];

  listStorages = [(REMRemindersDataViewInvocationResult *)self listStorages];
  [coderCopy encodeObject:listStorages forKey:@"listStorages"];

  reminderStorages = [(REMRemindersDataViewInvocationResult *)self reminderStorages];
  [coderCopy encodeObject:reminderStorages forKey:@"reminderStorages"];

  objectIDs = [(REMRemindersDataViewInvocationResult *)self objectIDs];
  [coderCopy encodeObject:objectIDs forKey:@"objectIDs"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  accountStorages = [(REMRemindersDataViewInvocationResult *)self accountStorages];
  accountStorages2 = [equalCopy accountStorages];
  v7 = accountStorages2;
  if (accountStorages == accountStorages2)
  {
  }

  else
  {
    accountStorages3 = [(REMRemindersDataViewInvocationResult *)self accountStorages];
    accountStorages4 = [equalCopy accountStorages];
    v10 = [accountStorages3 isEqual:accountStorages4];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  listStorages = [(REMRemindersDataViewInvocationResult *)self listStorages];
  listStorages2 = [equalCopy listStorages];
  v13 = listStorages2;
  if (listStorages == listStorages2)
  {
  }

  else
  {
    listStorages3 = [(REMRemindersDataViewInvocationResult *)self listStorages];
    listStorages4 = [equalCopy listStorages];
    v16 = [listStorages3 isEqual:listStorages4];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  reminderStorages = [(REMRemindersDataViewInvocationResult *)self reminderStorages];
  reminderStorages2 = [equalCopy reminderStorages];
  v19 = reminderStorages2;
  if (reminderStorages == reminderStorages2)
  {
  }

  else
  {
    reminderStorages3 = [(REMRemindersDataViewInvocationResult *)self reminderStorages];
    reminderStorages4 = [equalCopy reminderStorages];
    v22 = [reminderStorages3 isEqual:reminderStorages4];

    if (!v22)
    {
LABEL_12:
      v23 = 0;
      goto LABEL_13;
    }
  }

  objectIDs = [(REMRemindersDataViewInvocationResult *)self objectIDs];
  objectIDs2 = [equalCopy objectIDs];
  if (objectIDs == objectIDs2)
  {
    v23 = 1;
  }

  else
  {
    objectIDs3 = [(REMRemindersDataViewInvocationResult *)self objectIDs];
    objectIDs4 = [equalCopy objectIDs];
    v23 = [objectIDs3 isEqual:objectIDs4];
  }

LABEL_13:
  return v23 & 1;
}

- (unint64_t)hash
{
  accountStorages = [(REMRemindersDataViewInvocationResult *)self accountStorages];
  v4 = [accountStorages hash];
  listStorages = [(REMRemindersDataViewInvocationResult *)self listStorages];
  v6 = [listStorages hash] ^ v4;
  reminderStorages = [(REMRemindersDataViewInvocationResult *)self reminderStorages];
  v8 = [reminderStorages hash];
  objectIDs = [(REMRemindersDataViewInvocationResult *)self objectIDs];
  v10 = v8 ^ [objectIDs hash];

  return v6 ^ v10;
}

@end