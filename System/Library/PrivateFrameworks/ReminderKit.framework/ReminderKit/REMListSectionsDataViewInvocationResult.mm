@interface REMListSectionsDataViewInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMListSectionsDataViewInvocationResult)initWithAccountStorages:(id)storages listStorages:(id)listStorages listSectionStorages:(id)sectionStorages;
- (REMListSectionsDataViewInvocationResult)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListSectionsDataViewInvocationResult

- (REMListSectionsDataViewInvocationResult)initWithAccountStorages:(id)storages listStorages:(id)listStorages listSectionStorages:(id)sectionStorages
{
  storagesCopy = storages;
  listStoragesCopy = listStorages;
  sectionStoragesCopy = sectionStorages;
  v15.receiver = self;
  v15.super_class = REMListSectionsDataViewInvocationResult;
  v12 = [(REMStoreInvocationValueStorage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountStorages, storages);
    objc_storeStrong(&v13->_listStorages, listStorages);
    objc_storeStrong(&v13->_listSectionStorages, sectionStorages);
  }

  return v13;
}

- (REMListSectionsDataViewInvocationResult)initWithCoder:(id)coder
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
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"listSectionStorages"];

  selfCopy = 0;
  if (v8 && v12 && v16)
  {
    self = [(REMListSectionsDataViewInvocationResult *)self initWithAccountStorages:v8 listStorages:v12 listSectionStorages:v16];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountStorages = [(REMListSectionsDataViewInvocationResult *)self accountStorages];
  [coderCopy encodeObject:accountStorages forKey:@"accountStorages"];

  listStorages = [(REMListSectionsDataViewInvocationResult *)self listStorages];
  [coderCopy encodeObject:listStorages forKey:@"listStorages"];

  listSectionStorages = [(REMListSectionsDataViewInvocationResult *)self listSectionStorages];
  [coderCopy encodeObject:listSectionStorages forKey:@"listSectionStorages"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  accountStorages = [(REMListSectionsDataViewInvocationResult *)self accountStorages];
  accountStorages2 = [equalCopy accountStorages];
  v7 = accountStorages2;
  if (accountStorages == accountStorages2)
  {
  }

  else
  {
    accountStorages3 = [(REMListSectionsDataViewInvocationResult *)self accountStorages];
    accountStorages4 = [equalCopy accountStorages];
    v10 = [accountStorages3 isEqual:accountStorages4];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  listStorages = [(REMListSectionsDataViewInvocationResult *)self listStorages];
  listStorages2 = [equalCopy listStorages];
  v13 = listStorages2;
  if (listStorages == listStorages2)
  {
  }

  else
  {
    listStorages3 = [(REMListSectionsDataViewInvocationResult *)self listStorages];
    listStorages4 = [equalCopy listStorages];
    v16 = [listStorages3 isEqual:listStorages4];

    if (!v16)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_14;
    }
  }

  listSectionStorages = [(REMListSectionsDataViewInvocationResult *)self listSectionStorages];
  listSectionStorages2 = [equalCopy listSectionStorages];
  if (listSectionStorages == listSectionStorages2)
  {
    v17 = 1;
  }

  else
  {
    listSectionStorages3 = [(REMListSectionsDataViewInvocationResult *)self listSectionStorages];
    listSectionStorages4 = [equalCopy listSectionStorages];
    v17 = [listSectionStorages3 isEqual:listSectionStorages4];
  }

LABEL_14:
  return v17 & 1;
}

- (unint64_t)hash
{
  accountStorages = [(REMListSectionsDataViewInvocationResult *)self accountStorages];
  v4 = [accountStorages hash];
  listStorages = [(REMListSectionsDataViewInvocationResult *)self listStorages];
  v6 = [listStorages hash] ^ v4;
  listSectionStorages = [(REMListSectionsDataViewInvocationResult *)self listSectionStorages];
  v8 = [listSectionStorages hash];

  return v6 ^ v8;
}

@end