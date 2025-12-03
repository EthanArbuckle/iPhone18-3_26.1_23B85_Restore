@interface SagaMoveLibraryPinOperation
- (SagaMoveLibraryPinOperation)initWithCoder:(id)coder;
- (id)_initWithConfiguration:(id)configuration type:(int64_t)type persistentID:(int64_t)d cloudID:(int64_t)iD cloudAlbumID:(id)albumID cloudArtistID:(id)artistID newPositon:(int64_t)positon completion:(id)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
      musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
      clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
      [musicLibrary setClientIdentity:clientIdentity];

      if ([(SagaLibraryPinBaseOperation *)self state])
      {
        *(v70 + 24) = 0;
      }

      else
      {
        musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
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
        [musicLibrary2 performDatabaseTransactionWithBlock:v54];

        if (v70[3])
        {
          connection = [(CloudLibraryOperation *)self connection];
          v43 = [ICMovePinRequest alloc];
          entityType = [(SagaLibraryPinBaseOperation *)self entityType];
          v41 = v60[5];
          positionUUID = [(SagaLibraryPinBaseOperation *)self positionUUID];
          v17 = *(v66 + 6);
          sagaID = [(SagaLibraryPinBaseOperation *)self sagaID];
          cloudLibraryID = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
          databaseID = [connection databaseID];
          v52.receiver = self;
          v52.super_class = SagaMoveLibraryPinOperation;
          v21 = [(ICMovePinRequest *)v43 initWithEntityType:entityType insertAfterPositionUUID:v41 newLocationUUID:positionUUID positionIndex:v17 cloudID:sagaID cloudLibraryID:cloudLibraryID databaseID:__PAIR64__([(SagaLibraryPinBaseOperation *)&v52 currentDatabaseRevision] databaseRevision:databaseID)];

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
              method = [(ICDRequest *)v21 method];
              action = [(ICDRequest *)v21 action];
              v30 = action;
              v31 = @"POST";
              *buf = 138544386;
              *&buf[4] = self;
              *&buf[12] = 2114;
              if (!method)
              {
                v31 = @"GET";
              }

              *&buf[14] = v27;
              *&buf[22] = 2048;
              v77 = v21;
              *v78 = 2114;
              *&v78[2] = v31;
              *&v78[10] = 2114;
              *&v78[12] = action;
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
            selfCopy = self;
            v51 = buf;
            v33 = v32;
            v50 = v33;
            [connection sendRequest:v48 withResponseHandler:v47];
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
      localDatabaseUpdateCompletionHandler = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
      v37 = localDatabaseUpdateCompletionHandler == 0;

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
      musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
      v40 = MSVTCCIdentityForCurrentProcess();
      [musicLibrary3 setClientIdentity:v40];

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

    localDatabaseUpdateCompletionHandler2 = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
    LOBYTE(v12) = localDatabaseUpdateCompletionHandler2 == 0;

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
    localDatabaseUpdateCompletionHandler3 = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
    v9 = localDatabaseUpdateCompletionHandler3 == 0;

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
  persistentID = [(SagaLibraryPinBaseOperation *)self persistentID];
  sagaID = [(SagaLibraryPinBaseOperation *)self sagaID];
  cloudLibraryID = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
  [(SagaLibraryPinBaseOperation *)self entityType];
  v6 = NSStringFromICLibraryPinEntityType();
  v7 = [NSString stringWithFormat:@"<SagaMoveLibraryPinOperation=%p, persistentID=%lld, sagaID=%lld, cloudLibraryID=%@, entityType=%@, newPosition=%d, state=%d>", self, persistentID, sagaID, cloudLibraryID, v6, [(SagaLibraryPinBaseOperation *)self position], [(SagaLibraryPinBaseOperation *)self state]];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SagaMoveLibraryPinOperation;
  [(SagaLibraryPinBaseOperation *)&v3 encodeWithCoder:coder];
}

- (SagaMoveLibraryPinOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SagaMoveLibraryPinOperation;
  return [(SagaLibraryPinBaseOperation *)&v4 initWithCoder:coder];
}

- (id)_initWithConfiguration:(id)configuration type:(int64_t)type persistentID:(int64_t)d cloudID:(int64_t)iD cloudAlbumID:(id)albumID cloudArtistID:(id)artistID newPositon:(int64_t)positon completion:(id)self0
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
  v25.super_class = SagaMoveLibraryPinOperation;
  v22 = [(SagaLibraryPinBaseOperation *)&v25 initWithConfiguration:configurationCopy persistentID:d cloudID:iD cloudLibraryID:artistIDCopy type:type defaultAction:1 clientIdentity:clientIdentity position:positon completion:completionCopy];

  return v22;
}

@end