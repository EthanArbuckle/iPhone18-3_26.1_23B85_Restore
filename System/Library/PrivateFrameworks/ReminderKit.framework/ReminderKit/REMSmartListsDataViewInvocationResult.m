@interface REMSmartListsDataViewInvocationResult
- (BOOL)isEqual:(id)a3;
- (REMSmartListsDataViewInvocationResult)initWithCoder:(id)a3;
- (REMSmartListsDataViewInvocationResult)initWithSmartListStorages:(id)a3 accountStorages:(id)a4 parentListStorages:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMSmartListsDataViewInvocationResult

- (REMSmartListsDataViewInvocationResult)initWithSmartListStorages:(id)a3 accountStorages:(id)a4 parentListStorages:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = REMSmartListsDataViewInvocationResult;
  v12 = [(REMStoreInvocationValueStorage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_smartListStorages, a3);
    objc_storeStrong(&v13->_accountStorages, a4);
    objc_storeStrong(&v13->_parentListStorages, a5);
  }

  return v13;
}

- (REMSmartListsDataViewInvocationResult)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"smartListStorages"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [v5 decodeObjectOfClasses:v12 forKey:@"accountStorages"];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
  v18 = [v5 decodeObjectOfClasses:v17 forKey:@"parentListStorages"];

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
    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMSmartListsDataViewInvocationResult *)self smartListStorages];
  [v4 encodeObject:v5 forKey:@"smartListStorages"];

  v6 = [(REMSmartListsDataViewInvocationResult *)self accountStorages];
  [v4 encodeObject:v6 forKey:@"accountStorages"];

  v7 = [(REMSmartListsDataViewInvocationResult *)self parentListStorages];
  [v4 encodeObject:v7 forKey:@"parentListStorages"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = [(REMSmartListsDataViewInvocationResult *)self smartListStorages];
  v6 = [v4 smartListStorages];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMSmartListsDataViewInvocationResult *)self smartListStorages];
    v9 = [v4 smartListStorages];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v11 = [(REMSmartListsDataViewInvocationResult *)self accountStorages];
  v12 = [v4 accountStorages];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(REMSmartListsDataViewInvocationResult *)self accountStorages];
    v15 = [v4 accountStorages];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_14;
    }
  }

  v18 = [(REMSmartListsDataViewInvocationResult *)self parentListStorages];
  v19 = [v4 parentListStorages];
  if (v18 == v19)
  {
    v17 = 1;
  }

  else
  {
    v20 = [(REMSmartListsDataViewInvocationResult *)self parentListStorages];
    v21 = [v4 parentListStorages];
    v17 = [v20 isEqual:v21];
  }

LABEL_14:
  return v17 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMSmartListsDataViewInvocationResult *)self smartListStorages];
  v4 = [v3 hash];
  v5 = [(REMSmartListsDataViewInvocationResult *)self accountStorages];
  v6 = [v5 hash] ^ v4;
  v7 = [(REMSmartListsDataViewInvocationResult *)self parentListStorages];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end