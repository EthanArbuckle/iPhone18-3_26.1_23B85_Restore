@interface SagaCollaborationRemoveCollaboratorsOperation
- (SagaCollaborationRemoveCollaboratorsOperation)initWithCoder:(id)a3;
- (SagaCollaborationRemoveCollaboratorsOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 persistentID:(int64_t)a5 socialProfileIDs:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)start;
@end

@implementation SagaCollaborationRemoveCollaboratorsOperation

- (void)start
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting operation", buf, 0xCu);
  }

  v24.receiver = self;
  v24.super_class = SagaCollaborationRemoveCollaboratorsOperation;
  [(CloudLibraryConcurrentOperation *)&v24 start];
  v4 = [(SagaCollaborationRemoveCollaboratorsOperation *)self description];
  v5 = [NSString stringWithFormat:@"%@ - XPCTransaction"], v4);

  v6 = [[MSVXPCTransaction alloc] initWithName:v5];
  [v6 beginTransaction];
  v7 = [ML3Container alloc];
  v8 = *(&self->super._finished + 1);
  v9 = [(CloudLibraryOperation *)self musicLibrary];
  v10 = [v7 initWithPersistentID:v8 inLibrary:v9];

  v11 = ML3ContainerPropertyCloudGlobalID;
  v12 = ML3ContainerPropertyStoreCloudID;
  v25[0] = ML3ContainerPropertyCloudGlobalID;
  v25[1] = ML3ContainerPropertyStoreCloudID;
  v13 = [NSArray arrayWithObjects:v25 count:2];
  v14 = [v10 getValuesForProperties:v13];

  v15 = [v14 objectForKeyedSubscript:v11];
  v16 = [v14 objectForKeyedSubscript:v12];
  v17 = [(CloudLibraryOperation *)self connection];
  v18 = -[ICCollaborationRemoveCollaboratorsRequest initWithDatabaseID:globalPlaylistID:socialProfileIDs:]([ICCollaborationRemoveCollaboratorsRequest alloc], "initWithDatabaseID:globalPlaylistID:socialProfileIDs:", [v17 databaseID], v15, *(&self->_persistentID + 2));
  [(ICDRequest *)v18 setVerificationInteractionLevel:2];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000D2308;
  v21[3] = &unk_1001DF440;
  v21[4] = self;
  v22 = v16;
  v23 = v6;
  v19 = v6;
  v20 = v16;
  [v17 sendRequest:v18 withResponseHandler:v21];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaCollaborationRemoveCollaboratorsOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:*(&self->super._finished + 1) forKey:{@"SagaCollaborationRemoveCollaboratorsOperationPersistentIDKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:*(&self->_persistentID + 2) forKey:@"SagaCollaborationRemoveCollaboratorsOperationSocialProfileIDKey"];
}

- (SagaCollaborationRemoveCollaboratorsOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SagaCollaborationRemoveCollaboratorsOperation;
  v5 = [(CloudLibraryOperation *)&v9 initWithCoder:v4];
  if (v5)
  {
    *(v5 + 90) = [v4 decodeInt64ForKey:@"SagaCollaborationRemoveCollaboratorsOperationPersistentIDKey"];
    v6 = [v4 decodeObjectForKey:@"SagaCollaborationRemoveCollaboratorsOperationSocialProfileIDKey"];
    v7 = *(v5 + 98);
    *(v5 + 98) = v6;
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = *(&self->super._finished + 1);
  v5 = [*(&self->_persistentID + 2) msv_compactDescription];
  v6 = [NSString stringWithFormat:@"<%@ %p: [%lld ==> (%@)]>", v3, self, v4, v5];

  return v6;
}

- (SagaCollaborationRemoveCollaboratorsOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 persistentID:(int64_t)a5 socialProfileIDs:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = SagaCollaborationRemoveCollaboratorsOperation;
  v12 = [(CloudLibraryOperation *)&v15 initWithConfiguration:a3 clientIdentity:a4];
  v13 = v12;
  if (v12)
  {
    *(v12 + 90) = a5;
    objc_storeStrong((v12 + 98), a6);
  }

  return v13;
}

@end