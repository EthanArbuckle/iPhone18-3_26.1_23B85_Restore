@interface REMTemplatesDataViewInvocation_fetchByObjectIDs
- (BOOL)isEqual:(id)equal;
- (REMTemplatesDataViewInvocation_fetchByObjectIDs)initWithCoder:(id)coder;
- (REMTemplatesDataViewInvocation_fetchByObjectIDs)initWithObjectIDs:(id)ds;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMTemplatesDataViewInvocation_fetchByObjectIDs

- (REMTemplatesDataViewInvocation_fetchByObjectIDs)initWithObjectIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = REMTemplatesDataViewInvocation_fetchByObjectIDs;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectIDs, ds);
  }

  return v7;
}

- (REMTemplatesDataViewInvocation_fetchByObjectIDs)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"objectIDs"];

  if (v8)
  {
    self = [(REMTemplatesDataViewInvocation_fetchByObjectIDs *)self initWithObjectIDs:v8];
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
  objectIDs = [(REMTemplatesDataViewInvocation_fetchByObjectIDs *)self objectIDs];
  [coderCopy encodeObject:objectIDs forKey:@"objectIDs"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectIDs = [(REMTemplatesDataViewInvocation_fetchByObjectIDs *)self objectIDs];
    objectIDs2 = [equalCopy objectIDs];
    if (objectIDs == objectIDs2)
    {
      v9 = 1;
    }

    else
    {
      objectIDs3 = [(REMTemplatesDataViewInvocation_fetchByObjectIDs *)self objectIDs];
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
  objectIDs = [(REMTemplatesDataViewInvocation_fetchByObjectIDs *)self objectIDs];
  v3 = [objectIDs hash];

  return v3;
}

@end