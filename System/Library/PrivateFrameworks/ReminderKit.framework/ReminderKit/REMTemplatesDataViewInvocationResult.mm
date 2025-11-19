@interface REMTemplatesDataViewInvocationResult
- (BOOL)isEqual:(id)a3;
- (REMTemplatesDataViewInvocationResult)initWithCoder:(id)a3;
- (REMTemplatesDataViewInvocationResult)initWithTemplateStorages:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMTemplatesDataViewInvocationResult

- (REMTemplatesDataViewInvocationResult)initWithTemplateStorages:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMTemplatesDataViewInvocationResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateStorages, a3);
  }

  return v7;
}

- (REMTemplatesDataViewInvocationResult)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"templateStorages"];

  if (v8)
  {
    self = [(REMTemplatesDataViewInvocationResult *)self initWithTemplateStorages:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMTemplatesDataViewInvocationResult *)self templateStorages];
  [v4 encodeObject:v5 forKey:@"templateStorages"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMTemplatesDataViewInvocationResult *)self templateStorages];
    v6 = [v4 templateStorages];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMTemplatesDataViewInvocationResult *)self templateStorages];
      v8 = [v4 templateStorages];
      v9 = [v7 isEqual:v8];
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
  v2 = [(REMTemplatesDataViewInvocationResult *)self templateStorages];
  v3 = [v2 hash];

  return v3;
}

@end