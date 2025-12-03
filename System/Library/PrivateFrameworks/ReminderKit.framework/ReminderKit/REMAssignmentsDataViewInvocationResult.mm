@interface REMAssignmentsDataViewInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMAssignmentsDataViewInvocationResult)initWithAssignments:(id)assignments;
- (REMAssignmentsDataViewInvocationResult)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAssignmentsDataViewInvocationResult

- (REMAssignmentsDataViewInvocationResult)initWithAssignments:(id)assignments
{
  assignmentsCopy = assignments;
  v9.receiver = self;
  v9.super_class = REMAssignmentsDataViewInvocationResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assignments, assignments);
  }

  return v7;
}

- (REMAssignmentsDataViewInvocationResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"assignments"];

  if (v8)
  {
    self = [(REMAssignmentsDataViewInvocationResult *)self initWithAssignments:v8];
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
  assignments = [(REMAssignmentsDataViewInvocationResult *)self assignments];
  [coderCopy encodeObject:assignments forKey:@"assignments"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assignments = [(REMAssignmentsDataViewInvocationResult *)self assignments];
    assignments2 = [equalCopy assignments];
    if (assignments == assignments2)
    {
      v9 = 1;
    }

    else
    {
      assignments3 = [(REMAssignmentsDataViewInvocationResult *)self assignments];
      assignments4 = [equalCopy assignments];
      v9 = [assignments3 isEqual:assignments4];
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
  assignments = [(REMAssignmentsDataViewInvocationResult *)self assignments];
  v3 = [assignments hash];

  return v3;
}

@end