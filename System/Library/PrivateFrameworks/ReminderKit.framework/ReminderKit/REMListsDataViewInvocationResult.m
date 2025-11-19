@interface REMListsDataViewInvocationResult
- (BOOL)isEqual:(id)a3;
- (REMListsDataViewInvocationResult)initWithAccountStorages:(id)a3 listStorages:(id)a4 objectIDs:(id)a5;
- (REMListsDataViewInvocationResult)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListsDataViewInvocationResult

- (REMListsDataViewInvocationResult)initWithAccountStorages:(id)a3 listStorages:(id)a4 objectIDs:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = REMListsDataViewInvocationResult;
  v12 = [(REMStoreInvocationValueStorage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountStorages, a3);
    objc_storeStrong(&v13->_listStorages, a4);
    objc_storeStrong(&v13->_objectIDs, a5);
  }

  return v13;
}

- (REMListsDataViewInvocationResult)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"accountStorages"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"listStorages"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v5 decodeObjectOfClasses:v15 forKey:@"objectIDs"];

  v17 = 0;
  if (v8 && v12 && v16)
  {
    self = [(REMListsDataViewInvocationResult *)self initWithAccountStorages:v8 listStorages:v12 objectIDs:v16];
    v17 = self;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMListsDataViewInvocationResult *)self accountStorages];
  [v4 encodeObject:v5 forKey:@"accountStorages"];

  v6 = [(REMListsDataViewInvocationResult *)self listStorages];
  [v4 encodeObject:v6 forKey:@"listStorages"];

  v7 = [(REMListsDataViewInvocationResult *)self objectIDs];
  [v4 encodeObject:v7 forKey:@"objectIDs"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = [(REMListsDataViewInvocationResult *)self accountStorages];
  v6 = [v4 accountStorages];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMListsDataViewInvocationResult *)self accountStorages];
    v9 = [v4 accountStorages];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v11 = [(REMListsDataViewInvocationResult *)self listStorages];
  v12 = [v4 listStorages];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(REMListsDataViewInvocationResult *)self listStorages];
    v15 = [v4 listStorages];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_14;
    }
  }

  v18 = [(REMListsDataViewInvocationResult *)self objectIDs];
  v19 = [v4 objectIDs];
  if (v18 == v19)
  {
    v17 = 1;
  }

  else
  {
    v20 = [(REMListsDataViewInvocationResult *)self objectIDs];
    v21 = [v4 objectIDs];
    v17 = [v20 isEqual:v21];
  }

LABEL_14:
  return v17 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMListsDataViewInvocationResult *)self accountStorages];
  v4 = [v3 hash];
  v5 = [(REMListsDataViewInvocationResult *)self listStorages];
  v6 = [v5 hash] ^ v4;
  v7 = [(REMListsDataViewInvocationResult *)self objectIDs];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end