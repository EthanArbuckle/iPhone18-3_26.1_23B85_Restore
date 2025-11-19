@interface REMSmartList
- (BOOL)isEqual:(id)a3;
- (BOOL)isOriginOfExistingTemplate;
- (BOOL)isPinned;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)a3;
- (REMAccountCapabilities)accountCapabilities;
- (REMSmartList)initWithStore:(id)a3 account:(id)a4 parentList:(id)a5 storage:(id)a6;
- (REMSmartList)initWithStore:(id)a3 storage:(id)a4;
- (REMSmartListCustomContext)customContext;
- (REMSmartListSectionContext)sectionContext;
- (id)debugDescription;
- (id)description;
- (id)optionalObjectID;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)customContext;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation REMSmartList

- (REMSmartList)initWithStore:(id)a3 storage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMSmartList;
  v9 = [(REMSmartList *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, a3);
    objc_storeStrong(&v10->_storage, a4);
    -[REMSmartListStorage setStoreGenerationIfNeeded:](v10->_storage, "setStoreGenerationIfNeeded:", [v7 storeGeneration]);
  }

  return v10;
}

- (REMSmartList)initWithStore:(id)a3 account:(id)a4 parentList:(id)a5 storage:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [(REMSmartList *)self initWithStore:a3 storage:a6];
  account = v12->_account;
  v12->_account = v10;
  v14 = v10;

  parentList = v12->_parentList;
  v12->_parentList = v11;

  return v12;
}

- (id)optionalObjectID
{
  v2 = [(REMSmartList *)self storage];
  v3 = [v2 optionalObjectID];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = [(REMSmartList *)self store];
  v6 = [v4 store];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMSmartList *)self store];
    v9 = [v4 store];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  v11 = [(REMSmartList *)self account];
  v12 = [v4 account];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(REMSmartList *)self account];
    v15 = [v4 account];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v17 = [(REMSmartList *)self parentList];
  v18 = [v4 parentList];
  v19 = v18;
  if (v17 == v18)
  {
  }

  else
  {
    v20 = [(REMSmartList *)self parentList];
    v21 = [v4 parentList];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
LABEL_12:
      v23 = 0;
      goto LABEL_13;
    }
  }

  v25 = [(REMSmartList *)self storage];
  v26 = [v4 storage];
  if (v25 == v26)
  {
    v23 = 1;
  }

  else
  {
    v27 = [(REMSmartList *)self storage];
    v28 = [v4 storage];
    v23 = [v27 isEqual:v28];
  }

LABEL_13:
  return v23 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMSmartList *)self storage];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMSmartList *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMSmartList *)self storage];
  v6 = [v5 debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMSmartList *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = REMSmartList;
  if ([(REMSmartList *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(REMSmartList *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMSmartList *)self storage];
  [v8 setValue:v7 forKey:v6];
}

- (REMAccountCapabilities)accountCapabilities
{
  v2 = [(REMSmartList *)self storage];
  v3 = [v2 accountCapabilities];

  return v3;
}

- (BOOL)isPinned
{
  v2 = [(REMSmartList *)self pinnedDate];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isOriginOfExistingTemplate
{
  v2 = [(REMSmartList *)self mostRecentTargetTemplateIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isUnsupported
{
  v2 = [(REMSmartList *)self storage];
  v3 = [v2 isUnsupported];

  return v3;
}

- (REMSmartListCustomContext)customContext
{
  v3 = [(REMSmartList *)self smartListType];
  v4 = [v3 isEqualToString:@"com.apple.reminders.smartlist.custom"];

  if (v4)
  {
    v5 = [(REMSmartList *)self account];

    if (!v5)
    {
      [REMSmartList customContext];
    }

    v6 = [REMSmartListCustomContext alloc];
    v7 = [(REMSmartList *)self account];
    v8 = [(REMSmartList *)self parentList];
    v9 = [(REMSmartListCustomContext *)v6 initWithSmartList:self account:v7 parentList:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (REMSmartListSectionContext)sectionContext
{
  v3 = [(REMSmartList *)self account];
  v4 = [v3 capabilities];
  v5 = [v4 supportsSections];

  if (v5)
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