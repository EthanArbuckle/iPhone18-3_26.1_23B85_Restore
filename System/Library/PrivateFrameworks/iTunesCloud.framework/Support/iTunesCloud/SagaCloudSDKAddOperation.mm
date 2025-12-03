@interface SagaCloudSDKAddOperation
- (SagaCloudSDKAddOperation)initWithClientIdentity:(id)identity opaqueID:(id)d bundleID:(id)iD;
- (SagaCloudSDKAddOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity opaqueID:(id)d bundleID:(id)iD;
- (unsigned)currentDatabaseRevision;
- (void)main;
@end

@implementation SagaCloudSDKAddOperation

- (void)main
{
  context = objc_autoreleasePoolPush();
  if (self->_opaqueID)
  {
    updateCompletionBlock3 = [NSString stringWithFormat:@"%@", objc_opt_class()];
    error2 = [[MSVXPCTransaction alloc] initWithName:updateCompletionBlock3];
    [error2 beginTransaction];
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
    [musicLibrary setClientIdentity:clientIdentity];

    connection = [(CloudLibraryOperation *)self connection];
    v7 = -[SagaCloudSDKAddOperation requestWithDatabaseID:databaseRevision:opaqueID:bundleID:](self, "requestWithDatabaseID:databaseRevision:opaqueID:bundleID:", [connection databaseID], -[SagaCloudSDKAddOperation currentDatabaseRevision](self, "currentDatabaseRevision"), self->_opaqueID, self->_bundleID);
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = sub_1000E936C;
    v72 = sub_1000E937C;
    v73 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = sub_1000E936C;
    v66 = sub_1000E937C;
    v67 = 0;
    v8 = os_log_create("com.apple.amp.itunescloudd", "SDK");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      method = [v7 method];
      action = [v7 action];
      v13 = action;
      opaqueID = self->_opaqueID;
      v15 = @"POST";
      *buf = 138544386;
      *&buf[4] = v10;
      if (!method)
      {
        v15 = @"GET";
      }

      *&buf[12] = 2048;
      *&buf[14] = v7;
      *&buf[22] = 2114;
      v81 = v15;
      *v82 = 2114;
      *&v82[2] = action;
      v83 = 2114;
      v84 = opaqueID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending add item request <%{public}@: %p method=%{public}@ action=%{public}@> for opaqueID: %{public}@", buf, 0x34u);
    }

    v16 = dispatch_semaphore_create(0);
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1000E9384;
    v57[3] = &unk_1001DDC90;
    v17 = v7;
    v58 = v17;
    v60 = &v68;
    v61 = &v62;
    v18 = v16;
    v59 = v18;
    [connection sendRequest:v17 withResponseHandler:v57];
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    responseCode = [v69[5] responseCode];
    if (responseCode > 399)
    {
      if (responseCode == 404 || responseCode == 400)
      {
        v20 = 3;
        goto LABEL_18;
      }
    }

    else
    {
      v20 = 1;
      if (responseCode == 200 || responseCode == 204)
      {
LABEL_18:
        [(CloudLibraryOperation *)self setStatus:v20];
        v23 = v63[5];
        if (!v23)
        {
LABEL_37:
          if ([(CloudLibraryOperation *)self status]== 1)
          {
            updateRequired = [v69[5] updateRequired];
            addedItems = [v69[5] addedItems];
            updateCompletionBlock = [(SagaCloudSDKAddOperation *)self updateCompletionBlock];
            v42 = os_log_create("com.apple.amp.itunescloudd", "SDK");
            v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
            if (updateRequired)
            {
              if (v43)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Requesting library update because the response contained update-required flag", buf, 2u);
              }

              configuration = [(CloudLibraryOperation *)self configuration];
              v45 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:configuration];
              clientIdentity2 = [(CloudLibraryOperation *)self clientIdentity];
              v54[0] = _NSConcreteStackBlock;
              v54[1] = 3221225472;
              v54[2] = sub_1000E9768;
              v54[3] = &unk_1001DFC28;
              v56 = updateCompletionBlock;
              v55 = addedItems;
              [v45 updateSagaLibraryWithClientIdentity:clientIdentity2 forReason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:v54];
            }

            else
            {
              if (v43)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Skipping library update because the response did not contain update-required flag", buf, 2u);
              }

              if (updateCompletionBlock)
              {
                (updateCompletionBlock)[2](updateCompletionBlock, addedItems, 0);
              }
            }
          }

          musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
          v48 = MSVTCCIdentityForCurrentProcess();
          [musicLibrary2 setClientIdentity:v48];

          [error2 endTransaction];
          _Block_object_dispose(&v62, 8);

          _Block_object_dispose(&v68, 8);
          goto LABEL_48;
        }

        domain = [v23 domain];
        if ([domain isEqualToString:ICCloudClientErrorDomain])
        {
          v25 = [v63[5] code] == 2019;

          if (!v25)
          {
LABEL_26:
            updateCompletionBlock2 = [(SagaCloudSDKAddOperation *)self updateCompletionBlock];
            if (updateCompletionBlock2)
            {
              domain2 = [v63[5] domain];
              v30 = [domain2 isEqualToString:NSURLErrorDomain];
              v31 = 3;
              if (!v30)
              {
                v31 = 0;
              }

              v51 = v31;

              v32 = +[NSBundle mediaPlayerBundle];
              if (v30)
              {
                [v32 localizedStringForKey:@"NETWORK_FAILED" value:&stru_1001E0388 table:@"MediaPlayer"];
              }

              else
              {
                [v32 localizedStringForKey:@"UNKNOWN_ERROR" value:&stru_1001E0388 table:@"MediaPlayer"];
              }
              v33 = ;

              v74 = 0;
              v75 = &v74;
              v76 = 0x2020000000;
              v34 = qword_100213D70;
              v77 = qword_100213D70;
              if (!qword_100213D70)
              {
                *buf = _NSConcreteStackBlock;
                *&buf[8] = 3221225472;
                *&buf[16] = sub_1000E95E4;
                v81 = &unk_1001DF318;
                *v82 = &v74;
                sub_1000E95E4(buf);
                v34 = v75[3];
              }

              _Block_object_dispose(&v74, 8);
              if (!v34)
              {
                v49 = +[NSAssertionHandler currentHandler];
                v50 = [NSString stringWithUTF8String:"NSString *getMPErrorDomain(void)"];
                [v49 handleFailureInFunction:v50 file:@"SagaCloudSDKAddOperation.m" lineNumber:31 description:{@"%s", dlerror()}];

                __break(1u);
              }

              v35 = *v34;
              v78 = NSLocalizedDescriptionKey;
              v79 = v33;
              v36 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
              v37 = [NSError errorWithDomain:v35 code:v51 userInfo:v36];
              [(CloudLibraryOperation *)self setError:v37];

              error = [(CloudLibraryOperation *)self error];
              (updateCompletionBlock2)[2](updateCompletionBlock2, 0, error);
            }

            goto LABEL_37;
          }

          userInfo = [v63[5] userInfo];
          domain = [userInfo objectForKey:@"CloudLibraryConnectionRequestForbiddenAdditonalErrorCodeKey"];

          if ([domain integerValue] == 954)
          {
            [(CloudLibraryOperation *)self setStatus:3];
            v27 = os_log_create("com.apple.amp.itunescloudd", "SDK");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "cloud-add permamently failed -- item limit exceeded", buf, 2u);
            }
          }
        }

        goto LABEL_26;
      }
    }

    v20 = 2;
    goto LABEL_18;
  }

  v21 = os_log_create("com.apple.amp.itunescloudd", "SDK");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@ SagaCloudSDKAddOperation ID cannot be nil!", buf, 0xCu);
  }

  [MSVAutoBugCapture snapshotWithDomain:MSVAutoBugCaptureDomainiTunesCloud type:@"Bug" subType:@"SagaRequestHandler" context:@"SagaCloudSDKAddOperation passed nil ID" triggerThresholdValues:0 events:0 completion:0];
  [(CloudLibraryOperation *)self setStatus:3];
  v22 = [NSError msv_errorWithDomain:ICCloudClientErrorDomain code:2003 debugDescription:@"ID cannot be nil"];
  [(CloudLibraryOperation *)self setError:v22];

  updateCompletionBlock3 = [(SagaCloudSDKAddOperation *)self updateCompletionBlock];
  if (updateCompletionBlock3)
  {
    error2 = [(CloudLibraryOperation *)self error];
    (updateCompletionBlock3)[2](updateCompletionBlock3, 0, error2);
LABEL_48:
  }

  objc_autoreleasePoolPop(context);
}

- (unsigned)currentDatabaseRevision
{
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  sagaOnDiskDatabaseRevision = [musicLibrary sagaOnDiskDatabaseRevision];

  if (sagaOnDiskDatabaseRevision <= 1)
  {
    return 1;
  }

  else
  {
    return sagaOnDiskDatabaseRevision;
  }
}

- (SagaCloudSDKAddOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity opaqueID:(id)d bundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = SagaCloudSDKAddOperation;
  v12 = [(CloudLibraryOperation *)&v18 initWithConfiguration:configuration clientIdentity:identity];
  if (v12)
  {
    v13 = [dCopy copy];
    opaqueID = v12->_opaqueID;
    v12->_opaqueID = v13;

    v15 = [iDCopy copy];
    bundleID = v12->_bundleID;
    v12->_bundleID = v15;
  }

  return v12;
}

- (SagaCloudSDKAddOperation)initWithClientIdentity:(id)identity opaqueID:(id)d bundleID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  identityCopy = identity;
  v11 = objc_opt_new();
  v12 = [(SagaCloudSDKAddOperation *)self initWithConfiguration:v11 clientIdentity:identityCopy opaqueID:dCopy bundleID:iDCopy];

  return v12;
}

@end