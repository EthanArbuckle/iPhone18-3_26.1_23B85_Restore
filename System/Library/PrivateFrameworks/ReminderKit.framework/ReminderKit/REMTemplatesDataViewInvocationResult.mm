@interface REMTemplatesDataViewInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMTemplatesDataViewInvocationResult)initWithCoder:(id)coder;
- (REMTemplatesDataViewInvocationResult)initWithTemplateStorages:(id)storages;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMTemplatesDataViewInvocationResult

- (REMTemplatesDataViewInvocationResult)initWithTemplateStorages:(id)storages
{
  storagesCopy = storages;
  v9.receiver = self;
  v9.super_class = REMTemplatesDataViewInvocationResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateStorages, storages);
  }

  return v7;
}

- (REMTemplatesDataViewInvocationResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"templateStorages"];

  if (v8)
  {
    self = [(REMTemplatesDataViewInvocationResult *)self initWithTemplateStorages:v8];
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
  templateStorages = [(REMTemplatesDataViewInvocationResult *)self templateStorages];
  [coderCopy encodeObject:templateStorages forKey:@"templateStorages"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    templateStorages = [(REMTemplatesDataViewInvocationResult *)self templateStorages];
    templateStorages2 = [equalCopy templateStorages];
    if (templateStorages == templateStorages2)
    {
      v9 = 1;
    }

    else
    {
      templateStorages3 = [(REMTemplatesDataViewInvocationResult *)self templateStorages];
      templateStorages4 = [equalCopy templateStorages];
      v9 = [templateStorages3 isEqual:templateStorages4];
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
  templateStorages = [(REMTemplatesDataViewInvocationResult *)self templateStorages];
  v3 = [templateStorages hash];

  return v3;
}

@end