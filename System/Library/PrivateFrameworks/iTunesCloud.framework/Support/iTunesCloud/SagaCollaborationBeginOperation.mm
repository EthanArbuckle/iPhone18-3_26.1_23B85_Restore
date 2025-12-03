@interface SagaCollaborationBeginOperation
- (SagaCollaborationBeginOperation)initWithCoder:(id)coder;
- (SagaCollaborationBeginOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity playlistPersistentID:(int64_t)d sharingMode:(unint64_t)mode;
- (void)encodeWithCoder:(id)coder;
- (void)start;
@end

@implementation SagaCollaborationBeginOperation

- (void)start
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting operation to begin collaboration", buf, 0xCu);
  }

  v19.receiver = self;
  v19.super_class = SagaCollaborationBeginOperation;
  [(CloudLibraryConcurrentOperation *)&v19 start];
  v4 = [(SagaCollaborationBeginOperation *)self description];
  v5 = [NSString stringWithFormat:@"%@ - XPCTransaction"], v4);

  v6 = [[MSVXPCTransaction alloc] initWithName:v5];
  [v6 beginTransaction];
  v7 = [ML3Container alloc];
  v8 = *(&self->super._finished + 1);
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v10 = [v7 initWithPersistentID:v8 inLibrary:musicLibrary];

  v11 = [v10 valueForProperty:ML3ContainerPropertyStoreCloudID];
  connection = [(CloudLibraryOperation *)self connection];
  v13 = -[ICCollaborationBeginRequest initWithDatabaseID:playlistSagaID:sharingMode:]([ICCollaborationBeginRequest alloc], "initWithDatabaseID:playlistSagaID:sharingMode:", [connection databaseID], objc_msgSend(v11, "longLongValue"), *(&self->_persistentID + 2));
  [(ICDRequest *)v13 setVerificationInteractionLevel:2];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002CC9C;
  v16[3] = &unk_1001DF440;
  v16[4] = self;
  v17 = v10;
  v18 = v6;
  v14 = v6;
  v15 = v10;
  [connection sendRequest:v13 withResponseHandler:v16];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaCollaborationBeginOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:*(&self->super._finished + 1) forKey:{@"SagaCollaborationBeginOperationPlaylistPersistentIDIDKey", v5.receiver, v5.super_class}];
  [coderCopy encodeInt:*(&self->_persistentID + 2) forKey:@"SagaCollaborationBeginOperationPlaylistSharingModeKey"];
}

- (SagaCollaborationBeginOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SagaCollaborationBeginOperation;
  v5 = [(CloudLibraryOperation *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    *(v5 + 90) = [coderCopy decodeInt64ForKey:@"SagaCollaborationBeginOperationPlaylistPersistentIDIDKey"];
    *(v5 + 98) = [coderCopy decodeIntForKey:@"SagaCollaborationBeginOperationPlaylistSharingModeKey"];
  }

  return v5;
}

- (SagaCollaborationBeginOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity playlistPersistentID:(int64_t)d sharingMode:(unint64_t)mode
{
  v9.receiver = self;
  v9.super_class = SagaCollaborationBeginOperation;
  result = [(CloudLibraryOperation *)&v9 initWithConfiguration:configuration clientIdentity:identity];
  if (result)
  {
    *(&result->super._finished + 1) = d;
    *(&result->_persistentID + 2) = mode;
  }

  return result;
}

@end