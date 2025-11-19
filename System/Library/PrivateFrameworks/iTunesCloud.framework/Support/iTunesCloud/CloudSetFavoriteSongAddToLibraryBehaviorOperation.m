@interface CloudSetFavoriteSongAddToLibraryBehaviorOperation
- (CloudSetFavoriteSongAddToLibraryBehaviorOperation)initWithCoder:(id)a3;
- (CloudSetFavoriteSongAddToLibraryBehaviorOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 addToLibraryBehavior:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation CloudSetFavoriteSongAddToLibraryBehaviorOperation

- (void)main
{
  addToLibraryBehavior = self->_addToLibraryBehavior;
  v4 = ICCloudClientGetStringForAddToLibraryBehavior();
  v5 = [NSString stringWithFormat:@"CloudSetFavoriteSongAddToLibraryBehaviorOperation - (add to library behavior = %@)", v4];
  v6 = [[MSVXPCTransaction alloc] initWithName:v5];
  [v6 beginTransaction];
  v7 = [(CloudLibraryOperation *)self musicLibrary];
  v8 = [(CloudLibraryOperation *)self clientIdentity];
  [v7 setClientIdentity:v8];

  v9 = self->_addToLibraryBehavior;
  v11 = [(CloudLibraryOperation *)self musicLibrary];
  [v11 icd_setSagaCloudFavoriteSongAddToLibraryBehavior:v9];

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
  v13 = +[ICSetFavoriteSongAddToLibraryBehaviorRequest requestWithDatabaseID:databaseRevision:addToLibraryBehavior:](ICSetFavoriteSongAddToLibraryBehaviorRequest, "requestWithDatabaseID:databaseRevision:addToLibraryBehavior:", [v12 databaseID], v11, LOBYTE(self->_addToLibraryBehavior));
  [v13 setVerificationInteractionLevel:2];
  v14 = dispatch_semaphore_create(0);
  v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v25 = v13;
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending request %p to set add to library behavior to %{public}@", buf, 0x16u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000EA08C;
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
  v5.super_class = CloudSetFavoriteSongAddToLibraryBehaviorOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_addToLibraryBehavior forKey:{@"CloudSetFavoriteSongAddToLibraryBehaviorOperationIDKey", v5.receiver, v5.super_class}];
}

- (CloudSetFavoriteSongAddToLibraryBehaviorOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CloudSetFavoriteSongAddToLibraryBehaviorOperation;
  v5 = [(CloudLibraryOperation *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_addToLibraryBehavior = [v4 decodeIntegerForKey:@"CloudSetFavoriteSongAddToLibraryBehaviorOperationIDKey"];
  }

  return v5;
}

- (CloudSetFavoriteSongAddToLibraryBehaviorOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 addToLibraryBehavior:(int64_t)a5
{
  v7.receiver = self;
  v7.super_class = CloudSetFavoriteSongAddToLibraryBehaviorOperation;
  result = [(CloudLibraryOperation *)&v7 initWithConfiguration:a3 clientIdentity:a4];
  if (result)
  {
    result->_addToLibraryBehavior = a5;
  }

  return result;
}

@end