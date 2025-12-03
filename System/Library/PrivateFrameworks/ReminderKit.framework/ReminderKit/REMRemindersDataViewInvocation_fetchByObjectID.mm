@interface REMRemindersDataViewInvocation_fetchByObjectID
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchByObjectID)initWithCoder:(id)coder;
- (REMRemindersDataViewInvocation_fetchByObjectID)initWithObjectIDs:(id)ds fetchOptions:(id)options;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchByObjectID

- (REMRemindersDataViewInvocation_fetchByObjectID)initWithObjectIDs:(id)ds fetchOptions:(id)options
{
  dsCopy = ds;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = REMRemindersDataViewInvocation_fetchByObjectID;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectIDs, ds);
    objc_storeStrong(&v10->_fetchOptions, options);
  }

  return v10;
}

- (REMRemindersDataViewInvocation_fetchByObjectID)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"objectIDs"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fetchOptions"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(REMRemindersDataViewInvocation_fetchByObjectID *)self initWithObjectIDs:v8 fetchOptions:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectIDs = [(REMRemindersDataViewInvocation_fetchByObjectID *)self objectIDs];
  [coderCopy encodeObject:objectIDs forKey:@"objectIDs"];

  fetchOptions = [(REMRemindersDataViewInvocation_fetchByObjectID *)self fetchOptions];
  [coderCopy encodeObject:fetchOptions forKey:@"fetchOptions"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  objectIDs = [(REMRemindersDataViewInvocation_fetchByObjectID *)self objectIDs];
  objectIDs2 = [equalCopy objectIDs];
  v7 = objectIDs2;
  if (objectIDs == objectIDs2)
  {
  }

  else
  {
    objectIDs3 = [(REMRemindersDataViewInvocation_fetchByObjectID *)self objectIDs];
    objectIDs4 = [equalCopy objectIDs];
    v10 = [objectIDs3 isEqual:objectIDs4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  fetchOptions = [(REMRemindersDataViewInvocation_fetchByObjectID *)self fetchOptions];
  fetchOptions2 = [equalCopy fetchOptions];
  if (fetchOptions == fetchOptions2)
  {
    v11 = 1;
  }

  else
  {
    fetchOptions3 = [(REMRemindersDataViewInvocation_fetchByObjectID *)self fetchOptions];
    fetchOptions4 = [equalCopy fetchOptions];
    v11 = [fetchOptions3 isEqual:fetchOptions4];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  objectIDs = [(REMRemindersDataViewInvocation_fetchByObjectID *)self objectIDs];
  v4 = [objectIDs hash];
  fetchOptions = [(REMRemindersDataViewInvocation_fetchByObjectID *)self fetchOptions];
  v6 = [fetchOptions hash];

  return v6 ^ v4;
}

@end