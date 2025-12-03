@interface SagaCollaborationEndOperation
- (SagaCollaborationEndOperation)initWithCoder:(id)coder;
- (SagaCollaborationEndOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity collaborationPersistentID:(int64_t)d;
- (void)encodeWithCoder:(id)coder;
- (void)start;
@end

@implementation SagaCollaborationEndOperation

- (void)start
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting operation to end collaboration", buf, 0xCu);
  }

  v30.receiver = self;
  v30.super_class = SagaCollaborationEndOperation;
  [(CloudLibraryConcurrentOperation *)&v30 start];
  v4 = [(SagaCollaborationEndOperation *)self description];
  v5 = [NSString stringWithFormat:@"%@ - XPCTransaction"], v4);

  v6 = [[MSVXPCTransaction alloc] initWithName:v5];
  [v6 beginTransaction];
  v7 = [ML3Container alloc];
  v8 = *(&self->super._finished + 1);
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v10 = [v7 initWithPersistentID:v8 inLibrary:musicLibrary];

  v11 = ML3ContainerPropertyCloudGlobalID;
  v12 = ML3ContainerPropertyStoreCloudID;
  v31[0] = ML3ContainerPropertyCloudGlobalID;
  v31[1] = ML3ContainerPropertyStoreCloudID;
  v13 = ML3ContainerPropertyIsOwner;
  v31[2] = ML3ContainerPropertyIsOwner;
  v14 = [NSArray arrayWithObjects:v31 count:3];
  v15 = [v10 getValuesForProperties:v14];

  v16 = [v15 objectForKeyedSubscript:v13];
  bOOLValue = [v16 BOOLValue];

  if (![*(&self->_collaborationPersistentID + 2) length])
  {
    v18 = [v15 objectForKeyedSubscript:v11];
    v19 = *(&self->_collaborationPersistentID + 2);
    *(&self->_collaborationPersistentID + 2) = v18;
  }

  if (![*(&self->_globalPlaylistID + 2) unsignedLongLongValue])
  {
    v20 = [v15 objectForKeyedSubscript:v12];
    v21 = *(&self->_globalPlaylistID + 2);
    *(&self->_globalPlaylistID + 2) = v20;
  }

  if ([*(&self->_collaborationPersistentID + 2) length] && objc_msgSend(*(&self->_globalPlaylistID + 2), "unsignedLongLongValue"))
  {
    connection = [(CloudLibraryOperation *)self connection];
    if (bOOLValue)
    {
      v23 = -[ICCollaborationEndRequest initWithDatabaseID:playlistSagaID:]([ICCollaborationEndRequest alloc], "initWithDatabaseID:playlistSagaID:", [connection databaseID], objc_msgSend(*(&self->_globalPlaylistID + 2), "unsignedLongLongValue"));
    }

    else
    {
      v23 = -[ICCollaborationLeaveRequest initWithDatabaseID:globalPlaylistID:]([ICCollaborationLeaveRequest alloc], "initWithDatabaseID:globalPlaylistID:", [connection databaseID], *(&self->_collaborationPersistentID + 2));
    }

    v25 = v23;
    [(ICDRequest *)v23 setVerificationInteractionLevel:2];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10007A2CC;
    v26[3] = &unk_1001DC030;
    v26[4] = self;
    v29 = bOOLValue;
    v27 = v10;
    v28 = v6;
    [connection sendRequest:v25 withResponseHandler:v26];
  }

  else
  {
    [(CloudLibraryOperation *)self setStatus:3];
    v24 = [NSError msv_errorWithDomain:ICCloudClientErrorDomain code:2003 debugDescription:@"Missing cloud IDs"];
    [(CloudLibraryOperation *)self setError:v24];

    [v6 endTransaction];
    [(CloudLibraryConcurrentOperation *)self finish];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaCollaborationEndOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:*(&self->super._finished + 1) forKey:{@"SagaCollaborationEndOperationCollaborationPersistentIDKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:*(&self->_collaborationPersistentID + 2) forKey:@"SagaCollaborationEndOperationCollaborationGlobalPlaylistIDKey"];
  [coderCopy encodeObject:*(&self->_globalPlaylistID + 2) forKey:@"SagaCollaborationEndOperationCollaborationCloudLibraryIDKey"];
}

- (SagaCollaborationEndOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SagaCollaborationEndOperation;
  v5 = [(CloudLibraryOperation *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    *(v5 + 90) = [coderCopy decodeInt64ForKey:@"SagaCollaborationEndOperationCollaborationPersistentIDKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaCollaborationEndOperationCollaborationGlobalPlaylistIDKey"];
    v7 = *(v5 + 98);
    *(v5 + 98) = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaCollaborationEndOperationCollaborationCloudLibraryIDKey"];
    v9 = *(v5 + 106);
    *(v5 + 106) = v8;
  }

  return v5;
}

- (SagaCollaborationEndOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity collaborationPersistentID:(int64_t)d
{
  v7.receiver = self;
  v7.super_class = SagaCollaborationEndOperation;
  result = [(CloudLibraryOperation *)&v7 initWithConfiguration:configuration clientIdentity:identity];
  if (result)
  {
    *(&result->super._finished + 1) = d;
  }

  return result;
}

@end