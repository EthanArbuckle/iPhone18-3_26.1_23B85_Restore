@interface CloudAuthenticateOperation
- (CloudAuthenticateOperation)initWithConfiguration:(id)a3 mergeToCloudLibraryPreference:(id)a4 allowNoisyAuthPrompt:(BOOL)a5 enableLibraryReason:(int64_t)a6 clientIdentity:(id)a7;
- (void)main;
@end

@implementation CloudAuthenticateOperation

- (void)main
{
  v68 = [[MSVXPCTransaction alloc] initWithName:@"CloudAuthenticateOperation"];
  [v68 beginTransaction];
  v3 = [(CloudLibraryOperation *)self musicLibrary];
  v4 = [(CloudLibraryOperation *)self clientIdentity];
  [v3 setClientIdentity:v4];

  v5 = +[ICDServer server];
  v6 = [(CloudLibraryOperation *)self configuration];
  v7 = [v5 daemonOptionsForConfiguration:v6];
  v8 = [v7 prohibitLibraryUpload] ^ 1;

  v9 = [(CloudLibraryOperation *)self musicLibrary];
  v10 = [v9 sagaCloudLibraryCUID];

  v11 = [(CloudLibraryOperation *)self musicLibrary];
  v12 = [v11 sagaCloudLibraryTroveID];

  v69 = v12;
  if ([v10 length])
  {
    v13 = [v12 length] != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 & !v13;
  v15 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    v79 = self;
    v80 = 1024;
    *v81 = v13;
    *&v81[4] = 1024;
    *&v81[6] = v8;
    LOWORD(v82) = 1024;
    *(&v82 + 2) = v8 & !v13;
    HIWORD(v82) = 1024;
    v83 = [(CloudAuthenticateOperation *)self enableReason];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Starting authentication - Device registered with CUID and TroveID=%{BOOL}u, canPerformLibraryUpload=%{BOOL}u, requiresDeviceRegistration=%{BOOL}u, enableReason=%d", buf, 0x24u);
  }

  v16 = [(CloudLibraryOperation *)self userIdentity];
  [(CloudLibraryOperation *)self userIdentityStore];
  v70 = v77 = 0;
  v17 = [v70 getPropertiesForUserIdentity:v16 error:&v77];
  v18 = v77;
  if (v18)
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v18 msv_description];
      *buf = 138543874;
      v79 = self;
      v80 = 2114;
      *v81 = v16;
      *&v81[8] = 2114;
      v82 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to load identity properties for %{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  v21 = [v17 DSID];
  if (!v21)
  {
    v30 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v79 = self;
      v31 = "%{public}@ - Not authenticating ... unable to get properties for specified account";
      v32 = v30;
      v33 = 12;
LABEL_23:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
    }

LABEL_24:

    v34 = [NSError ic_cloudClientErrorWithCode:2009 userInfo:0];
    [(CloudLibraryOperation *)self setError:v34];

    [(CloudLibraryOperation *)self setStatus:3];
    v35 = [(CloudLibraryOperation *)self musicLibrary];
    v36 = MSVTCCIdentityForCurrentProcess();
    [v35 setClientIdentity:v36];

    v29 = v68;
    [v68 endTransaction];
    goto LABEL_46;
  }

  if ((MSVDeviceSupportsMultipleLibraries() & 1) == 0 && ([v17 isActive] & 1) == 0)
  {
    v30 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v79 = self;
      v80 = 2112;
      *v81 = v21;
      v31 = "%{public}@ - Not authenticating ... account is not active. DSID=%@";
      v32 = v30;
      v33 = 22;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (!MSVDeviceSupportsSideLoadedMediaContent())
  {
    goto LABEL_16;
  }

  v66 = v10;
  v22 = [v17 cloudLibraryStateReason];
  v23 = [v22 objectForKey:@"CloudLibraryStateReasonKey"];
  if ([v23 integerValue] != -1 || !self->_enableReason)
  {

    v10 = v66;
LABEL_16:
    v67 = dispatch_semaphore_create(0);
    if (([v17 isActiveLocker] & 1) == 0)
    {
      v24 = +[ICDServer server];
      [v24 setIgnoreAccountChanges:1];

      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_100041388;
      v76[3] = &unk_1001DAAA8;
      v76[4] = self;
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_1000414B8;
      v72[3] = &unk_1001DAAD0;
      v72[4] = self;
      v73 = v16;
      v74 = v21;
      v25 = v67;
      v75 = v25;
      [v70 insertPropertiesForUserIdentity:v73 usingBlock:v76 completionHandler:v72];
      dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
      if ([(CloudLibraryOperation *)self status]== 3)
      {
        v26 = +[ICDServer server];
        [v26 setIgnoreAccountChanges:0];

        v27 = [(CloudLibraryOperation *)self musicLibrary];
        v28 = MSVTCCIdentityForCurrentProcess();
        [v27 setClientIdentity:v28];

        v29 = v68;
        [v68 endTransaction];

LABEL_45:
        goto LABEL_46;
      }
    }

    [(CloudLibraryOperation *)self setStatus:1];
    if (MSVDeviceOSIsInternalInstall() && (+[ICDefaults standardDefaults](ICDefaults, "standardDefaults"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 shouldTreatSagaAddComputerCallAsFailed], v37, v38))
    {
      sleep(5u);
      v39 = [NSError ic_cloudClientErrorWithCode:2022 userInfo:0];
      [(CloudLibraryOperation *)self setError:v39];

      [(CloudLibraryOperation *)self setStatus:3];
      [(CloudAuthenticateOperation *)self setAuthenticateFailureCode:&off_1001ED1B0];
      v40 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
LABEL_44:

        v58 = +[ICDServer server];
        [v58 setIgnoreAccountChanges:0];

        v59 = [(CloudLibraryOperation *)self musicLibrary];
        v60 = MSVTCCIdentityForCurrentProcess();
        [v59 setClientIdentity:v60];

        v29 = v68;
        [v68 endTransaction];
        goto LABEL_45;
      }

      *buf = 138543362;
      v79 = self;
      v41 = "%{public}@ - shouldTreatSagaAddComputerCallAsFailed is set. Will force SagaAddComputer call to fail.";
      v42 = v40;
      v43 = 12;
    }

    else
    {
      if (v14)
      {
        v44 = v10;
        v45 = [(CloudLibraryOperation *)self configuration];
        allowNoisyAuthPrompt = self->_allowNoisyAuthPrompt;
        v71 = 0;
        v47 = sub_1000E54B0(v45, allowNoisyAuthPrompt, &v71);
        v48 = v71;

        if ((v47 & 1) == 0)
        {
          if (!v48)
          {
            v48 = [NSError ic_cloudClientErrorWithCode:2022 userInfo:0];
          }

          [(CloudLibraryOperation *)self setError:v48];
          [(CloudLibraryOperation *)self setStatus:3];
          [(CloudAuthenticateOperation *)self setAuthenticateFailureCode:&off_1001ED1B0];
        }

        v10 = v44;
      }

      if ([(CloudLibraryOperation *)self status]== 1)
      {
        v49 = [(CloudLibraryOperation *)self musicLibrary];
        [v49 setSagaAccountID:v21];

        if ((MSVDeviceSupportsMultipleLibraries() & 1) == 0)
        {
          v50 = +[NSDate distantPast];
          v51 = [(CloudLibraryOperation *)self musicLibrary];
          [v51 setJaliscoLastGeniusUpdateDate:v50];

          v52 = [(CloudLibraryOperation *)self musicLibrary];
          LODWORD(v51) = [v52 jaliscoHasCloudGeniusData];

          if (v51)
          {
            v53 = [(CloudLibraryOperation *)self musicLibrary];
            [v53 clearAllGeniusData];

            v54 = [(CloudLibraryOperation *)self musicLibrary];
            [v54 setJaliscoHasCloudGeniusData:0];
          }
        }

        ICSiriPostDynamiteClientStateChangedNotification();
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, ICCloudClientIsAuthenticatedDidChangeNotification, 0, 0, 1u);
      }

      v40 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v56 = [(CloudLibraryOperation *)self status];
      enableReason = self->_enableReason;
      *buf = 138543874;
      v79 = self;
      v80 = 1024;
      *v81 = v56;
      *&v81[4] = 1024;
      *&v81[6] = enableReason;
      v41 = "%{public}@ - Completed authentication completed with status=%d for reason=%d";
      v42 = v40;
      v43 = 24;
    }

    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
    goto LABEL_44;
  }

  v61 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v62 = self->_enableReason;
    *buf = 138543618;
    v79 = self;
    v80 = 1024;
    *v81 = v62;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%{public}@ - ICML was manually disabled by the user. Not retrying CloudAuthenticateOperation for reason=%d", buf, 0x12u);
  }

  v63 = [NSError ic_cloudClientErrorWithCode:2003 userInfo:0];
  [(CloudLibraryOperation *)self setError:v63];

  [(CloudLibraryOperation *)self setStatus:3];
  v64 = [(CloudLibraryOperation *)self musicLibrary];
  v65 = MSVTCCIdentityForCurrentProcess();
  [v64 setClientIdentity:v65];

  v29 = v68;
  [v68 endTransaction];

  v10 = v66;
LABEL_46:
}

- (CloudAuthenticateOperation)initWithConfiguration:(id)a3 mergeToCloudLibraryPreference:(id)a4 allowNoisyAuthPrompt:(BOOL)a5 enableLibraryReason:(int64_t)a6 clientIdentity:(id)a7
{
  v11.receiver = self;
  v11.super_class = CloudAuthenticateOperation;
  result = [(CloudLibraryOperation *)&v11 initWithConfiguration:a3 clientIdentity:a7];
  if (result)
  {
    result->_mergeToCloudLibraryPreference = a4;
    result->_allowNoisyAuthPrompt = a5;
    result->_enableReason = a6;
  }

  return result;
}

@end