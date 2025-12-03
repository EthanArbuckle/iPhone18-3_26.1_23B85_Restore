@interface CloudLibraryConnection
- (CloudLibraryConnection)initWithConfiguration:(id)configuration;
- (ICUserIdentity)userIdentity;
- (ICUserIdentityStore)userIdentityStore;
- (void)_onQueue_sendRequest:(id)request withInternalResponseHandler:(id)handler;
- (void)connectWithCompletionHandler:(id)handler;
- (void)disconnect;
- (void)sendRequest:(id)request withResponseHandler:(id)handler;
@end

@implementation CloudLibraryConnection

- (void)disconnect
{
  queue = [(CloudLibraryConnection *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F8268;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)connectWithCompletionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F838C;
  v10[3] = &unk_1001DE1C8;
  handlerCopy = handler;
  v4 = handlerCopy;
  v5 = objc_retainBlock(v10);
  queue = [(CloudLibraryConnection *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F845C;
  block[3] = &unk_1001DF5A0;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

- (void)_onQueue_sendRequest:(id)request withInternalResponseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  baseURL = [(ICConnectionConfiguration *)self->_configuration baseURL];
  v8 = [requestCopy requestURLForBaseURL:baseURL sessionID:0];

  v9 = [NSMutableURLRequest requestWithURL:v8];
  bodyData = [requestCopy bodyData];
  v11 = [bodyData length];

  if (v11)
  {
    [v9 setHTTPMethod:@"POST"];
    bodyData2 = [requestCopy bodyData];
    [v9 setHTTPBody:bodyData2];

    [v9 setValue:@"application/x-dmap-tagged" forHTTPHeaderField:@"Content-Type"];
  }

  buildIdentifier = [(ICConnectionConfiguration *)self->_configuration buildIdentifier];
  [v9 setValue:buildIdentifier forHTTPHeaderField:@"Client-Cloud-Daap-Version"];

  purchaseClientIdentifier = [(ICConnectionConfiguration *)self->_configuration purchaseClientIdentifier];
  [v9 setValue:purchaseClientIdentifier forHTTPHeaderField:@"Client-Cloud-Purchase-DAAP-Version"];

  familyMemberStoreID = [(ICConnectionConfiguration *)self->_configuration familyMemberStoreID];
  stringValue = [familyMemberStoreID stringValue];
  [v9 setValue:stringValue forHTTPHeaderField:@"X-FM-Dsid"];

  v17 = +[ICDeviceInfo currentDeviceInfo];
  deviceGUID = [v17 deviceGUID];

  if ([deviceGUID length])
  {
    [v9 setValue:deviceGUID forHTTPHeaderField:ICStoreHTTPHeaderKeyXGUID];
  }

  reason = [requestCopy reason];
  if (reason || (reason = [(ICConnectionConfiguration *)self->_configuration requestReason]) != 0)
  {
    if (reason == 1000)
    {
      v19 = 2;
    }

    else if (reason == 1001)
    {
      v19 = 1;
    }

    else
    {
      v19 = reason;
    }

    v20 = [NSString stringWithFormat:@"%li", v19];
    [v9 setValue:v20 forHTTPHeaderField:@"Client-Cloud-DAAP-Request-Reason"];
  }

  requestingBundleID = [requestCopy requestingBundleID];
  if ([requestingBundleID length])
  {
    [v9 setValue:requestingBundleID forHTTPHeaderField:ICStoreHTTPHeaderKeyXAppleRequestingBundleID];
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
  standardUserDefaults = [v21 standardUserDefaults];
  isPrivateListeningEnabled = [standardUserDefaults isPrivateListeningEnabled];
  if (isPrivateListeningEnabled)
  {
    if ([isPrivateListeningEnabled BOOLValue])
    {
      v23 = @"true";
    }

    else
    {
      v23 = @"false";
    }

    [v9 setValue:v23 forHTTPHeaderField:ICStoreHTTPHeaderKeyXApplePrivateListening];
  }

  sagaClientFeaturesVersion = [requestCopy sagaClientFeaturesVersion];
  if ([(__CFString *)sagaClientFeaturesVersion length])
  {
    v24 = sagaClientFeaturesVersion;
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
    if ([requestCopy includeCloudLibraryDAAPDebugFeature])
    {
      v30 = +[ICDefaults standardDefaults];
      shouldForceServerToUseDAAPDebugFeatureAlwaysPerformResetSync = [v30 shouldForceServerToUseDAAPDebugFeatureAlwaysPerformResetSync];

      v32 = +[ICDefaults standardDefaults];
      shouldForceServerToUseDAAPDebugFeatureAlwaysBackoff = [v32 shouldForceServerToUseDAAPDebugFeatureAlwaysBackoff];

      v34 = shouldForceServerToUseDAAPDebugFeatureAlwaysBackoff ? shouldForceServerToUseDAAPDebugFeatureAlwaysPerformResetSync | 2 : shouldForceServerToUseDAAPDebugFeatureAlwaysPerformResetSync;
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
    if ([requestCopy method])
    {
      v45 = @"POST";
    }

    else
    {
      v45 = @"GET";
    }

    action = [requestCopy action];
    *buf = 138544386;
    *&buf[4] = v44;
    *&buf[12] = 2048;
    *&buf[14] = requestCopy;
    *&buf[22] = 2114;
    v80 = v45;
    *v81 = 2114;
    *&v81[2] = action;
    v82 = 2114;
    v83 = v8;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Sending request: <%{public}@: %p method=%{public}@ action=%{public}@> to URL: %{public}@", buf, 0x34u);
  }

  v47 = os_log_create("com.apple.amp.itunescloudd", "Connections_Oversize");
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    allHTTPHeaderFields = [v9 allHTTPHeaderFields];
    *buf = 138543362;
    *&buf[4] = allHTTPHeaderFields;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Request headers: %{public}@", buf, 0xCu);
  }

  v49 = [ICStoreRequestContext alloc];
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_1000F962C;
  v73[3] = &unk_1001DF490;
  v73[4] = self;
  v50 = requestCopy;
  v74 = v50;
  v51 = [v49 initWithBlock:v73];
  v52 = [[ICStoreURLRequest alloc] initWithURLRequest:v9 requestContext:v51];
  [v52 setCancelOnHTTPErrors:0];
  responseDataDestinationFileURL = [v50 responseDataDestinationFileURL];
  if (responseDataDestinationFileURL)
  {
    v54 = os_log_create("com.apple.amp.itunescloudd", "Connections");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = responseDataDestinationFileURL;
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
  v69 = responseDataDestinationFileURL;
  selfCopy = self;
  v72 = handlerCopy;
  v70 = v50;
  v57 = handlerCopy;
  v58 = v50;
  v59 = responseDataDestinationFileURL;
  v60 = v8;
  [v56 enqueueDataRequest:v52 withCompletionHandler:v67];
}

- (void)sendRequest:(id)request withResponseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  queue = [(CloudLibraryConnection *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FA554;
  block[3] = &unk_1001DF5F0;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(queue, block);
}

- (ICUserIdentityStore)userIdentityStore
{
  configuration = [(CloudLibraryConnection *)self configuration];
  userIdentityStore = [configuration userIdentityStore];

  return userIdentityStore;
}

- (ICUserIdentity)userIdentity
{
  configuration = [(CloudLibraryConnection *)self configuration];
  userIdentity = [configuration userIdentity];

  return userIdentity;
}

- (CloudLibraryConnection)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = CloudLibraryConnection;
  v6 = [(CloudLibraryConnection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = dispatch_queue_create("com.apple.itunescloudd.CloudLibraryConnection.serial", 0);
    queue = v7->_queue;
    v7->_queue = v8;
  }

  return v7;
}

@end