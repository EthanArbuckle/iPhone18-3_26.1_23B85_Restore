@interface SagaRemovePlaylistOperation
- (SagaRemovePlaylistOperation)initWithClientIdentity:(id)a3 PlaylistSagaIDs:(id)a4;
- (SagaRemovePlaylistOperation)initWithCoder:(id)a3;
- (SagaRemovePlaylistOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 playlistSagaIDs:(id)a5 performDeltaSync:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaRemovePlaylistOperation

- (void)main
{
  if ([(NSArray *)self->_playlistSagaIDs count])
  {
    v3 = [NSString stringWithFormat:@"SagaRemovePlaylistOperation - (saga_id count = %llu)", [(NSArray *)self->_playlistSagaIDs count]];
    v4 = [[MSVXPCTransaction alloc] initWithName:v3];
    [v4 beginTransaction];
    v5 = [(CloudLibraryOperation *)self musicLibrary];
    v6 = [(CloudLibraryOperation *)self clientIdentity];
    [v5 setClientIdentity:v6];

    v7 = [(CloudLibraryOperation *)self connection];
    v8 = +[ICBulkRemovePlaylistRequest requestWithDatabaseID:containerIDs:](ICBulkRemovePlaylistRequest, "requestWithDatabaseID:containerIDs:", [v7 databaseID], self->_playlistSagaIDs);
    [v8 setVerificationInteractionLevel:2];
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      if ([v8 method])
      {
        v12 = @"POST";
      }

      else
      {
        v12 = @"GET";
      }

      v13 = [v8 action];
      playlistSagaIDs = self->_playlistSagaIDs;
      *buf = 138544386;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2114;
      v37 = v12;
      *v38 = 2114;
      *&v38[2] = v13;
      *&v38[10] = 2114;
      *&v38[12] = playlistSagaIDs;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending delete request <%{public}@: %p method=%{public}@ action=%{public}@> for playlist saga ids: %{public}@", buf, 0x34u);
    }

    v15 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v37 = sub_1000C23E8;
    *v38 = sub_1000C23F8;
    *&v38[8] = 0;
    v16 = self->_playlistSagaIDs;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000C2400;
    v30[3] = &unk_1001DCCE0;
    v17 = v8;
    v31 = v17;
    v32 = self;
    v35 = buf;
    v18 = v16;
    v33 = v18;
    v19 = v15;
    v34 = v19;
    [v7 sendRequest:v17 withResponseHandler:v30];
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    if ([(CloudLibraryOperation *)self status]!= 1)
    {
      goto LABEL_20;
    }

    if ([*(*&buf[8] + 40) updateRequired])
    {
      v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        v21 = "Requesting library update because the response contained update-required flag";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, v29, 2u);
      }
    }

    else
    {
      performDeltaSync = self->_performDeltaSync;
      v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      v24 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (!performDeltaSync)
      {
        if (v24)
        {
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Skipping library update because the response did not contain update-required flag and it was not requested by the caller", v29, 2u);
        }

        goto LABEL_19;
      }

      if (v24)
      {
        *v29 = 0;
        v21 = "Requesting library update because it was requested by the caller";
        goto LABEL_17;
      }
    }

    v20 = [(CloudLibraryOperation *)self configuration];
    v25 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v20];
    v26 = [(CloudLibraryOperation *)self clientIdentity];
    [v25 updateSagaLibraryWithClientIdentity:v26 forReason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:0];

LABEL_19:
LABEL_20:
    v27 = [(CloudLibraryOperation *)self musicLibrary];
    v28 = MSVTCCIdentityForCurrentProcess();
    [v27 setClientIdentity:v28];

    [v4 endTransaction];
    _Block_object_dispose(buf, 8);

    return;
  }

  v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No playlist saga ids to delete.", buf, 2u);
  }

  [(CloudLibraryOperation *)self setStatus:1];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaRemovePlaylistOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:1 forKey:{@"SagaRemovePlaylistOperationArchiveVersionKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_playlistSagaIDs forKey:@"SagaRemovePlaylistOperationPlaylistSagaIDsKey"];
  [v4 encodeBool:self->_performDeltaSync forKey:@"SagaRemovePlaylistOperationPerformDeltaSyncKey"];
}

- (SagaRemovePlaylistOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SagaRemovePlaylistOperation;
  v5 = [(CloudLibraryOperation *)&v15 initWithCoder:v4];
  if (v5)
  {
    if ([v4 decodeInt32ForKey:@"SagaRemovePlaylistOperationArchiveVersionKey"])
    {
      v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"SagaRemovePlaylistOperationPlaylistSagaIDsKey"];
      v7 = [v4 decodeBoolForKey:@"SagaRemovePlaylistOperationPerformDeltaSyncKey"];
    }

    else
    {
      v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 decodeInt64ForKey:@"SagaRemovePlaylistOperationPlaylistSagaIDKey"]);
      v16 = v8;
      v6 = [NSArray arrayWithObjects:&v16 count:1];

      v7 = 0;
    }

    +[NSMutableArray array];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000C2AC8;
    v14 = v13[3] = &unk_1001DF200;
    v9 = v14;
    [v6 enumerateObjectsUsingBlock:v13];
    v10 = [v6 copy];
    playlistSagaIDs = v5->_playlistSagaIDs;
    v5->_playlistSagaIDs = v10;

    v5->_performDeltaSync = v7;
  }

  return v5;
}

- (SagaRemovePlaylistOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 playlistSagaIDs:(id)a5 performDeltaSync:(BOOL)a6
{
  v10 = a5;
  v18.receiver = self;
  v18.super_class = SagaRemovePlaylistOperation;
  v11 = [(CloudLibraryOperation *)&v18 initWithConfiguration:a3 clientIdentity:a4];
  if (v11)
  {
    +[NSMutableArray array];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000C2C40;
    v12 = v16[3] = &unk_1001DF200;
    v17 = v12;
    [v10 enumerateObjectsUsingBlock:v16];
    playlistSagaIDs = v11->_playlistSagaIDs;
    v11->_playlistSagaIDs = v12;
    v14 = v12;

    v11->_performDeltaSync = a6;
  }

  return v11;
}

- (SagaRemovePlaylistOperation)initWithClientIdentity:(id)a3 PlaylistSagaIDs:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(SagaRemovePlaylistOperation *)self initWithConfiguration:v8 clientIdentity:v7 playlistSagaIDs:v6 performDeltaSync:0];

  return v9;
}

@end