@interface REMRemindersDataViewInvocation_fetchByPredicateDescriptor
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocation_fetchByPredicateDescriptor)initWithCoder:(id)a3;
- (REMRemindersDataViewInvocation_fetchByPredicateDescriptor)initWithPredicateDescriptor:(id)a3 sortDescriptors:(id)a4 options:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocation_fetchByPredicateDescriptor

- (REMRemindersDataViewInvocation_fetchByPredicateDescriptor)initWithPredicateDescriptor:(id)a3 sortDescriptors:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = REMRemindersDataViewInvocation_fetchByPredicateDescriptor;
  v12 = [(REMStoreInvocationValueStorage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_predicateDescriptor, a3);
    objc_storeStrong(&v13->_sortDescriptors, a4);
    objc_storeStrong(&v13->_options, a5);
  }

  return v13;
}

- (REMRemindersDataViewInvocation_fetchByPredicateDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicateDescriptor"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sortDescriptors"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];

  if (v5)
  {
    self = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self initWithPredicateDescriptor:v5 sortDescriptors:v9 options:v10];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self predicateDescriptor];
  [v4 encodeObject:v5 forKey:@"predicateDescriptor"];

  v6 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self sortDescriptors];
  [v4 encodeObject:v6 forKey:@"sortDescriptors"];

  v7 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self options];
  [v4 encodeObject:v7 forKey:@"options"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self predicateDescriptor];
  v6 = [v4 predicateDescriptor];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self predicateDescriptor];
    v9 = [v4 predicateDescriptor];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v11 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self sortDescriptors];
  v12 = [v4 sortDescriptors];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self sortDescriptors];
    v15 = [v4 sortDescriptors];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_14;
    }
  }

  v18 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self options];
  v19 = [v4 options];
  if (v18 == v19)
  {
    v17 = 1;
  }

  else
  {
    v20 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self options];
    v21 = [v4 options];
    v17 = [v20 isEqual:v21];
  }

LABEL_14:
  return v17 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self predicateDescriptor];
  v3 = [v2 hash];

  return v3;
}

@end