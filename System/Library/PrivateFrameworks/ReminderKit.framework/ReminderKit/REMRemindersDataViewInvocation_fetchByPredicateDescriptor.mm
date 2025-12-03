@interface REMRemindersDataViewInvocation_fetchByPredicateDescriptor
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchByPredicateDescriptor)initWithCoder:(id)coder;
- (REMRemindersDataViewInvocation_fetchByPredicateDescriptor)initWithPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors options:(id)options;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchByPredicateDescriptor

- (REMRemindersDataViewInvocation_fetchByPredicateDescriptor)initWithPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors options:(id)options
{
  descriptorCopy = descriptor;
  descriptorsCopy = descriptors;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = REMRemindersDataViewInvocation_fetchByPredicateDescriptor;
  v12 = [(REMStoreInvocationValueStorage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_predicateDescriptor, descriptor);
    objc_storeStrong(&v13->_sortDescriptors, descriptors);
    objc_storeStrong(&v13->_options, options);
  }

  return v13;
}

- (REMRemindersDataViewInvocation_fetchByPredicateDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicateDescriptor"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sortDescriptors"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];

  if (v5)
  {
    self = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self initWithPredicateDescriptor:v5 sortDescriptors:v9 options:v10];
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
  predicateDescriptor = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self predicateDescriptor];
  [coderCopy encodeObject:predicateDescriptor forKey:@"predicateDescriptor"];

  sortDescriptors = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self sortDescriptors];
  [coderCopy encodeObject:sortDescriptors forKey:@"sortDescriptors"];

  options = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self options];
  [coderCopy encodeObject:options forKey:@"options"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  predicateDescriptor = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self predicateDescriptor];
  predicateDescriptor2 = [equalCopy predicateDescriptor];
  v7 = predicateDescriptor2;
  if (predicateDescriptor == predicateDescriptor2)
  {
  }

  else
  {
    predicateDescriptor3 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self predicateDescriptor];
    predicateDescriptor4 = [equalCopy predicateDescriptor];
    v10 = [predicateDescriptor3 isEqual:predicateDescriptor4];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  sortDescriptors = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self sortDescriptors];
  sortDescriptors2 = [equalCopy sortDescriptors];
  v13 = sortDescriptors2;
  if (sortDescriptors == sortDescriptors2)
  {
  }

  else
  {
    sortDescriptors3 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self sortDescriptors];
    sortDescriptors4 = [equalCopy sortDescriptors];
    v16 = [sortDescriptors3 isEqual:sortDescriptors4];

    if (!v16)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_14;
    }
  }

  options = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self options];
  options2 = [equalCopy options];
  if (options == options2)
  {
    v17 = 1;
  }

  else
  {
    options3 = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self options];
    options4 = [equalCopy options];
    v17 = [options3 isEqual:options4];
  }

LABEL_14:
  return v17 & 1;
}

- (unint64_t)hash
{
  predicateDescriptor = [(REMRemindersDataViewInvocation_fetchByPredicateDescriptor *)self predicateDescriptor];
  v3 = [predicateDescriptor hash];

  return v3;
}

@end