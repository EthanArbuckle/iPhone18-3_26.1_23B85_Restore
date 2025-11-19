@interface CloudSetAddToPlaylistBehaviorOperation
- (CloudSetAddToPlaylistBehaviorOperation)initWithAddToPlaylistBehavior:(int64_t)a3 clientIdentity:(id)a4;
- (CloudSetAddToPlaylistBehaviorOperation)initWithCoder:(id)a3;
- (CloudSetAddToPlaylistBehaviorOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 addToPlaylistBehavior:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation CloudSetAddToPlaylistBehaviorOperation

- (void)main
{
  addToPlaylistBehavior = self->_addToPlaylistBehavior;
  v4 = ICCloudClientGetStringForAddToPlaylistBehavior();
  v5 = [NSString stringWithFormat:@"CloudSetAddToPlaylistBehaviorOperation - (add to playlist behavior = %@)", v4];
  v6 = [[MSVXPCTransaction alloc] initWithName:v5];
  [v6 beginTransaction];
  v7 = [(CloudLibraryOperation *)self musicLibrary];
  v8 = [(CloudLibraryOperation *)self clientIdentity];
  [v7 setClientIdentity:v8];

  v9 = self->_addToPlaylistBehavior;
  v11 = [(CloudLibraryOperation *)self musicLibrary];
  [v11 icd_setSagaCloudAddToPlaylistBehavior:v9];

  v10 = [(CloudLibraryOperation *)self musicLibrary];
  LODWORD(v11) = [v10 sagaOnDiskDatabaseRevision];

  if (v11 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v11;
  }

  v12 = [(CloudLibraryOperation *)self connection];
  v13 = +[ICSetAddToPlaylistBehaviorRequest requestWithDatabaseID:databaseRevision:addToPlaylistBehavior:](ICSetAddToPlaylistBehaviorRequest, "requestWithDatabaseID:databaseRevision:addToPlaylistBehavior:", [v12 databaseID], v11, LOBYTE(self->_addToPlaylistBehavior));
  [v13 setVerificationInteractionLevel:2];
  v14 = dispatch_semaphore_create(0);
  v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v25 = v13;
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending request %p to set add to playlist behavior to %{public}@", buf, 0x16u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100134700;
  v20[3] = &unk_1001DF440;
  v21 = v13;
  v22 = self;
  v23 = v14;
  v16 = v14;
  v17 = v13;
  [v12 sendRequest:v17 withResponseHandler:v20];
  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  v18 = [(CloudLibraryOperation *)self musicLibrary];
  v19 = MSVTCCIdentityForCurrentProcess();
  [v18 setClientIdentity:v19];

  [v6 endTransaction];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CloudSetAddToPlaylistBehaviorOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_addToPlaylistBehavior forKey:{@"CloudSetAddToPlaylistBehaviorOperationBehaviorIDKey", v5.receiver, v5.super_class}];
}

- (CloudSetAddToPlaylistBehaviorOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CloudSetAddToPlaylistBehaviorOperation;
  v5 = [(CloudLibraryOperation *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_addToPlaylistBehavior = [v4 decodeIntegerForKey:@"CloudSetAddToPlaylistBehaviorOperationBehaviorIDKey"];
  }

  return v5;
}

- (CloudSetAddToPlaylistBehaviorOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 addToPlaylistBehavior:(int64_t)a5
{
  v7.receiver = self;
  v7.super_class = CloudSetAddToPlaylistBehaviorOperation;
  result = [(CloudLibraryOperation *)&v7 initWithConfiguration:a3 clientIdentity:a4];
  if (result)
  {
    result->_addToPlaylistBehavior = a5;
  }

  return result;
}

- (CloudSetAddToPlaylistBehaviorOperation)initWithAddToPlaylistBehavior:(int64_t)a3 clientIdentity:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [(CloudSetAddToPlaylistBehaviorOperation *)self initWithConfiguration:v7 clientIdentity:v6 addToPlaylistBehavior:a3];

  return v8;
}

@end