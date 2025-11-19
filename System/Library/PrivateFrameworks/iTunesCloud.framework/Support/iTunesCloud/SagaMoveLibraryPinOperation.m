@interface SagaMoveLibraryPinOperation
- (SagaMoveLibraryPinOperation)initWithCoder:(id)a3;
- (id)_initWithConfiguration:(id)a3 type:(int64_t)a4 persistentID:(int64_t)a5 cloudID:(int64_t)a6 cloudAlbumID:(id)a7 cloudArtistID:(id)a8 newPositon:(int64_t)a9 completion:(id)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaMoveLibraryPinOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting SagaMoveLibraryPinOperation=%p", buf, 0xCu);
  }

  v75.receiver = self;
  v75.super_class = SagaMoveLibraryPinOperation;
  if ([(SagaLibraryPinBaseOperation *)&v75 canRunRequest])
  {
    if (([(SagaLibraryPinBaseOperation *)self position]& 0x8000000000000000) == 0)
    {
      v69 = 0;
      v70 = &v69;
      v71 = 0x2020000000;
      v72 = 1;
      v65 = 0;
      v66 = &v65;
      v67 = 0x2020000000;
      v68 = 0;
      v59 = 0;
      v60 = &v59;
      v61 = 0x3032000000;
      v62 = sub_10012604C;
      v63 = sub_10012605C;
      v64 = 0;
      v57[0] = 0;
      v57[1] = v57;
      v57[2] = 0x3032000000;
      v57[3] = sub_10012604C;
      v57[4] = sub_10012605C;
      v58 = 0;
      v55[0] = 0;
      v55[1] = v55;
      v55[2] = 0x2020000000;
      v56 = 1;
      v45 = [NSString stringWithFormat:@"%@", objc_opt_class()];
      v5 = [[MSVXPCTransaction alloc] initWithName:v45];
      [v5 beginTransaction];
      v6 = [(CloudLibraryOperation *)self musicLibrary];
      v7 = [(CloudLibraryOperation *)self clientIdentity];
      [v6 setClientIdentity:v7];

      if ([(SagaLibraryPinBaseOperation *)self state])
      {
        *(v70 + 24) = 0;
      }

      else
      {
        v15 = [(CloudLibraryOperation *)self musicLibrary];
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_100126064;
        v54[3] = &unk_1001DEF28;
        v54[4] = self;
        v54[5] = &v69;
        v54[6] = &v65;
        v54[7] = &v59;
        v54[8] = v55;
        v54[9] = v57;
        [v15 performDatabaseTransactionWithBlock:v54];

        if (v70[3])
        {
          v44 = [(CloudLibraryOperation *)self connection];
          v43 = [ICMovePinRequest alloc];
          v42 = [(SagaLibraryPinBaseOperation *)self entityType];
          v41 = v60[5];
          v16 = [(SagaLibraryPinBaseOperation *)self positionUUID];
          v17 = *(v66 + 6);
          v18 = [(SagaLibraryPinBaseOperation *)self sagaID];
          v19 = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
          v20 = [v44 databaseID];
          v52.receiver = self;
          v52.super_class = SagaMoveLibraryPinOperation;
          v21 = [(ICMovePinRequest *)v43 initWithEntityType:v42 insertAfterPositionUUID:v41 newLocationUUID:v16 positionIndex:v17 cloudID:v18 cloudLibraryID:v19 databaseID:__PAIR64__([(SagaLibraryPinBaseOperation *)&v52 currentDatabaseRevision] databaseRevision:v20)];

          v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = v60[5];
            v24 = *(v66 + 6);
            *buf = 138543874;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v23;
            *&buf[22] = 1024;
            LODWORD(v77) = v24;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@ Moving item: insertAfterPositionULID=%{public}@, positionIndex=%d", buf, 0x1Cu);
          }

          if (v21)
          {
            [(ICDRequest *)v21 setVerificationInteractionLevel:2];
            v25 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = objc_opt_class();
              v27 = NSStringFromClass(v26);
              v28 = [(ICDRequest *)v21 method];
              v29 = [(ICDRequest *)v21 action];
              v30 = v29;
              v31 = @"POST";
              *buf = 138544386;
              *&buf[4] = self;
              *&buf[12] = 2114;
              if (!v28)
              {
                v31 = @"GET";
              }

              *&buf[14] = v27;
              *&buf[22] = 2048;
              v77 = v21;
              *v78 = 2114;
              *&v78[2] = v31;
              *&v78[10] = 2114;
              *&v78[12] = v29;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending move pin entity request <%{public}@: %p method=%{public}@ action=%{public}@>", buf, 0x34u);
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v77 = sub_10012604C;
            *v78 = sub_10012605C;
            *&v78[8] = 0;
            v32 = dispatch_semaphore_create(0);
            v47[0] = _NSConcreteStackBlock;
            v47[1] = 3221225472;
            v47[2] = sub_100126CCC;
            v47[3] = &unk_1001DF970;
            v48 = v21;
            v49 = self;
            v51 = buf;
            v33 = v32;
            v50 = v33;
            [v44 sendRequest:v48 withResponseHandler:v47];
            dispatch_semaphore_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
            v34 = *(*&buf[8] + 40);
            v46.receiver = self;
            v46.super_class = SagaMoveLibraryPinOperation;
            [(SagaLibraryPinBaseOperation *)&v46 processResponse:v34];

            _Block_object_dispose(buf, 8);
          }

          goto LABEL_27;
        }
      }

      v35 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@ Cannot run library pins operation", buf, 0xCu);
      }

      [(CloudLibraryOperation *)self setStatus:3];
      v36 = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
      v37 = v36 == 0;

      if (!v37)
      {
        v38 = dispatch_get_global_queue(0, 0);
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_100126C58;
        v53[3] = &unk_1001DF578;
        v53[4] = self;
        dispatch_async(v38, v53);
      }

