@interface REMRemindersDataViewInvocation_fetchByExternalIdentifier
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocation_fetchByExternalIdentifier)initWithCoder:(id)a3;
- (REMRemindersDataViewInvocation_fetchByExternalIdentifier)initWithExternalIdentifiers:(id)a3 listObjectID:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocation_fetchByExternalIdentifier

- (REMRemindersDataViewInvocation_fetchByExternalIdentifier)initWithExternalIdentifiers:(id)a3 listObjectID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMRemindersDataViewInvocation_fetchByExternalIdentifier;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_externalIdentifiers, a3);
    objc_storeStrong(&v10->_listObjectID, a4);
  }

  return v10;
}

- (REMRemindersDataViewInvocation_fetchByExternalIdentifier)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"externalIdentifiers"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"listObjectID"];

  if (v8)
  {
    self = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self initWithExternalIdentifiers:v8 listObjectID:v9];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self externalIdentifiers];
  [v4 encodeObject:v5 forKey:@"externalIdentifiers"];

  v6 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self listObjectID];
  [v4 encodeObject:v6 forKey:@"listObjectID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self externalIdentifiers];
  v6 = [v4 externalIdentifiers];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self externalIdentifiers];
    v9 = [v4 externalIdentifiers];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self listObjectID];
  v13 = [v4 listObjectID];
  if (v12 == v13)
  {
    v11 = 1;
  }

  else
  {
    v14 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self listObjectID];
    v15 = [v4 listObjectID];
    v11 = [v14 isEqual:v15];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self listObjectID];
  v4 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self externalIdentifiers];
  v5 = [v4 hash];
  if (v3)
  {
    v6 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self listObjectID];
    v5 ^= [v6 hash];
  }

  return v5;
}

@end