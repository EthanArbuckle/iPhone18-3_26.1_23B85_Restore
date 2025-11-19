@interface SagaAddLibraryPinOperation
- (SagaAddLibraryPinOperation)initWithCoder:(id)a3;
- (id)_initWithConfiguration:(id)a3 persistentID:(int64_t)a4 cloudID:(int64_t)a5 cloudAlbumID:(id)a6 cloudArtistID:(id)a7 type:(int64_t)a8 defaultAction:(int64_t)a9 completion:(id)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
      v38 = [v4 isWatch];
    }

    else
    {
      v38 = 1;
    }

    v39 = [NSString stringWithFormat:@"%@", objc_opt_class()];
    v10 = [[MSVXPCTransaction alloc] initWithName:v39];
    [v10 beginTransaction];
    v11 = [(CloudLibraryOperation *)self musicLibrary];
    v12 = [(CloudLibraryOperation *)self clientIdentity];
    [v11 setClientIdentity:v12];

    v13 = [(CloudLibraryOperation *)self musicLibrary];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000B00E8;
    v48[3] = &unk_1001DCA70;
    v48[4] = self;
    v48[5] = &v50;
    v49 = 1032;
    v48[6] = v54;
    v48[7] = v56;
    [v13 performDatabaseTransactionWithBlock:v48];

    if (*(v51 + 24) == 1)
    {
      v14 = [(CloudLibraryOperation *)self connection];
      v15 = [ICAddPinRequest alloc];
      v16 = [(SagaLibraryPinBaseOperation *)self entityType];
      v17 = [(SagaLibraryPinBaseOperation *)self action];
      v18 = [(SagaLibraryPinBaseOperation *)self positionUUID];
      v19 = [(SagaLibraryPinBaseOperation *)self sagaID];
      v20 = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
      v21 = [v14 databaseID];
      LODWORD(v37) = [(SagaLibraryPinBaseOperation *)self currentDatabaseRevision];
      v22 = [(ICAddPinRequest *)v15 initWithEntityType:v16 pinAction:v17 positionUUID:v18 cloudID:v19 cloudLibraryID:v20 databaseID:v21 databaseRevision:v37];

      [(ICDRequest *)v22 setVerificationInteractionLevel:2];
      v23 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [(ICDRequest *)v22 method];
        v27 = [(ICDRequest *)v22 action];
        v28 = v27;
        v29 = @"POST";
        *buf = 138544386;
        *&buf[4] = self;
        *&buf[12] = 2114;
        if (!v26)
        {
          v29 = @"GET";
        }

        *&buf[14] = v25;
        *&buf[22] = 2048;
        v61 = v22;
        *v62 = 2114;
        *&v62[2] = v29;
        *&v62[10] = 2114;
        *&v62[12] = v27;
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
      v45 = self;
      v47 = buf;
      v32 = v30;
      v46 = v32;
      [v14 sendRequest:v31 withResponseHandler:v43];
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

    if (!(([(CloudLibraryOperation *)self status]!= 1) | v38 & 1))
    {
      v41.receiver = self;
      v41.super_class = SagaAddLibraryPinOperation;
      [(SagaLibraryPinBaseOperation *)&v41 preparePinForAutomaticDownload];
    }

    v35 = [(CloudLibraryOperation *)self musicLibrary];
    v36 = MSVTCCIdentityForCurrentProcess();
    [v35 setClientIdentity:v36];

    [v10 endTransaction];
    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(v54, 8);
    _Block_object_dispose(v56, 8);
  }

  else
  {
    v5 = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
    v6 = v5 == 0;

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
      v9 = [(CloudLibraryOperation *)self error];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Not running %{public}@ - error=%{public}@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(context);
}

- (id)description
{
  v3 = [(SagaLibraryPinBaseOperation *)self pinPersistentID];
  v4 = [(SagaLibraryPinBaseOperation *)self persistentID];
  v5 = [(SagaLibraryPinBaseOperation *)self sagaID];
  v6 = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
  [(SagaLibraryPinBaseOperation *)self entityType];
  v7 = NSStringFromICLibraryPinEntityType();
  [(SagaLibraryPinBaseOperation *)self action];
  v8 = NSStringFromICLibraryPinAction();
  v9 = [NSString stringWithFormat:@"<SagaAddLibraryPinOperation=%p, pinID=%lld, entityPID=%lld, sagaID=%lld, cloudLibraryID=%@, entityType=%@, defaultAction=%@, self.state=%d>", self, v3, v4, v5, v6, v7, v8, [(SagaLibraryPinBaseOperation *)self state]];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SagaAddLibraryPinOperation;
  [(SagaLibraryPinBaseOperation *)&v3 encodeWithCoder:a3];
}

- (SagaAddLibraryPinOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SagaAddLibraryPinOperation;
  return [(SagaLibraryPinBaseOperation *)&v4 initWithCoder:a3];
}

- (id)_initWithConfiguration:(id)a3 persistentID:(int64_t)a4 cloudID:(int64_t)a5 cloudAlbumID:(id)a6 cloudArtistID:(id)a7 type:(int64_t)a8 defaultAction:(int64_t)a9 completion:(id)a10
{
  if (a8 == 4)
  {
    v16 = a6;
  }

  else
  {
    v16 = a7;
  }

  v17 = a10;
  v18 = a7;
  v19 = a6;
  v20 = a3;
  v21 = [v20 clientIdentity];
  v25.receiver = self;
  v25.super_class = SagaAddLibraryPinOperation;
  v22 = [(SagaLibraryPinBaseOperation *)&v25 initWithConfiguration:v20 persistentID:a4 cloudID:a5 cloudLibraryID:v16 type:a8 defaultAction:a9 clientIdentity:v21 position:-1 completion:v17];

  return v22;
}

@end