LABEL_27:
      v39 = [(CloudLibraryOperation *)self musicLibrary];
      v40 = MSVTCCIdentityForCurrentProcess();
      [v39 setClientIdentity:v40];

      [v5 endTransaction];
      _Block_object_dispose(v55, 8);
      _Block_object_dispose(v57, 8);

      _Block_object_dispose(&v59, 8);
      _Block_object_dispose(&v65, 8);
      _Block_object_dispose(&v69, 8);
      goto LABEL_28;
    }

    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Request parameters are not valid (invalid position)", buf, 0xCu);
    }

    [(CloudLibraryOperation *)self setStatus:2];
    v12 = [NSError msv_errorWithDomain:ICErrorDomain code:-8402 debugDescription:@"invalid position to move"];
    [(CloudLibraryOperation *)self setError:v12];

    v13 = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
    LOBYTE(v12) = v13 == 0;

    if ((v12 & 1) == 0)
    {
      v14 = dispatch_get_global_queue(0, 0);
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_100125FD8;
      v73[3] = &unk_1001DF578;
      v73[4] = self;
      dispatch_async(v14, v73);
    }
  }

  else
  {
    v8 = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
    v9 = v8 == 0;

    if (!v9)
    {
      v10 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100125F64;
      block[3] = &unk_1001DF578;
      block[4] = self;
      dispatch_async(v10, block);
    }
  }

LABEL_28:
  objc_autoreleasePoolPop(v3);
}

- (id)description
{
  v3 = [(SagaLibraryPinBaseOperation *)self persistentID];
  v4 = [(SagaLibraryPinBaseOperation *)self sagaID];
  v5 = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
  [(SagaLibraryPinBaseOperation *)self entityType];
  v6 = NSStringFromICLibraryPinEntityType();
  v7 = [NSString stringWithFormat:@"<SagaMoveLibraryPinOperation=%p, persistentID=%lld, sagaID=%lld, cloudLibraryID=%@, entityType=%@, newPosition=%d, state=%d>", self, v3, v4, v5, v6, [(SagaLibraryPinBaseOperation *)self position], [(SagaLibraryPinBaseOperation *)self state]];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SagaMoveLibraryPinOperation;
  [(SagaLibraryPinBaseOperation *)&v3 encodeWithCoder:a3];
}

- (SagaMoveLibraryPinOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SagaMoveLibraryPinOperation;
  return [(SagaLibraryPinBaseOperation *)&v4 initWithCoder:a3];
}

- (id)_initWithConfiguration:(id)a3 type:(int64_t)a4 persistentID:(int64_t)a5 cloudID:(int64_t)a6 cloudAlbumID:(id)a7 cloudArtistID:(id)a8 newPositon:(int64_t)a9 completion:(id)a10
{
  if (a4 == 4)
  {
    v16 = a7;
  }

  else
  {
    v16 = a8;
  }

  v17 = a10;
  v18 = a8;
  v19 = a7;
  v20 = a3;
  v21 = [v20 clientIdentity];
  v25.receiver = self;
  v25.super_class = SagaMoveLibraryPinOperation;
  v22 = [(SagaLibraryPinBaseOperation *)&v25 initWithConfiguration:v20 persistentID:a5 cloudID:a6 cloudLibraryID:v16 type:a4 defaultAction:1 clientIdentity:v21 position:a9 completion:v17];

  return v22;
}

@end