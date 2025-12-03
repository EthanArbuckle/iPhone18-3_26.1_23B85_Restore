@interface REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed
- (BOOL)isEqual:(id)equal;
- (REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed)initWithCoder:(id)coder;
- (REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed)initWithObjectIDs:(id)ds;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed

- (REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed)initWithObjectIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectIDs, ds);
    v7->_includeMarkedForDeletionOnly = 0;
  }

  return v7;
}

- (REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"objectIDs"];

  v9 = [coderCopy decodeBoolForKey:@"includeMarkedForDeletionOnly"];
  if (v8)
  {
    v10 = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self initWithObjectIDs:v8];
    [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)v10 setIncludeMarkedForDeletionOnly:v9];
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
  objectIDs = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self objectIDs];
  [coderCopy encodeObject:objectIDs forKey:@"objectIDs"];

  [coderCopy encodeBool:-[REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed includeMarkedForDeletionOnly](self forKey:{"includeMarkedForDeletionOnly"), @"includeMarkedForDeletionOnly"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  objectIDs = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self objectIDs];
  objectIDs2 = [equalCopy objectIDs];
  v7 = objectIDs2;
  if (objectIDs == objectIDs2)
  {

    goto LABEL_6;
  }

  objectIDs3 = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self objectIDs];
  objectIDs4 = [equalCopy objectIDs];
  v10 = [objectIDs3 isEqual:objectIDs4];

  if (v10)
  {
LABEL_6:
    includeMarkedForDeletionOnly = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self includeMarkedForDeletionOnly];
    v11 = includeMarkedForDeletionOnly ^ [equalCopy includeMarkedForDeletionOnly] ^ 1;
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v11) = 0;
LABEL_7:

  return v11;
}

- (unint64_t)hash
{
  objectIDs = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self objectIDs];
  v4 = [objectIDs hash];
  v5 = v4 + [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)self includeMarkedForDeletionOnly];

  return v5;
}

@end