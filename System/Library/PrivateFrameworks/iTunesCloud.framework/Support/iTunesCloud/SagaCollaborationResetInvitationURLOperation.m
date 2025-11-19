@interface SagaCollaborationResetInvitationURLOperation
- (SagaCollaborationResetInvitationURLOperation)initWithCoder:(id)a3;
- (SagaCollaborationResetInvitationURLOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 persistentID:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
- (void)start;
@end

@implementation SagaCollaborationResetInvitationURLOperation

- (void)start
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting operation", buf, 0xCu);
  }

  v25.receiver = self;
  v25.super_class = SagaCollaborationResetInvitationURLOperation;
  [(CloudLibraryConcurrentOperation *)&v25 start];
  v4 = [(SagaCollaborationResetInvitationURLOperation *)self description];
  v5 = [NSString stringWithFormat:@"%@ - XPCTransaction"], v4);

  v6 = [[MSVXPCTransaction alloc] initWithName:v5];
  [v6 beginTransaction];
  v7 = [ML3Container alloc];
  v8 = *(&self->super._finished + 1);
  v9 = [(CloudLibraryOperation *)self musicLibrary];
  v10 = [v7 initWithPersistentID:v8 inLibrary:v9];

  v11 = ML3ContainerPropertyCloudGlobalID;
  v12 = ML3ContainerPropertyStoreCloudID;
  v26[0] = ML3ContainerPropertyCloudGlobalID;
  v26[1] = ML3ContainerPropertyStoreCloudID;
  v13 = [NSArray arrayWithObjects:v26 count:2];
  v14 = [v10 getValuesForProperties:v13];

  v15 = [v14 objectForKeyedSubscript:v11];
  v16 = [v14 objectForKeyedSubscript:v12];
  if ([v15 length] && objc_msgSend(v16, "longLongValue"))
  {
    v17 = [(CloudLibraryOperation *)self connection];
    v18 = -[ICCollaborationResetInvitationURLRequest initWithDatabaseID:globalPlaylistID:]([ICCollaborationResetInvitationURLRequest alloc], "initWithDatabaseID:globalPlaylistID:", [v17 databaseID], v15);
    [(ICDRequest *)v18 setVerificationInteractionLevel:2];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000A8034;
    v21[3] = &unk_1001DC840;
    v21[4] = self;
    v22 = v10;
    v23 = v16;
    v24 = v6;
    [v17 sendRequest:v18 withResponseHandler:v21];
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ Missing playlist global or cloud ID - aborting", buf, 0xCu);
    }

    [(CloudLibraryOperation *)self setStatus:3];
    v20 = [NSError msv_errorWithDomain:ICCloudClientErrorDomain code:2003 debugDescription:@"Missing playlist global or cloud ID"];
    [(CloudLibraryOperation *)self setError:v20];

    [v6 endTransaction];
    [(CloudLibraryConcurrentOperation *)self finish];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaCollaborationResetInvitationURLOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:*(&self->super._finished + 1) forKey:{@"SagaCollaborationResetInvitationURLOperationPersistentIDKey", v5.receiver, v5.super_class}];
}

- (SagaCollaborationResetInvitationURLOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SagaCollaborationResetInvitationURLOperation;
  v5 = [(CloudLibraryOperation *)&v7 initWithCoder:v4];
  if (v5)
  {
    *(v5 + 90) = [v4 decodeInt64ForKey:@"SagaCollaborationResetInvitationURLOperationPersistentIDKey"];
  }

  return v5;
}

- (SagaCollaborationResetInvitationURLOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 persistentID:(int64_t)a5
{
  v7.receiver = self;
  v7.super_class = SagaCollaborationResetInvitationURLOperation;
  result = [(CloudLibraryOperation *)&v7 initWithConfiguration:a3 clientIdentity:a4];
  if (result)
  {
    *(&result->super._finished + 1) = a5;
  }

  return result;
}

@end