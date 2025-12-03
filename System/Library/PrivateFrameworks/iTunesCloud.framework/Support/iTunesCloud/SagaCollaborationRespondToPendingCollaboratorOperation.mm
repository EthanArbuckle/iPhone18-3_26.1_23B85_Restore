@interface SagaCollaborationRespondToPendingCollaboratorOperation
- (SagaCollaborationRespondToPendingCollaboratorOperation)initWithCoder:(id)coder;
- (SagaCollaborationRespondToPendingCollaboratorOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity persistentID:(int64_t)d socialProfileID:(id)iD approval:(BOOL)approval;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)start;
@end

@implementation SagaCollaborationRespondToPendingCollaboratorOperation

- (void)start
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting operation to respond to join collaboration request", buf, 0xCu);
  }

  v20.receiver = self;
  v20.super_class = SagaCollaborationRespondToPendingCollaboratorOperation;
  [(CloudLibraryConcurrentOperation *)&v20 start];
  v4 = [(SagaCollaborationRespondToPendingCollaboratorOperation *)self description];
  v5 = [NSString stringWithFormat:@"%@ - XPCTransaction"], v4);

  v6 = [[MSVXPCTransaction alloc] initWithName:v5];
  [v6 beginTransaction];
  v7 = [ML3Container alloc];
  v8 = *(&self->super._finished + 1);
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v10 = [v7 initWithPersistentID:v8 inLibrary:musicLibrary];

  v11 = [v10 valueForProperty:ML3ContainerPropertyCloudGlobalID];
  v12 = [v10 valueForProperty:ML3ContainerPropertyStoreCloudID];
  connection = [(CloudLibraryOperation *)self connection];
  v14 = -[ICCollaborationRespondToPendingCollaboratorRequest initWithDatabaseID:globalPlaylistID:socialProfileID:approval:]([ICCollaborationRespondToPendingCollaboratorRequest alloc], "initWithDatabaseID:globalPlaylistID:socialProfileID:approval:", [connection databaseID], v11, *(&self->_persistentID + 2), BYTE2(self->_socialProfileID));
  [(ICDRequest *)v14 setVerificationInteractionLevel:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004CA84;
  v17[3] = &unk_1001DF440;
  v17[4] = self;
  v18 = v12;
  v19 = v6;
  v15 = v6;
  v16 = v12;
  [connection sendRequest:v14 withResponseHandler:v17];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaCollaborationRespondToPendingCollaboratorOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:*(&self->super._finished + 1) forKey:{@"SagaCollaborationRespondToPendingCollaboratorOperationpersistentIDIDKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:*(&self->_persistentID + 2) forKey:@"SagaCollaborationRespondToPendingCollaboratorOperationSocialProfileIDKey"];
  [coderCopy encodeBool:BYTE2(self->_socialProfileID) forKey:@"SagaCollaborationRespondToPendingCollaboratorOperationApprovalKey"];
}

- (SagaCollaborationRespondToPendingCollaboratorOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SagaCollaborationRespondToPendingCollaboratorOperation;
  v5 = [(CloudLibraryOperation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    *(v5 + 90) = [coderCopy decodeInt64ForKey:@"SagaCollaborationRespondToPendingCollaboratorOperationpersistentIDIDKey"];
    v6 = [coderCopy decodeObjectForKey:@"SagaCollaborationRespondToPendingCollaboratorOperationSocialProfileIDKey"];
    v7 = *(v5 + 98);
    *(v5 + 98) = v6;

    v5[106] = [coderCopy decodeBoolForKey:@"SagaCollaborationRespondToPendingCollaboratorOperationApprovalKey"];
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  if (BYTE2(self->_socialProfileID))
  {
    v4 = "approve";
  }

  else
  {
    v4 = "deny";
  }

  return [NSString stringWithFormat:@"<%@ %p: [%lld, %@ ==> %s]>", v3, self, *(&self->super._finished + 1), *(&self->_persistentID + 2), v4];
}

- (SagaCollaborationRespondToPendingCollaboratorOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity persistentID:(int64_t)d socialProfileID:(id)iD approval:(BOOL)approval
{
  iDCopy = iD;
  v17.receiver = self;
  v17.super_class = SagaCollaborationRespondToPendingCollaboratorOperation;
  v14 = [(CloudLibraryOperation *)&v17 initWithConfiguration:configuration clientIdentity:identity];
  v15 = v14;
  if (v14)
  {
    *(v14 + 90) = d;
    objc_storeStrong((v14 + 98), iD);
    BYTE2(v15->_socialProfileID) = approval;
  }

  return v15;
}

@end