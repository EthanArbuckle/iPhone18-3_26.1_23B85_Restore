@interface SagaRemoveLibraryPinOperation
- (SagaRemoveLibraryPinOperation)initWithCoder:(id)coder;
- (SagaRemoveLibraryPinOperation)initWithConfiguration:(id)configuration persistentID:(int64_t)d cloudAlbumID:(id)iD completion:(id)completion;
- (SagaRemoveLibraryPinOperation)initWithConfiguration:(id)configuration persistentID:(int64_t)d cloudArtistID:(id)iD completion:(id)completion;
- (SagaRemoveLibraryPinOperation)initWithConfiguration:(id)configuration persistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type completion:(id)completion;
- (id)_initWithConfiguration:(id)configuration type:(int64_t)type persistentID:(int64_t)d cloudID:(int64_t)iD cloudAlbumID:(id)albumID cloudArtistID:(id)artistID clientIdentity:(id)identity completion:(id)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
    context = [NSString stringWithFormat:@"%@", objc_opt_class(), context];
    v5 = [[MSVXPCTransaction alloc] initWithName:context];
    [v5 beginTransaction];
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
    [musicLibrary setClientIdentity:clientIdentity];

    if ([(SagaLibraryPinBaseOperation *)self state])
    {
      localDatabaseUpdateCompletionHandler = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
      v9 = localDatabaseUpdateCompletionHandler == 0;

      if (v9)
      {
LABEL_11:
        connection = [(CloudLibraryOperation *)self connection];
        v15 = [ICRemovePinRequest alloc];
        entityType = [(SagaLibraryPinBaseOperation *)self entityType];
        sagaID = [(SagaLibraryPinBaseOperation *)self sagaID];
        cloudLibraryID = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
        v39.receiver = self;
        v39.super_class = SagaRemoveLibraryPinOperation;
        v19 = -[ICRemovePinRequest initWithEntityType:cloudID:cloudLibraryID:databaseID:databaseRevision:](v15, "initWithEntityType:cloudID:cloudLibraryID:databaseID:databaseRevision:", entityType, sagaID, cloudLibraryID, [connection databaseID], -[SagaLibraryPinBaseOperation currentDatabaseRevision](&v39, "currentDatabaseRevision"));

        if (v19)
        {
          [(ICDRequest *)v19 setVerificationInteractionLevel:2];
          v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            method = [(ICDRequest *)v19 method];
            action = [(ICDRequest *)v19 action];
            v25 = action;
            v26 = @"POST";
            *buf = 138544386;
            *&buf[4] = self;
            *&buf[12] = 2114;
            if (!method)
            {
              v26 = @"GET";
            }

            *&buf[14] = v22;
            *&buf[22] = 2048;
            v47 = v19;
            *v48 = 2114;
            *&v48[2] = v26;
            *&v48[10] = 2114;
            *&v48[12] = action;
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
          selfCopy = self;
          v38 = buf;
          v28 = v27;
          v37 = v28;
          [connection sendRequest:v35 withResponseHandler:v34];
          dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
          v29 = *(*&buf[8] + 40);
          v33.receiver = self;
          v33.super_class = SagaRemoveLibraryPinOperation;
          [(SagaLibraryPinBaseOperation *)&v33 processResponse:v29];

          _Block_object_dispose(buf, 8);
        }

        musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
        v31 = MSVTCCIdentityForCurrentProcess();
        [musicLibrary2 setClientIdentity:v31];

        [v5 endTransaction];
        _Block_object_dispose(v42, 8);

        goto LABEL_18;
      }

      musicLibrary3 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BE8F4;
      block[3] = &unk_1001DF578;
      block[4] = self;
      dispatch_async(musicLibrary3, block);
    }

    else
    {
      musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000BE364;
      v41[3] = &unk_1001DF6B8;
      v41[4] = self;
      v41[5] = v42;
      [musicLibrary3 performDatabaseTransactionWithBlock:v41];
    }

    goto LABEL_11;
  }

  localDatabaseUpdateCompletionHandler2 = [(SagaLibraryPinBaseOperation *)self localDatabaseUpdateCompletionHandler];
  v12 = localDatabaseUpdateCompletionHandler2 == 0;

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
  persistentID = [(SagaLibraryPinBaseOperation *)self persistentID];
  sagaID = [(SagaLibraryPinBaseOperation *)self sagaID];
  cloudLibraryID = [(SagaLibraryPinBaseOperation *)self cloudLibraryID];
  [(SagaLibraryPinBaseOperation *)self entityType];
  v6 = NSStringFromICLibraryPinEntityType();
  name = [(SagaRemoveLibraryPinOperation *)self name];
  v8 = [NSString stringWithFormat:@"<SagaRemoveLibraryPinOperation=%p, persistentID=%lld, sagaID=%lld, cloudLibraryID=%@, entityType=%@, name=%@, state=%d>", self, persistentID, sagaID, cloudLibraryID, v6, name, [(SagaLibraryPinBaseOperation *)self state]];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SagaRemoveLibraryPinOperation;
  [(SagaLibraryPinBaseOperation *)&v3 encodeWithCoder:coder];
}

- (SagaRemoveLibraryPinOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SagaRemoveLibraryPinOperation;
  return [(SagaLibraryPinBaseOperation *)&v4 initWithCoder:coder];
}

- (id)_initWithConfiguration:(id)configuration type:(int64_t)type persistentID:(int64_t)d cloudID:(int64_t)iD cloudAlbumID:(id)albumID cloudArtistID:(id)artistID clientIdentity:(id)identity completion:(id)self0
{
  if (type != 4)
  {
    albumID = artistID;
  }

  v13.receiver = self;
  v13.super_class = SagaRemoveLibraryPinOperation;
  return [(SagaLibraryPinBaseOperation *)&v13 initWithConfiguration:configuration persistentID:d cloudID:iD cloudLibraryID:albumID type:type defaultAction:1 clientIdentity:identity position:-1 completion:completion];
}

- (SagaRemoveLibraryPinOperation)initWithConfiguration:(id)configuration persistentID:(int64_t)d cloudArtistID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  configurationCopy = configuration;
  clientIdentity = [configurationCopy clientIdentity];
  v14 = [(SagaRemoveLibraryPinOperation *)self _initWithConfiguration:configurationCopy type:3 persistentID:d cloudID:0 cloudAlbumID:0 cloudArtistID:iDCopy clientIdentity:clientIdentity completion:completionCopy];

  return v14;
}

- (SagaRemoveLibraryPinOperation)initWithConfiguration:(id)configuration persistentID:(int64_t)d cloudAlbumID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  configurationCopy = configuration;
  clientIdentity = [configurationCopy clientIdentity];
  v14 = [(SagaRemoveLibraryPinOperation *)self _initWithConfiguration:configurationCopy type:4 persistentID:d cloudID:0 cloudAlbumID:iDCopy cloudArtistID:0 clientIdentity:clientIdentity completion:completionCopy];

  return v14;
}

- (SagaRemoveLibraryPinOperation)initWithConfiguration:(id)configuration persistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  clientIdentity = [configurationCopy clientIdentity];
  v15 = [(SagaRemoveLibraryPinOperation *)self _initWithConfiguration:configurationCopy type:type persistentID:d cloudID:iD cloudAlbumID:0 cloudArtistID:0 clientIdentity:clientIdentity completion:completionCopy];

  return v15;
}

@end