@interface REMSmartListSectionsDataViewInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMSmartListSectionsDataViewInvocationResult)initWithAccountStorages:(id)storages smartListStorages:(id)listStorages groupStorages:(id)groupStorages smartListSectionStorages:(id)sectionStorages;
- (REMSmartListSectionsDataViewInvocationResult)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMSmartListSectionsDataViewInvocationResult

- (REMSmartListSectionsDataViewInvocationResult)initWithAccountStorages:(id)storages smartListStorages:(id)listStorages groupStorages:(id)groupStorages smartListSectionStorages:(id)sectionStorages
{
  storagesCopy = storages;
  listStoragesCopy = listStorages;
  groupStoragesCopy = groupStorages;
  sectionStoragesCopy = sectionStorages;
  v18.receiver = self;
  v18.super_class = REMSmartListSectionsDataViewInvocationResult;
  v15 = [(REMStoreInvocationValueStorage *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountStorages, storages);
    objc_storeStrong(&v16->_smartListStorages, listStorages);
    objc_storeStrong(&v16->_groupStorages, groupStorages);
    objc_storeStrong(&v16->_smartListSectionStorages, sectionStorages);
  }

  return v16;
}

- (REMSmartListSectionsDataViewInvocationResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"accountStorages"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"smartListStorages"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"groupStorages"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"smartListSectionStorages"];

  selfCopy = 0;
  if (v12 && v20)
  {
    self = [(REMSmartListSectionsDataViewInvocationResult *)self initWithAccountStorages:v8 smartListStorages:v12 groupStorages:v16 smartListSectionStorages:v20];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountStorages = [(REMSmartListSectionsDataViewInvocationResult *)self accountStorages];
  [coderCopy encodeObject:accountStorages forKey:@"accountStorages"];

  smartListStorages = [(REMSmartListSectionsDataViewInvocationResult *)self smartListStorages];
  [coderCopy encodeObject:smartListStorages forKey:@"smartListStorages"];

  groupStorages = [(REMSmartListSectionsDataViewInvocationResult *)self groupStorages];
  [coderCopy encodeObject:groupStorages forKey:@"groupStorages"];

  smartListSectionStorages = [(REMSmartListSectionsDataViewInvocationResult *)self smartListSectionStorages];
  [coderCopy encodeObject:smartListSectionStorages forKey:@"smartListSectionStorages"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  accountStorages = [(REMSmartListSectionsDataViewInvocationResult *)self accountStorages];
  accountStorages2 = [equalCopy accountStorages];
  v7 = accountStorages2;
  if (accountStorages == accountStorages2)
  {
  }

  else
  {
    accountStorages3 = [(REMSmartListSectionsDataViewInvocationResult *)self accountStorages];
    accountStorages4 = [equalCopy accountStorages];
    v10 = [accountStorages3 isEqual:accountStorages4];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  smartListStorages = [(REMSmartListSectionsDataViewInvocationResult *)self smartListStorages];
  smartListStorages2 = [equalCopy smartListStorages];
  v13 = smartListStorages2;
  if (smartListStorages == smartListStorages2)
  {
  }

  else
  {
    smartListStorages3 = [(REMSmartListSectionsDataViewInvocationResult *)self smartListStorages];
    smartListStorages4 = [equalCopy smartListStorages];
    v16 = [smartListStorages3 isEqual:smartListStorages4];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  groupStorages = [(REMSmartListSectionsDataViewInvocationResult *)self groupStorages];
  groupStorages2 = [equalCopy groupStorages];
  v19 = groupStorages2;
  if (groupStorages == groupStorages2)
  {
  }

  else
  {
    groupStorages3 = [(REMSmartListSectionsDataViewInvocationResult *)self groupStorages];
    groupStorages4 = [equalCopy groupStorages];
    v22 = [groupStorages3 isEqual:groupStorages4];

    if (!v22)
    {
LABEL_12:
      v23 = 0;
      goto LABEL_13;
    }
  }

  smartListSectionStorages = [(REMSmartListSectionsDataViewInvocationResult *)self smartListSectionStorages];
  smartListSectionStorages2 = [equalCopy smartListSectionStorages];
  if (smartListSectionStorages == smartListSectionStorages2)
  {
    v23 = 1;
  }

  else
  {
    smartListSectionStorages3 = [(REMSmartListSectionsDataViewInvocationResult *)self smartListSectionStorages];
    smartListSectionStorages4 = [equalCopy smartListSectionStorages];
    v23 = [smartListSectionStorages3 isEqual:smartListSectionStorages4];
  }

LABEL_13:
  return v23 & 1;
}

- (unint64_t)hash
{
  accountStorages = [(REMSmartListSectionsDataViewInvocationResult *)self accountStorages];
  v4 = [accountStorages hash];
  smartListStorages = [(REMSmartListSectionsDataViewInvocationResult *)self smartListStorages];
  v6 = [smartListStorages hash] ^ v4;
  groupStorages = [(REMSmartListSectionsDataViewInvocationResult *)self groupStorages];
  v8 = [groupStorages hash];
  smartListSectionStorages = [(REMSmartListSectionsDataViewInvocationResult *)self smartListSectionStorages];
  v10 = v8 ^ [smartListSectionStorages hash];

  return v6 ^ v10;
}

@end