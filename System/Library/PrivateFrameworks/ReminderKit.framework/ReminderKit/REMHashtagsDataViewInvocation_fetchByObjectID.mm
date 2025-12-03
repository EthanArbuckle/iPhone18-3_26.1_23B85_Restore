@interface REMHashtagsDataViewInvocation_fetchByObjectID
- (BOOL)isEqual:(id)equal;
- (REMHashtagsDataViewInvocation_fetchByObjectID)initWithCoder:(id)coder;
- (REMHashtagsDataViewInvocation_fetchByObjectID)initWithObjectIDs:(id)ds;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMHashtagsDataViewInvocation_fetchByObjectID

- (REMHashtagsDataViewInvocation_fetchByObjectID)initWithObjectIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = REMHashtagsDataViewInvocation_fetchByObjectID;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectIDs, ds);
    v7->_allowConcealedObjects = 0;
  }

  return v7;
}

- (REMHashtagsDataViewInvocation_fetchByObjectID)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"objectIDs"];

  v9 = [coderCopy decodeBoolForKey:@"allowConcealedObjects"];
  if (v8)
  {
    v10 = [(REMHashtagsDataViewInvocation_fetchByObjectID *)self initWithObjectIDs:v8];
    [(REMHashtagsDataViewInvocation_fetchByObjectID *)v10 setAllowConcealedObjects:v9];
    self = v10;
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
  objectIDs = [(REMHashtagsDataViewInvocation_fetchByObjectID *)self objectIDs];
  [coderCopy encodeObject:objectIDs forKey:@"objectIDs"];

  [coderCopy encodeBool:-[REMHashtagsDataViewInvocation_fetchByObjectID allowConcealedObjects](self forKey:{"allowConcealedObjects"), @"allowConcealedObjects"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  objectIDs = [(REMHashtagsDataViewInvocation_fetchByObjectID *)self objectIDs];
  objectIDs2 = [equalCopy objectIDs];
  v7 = objectIDs2;
  if (objectIDs == objectIDs2)
  {

    goto LABEL_6;
  }

  objectIDs3 = [(REMHashtagsDataViewInvocation_fetchByObjectID *)self objectIDs];
  objectIDs4 = [equalCopy objectIDs];
  v10 = [objectIDs3 isEqual:objectIDs4];

  if (v10)
  {
LABEL_6:
    allowConcealedObjects = [(REMHashtagsDataViewInvocation_fetchByObjectID *)self allowConcealedObjects];
    v11 = allowConcealedObjects ^ [equalCopy allowConcealedObjects] ^ 1;
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v11) = 0;
LABEL_7:

  return v11;
}

- (unint64_t)hash
{
  objectIDs = [(REMHashtagsDataViewInvocation_fetchByObjectID *)self objectIDs];
  v3 = [objectIDs hash];

  return v3;
}

@end