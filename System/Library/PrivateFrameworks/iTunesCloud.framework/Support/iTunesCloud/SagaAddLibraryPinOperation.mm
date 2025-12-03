@interface SagaAddLibraryPinOperation
- (SagaAddLibraryPinOperation)initWithCoder:(id)coder;
- (id)_initWithConfiguration:(id)configuration persistentID:(int64_t)d cloudID:(int64_t)iD cloudAlbumID:(id)albumID cloudArtistID:(id)artistID type:(int64_t)type defaultAction:(int64_t)action completion:(id)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)main;
@end

@implementation SagaAddLibraryPinOperation

- (void)main
{
  context = objc_autoreleasePoolPush();
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting SagaAddLibraryPinOperation=%p", buf, 0xCu);
  }

  v59.receiver = self;
  v59.super_class = SagaAddLibraryPinOperation;
  if ([(SagaLibraryPinBaseOperation *)&v59 canRunRequest])
  {
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = sub_1000B00D0;
    v56[4] = sub_1000B00E0;
    v57 = 0;
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x2020000000;
    v55 = 1;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 1;
    if (CFPreferencesGetAppBooleanValue(@"AutomaticDownloadEnabledForLibraryPins", @"com.apple.mobileipod", 0))
    {
      v4 = +[ICDeviceInfo currentDeviceInfo];
      isWatch = [v4 isWatch];
    }

    else
    {
      isWatch = 1;
    }

    v39 = [NSString stringWithFormat:@"%@", objc_opt_class()];
    v10 = [[MSVXPCTransaction alloc] initWithName:v39];
    [v10 beginTransaction];
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
    [musicLibrary setClientIdentity:clientIdentity];

    musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000B00E8;
    v48[3] = &unk_1001DCA70;
    v48[4] = self;
    v48[5] = &v50;
    v49 = 1032;
    v48[6] = v54;
    v48[7] = v56;
    [musicLibrary2 performDatabaseTransactionWithBlock:v48];

    if (*(v51 + 24) == 1)
    {
      connection = [(CloudLibraryOperation *)self connection];
      v15 = [ICAddPinRequest alloc];
      entityType = [(SagaLibraryPinBaseOperation *)self entityType];
      action = [(SagaLibraryPinBaseOperation *)self action];
      positionUUID = [(SagaLibraryPinBaseOperation *)self positionUUID];
      sagaID = [(SagaLibraryPinBaseOperation *)self sagaID];
      cloudLibraryID = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
      databaseID = [connection databaseID];
      LODWORD(v37) = [(SagaLibraryPinBaseOperation *)self currentDatabaseRevision];
      v22 = [(ICAddPinRequest *)v15 initWithEntityType:entityType pinAction:action positionUUID:positionUUID cloudID:sagaID cloudLibraryID:cloudLibraryID databaseID:databaseID databaseRevision:v37];

      [(ICDRequest *)v22 setVerificationInteractionLevel:2];
      v23 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        method = [(ICDRequest *)v22 method];
        action2 = [(ICDRequest *)v22 action];
        v28 = action2;
        v29 = @"POST";
        *buf = 138544386;
        *&buf[4] = self;
        *&buf[12] = 2114;
        if (!method)
        {
          v29 = @"GET";
        }

        *&buf[14] = v25;
        *&buf[22] = 2048;
        v61 = v22;
        *v62 = 2114;
        *&v62[2] = v29;
        *&v62[10] = 2114;
        *&v62[12] = action2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending add pin entity request <%{public}@: %p method=%{public}@ action=%{public}@>", buf, 0x34u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v61 = sub_1000B00D0;
      *v62 = sub_1000B00E0;
      *&v62[8] = 0;
      v30 = dispatch_semaphore_create(0);
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1000B0FDC;
      v43[3] = &unk_1001DF970;
      v31 = v22;
      v44 = v31;
      selfCopy = self;
      v47 = buf;
      v32 = v30;
      v46 = v32;
      [connection sendRequest:v31 withResponseHandler:v43];
      dispatch_semaphore_wait(v32, 0xFFFFFFFFFFFFFFFFLL);
      v33 = *(*&buf[8] + 40);
      v42.receiver = self;
      v42.super_class = SagaAddLibraryPinOperation;
      [(SagaLibraryPinBaseOperation *)&v42 processResponse:v33];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v34 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}@ Cannot run library pins operation", buf, 0xCu);
      }

      [(CloudLibraryOperation *)self setStatus:3];
    }

    if (!(([(CloudLibraryOperation *)self status]!= 1) | isWatch & 1))
    {
      v41.receiver = self;
      v41.super_class = SagaAddLibraryPinOperation;
      [(SagaLibraryPinBaseOperation *)&v41 preparePinForAutomaticDownload];
    }

    musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
    v36 = MSVTCCIdentityForCurrentProcess();
    [musicLibrary3 setClientIdentity:v36];

    [v10 endTransaction];
    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(v54, 8);
    _Block_object_dispose(v56, 8);
  }

  else
  {
    localDatabaseUpdateCompletionHandler = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
    v6 = localDatabaseUpdateCompletionHandler == 0;

    if (!v6)
    {
      v7 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B005C;
      block[3] = &unk_1001DF578;
      block[4] = self;
      dispatch_async(v7, block);
    }

    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      error = [(CloudLibraryOperation *)self error];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = error;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Not running %{public}@ - error=%{public}@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(context);
}

- (id)description
{
  pinPersistentID = [(SagaLibraryPinBaseOperation *)self pinPersistentID];
  persistentID = [(SagaLibraryPinBaseOperation *)self persistentID];
  sagaID = [(SagaLibraryPinBaseOperation *)self sagaID];
  cloudLibraryID = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
  [(SagaLibraryPinBaseOperation *)self entityType];
  v7 = NSStringFromICLibraryPinEntityType();
  [(SagaLibraryPinBaseOperation *)self action];
  v8 = NSStringFromICLibraryPinAction();
  v9 = [NSString stringWithFormat:@"<SagaAddLibraryPinOperation=%p, pinID=%lld, entityPID=%lld, sagaID=%lld, cloudLibraryID=%@, entityType=%@, defaultAction=%@, self.state=%d>", self, pinPersistentID, persistentID, sagaID, cloudLibraryID, v7, v8, [(SagaLibraryPinBaseOperation *)self state]];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SagaAddLibraryPinOperation;
  [(SagaLibraryPinBaseOperation *)&v3 encodeWithCoder:coder];
}

- (SagaAddLibraryPinOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SagaAddLibraryPinOperation;
  return [(SagaLibraryPinBaseOperation *)&v4 initWithCoder:coder];
}

- (id)_initWithConfiguration:(id)configuration persistentID:(int64_t)d cloudID:(int64_t)iD cloudAlbumID:(id)albumID cloudArtistID:(id)artistID type:(int64_t)type defaultAction:(int64_t)action completion:(id)self0
{
  if (type == 4)
  {
    artistIDCopy = albumID;
  }

  else
  {
    artistIDCopy = artistID;
  }

  completionCopy = completion;
  artistIDCopy2 = artistID;
  albumIDCopy2 = albumID;
  configurationCopy = configuration;
  clientIdentity = [configurationCopy clientIdentity];
  v25.receiver = self;
  v25.super_class = SagaAddLibraryPinOperation;
  v22 = [(SagaLibraryPinBaseOperation *)&v25 initWithConfiguration:configurationCopy persistentID:d cloudID:iD cloudLibraryID:artistIDCopy type:type defaultAction:action clientIdentity:clientIdentity position:-1 completion:completionCopy];

  return v22;
}

@end