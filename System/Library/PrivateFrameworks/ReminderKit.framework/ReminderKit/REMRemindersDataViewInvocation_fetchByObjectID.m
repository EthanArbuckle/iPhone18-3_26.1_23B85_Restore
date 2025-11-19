@interface REMRemindersDataViewInvocation_fetchByObjectID
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocation_fetchByObjectID)initWithCoder:(id)a3;
- (REMRemindersDataViewInvocation_fetchByObjectID)initWithObjectIDs:(id)a3 fetchOptions:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocation_fetchByObjectID

- (REMRemindersDataViewInvocation_fetchByObjectID)initWithObjectIDs:(id)a3 fetchOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMRemindersDataViewInvocation_fetchByObjectID;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectIDs, a3);
    objc_storeStrong(&v10->_fetchOptions, a4);
  }

  return v10;
}

- (REMRemindersDataViewInvocation_fetchByObjectID)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"objectIDs"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"fetchOptions"];

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    self = [(REMRemindersDataViewInvocation_fetchByObjectID *)self initWithObjectIDs:v8 fetchOptions:v9];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMRemindersDataViewInvocation_fetchByObjectID *)self objectIDs];
  [v4 encodeObject:v5 forKey:@"objectIDs"];

  v6 = [(REMRemindersDataViewInvocation_fetchByObjectID *)self fetchOptions];
  [v4 encodeObject:v6 forKey:@"fetchOptions"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMRemindersDataViewInvocation_fetchByObjectID *)self objectIDs];
  v6 = [v4 objectIDs];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMRemindersDataViewInvocation_fetchByObjectID *)self objectIDs];
    v9 = [v4 objectIDs];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = [(REMRemindersDataViewInvocation_fetchByObjectID *)self fetchOptions];
  v13 = [v4 fetchOptions];
  if (v12 == v13)
  {
    v11 = 1;
  }

  else
  {
    v14 = [(REMRemindersDataViewInvocation_fetchByObjectID *)self fetchOptions];
    v15 = [v4 fetchOptions];
    v11 = [v14 isEqual:v15];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMRemindersDataViewInvocation_fetchByObjectID *)self objectIDs];
  v4 = [v3 hash];
  v5 = [(REMRemindersDataViewInvocation_fetchByObjectID *)self fetchOptions];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end