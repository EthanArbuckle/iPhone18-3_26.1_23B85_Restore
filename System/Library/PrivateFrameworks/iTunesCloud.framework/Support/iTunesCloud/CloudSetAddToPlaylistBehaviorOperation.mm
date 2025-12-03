@interface CloudSetAddToPlaylistBehaviorOperation
- (CloudSetAddToPlaylistBehaviorOperation)initWithAddToPlaylistBehavior:(int64_t)behavior clientIdentity:(id)identity;
- (CloudSetAddToPlaylistBehaviorOperation)initWithCoder:(id)coder;
- (CloudSetAddToPlaylistBehaviorOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity addToPlaylistBehavior:(int64_t)behavior;
- (void)encodeWithCoder:(id)coder;
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
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary setClientIdentity:clientIdentity];

  v9 = self->_addToPlaylistBehavior;
  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  [musicLibrary2 icd_setSagaCloudAddToPlaylistBehavior:v9];

  musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
  LODWORD(musicLibrary2) = [musicLibrary3 sagaOnDiskDatabaseRevision];

  if (musicLibrary2 <= 1)
  {
    musicLibrary2 = 1;
  }

  else
  {
    musicLibrary2 = musicLibrary2;
  }

  connection = [(CloudLibraryOperation *)self connection];
  v13 = +[ICSetAddToPlaylistBehaviorRequest requestWithDatabaseID:databaseRevision:addToPlaylistBehavior:](ICSetAddToPlaylistBehaviorRequest, "requestWithDatabaseID:databaseRevision:addToPlaylistBehavior:", [connection databaseID], musicLibrary2, LOBYTE(self->_addToPlaylistBehavior));
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
  selfCopy = self;
  v23 = v14;
  v16 = v14;
  v17 = v13;
  [connection sendRequest:v17 withResponseHandler:v20];
  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  musicLibrary4 = [(CloudLibraryOperation *)self musicLibrary];
  v19 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary4 setClientIdentity:v19];

  [v6 endTransaction];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CloudSetAddToPlaylistBehaviorOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_addToPlaylistBehavior forKey:{@"CloudSetAddToPlaylistBehaviorOperationBehaviorIDKey", v5.receiver, v5.super_class}];
}

- (CloudSetAddToPlaylistBehaviorOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CloudSetAddToPlaylistBehaviorOperation;
  v5 = [(CloudLibraryOperation *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_addToPlaylistBehavior = [coderCopy decodeIntegerForKey:@"CloudSetAddToPlaylistBehaviorOperationBehaviorIDKey"];
  }

  return v5;
}

- (CloudSetAddToPlaylistBehaviorOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity addToPlaylistBehavior:(int64_t)behavior
{
  v7.receiver = self;
  v7.super_class = CloudSetAddToPlaylistBehaviorOperation;
  result = [(CloudLibraryOperation *)&v7 initWithConfiguration:configuration clientIdentity:identity];
  if (result)
  {
    result->_addToPlaylistBehavior = behavior;
  }

  return result;
}

- (CloudSetAddToPlaylistBehaviorOperation)initWithAddToPlaylistBehavior:(int64_t)behavior clientIdentity:(id)identity
{
  identityCopy = identity;
  v7 = objc_opt_new();
  v8 = [(CloudSetAddToPlaylistBehaviorOperation *)self initWithConfiguration:v7 clientIdentity:identityCopy addToPlaylistBehavior:behavior];

  return v8;
}

@end