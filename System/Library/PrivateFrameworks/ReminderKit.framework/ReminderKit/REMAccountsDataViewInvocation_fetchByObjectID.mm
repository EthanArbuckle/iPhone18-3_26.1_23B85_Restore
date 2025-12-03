@interface REMAccountsDataViewInvocation_fetchByObjectID
- (BOOL)isEqual:(id)equal;
- (REMAccountsDataViewInvocation_fetchByObjectID)initWithCoder:(id)coder;
- (REMAccountsDataViewInvocation_fetchByObjectID)initWithObjectIDs:(id)ds;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAccountsDataViewInvocation_fetchByObjectID

- (REMAccountsDataViewInvocation_fetchByObjectID)initWithObjectIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = REMAccountsDataViewInvocation_fetchByObjectID;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectIDs, ds);
  }

  return v7;
}

- (REMAccountsDataViewInvocation_fetchByObjectID)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"objectIDs"];

  if (v8)
  {
    self = [(REMAccountsDataViewInvocation_fetchByObjectID *)self initWithObjectIDs:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectIDs = [(REMAccountsDataViewInvocation_fetchByObjectID *)self objectIDs];
  [coderCopy encodeObject:objectIDs forKey:@"objectIDs"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectIDs = [(REMAccountsDataViewInvocation_fetchByObjectID *)self objectIDs];
    objectIDs2 = [equalCopy objectIDs];
    if (objectIDs == objectIDs2)
    {
      v9 = 1;
    }

    else
    {
      objectIDs3 = [(REMAccountsDataViewInvocation_fetchByObjectID *)self objectIDs];
      objectIDs4 = [equalCopy objectIDs];
      v9 = [objectIDs3 isEqual:objectIDs4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  objectIDs = [(REMAccountsDataViewInvocation_fetchByObjectID *)self objectIDs];
  v3 = [objectIDs hash];

  return v3;
}

@end