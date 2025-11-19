@interface SagaRemoveLibraryPinOperation
- (SagaRemoveLibraryPinOperation)initWithCoder:(id)a3;
- (SagaRemoveLibraryPinOperation)initWithConfiguration:(id)a3 persistentID:(int64_t)a4 cloudAlbumID:(id)a5 completion:(id)a6;
- (SagaRemoveLibraryPinOperation)initWithConfiguration:(id)a3 persistentID:(int64_t)a4 cloudArtistID:(id)a5 completion:(id)a6;
- (SagaRemoveLibraryPinOperation)initWithConfiguration:(id)a3 persistentID:(int64_t)a4 cloudID:(int64_t)a5 type:(int64_t)a6 completion:(id)a7;
- (id)_initWithConfiguration:(id)a3 type:(int64_t)a4 persistentID:(int64_t)a5 cloudID:(int64_t)a6 cloudAlbumID:(id)a7 cloudArtistID:(id)a8 clientIdentity:(id)a9 completion:(id)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaRemoveLibraryPinOperation

- (void)main
{
  context = objc_autoreleasePoolPush();
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting SagaRemoveLibraryPinOperation=%p", buf, 0xCu);
  }

  v45.receiver = self;
  v45.super_class = SagaRemoveLibraryPinOperation;
  if ([(SagaLibraryPinBaseOperation *)&v45 canRunRequest])
  {
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = sub_1000BE34C;
    v42[4] = sub_1000BE35C;
    v43 = 0;
    v4 = [NSString stringWithFormat:@"%@", objc_opt_class(), context];
    v5 = [[MSVXPCTransaction alloc] initWithName:v4];
    [v5 beginTransaction];
    v6 = [(CloudLibraryOperation *)self musicLibrary];
    v7 = [(CloudLibraryOperation *)self clientIdentity];
    [v6 setClientIdentity:v7];

    if ([(SagaLibraryPinBaseOperation *)self state])
    {
      v8 = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
      v9 = v8 == 0;

      if (v9)
      {
LABEL_11:
        v14 = [(CloudLibraryOperation *)self connection];
        v15 = [ICRemovePinRequest alloc];
        v16 = [(SagaLibraryPinBaseOperation *)self entityType];
        v17 = [(SagaLibraryPinBaseOperation *)self sagaID];
        v18 = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
        v39.receiver = self;
        v39.super_class = SagaRemoveLibraryPinOperation;
        v19 = -[ICRemovePinRequest initWithEntityType:cloudID:cloudLibraryID:databaseID:databaseRevision:](v15, "initWithEntityType:cloudID:cloudLibraryID:databaseID:databaseRevision:", v16, v17, v18, [v14 databaseID], -[SagaLibraryPinBaseOperation currentDatabaseRevision](&v39, "currentDatabaseRevision"));

        if (v19)
        {
          [(ICDRequest *)v19 setVerificationInteractionLevel:2];
          v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v23 = [(ICDRequest *)v19 method];
            v24 = [(ICDRequest *)v19 action];
            v25 = v24;
            v26 = @"POST";
            *buf = 138544386;
            *&buf[4] = self;
            *&buf[12] = 2114;
            if (!v23)
            {
              v26 = @"GET";
            }

            *&buf[14] = v22;
            *&buf[22] = 2048;
            v47 = v19;
            *v48 = 2114;
            *&v48[2] = v26;
            *&v48[10] = 2114;
            *&v48[12] = v24;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending remove pin entity request <%{public}@: %p method=%{public}@ action=%{public}@>", buf, 0x34u);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v47 = sub_1000BE34C;
          *v48 = sub_1000BE35C;
          *&v48[8] = 0;
          v27 = dispatch_semaphore_create(0);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_1000BE968;
          v34[3] = &unk_1001DF970;
          v35 = v19;
          v36 = self;
          v38 = buf;
          v28 = v27;
          v37 = v28;
          [v14 sendRequest:v35 withResponseHandler:v34];
          dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
          v29 = *(*&buf[8] + 40);
          v33.receiver = self;
          v33.super_class = SagaRemoveLibraryPinOperation;
          [(SagaLibraryPinBaseOperation *)&v33 processResponse:v29];

          _Block_object_dispose(buf, 8);
        }

        v30 = [(CloudLibraryOperation *)self musicLibrary];
        v31 = MSVTCCIdentityForCurrentProcess();
        [v30 setClientIdentity:v31];

        [v5 endTransaction];
        _Block_object_dispose(v42, 8);

        goto LABEL_18;
      }

      v10 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BE8F4;
      block[3] = &unk_1001DF578;
      block[4] = self;
      dispatch_async(v10, block);
    }

    else
    {
      v10 = [(CloudLibraryOperation *)self musicLibrary];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000BE364;
      v41[3] = &unk_1001DF6B8;
      v41[4] = self;
      v41[5] = v42;
      [v10 performDatabaseTransactionWithBlock:v41];
    }

    goto LABEL_11;
  }

  v11 = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
  v12 = v11 == 0;

  if (!v12)
  {
    v13 = dispatch_get_global_queue(0, 0);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000BE2D8;
    v44[3] = &unk_1001DF578;
    v44[4] = self;
    dispatch_async(v13, v44);
  }

