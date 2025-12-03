@interface REMSmartList
- (BOOL)isEqual:(id)equal;
- (BOOL)isOriginOfExistingTemplate;
- (BOOL)isPinned;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)selector;
- (REMAccountCapabilities)accountCapabilities;
- (REMSmartList)initWithStore:(id)store account:(id)account parentList:(id)list storage:(id)storage;
- (REMSmartList)initWithStore:(id)store storage:(id)storage;
- (REMSmartListCustomContext)customContext;
- (REMSmartListSectionContext)sectionContext;
- (id)debugDescription;
- (id)description;
- (id)optionalObjectID;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)customContext;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation REMSmartList

- (REMSmartList)initWithStore:(id)store storage:(id)storage
{
  storeCopy = store;
  storageCopy = storage;
  v12.receiver = self;
  v12.super_class = REMSmartList;
  v9 = [(REMSmartList *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeStrong(&v10->_storage, storage);
    -[REMSmartListStorage setStoreGenerationIfNeeded:](v10->_storage, "setStoreGenerationIfNeeded:", [storeCopy storeGeneration]);
  }

  return v10;
}

- (REMSmartList)initWithStore:(id)store account:(id)account parentList:(id)list storage:(id)storage
{
  accountCopy = account;
  listCopy = list;
  v12 = [(REMSmartList *)self initWithStore:store storage:storage];
  account = v12->_account;
  v12->_account = accountCopy;
  v14 = accountCopy;

  parentList = v12->_parentList;
  v12->_parentList = listCopy;

  return v12;
}

- (id)optionalObjectID
{
  storage = [(REMSmartList *)self storage];
  optionalObjectID = [storage optionalObjectID];

  return optionalObjectID;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  store = [(REMSmartList *)self store];
  store2 = [equalCopy store];
  v7 = store2;
  if (store == store2)
  {
  }

  else
  {
    store3 = [(REMSmartList *)self store];
    store4 = [equalCopy store];
    v10 = [store3 isEqual:store4];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  account = [(REMSmartList *)self account];
  account2 = [equalCopy account];
  v13 = account2;
  if (account == account2)
  {
  }

  else
  {
    account3 = [(REMSmartList *)self account];
    account4 = [equalCopy account];
    v16 = [account3 isEqual:account4];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  parentList = [(REMSmartList *)self parentList];
  parentList2 = [equalCopy parentList];
  v19 = parentList2;
  if (parentList == parentList2)
  {
  }

  else
  {
    parentList3 = [(REMSmartList *)self parentList];
    parentList4 = [equalCopy parentList];
    v22 = [parentList3 isEqual:parentList4];

    if (!v22)
    {
LABEL_12:
      v23 = 0;
      goto LABEL_13;
    }
  }

  storage = [(REMSmartList *)self storage];
  storage2 = [equalCopy storage];
  if (storage == storage2)
  {
    v23 = 1;
  }

  else
  {
    storage3 = [(REMSmartList *)self storage];
    storage4 = [equalCopy storage];
    v23 = [storage3 isEqual:storage4];
  }

LABEL_13:
  return v23 & 1;
}

- (unint64_t)hash
{
  storage = [(REMSmartList *)self storage];
  v3 = [storage hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMSmartList *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, storage];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMSmartList *)self storage];
  v6 = [storage debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMSmartList *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = REMSmartList;
  if ([(REMSmartList *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(REMSmartList *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  storage = [(REMSmartList *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

- (REMAccountCapabilities)accountCapabilities
{
  storage = [(REMSmartList *)self storage];
  accountCapabilities = [storage accountCapabilities];

  return accountCapabilities;
}

- (BOOL)isPinned
{
  pinnedDate = [(REMSmartList *)self pinnedDate];
  v3 = pinnedDate != 0;

  return v3;
}

- (BOOL)isOriginOfExistingTemplate
{
  mostRecentTargetTemplateIdentifier = [(REMSmartList *)self mostRecentTargetTemplateIdentifier];
  v3 = mostRecentTargetTemplateIdentifier != 0;

  return v3;
}

- (BOOL)isUnsupported
{
  storage = [(REMSmartList *)self storage];
  isUnsupported = [storage isUnsupported];

  return isUnsupported;
}

- (REMSmartListCustomContext)customContext
{
  smartListType = [(REMSmartList *)self smartListType];
  v4 = [smartListType isEqualToString:@"com.apple.reminders.smartlist.custom"];

  if (v4)
  {
    account = [(REMSmartList *)self account];

    if (!account)
    {
      [REMSmartList customContext];
    }

    v6 = [REMSmartListCustomContext alloc];
    account2 = [(REMSmartList *)self account];
    parentList = [(REMSmartList *)self parentList];
    v9 = [(REMSmartListCustomContext *)v6 initWithSmartList:self account:account2 parentList:parentList];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (REMSmartListSectionContext)sectionContext
{
  account = [(REMSmartList *)self account];
  capabilities = [account capabilities];
  supportsSections = [capabilities supportsSections];

  if (supportsSections)
  {
    v6 = [[REMSmartListSectionContext alloc] initWithSmartList:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)customContext
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore read];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v2 = 136315138;
    v3 = "self.account";
    _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!self.account) -- invalid nil value for '%s'", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

@end