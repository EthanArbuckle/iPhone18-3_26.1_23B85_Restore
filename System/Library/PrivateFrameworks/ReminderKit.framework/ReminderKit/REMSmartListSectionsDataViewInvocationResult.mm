@interface REMSmartListSectionsDataViewInvocationResult
- (BOOL)isEqual:(id)a3;
- (REMSmartListSectionsDataViewInvocationResult)initWithAccountStorages:(id)a3 smartListStorages:(id)a4 groupStorages:(id)a5 smartListSectionStorages:(id)a6;
- (REMSmartListSectionsDataViewInvocationResult)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMSmartListSectionsDataViewInvocationResult

- (REMSmartListSectionsDataViewInvocationResult)initWithAccountStorages:(id)a3 smartListStorages:(id)a4 groupStorages:(id)a5 smartListSectionStorages:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = REMSmartListSectionsDataViewInvocationResult;
  v15 = [(REMStoreInvocationValueStorage *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountStorages, a3);
    objc_storeStrong(&v16->_smartListStorages, a4);
    objc_storeStrong(&v16->_groupStorages, a5);
    objc_storeStrong(&v16->_smartListSectionStorages, a6);
  }

  return v16;
}

- (REMSmartListSectionsDataViewInvocationResult)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"accountStorages"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"smartListStorages"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v5 decodeObjectOfClasses:v15 forKey:@"groupStorages"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v5 decodeObjectOfClasses:v19 forKey:@"smartListSectionStorages"];

  v21 = 0;
  if (v12 && v20)
  {
    self = [(REMSmartListSectionsDataViewInvocationResult *)self initWithAccountStorages:v8 smartListStorages:v12 groupStorages:v16 smartListSectionStorages:v20];
    v21 = self;
  }

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMSmartListSectionsDataViewInvocationResult *)self accountStorages];
  [v4 encodeObject:v5 forKey:@"accountStorages"];

  v6 = [(REMSmartListSectionsDataViewInvocationResult *)self smartListStorages];
  [v4 encodeObject:v6 forKey:@"smartListStorages"];

  v7 = [(REMSmartListSectionsDataViewInvocationResult *)self groupStorages];
  [v4 encodeObject:v7 forKey:@"groupStorages"];

  v8 = [(REMSmartListSectionsDataViewInvocationResult *)self smartListSectionStorages];
  [v4 encodeObject:v8 forKey:@"smartListSectionStorages"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = [(REMSmartListSectionsDataViewInvocationResult *)self accountStorages];
  v6 = [v4 accountStorages];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMSmartListSectionsDataViewInvocationResult *)self accountStorages];
    v9 = [v4 accountStorages];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  v11 = [(REMSmartListSectionsDataViewInvocationResult *)self smartListStorages];
  v12 = [v4 smartListStorages];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(REMSmartListSectionsDataViewInvocationResult *)self smartListStorages];
    v15 = [v4 smartListStorages];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v17 = [(REMSmartListSectionsDataViewInvocationResult *)self groupStorages];
  v18 = [v4 groupStorages];
  v19 = v18;
  if (v17 == v18)
  {
  }

  else
  {
    v20 = [(REMSmartListSectionsDataViewInvocationResult *)self groupStorages];
    v21 = [v4 groupStorages];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
LABEL_12:
      v23 = 0;
      goto LABEL_13;
    }
  }

  v25 = [(REMSmartListSectionsDataViewInvocationResult *)self smartListSectionStorages];
  v26 = [v4 smartListSectionStorages];
  if (v25 == v26)
  {
    v23 = 1;
  }

  else
  {
    v27 = [(REMSmartListSectionsDataViewInvocationResult *)self smartListSectionStorages];
    v28 = [v4 smartListSectionStorages];
    v23 = [v27 isEqual:v28];
  }

LABEL_13:
  return v23 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMSmartListSectionsDataViewInvocationResult *)self accountStorages];
  v4 = [v3 hash];
  v5 = [(REMSmartListSectionsDataViewInvocationResult *)self smartListStorages];
  v6 = [v5 hash] ^ v4;
  v7 = [(REMSmartListSectionsDataViewInvocationResult *)self groupStorages];
  v8 = [v7 hash];
  v9 = [(REMSmartListSectionsDataViewInvocationResult *)self smartListSectionStorages];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

@end