LABEL_18:
  objc_autoreleasePoolPop(context);
}

- (id)description
{
  v3 = [(SagaLibraryPinBaseOperation *)self persistentID];
  v4 = [(SagaLibraryPinBaseOperation *)self sagaID];
  v5 = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
  [(SagaLibraryPinBaseOperation *)self entityType];
  v6 = NSStringFromICLibraryPinEntityType();
  v7 = [(SagaRemoveLibraryPinOperation *)self name];
  v8 = [NSString stringWithFormat:@"<SagaRemoveLibraryPinOperation=%p, persistentID=%lld, sagaID=%lld, cloudLibraryID=%@, entityType=%@, name=%@, state=%d>", self, v3, v4, v5, v6, v7, [(SagaLibraryPinBaseOperation *)self state]];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SagaRemoveLibraryPinOperation;
  [(SagaLibraryPinBaseOperation *)&v3 encodeWithCoder:a3];
}

- (SagaRemoveLibraryPinOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SagaRemoveLibraryPinOperation;
  return [(SagaLibraryPinBaseOperation *)&v4 initWithCoder:a3];
}

- (id)_initWithConfiguration:(id)a3 type:(int64_t)a4 persistentID:(int64_t)a5 cloudID:(int64_t)a6 cloudAlbumID:(id)a7 cloudArtistID:(id)a8 clientIdentity:(id)a9 completion:(id)a10
{
  if (a4 != 4)
  {
    a7 = a8;
  }

  v13.receiver = self;
  v13.super_class = SagaRemoveLibraryPinOperation;
  return [(SagaLibraryPinBaseOperation *)&v13 initWithConfiguration:a3 persistentID:a5 cloudID:a6 cloudLibraryID:a7 type:a4 defaultAction:1 clientIdentity:a9 position:-1 completion:a10];
}

- (SagaRemoveLibraryPinOperation)initWithConfiguration:(id)a3 persistentID:(int64_t)a4 cloudArtistID:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [v12 clientIdentity];
  v14 = [(SagaRemoveLibraryPinOperation *)self _initWithConfiguration:v12 type:3 persistentID:a4 cloudID:0 cloudAlbumID:0 cloudArtistID:v11 clientIdentity:v13 completion:v10];

  return v14;
}

- (SagaRemoveLibraryPinOperation)initWithConfiguration:(id)a3 persistentID:(int64_t)a4 cloudAlbumID:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [v12 clientIdentity];
  v14 = [(SagaRemoveLibraryPinOperation *)self _initWithConfiguration:v12 type:4 persistentID:a4 cloudID:0 cloudAlbumID:v11 cloudArtistID:0 clientIdentity:v13 completion:v10];

  return v14;
}

- (SagaRemoveLibraryPinOperation)initWithConfiguration:(id)a3 persistentID:(int64_t)a4 cloudID:(int64_t)a5 type:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a3;
  v14 = [v13 clientIdentity];
  v15 = [(SagaRemoveLibraryPinOperation *)self _initWithConfiguration:v13 type:a6 persistentID:a4 cloudID:a5 cloudAlbumID:0 cloudArtistID:0 clientIdentity:v14 completion:v12];

  return v15;
}

@end