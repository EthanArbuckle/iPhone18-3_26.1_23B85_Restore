@interface SagaCloudAddOperation
- (unsigned)currentDatabaseRevision;
- (void)main;
@end

@implementation SagaCloudAddOperation

- (void)main
{
  context = objc_autoreleasePoolPush();
  v31 = [NSString stringWithFormat:@"%@", objc_opt_class()];
  v3 = [[MSVXPCTransaction alloc] initWithName:v31];
  [v3 beginTransaction];
  v4 = [(CloudLibraryOperation *)self musicLibrary];
  v5 = [(CloudLibraryOperation *)self clientIdentity];
  [v4 setClientIdentity:v5];

  v6 = [(CloudLibraryOperation *)self connection];
  v7 = -[SagaCloudAddOperation cloudAddRequestWithDatabaseID:](self, "cloudAddRequestWithDatabaseID:", [v6 databaseID]);
  v8 = v7;
  if (v7)
  {
    [v7 setVerificationInteractionLevel:2];
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      if ([v8 method])
      {
        v14 = @"POST";
      }

      else
      {
        v14 = @"GET";
      }

      v15 = [v8 action];
      *buf = 138544386;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      *&buf[22] = 2048;
      v46 = v8;
      *v47 = 2114;
      *&v47[2] = v14;
      *&v47[10] = 2114;
      *&v47[12] = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending cloud-add request <%{public}@: %p method=%{public}@ action=%{public}@>", buf, 0x34u);
    }

    [(SagaCloudAddOperation *)self logCloudAddRequestDescription];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = sub_100107148;
    *v47 = sub_100107158;
    *&v47[8] = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_100107148;
    v43 = sub_100107158;
    v44 = 0;
    v16 = dispatch_semaphore_create(0);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100107160;
    v33[3] = &unk_1001DE510;
    v34 = v8;
    v35 = self;
    v37 = buf;
    v38 = &v39;
    v17 = v16;
    v36 = v17;
    [v6 sendRequest:v34 withResponseHandler:v33];
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v18 = [*(*&buf[8] + 40) responseCode];
    if (v18 > 399)
    {
      if (v18 == 404 || v18 == 400)
      {
        v19 = 3;
        goto LABEL_18;
      }
    }

    else
    {
      v19 = 1;
      if (v18 == 200 || v18 == 204)
      {
LABEL_18:
        [(CloudLibraryOperation *)self setStatus:v19];
        v21 = v40[5];
        if (v21)
        {
          v22 = [v21 domain];
          if (![v22 isEqualToString:ICCloudClientErrorDomain])
          {
LABEL_25:

            goto LABEL_26;
          }

          v23 = [v40[5] code] == 2019;

          if (v23)
          {
            v24 = [v40[5] userInfo];
            v22 = [v24 objectForKey:@"CloudLibraryConnectionRequestForbiddenAdditonalErrorCodeKey"];

            if ([v22 integerValue] == 954)
            {
              [(CloudLibraryOperation *)self setStatus:3];
              v25 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *v32 = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "cloud-add permamently failed -- item limit exceeded", v32, 2u);
              }
            }

            goto LABEL_25;
          }
        }

LABEL_26:
        if ([(CloudLibraryOperation *)self status]== 1)
        {
          v26 = [*(*&buf[8] + 40) addedItems];
          [(SagaCloudAddOperation *)self processAddedItems:v26];
          self->_updateRequired = [*(*&buf[8] + 40) updateRequired];
        }

        _Block_object_dispose(&v39, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_29;
      }
    }

    v19 = 2;
    goto LABEL_18;
  }

  v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to create cloud-add request, skipping...", buf, 2u);
  }

  [(CloudLibraryOperation *)self setStatus:3];
LABEL_29:
  if ([(CloudLibraryOperation *)self status]== 3)
  {
    v27 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Operation permanently failed, attempting to remove pending library content...", buf, 2u);
    }

    [(SagaCloudAddOperation *)self removePendingAddedItemsForPermanentlyFailedOperation];
  }

  v28 = [(CloudLibraryOperation *)self musicLibrary];
  v29 = MSVTCCIdentityForCurrentProcess();
  [v28 setClientIdentity:v29];

  [v3 endTransaction];
  objc_autoreleasePoolPop(context);
}

- (unsigned)currentDatabaseRevision
{
  v2 = [(CloudLibraryOperation *)self musicLibrary];
  v3 = [v2 sagaOnDiskDatabaseRevision];

  if (v3 <= 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

@end