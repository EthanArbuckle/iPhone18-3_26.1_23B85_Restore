@interface SagaCollaborationEditOperation
- (SagaCollaborationEditOperation)initWithCoder:(id)coder;
- (SagaCollaborationEditOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity collaborationPersistentID:(int64_t)d properties:(id)properties trackEdits:(id)edits;
- (void)encodeWithCoder:(id)coder;
- (void)start;
@end

@implementation SagaCollaborationEditOperation

- (void)start
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(&self->super._finished + 1);
    v5 = *(&self->_collaborationPersistentID + 2);
    v6 = *(&self->_properties + 2);
    *buf = 138544130;
    selfCopy = self;
    v28 = 2048;
    v29 = v4;
    v30 = 2114;
    v31 = v5;
    v32 = 2114;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting operation to edit collaboration %llu. properties = %{public}@, trackEdits = %{public}@", buf, 0x2Au);
  }

  v25.receiver = self;
  v25.super_class = SagaCollaborationEditOperation;
  [(CloudLibraryConcurrentOperation *)&v25 start];
  v7 = [(SagaCollaborationEditOperation *)self description];
  v8 = [NSString stringWithFormat:@"%@ - XPCTransaction"], v7);

  v9 = [[MSVXPCTransaction alloc] initWithName:v8];
  [v9 beginTransaction];
  connection = [(CloudLibraryOperation *)self connection];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  sagaOnDiskDatabaseRevision = [musicLibrary sagaOnDiskDatabaseRevision];

  if (sagaOnDiskDatabaseRevision <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = sagaOnDiskDatabaseRevision;
  }

  v14 = [ML3Container alloc];
  v15 = *(&self->super._finished + 1);
  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  v17 = [v14 initWithPersistentID:v15 inLibrary:musicLibrary2];

  v18 = [v17 valueForProperty:ML3ContainerPropertyStoreCloudID];
  v19 = -[ICCollaborationEditRequest initWithDatabaseID:playlistSagaID:cloudLibraryRevision:properties:trackEdits:]([ICCollaborationEditRequest alloc], "initWithDatabaseID:playlistSagaID:cloudLibraryRevision:properties:trackEdits:", [connection databaseID], objc_msgSend(v18, "unsignedLongLongValue"), v13, *(&self->_collaborationPersistentID + 2), *(&self->_properties + 2));
  [(ICDRequest *)v19 setVerificationInteractionLevel:2];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100131678;
  v22[3] = &unk_1001DF440;
  v22[4] = self;
  v23 = v18;
  v24 = v9;
  v20 = v9;
  v21 = v18;
  [connection sendRequest:v19 withResponseHandler:v22];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaCollaborationEditOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:*(&self->super._finished + 1) forKey:{@"SagaCollaborationEditOperationPersistentIDKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:*(&self->_collaborationPersistentID + 2) forKey:@"SagaCollaborationEditOperationPropertiesKey"];
  [coderCopy encodeObject:*(&self->_properties + 2) forKey:@"SagaCollaborationEditOperationTrackEditsKey"];
}

- (SagaCollaborationEditOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SagaCollaborationEditOperation;
  v5 = [(CloudLibraryOperation *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    *(v5 + 90) = [coderCopy decodeInt64ForKey:@"SagaCollaborationEditOperationPersistentIDKey"];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"SagaCollaborationEditOperationPropertiesKey"];
    v11 = *(v5 + 98);
    *(v5 + 98) = v10;

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"SagaCollaborationEditOperationTrackEditsKey"];
    v15 = *(v5 + 106);
    *(v5 + 106) = v14;
  }

  return v5;
}

- (SagaCollaborationEditOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity collaborationPersistentID:(int64_t)d properties:(id)properties trackEdits:(id)edits
{
  propertiesCopy = properties;
  editsCopy = edits;
  v18.receiver = self;
  v18.super_class = SagaCollaborationEditOperation;
  v15 = [(CloudLibraryOperation *)&v18 initWithConfiguration:configuration clientIdentity:identity];
  v16 = v15;
  if (v15)
  {
    *(v15 + 90) = d;
    objc_storeStrong((v15 + 98), properties);
    objc_storeStrong((v16 + 106), edits);
  }

  return v16;
}

@end