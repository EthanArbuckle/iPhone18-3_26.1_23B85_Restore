@interface REMAssignmentsDataViewInvocation_fetchByObjectID
- (BOOL)isEqual:(id)a3;
- (REMAssignmentsDataViewInvocation_fetchByObjectID)initWithCoder:(id)a3;
- (REMAssignmentsDataViewInvocation_fetchByObjectID)initWithObjectIDs:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAssignmentsDataViewInvocation_fetchByObjectID

- (REMAssignmentsDataViewInvocation_fetchByObjectID)initWithObjectIDs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMAssignmentsDataViewInvocation_fetchByObjectID;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectIDs, a3);
    v7->_allowConcealedObjects = 0;
  }

  return v7;
}

- (REMAssignmentsDataViewInvocation_fetchByObjectID)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"objectIDs"];

  v9 = [v5 decodeBoolForKey:@"allowConcealedObjects"];
  if (v8)
  {
    v10 = [(REMAssignmentsDataViewInvocation_fetchByObjectID *)self initWithObjectIDs:v8];
    [(REMAssignmentsDataViewInvocation_fetchByObjectID *)v10 setAllowConcealedObjects:v9];
    self = v10;
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
  v5 = a3;
  v4 = [(REMAssignmentsDataViewInvocation_fetchByObjectID *)self objectIDs];
  [v5 encodeObject:v4 forKey:@"objectIDs"];

  [v5 encodeBool:-[REMAssignmentsDataViewInvocation_fetchByObjectID allowConcealedObjects](self forKey:{"allowConcealedObjects"), @"allowConcealedObjects"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMAssignmentsDataViewInvocation_fetchByObjectID *)self objectIDs];
  v6 = [v4 objectIDs];
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_6;
  }

  v8 = [(REMAssignmentsDataViewInvocation_fetchByObjectID *)self objectIDs];
  v9 = [v4 objectIDs];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
LABEL_6:
    v12 = [(REMAssignmentsDataViewInvocation_fetchByObjectID *)self allowConcealedObjects];
    v11 = v12 ^ [v4 allowConcealedObjects] ^ 1;
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v11) = 0;
LABEL_7:

  return v11;
}

- (unint64_t)hash
{
  v2 = [(REMAssignmentsDataViewInvocation_fetchByObjectID *)self objectIDs];
  v3 = [v2 hash];

  return v3;
}

@end