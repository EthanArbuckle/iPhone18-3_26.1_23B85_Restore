@interface SagaUpdateLibraryPinOperation
- (SagaUpdateLibraryPinOperation)initWithCoder:(id)a3;
- (id)_initWithConfiguration:(id)a3 persistentID:(int64_t)a4 cloudID:(int64_t)a5 cloudAlbumID:(id)a6 cloudArtistID:(id)a7 type:(int64_t)a8 defaultAction:(int64_t)a9 completion:(id)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaUpdateLibraryPinOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting SagaUpdateLibraryPinOperation=%p", buf, 0xCu);
  }

  v53.receiver = self;
  v53.super_class = SagaUpdateLibraryPinOperation;
  if ([(SagaLibraryPinBaseOperation *)&v53 canRunRequest])
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 1;
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x3032000000;
    v46[3] = sub_1000D2F60;
    v46[4] = sub_1000D2F70;
    v47 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = 1;
    v34 = [NSString stringWithFormat:@"%@", objc_opt_class()];
    v5 = [[MSVXPCTransaction alloc] initWithName:v34];
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
        if (*(v49 + 24) == 1)
        {
          v14 = [(CloudLibraryOperation *)self connection];
          v15 = [ICUpdatePinActionRequest alloc];
          v16 = [(SagaLibraryPinBaseOperation *)self entityType];
          v17 = [(SagaLibraryPinBaseOperation *)self action];
          v18 = [(SagaLibraryPinBaseOperation *)self sagaID];
          v19 = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
          v41.receiver = self;
          v41.super_class = SagaUpdateLibraryPinOperation;
          v20 = -[ICUpdatePinActionRequest initWithEntityType:pinAction:cloudID:cloudLibraryID:databaseID:databaseRevision:](v15, "initWithEntityType:pinAction:cloudID:cloudLibraryID:databaseID:databaseRevision:", v16, v17, v18, v19, [v14 databaseID], -[SagaLibraryPinBaseOperation currentDatabaseRevision](&v41, "currentDatabaseRevision"));

          if (v20)
          {
            [(ICDRequest *)v20 setVerificationInteractionLevel:2];
            v21 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              v24 = [(ICDRequest *)v20 method];
              v25 = [(ICDRequest *)v20 action];
              v26 = v25;
              v27 = @"POST";
              *buf = 138544386;
              *&buf[4] = self;
              *&buf[12] = 2114;
              if (!v24)
              {
                v27 = @"GET";
              }

              *&buf[14] = v23;
              *&buf[22] = 2048;
              v55 = v20;
              *v56 = 2114;
              *&v56[2] = v27;
              *&v56[10] = 2114;
              *&v56[12] = v25;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending update pin entity request <%{public}@: %p method=%{public}@ action=%{public}@>", buf, 0x34u);
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v55 = sub_1000D2F60;
            *v56 = sub_1000D2F70;
            *&v56[8] = 0;
            v28 = dispatch_semaphore_create(0);
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_1000D3604;
            v36[3] = &unk_1001DF970;
            v37 = v20;
            v38 = self;
            v40 = buf;
            v29 = v28;
            v39 = v29;
            [v14 sendRequest:v37 withResponseHandler:v36];
            dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
            v30 = *(*&buf[8] + 40);
            v35.receiver = self;
            v35.super_class = SagaUpdateLibraryPinOperation;
            [(SagaLibraryPinBaseOperation *)&v35 processResponse:v30];

            _Block_object_dispose(buf, 8);
          }
        }

        else
        {
          v31 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}@ Cannot run library pins operation", buf, 0xCu);
          }

          [(CloudLibraryOperation *)self setStatus:3];
        }

        v32 = [(CloudLibraryOperation *)self musicLibrary];
        v33 = MSVTCCIdentityForCurrentProcess();
        [v32 setClientIdentity:v33];

        [v5 endTransaction];
        _Block_object_dispose(v44, 8);
        _Block_object_dispose(v46, 8);

        _Block_object_dispose(&v48, 8);
        goto LABEL_23;
      }

      v10 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D3590;
      block[3] = &unk_1001DF578;
      block[4] = self;
      dispatch_async(v10, block);
    }

    else
    {
      v10 = [(CloudLibraryOperation *)self musicLibrary];
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1000D2F78;
      v43[3] = &unk_1001DD308;
      v43[4] = self;
      v43[5] = &v48;
      v43[6] = v44;
      v43[7] = v46;
      [v10 performDatabaseTransactionWithBlock:v43];
    }

    goto LABEL_11;
  }

  v11 = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
  v12 = v11 == 0;

  if (!v12)
  {
    v13 = dispatch_get_global_queue(0, 0);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000D2EEC;
    v52[3] = &unk_1001DF578;
    v52[4] = self;
    dispatch_async(v13, v52);
  }

LABEL_23:
  objc_autoreleasePoolPop(v3);
}

- (id)description
{
  v3 = [(SagaLibraryPinBaseOperation *)self persistentID];
  v4 = [(SagaLibraryPinBaseOperation *)self sagaID];
  v5 = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
  [(SagaLibraryPinBaseOperation *)self entityType];
  v6 = NSStringFromICLibraryPinEntityType();
  v7 = [NSString stringWithFormat:@"<SagaUpdateLibraryPinOperation=%p, persistentID=%lld, sagaID=%lld, cloudLibraryID=%@, entityType=%@, state=%d>", self, v3, v4, v5, v6, [(SagaLibraryPinBaseOperation *)self state]];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SagaUpdateLibraryPinOperation;
  [(SagaLibraryPinBaseOperation *)&v3 encodeWithCoder:a3];
}

- (SagaUpdateLibraryPinOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SagaUpdateLibraryPinOperation;
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
  v25.super_class = SagaUpdateLibraryPinOperation;
  v22 = [(SagaLibraryPinBaseOperation *)&v25 initWithConfiguration:v20 persistentID:a4 cloudID:a5 cloudLibraryID:v16 type:a8 defaultAction:a9 clientIdentity:v21 position:-1 completion:v17];

  return v22;
}

@end