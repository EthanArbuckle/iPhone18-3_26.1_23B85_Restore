@interface REMRemindersDataViewInvocationResult
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocationResult)initWithAccountStorages:(id)a3 listStorages:(id)a4 reminderStorages:(id)a5 objectIDs:(id)a6;
- (REMRemindersDataViewInvocationResult)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocationResult

- (REMRemindersDataViewInvocationResult)initWithAccountStorages:(id)a3 listStorages:(id)a4 reminderStorages:(id)a5 objectIDs:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = REMRemindersDataViewInvocationResult;
  v15 = [(REMStoreInvocationValueStorage *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountStorages, a3);
    objc_storeStrong(&v16->_listStorages, a4);
    objc_storeStrong(&v16->_reminderStorages, a5);
    objc_storeStrong(&v16->_objectIDs, a6);
  }

  return v16;
}

- (REMRemindersDataViewInvocationResult)initWithCoder:(id)a3
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
  v16 = [v5 decodeObjectOfClasses:v15 forKey:@"reminderStorages"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v5 decodeObjectOfClasses:v19 forKey:@"objectIDs"];

  v21 = 0;
  if (v8 && v12 && v16 && v20)
  {
    self = [(REMRemindersDataViewInvocationResult *)self initWithAccountStorages:v8 listStorages:v12 reminderStorages:v16 objectIDs:v20];
    v21 = self;
  }

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMRemindersDataViewInvocationResult *)self accountStorages];
  [v4 encodeObject:v5 forKey:@"accountStorages"];

  v6 = [(REMRemindersDataViewInvocationResult *)self listStorages];
  [v4 encodeObject:v6 forKey:@"listStorages"];

  v7 = [(REMRemindersDataViewInvocationResult *)self reminderStorages];
  [v4 encodeObject:v7 forKey:@"reminderStorages"];

  v8 = [(REMRemindersDataViewInvocationResult *)self objectIDs];
  [v4 encodeObject:v8 forKey:@"objectIDs"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = [(REMRemindersDataViewInvocationResult *)self accountStorages];
  v6 = [v4 accountStorages];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMRemindersDataViewInvocationResult *)self accountStorages];
    v9 = [v4 accountStorages];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  v11 = [(REMRemindersDataViewInvocationResult *)self listStorages];
  v12 = [v4 listStorages];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(REMRemindersDataViewInvocationResult *)self listStorages];
    v15 = [v4 listStorages];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v17 = [(REMRemindersDataViewInvocationResult *)self reminderStorages];
  v18 = [v4 reminderStorages];
  v19 = v18;
  if (v17 == v18)
  {
  }

  else
  {
    v20 = [(REMRemindersDataViewInvocationResult *)self reminderStorages];
    v21 = [v4 reminderStorages];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
LABEL_12:
      v23 = 0;
      goto LABEL_13;
    }
  }

  v25 = [(REMRemindersDataViewInvocationResult *)self objectIDs];
  v26 = [v4 objectIDs];
  if (v25 == v26)
  {
    v23 = 1;
  }

  else
  {
    v27 = [(REMRemindersDataViewInvocationResult *)self objectIDs];
    v28 = [v4 objectIDs];
    v23 = [v27 isEqual:v28];
  }

LABEL_13:
  return v23 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMRemindersDataViewInvocationResult *)self accountStorages];
  v4 = [v3 hash];
  v5 = [(REMRemindersDataViewInvocationResult *)self listStorages];
  v6 = [v5 hash] ^ v4;
  v7 = [(REMRemindersDataViewInvocationResult *)self reminderStorages];
  v8 = [v7 hash];
  v9 = [(REMRemindersDataViewInvocationResult *)self objectIDs];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

@end