@interface REMTemplateSectionsDataViewInvocationResult
- (BOOL)isEqual:(id)a3;
- (REMTemplateSectionsDataViewInvocationResult)initWithCoder:(id)a3;
- (REMTemplateSectionsDataViewInvocationResult)initWithTemplateStorages:(id)a3 templateSectionStorages:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMTemplateSectionsDataViewInvocationResult

- (REMTemplateSectionsDataViewInvocationResult)initWithTemplateStorages:(id)a3 templateSectionStorages:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMTemplateSectionsDataViewInvocationResult;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_templateStorages, a3);
    objc_storeStrong(&v10->_templateSectionStorages, a4);
  }

  return v10;
}

- (REMTemplateSectionsDataViewInvocationResult)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"templateStorages"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"templateSectionStorages"];

  v13 = 0;
  if (v8 && v12)
  {
    self = [(REMTemplateSectionsDataViewInvocationResult *)self initWithTemplateStorages:v8 templateSectionStorages:v12];
    v13 = self;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMTemplateSectionsDataViewInvocationResult *)self templateStorages];
  [v4 encodeObject:v5 forKey:@"templateStorages"];

  v6 = [(REMTemplateSectionsDataViewInvocationResult *)self templateSectionStorages];
  [v4 encodeObject:v6 forKey:@"templateSectionStorages"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMTemplateSectionsDataViewInvocationResult *)self templateStorages];
  v6 = [v4 templateStorages];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMTemplateSectionsDataViewInvocationResult *)self templateStorages];
    v9 = [v4 templateStorages];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = [(REMTemplateSectionsDataViewInvocationResult *)self templateSectionStorages];
  v13 = [v4 templateSectionStorages];
  if (v12 == v13)
  {
    v11 = 1;
  }

  else
  {
    v14 = [(REMTemplateSectionsDataViewInvocationResult *)self templateSectionStorages];
    v15 = [v4 templateSectionStorages];
    v11 = [v14 isEqual:v15];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMTemplateSectionsDataViewInvocationResult *)self templateStorages];
  v4 = [v3 hash];
  v5 = [(REMTemplateSectionsDataViewInvocationResult *)self templateSectionStorages];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end