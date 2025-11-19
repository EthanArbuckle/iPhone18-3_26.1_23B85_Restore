@interface REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed
- (BOOL)isEqual:(id)a3;
- (REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed)initWithCoder:(id)a3;
- (REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed)initWithObjectIDs:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed

- (REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed)initWithObjectIDs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectIDs, a3);
    v7->_includeMarkedForDeletionOnly = 0;
  }

  return v7;
}

- (REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"objectIDs"];

  v9 = [v5 decodeBoolForKey:@"includeMarkedForDeletionOnly"];
  if (v8)
  {
    v10 = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self initWithObjectIDs:v8];
    [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)v10 setIncludeMarkedForDeletionOnly:v9];
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
  v4 = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self objectIDs];
  [v5 encodeObject:v4 forKey:@"objectIDs"];

  [v5 encodeBool:-[REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed includeMarkedForDeletionOnly](self forKey:{"includeMarkedForDeletionOnly"), @"includeMarkedForDeletionOnly"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self objectIDs];
  v6 = [v4 objectIDs];
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_6;
  }

  v8 = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self objectIDs];
  v9 = [v4 objectIDs];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
LABEL_6:
    v12 = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self includeMarkedForDeletionOnly];
    v11 = v12 ^ [v4 includeMarkedForDeletionOnly] ^ 1;
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v11) = 0;
LABEL_7:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self objectIDs];
  v4 = [v3 hash];
  v5 = v4 + [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self includeMarkedForDeletionOnly];

  return v5;
}

@end