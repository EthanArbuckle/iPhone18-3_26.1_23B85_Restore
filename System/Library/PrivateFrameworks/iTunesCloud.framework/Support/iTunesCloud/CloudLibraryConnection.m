@interface CloudLibraryConnection
- (CloudLibraryConnection)initWithConfiguration:(id)a3;
- (ICUserIdentity)userIdentity;
- (ICUserIdentityStore)userIdentityStore;
- (void)_onQueue_sendRequest:(id)a3 withInternalResponseHandler:(id)a4;
- (void)connectWithCompletionHandler:(id)a3;
- (void)disconnect;
- (void)sendRequest:(id)a3 withResponseHandler:(id)a4;
@end

@implementation CloudLibraryConnection

- (void)disconnect
{
  v3 = [(CloudLibraryConnection *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F8268;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)connectWithCompletionHandler:(id)a3
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F838C;
  v10[3] = &unk_1001DE1C8;
  v11 = a3;
  v4 = v11;
  v5 = objc_retainBlock(v10);
  v6 = [(CloudLibraryConnection *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F845C;
  block[3] = &unk_1001DF5A0;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)_onQueue_sendRequest:(id)a3 withInternalResponseHandler:(id)a4
{
  v6 = a3;
  v61 = a4;
  v7 = [(ICConnectionConfiguration *)self->_configuration baseURL];
  v8 = [v6 requestURLForBaseURL:v7 sessionID:0];

  v9 = [NSMutableURLRequest requestWithURL:v8];
  v10 = [v6 bodyData];
  v11 = [v10 length];

  if (v11)
  {
    [v9 setHTTPMethod:@"POST"];
    v12 = [v6 bodyData];
    [v9 setHTTPBody:v12];

    [v9 setValue:@"application/x-dmap-tagged" forHTTPHeaderField:@"Content-Type"];
  }

  v13 = [(ICConnectionConfiguration *)self->_configuration buildIdentifier];
  [v9 setValue:v13 forHTTPHeaderField:@"Client-Cloud-Daap-Version"];

  v14 = [(ICConnectionConfiguration *)self->_configuration purchaseClientIdentifier];
  [v9 setValue:v14 forHTTPHeaderField:@"Client-Cloud-Purchase-DAAP-Version"];

  v15 = [(ICConnectionConfiguration *)self->_configuration familyMemberStoreID];
  v16 = [v15 stringValue];
  [v9 setValue:v16 forHTTPHeaderField:@"X-FM-Dsid"];

  v17 = +[ICDeviceInfo currentDeviceInfo];
  v64 = [v17 deviceGUID];

  if ([v64 length])
  {
    [v9 setValue:v64 forHTTPHeaderField:ICStoreHTTPHeaderKeyXGUID];
  }

  v18 = [v6 reason];
  if (v18 || (v18 = [(ICConnectionConfiguration *)self->_configuration requestReason]) != 0)
  {
    if (v18 == 1000)
    {
      v19 = 2;
    }

    else if (v18 == 1001)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = [NSString stringWithFormat:@"%li", v19];
    [v9 setValue:v20 forHTTPHeaderField:@"Client-Cloud-DAAP-Request-Reason"];
  }

  v63 = [v6 requestingBundleID];
  if ([v63 length])
  {
    [v9 setValue:v63 forHTTPHeaderField:ICStoreHTTPHeaderKeyXAppleRequestingBundleID];
  }

  v75 = 0;
  v76 = &v75;
  v77 = 0x2050000000;
  v21 = qword_100213DA0;
  v78 = qword_100213DA0;
  if (!qword_100213DA0)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000F9440;
    v80 = &unk_1001DF318;
    *v81 = &v75;
    sub_1000F9440(buf);
    v21 = v76[3];
  }

  v22 = v21;
  _Block_object_dispose(&v75, 8);
  v62 = [v21 standardUserDefaults];
  v65 = [v62 isPrivateListeningEnabled];
  if (v65)
  {
    if ([v65 BOOLValue])
    {
      v23 = @"true";
    }

    else
    {
      v23 = @"false";
    }

    [v9 setValue:v23 forHTTPHeaderField:ICStoreHTTPHeaderKeyXApplePrivateListening];
  }

  v66 = [v6 sagaClientFeaturesVersion];
  if ([(__CFString *)v66 length])
  {
    v24 = v66;
  }

  else
  {
    v24 = &stru_1001E0388;
  }

  [v9 setValue:v24 forHTTPHeaderField:ICStoreHTTPHeaderKeyXDAAPClientFeaturesVersion];
  quot = 27;
  v26 = &v80;
  do
  {
    v27 = ldiv(quot, 10);
    quot = v27.quot;
    if (v27.rem >= 0)
    {
      LOBYTE(v28) = v27.rem;
    }

    else
    {
      v28 = -v27.rem;
    }

    *(v26 - 1) = v28 + 48;
    v26 = (v26 - 1);
  }

  while (v27.quot);
  v29 = CFStringCreateWithBytes(0, v26, &v80 - v26, 0x8000100u, 0);
  [v9 setValue:v29 forHTTPHeaderField:ICStoreHTTPHeaderKeyXDAAPSupportedFeatures];

  [v9 setTimeoutInterval:120.0];
  if (MSVDeviceOSIsInternalInstall())
  {
    if ([v6 includeCloudLibraryDAAPDebugFeature])
    {
      v30 = +[ICDefaults standardDefaults];
      v31 = [v30 shouldForceServerToUseDAAPDebugFeatureAlwaysPerformResetSync];

      v32 = +[ICDefaults standardDefaults];
      v33 = [v32 shouldForceServerToUseDAAPDebugFeatureAlwaysBackoff];

      v34 = v33 ? v31 | 2 : v31;
      if (v34)
      {
        v35 = v34;
        v36 = &v80;
        do
        {
          v37 = ldiv(v35, 10);
          v35 = v37.quot;
          if (v37.rem >= 0)
          {
            LOBYTE(v38) = v37.rem;
          }

          else
          {
            v38 = -v37.rem;
          }

          *(v36 - 1) = v38 + 48;
          v36 = (v36 - 1);
        }

        while (v37.quot);
        v39 = CFStringCreateWithBytes(0, v36, &v80 - v36, 0x8000100u, 0);
        [v9 setValue:v39 forHTTPHeaderField:ICStoreHTTPHeaderKeyXDAAPClientDebugFeatures];

        v40 = os_log_create("com.apple.amp.itunescloudd", "Connections");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v34;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Setting debugFeaturesValue=%d for header DAAP-debug-features", buf, 8u);
        }
      }
    }

    v41 = +[ICDefaults standardDefaults];
    [v41 clearShouldForceServerToUseDAAPDebugFeatures];
  }

  v42 = os_log_create("com.apple.amp.itunescloudd", "Connections");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    if ([v6 method])
    {
      v45 = @"POST";
    }

    else
    {
      v45 = @"GET";
    }

    v46 = [v6 action];
    *buf = 138544386;
    *&buf[4] = v44;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    v80 = v45;
    *v81 = 2114;
    *&v81[2] = v46;
    v82 = 2114;
    v83 = v8;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Sending request: <%{public}@: %p method=%{public}@ action=%{public}@> to URL: %{public}@", buf, 0x34u);
  }

  v47 = os_log_create("com.apple.amp.itunescloudd", "Connections_Oversize");
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [v9 allHTTPHeaderFields];
    *buf = 138543362;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Request headers: %{public}@", buf, 0xCu);
  }

  v49 = [ICStoreRequestContext alloc];
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_1000F962C;
  v73[3] = &unk_1001DF490;
  v73[4] = self;
  v50 = v6;
  v74 = v50;
  v51 = [v49 initWithBlock:v73];
  v52 = [[ICStoreURLRequest alloc] initWithURLRequest:v9 requestContext:v51];
  [v52 setCancelOnHTTPErrors:0];
  v53 = [v50 responseDataDestinationFileURL];
  if (v53)
  {
    v54 = os_log_create("com.apple.amp.itunescloudd", "Connections");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v53;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Downloading response to: %{public}@", buf, 0xCu);
    }
  }

  v55 = +[ICURLSessionManager sharedSessionManager];
  v56 = [v55 sessionWithIdentifier:@"com.apple.itunescloudd.CloudLibraryConnection" creationBlock:&stru_1001DE150];

  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1000F976C;
  v67[3] = &unk_1001DE178;
  v68 = v8;
  v69 = v53;
  v71 = self;
  v72 = v61;
  v70 = v50;
  v57 = v61;
  v58 = v50;
  v59 = v53;
  v60 = v8;
  [v56 enqueueDataRequest:v52 withCompletionHandler:v67];
}

- (void)sendRequest:(id)a3 withResponseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudLibraryConnection *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FA554;
  block[3] = &unk_1001DF5F0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (ICUserIdentityStore)userIdentityStore
{
  v2 = [(CloudLibraryConnection *)self configuration];
  v3 = [v2 userIdentityStore];

  return v3;
}

- (ICUserIdentity)userIdentity
{
  v2 = [(CloudLibraryConnection *)self configuration];
  v3 = [v2 userIdentity];

  return v3;
}

- (CloudLibraryConnection)initWithConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CloudLibraryConnection;
  v6 = [(CloudLibraryConnection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = dispatch_queue_create("com.apple.itunescloudd.CloudLibraryConnection.serial", 0);
    queue = v7->_queue;
    v7->_queue = v8;
  }

  return v7;
}

@end