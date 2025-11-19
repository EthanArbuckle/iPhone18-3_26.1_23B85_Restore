@interface SagaRemoveItemOperation
- (SagaRemoveItemOperation)initWithClientIdentity:(id)a3 ItemSagaIDs:(id)a4;
- (SagaRemoveItemOperation)initWithCoder:(id)a3;
- (SagaRemoveItemOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 itemSagaIDs:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaRemoveItemOperation

- (void)main
{
  if ([(NSArray *)self->_itemSagaIDs count])
  {
    v3 = [NSString stringWithFormat:@"SagaRemoveItemOperation - (saga_id count = %llu)", [(NSArray *)self->_itemSagaIDs count]];
    v4 = [[MSVXPCTransaction alloc] initWithName:v3];
    [v4 beginTransaction];
    v5 = [(CloudLibraryOperation *)self musicLibrary];
    v6 = [(CloudLibraryOperation *)self clientIdentity];
    [v5 setClientIdentity:v6];

    v7 = [(CloudLibraryOperation *)self connection];
    v8 = +[ICBulkRemoveItemRequest requestWithDatabaseID:itemIDs:](ICBulkRemoveItemRequest, "requestWithDatabaseID:itemIDs:", [v7 databaseID], self->_itemSagaIDs);
    [v8 setVerificationInteractionLevel:2];
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
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
      itemSagaIDs = self->_itemSagaIDs;
      *buf = 138544386;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2114;
      v35 = v12;
      *v36 = 2114;
      *&v36[2] = v13;
      *&v36[10] = 2114;
      *&v36[12] = itemSagaIDs;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending delete request <%{public}@: %p method=%{public}@ action=%{public}@> for item saga ids: %{public}@", buf, 0x34u);
    }

    v15 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = sub_100141068;
    *v36 = sub_100141078;
    *&v36[8] = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100141080;
    v29[3] = &unk_1001DF970;
    v16 = v8;
    v33 = buf;
    v30 = v16;
    v31 = self;
    v17 = v15;
    v32 = v17;
    [v7 sendRequest:v16 withResponseHandler:v29];
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v18 = [*(*&buf[8] + 40) responseCode];
    if (v18 > 399)
    {
      if (v18 == 404 || v18 == 400)
      {
        v19 = 3;
LABEL_18:
        [(CloudLibraryOperation *)self setStatus:v19];
        if ([(CloudLibraryOperation *)self status]== 1)
        {
          v21 = [*(*&buf[8] + 40) updateRequired];
          v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          if (v21)
          {
            if (v23)
            {
              *v28 = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Requesting library update because the response contained update-required flag", v28, 2u);
            }

            v22 = [(CloudLibraryOperation *)self configuration];
            v24 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v22];
            v25 = [(CloudLibraryOperation *)self clientIdentity];
            [v24 updateSagaLibraryWithClientIdentity:v25 forReason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:0];
          }

          else if (v23)
          {
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Skipping library update because the response did not contain update-required flag", v28, 2u);
          }
        }

        v26 = [(CloudLibraryOperation *)self musicLibrary];
        v27 = MSVTCCIdentityForCurrentProcess();
        [v26 setClientIdentity:v27];

        [v4 endTransaction];
        _Block_object_dispose(buf, 8);

        return;
      }
    }

    else
    {
      v19 = 1;
      if (v18 == 200 || v18 == 204)
      {
        goto LABEL_18;
      }
    }

    v19 = 2;
    goto LABEL_18;
  }

  v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No item saga ids to delete.", buf, 2u);
  }

  [(CloudLibraryOperation *)self setStatus:1];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaRemoveItemOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:1 forKey:{@"SagaRemoveItemOperationArchiveVersionKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_itemSagaIDs forKey:@"SagaRemoveItemOperationItemSagaIDsKey"];
}

- (SagaRemoveItemOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SagaRemoveItemOperation;
  v5 = [(CloudLibraryOperation *)&v11 initWithCoder:v4];
  if (v5)
  {
    if ([v4 decodeInt32ForKey:@"SagaRemoveItemOperationArchiveVersionKey"])
    {
      v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"SagaRemoveItemOperationItemSagaIDsKey"];
    }

    else
    {
      v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 decodeInt64ForKey:@"SagaRemoveItemOperationItemSagaIDKey"]);
      v12 = v7;
      v6 = [NSArray arrayWithObjects:&v12 count:1];
    }

    v8 = [v6 copy];
    itemSagaIDs = v5->_itemSagaIDs;
    v5->_itemSagaIDs = v8;
  }

  return v5;
}

- (SagaRemoveItemOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 itemSagaIDs:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = SagaRemoveItemOperation;
  v9 = [(CloudLibraryOperation *)&v13 initWithConfiguration:a3 clientIdentity:a4];
  if (v9)
  {
    v10 = [v8 copy];
    itemSagaIDs = v9->_itemSagaIDs;
    v9->_itemSagaIDs = v10;
  }

  return v9;
}

- (SagaRemoveItemOperation)initWithClientIdentity:(id)a3 ItemSagaIDs:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(SagaRemoveItemOperation *)self initWithConfiguration:v8 clientIdentity:v7 itemSagaIDs:v6];

  return v9;
}

@end