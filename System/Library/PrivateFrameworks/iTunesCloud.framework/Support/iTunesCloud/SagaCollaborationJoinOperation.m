@interface SagaCollaborationJoinOperation
- (SagaCollaborationJoinOperation)initWithCoder:(id)a3;
- (SagaCollaborationJoinOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 globalPlaylistID:(id)a5 invitationURL:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)start;
@end

@implementation SagaCollaborationJoinOperation

- (void)start
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(&self->super._finished + 1);
    v5 = *(&self->_globalPlaylistID + 2);
    *buf = 138543874;
    v16 = self;
    v17 = 2114;
    v18 = v4;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting operation to join collaboration %{public}@. link='%{public}@'", buf, 0x20u);
  }

  v14.receiver = self;
  v14.super_class = SagaCollaborationJoinOperation;
  [(CloudLibraryConcurrentOperation *)&v14 start];
  v6 = [(SagaCollaborationJoinOperation *)self description];
  v7 = [NSString stringWithFormat:@"%@ - XPCTransaction"], v6);

  v8 = [[MSVXPCTransaction alloc] initWithName:v7];
  [v8 beginTransaction];
  v9 = [(CloudLibraryOperation *)self connection];
  v10 = -[ICCollaborationJoinRequest initWithDatabaseID:globalPlaylistID:invitationURL:]([ICCollaborationJoinRequest alloc], "initWithDatabaseID:globalPlaylistID:invitationURL:", [v9 databaseID], *(&self->super._finished + 1), *(&self->_globalPlaylistID + 2));
  [(ICDRequest *)v10 setVerificationInteractionLevel:2];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BC610;
  v12[3] = &unk_1001DF838;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v9 sendRequest:v10 withResponseHandler:v12];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaCollaborationJoinOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:*(&self->super._finished + 1) forKey:{@"SagaCollaborationJoinOperationCollaborationGlobalPlaylistIDKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:*(&self->_globalPlaylistID + 2) forKey:@"SagaCollaborationJoinOperationCollaborationInvitationURLKey"];
}

- (SagaCollaborationJoinOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SagaCollaborationJoinOperation;
  v5 = [(CloudLibraryOperation *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaCollaborationJoinOperationCollaborationGlobalPlaylistIDKey"];
    v7 = *(v5 + 90);
    *(v5 + 90) = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaCollaborationJoinOperationCollaborationInvitationURLKey"];
    v9 = *(v5 + 98);
    *(v5 + 98) = v8;
  }

  return v5;
}

- (SagaCollaborationJoinOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 globalPlaylistID:(id)a5 invitationURL:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = SagaCollaborationJoinOperation;
  v13 = [(CloudLibraryOperation *)&v16 initWithConfiguration:a3 clientIdentity:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong((v13 + 90), a5);
    objc_storeStrong((v14 + 98), a6);
  }

  return v14;
}

@end