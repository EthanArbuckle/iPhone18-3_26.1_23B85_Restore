@interface XPCClient
- (BOOL)_isAdHocCodeSigned;
- (BOOL)_isBetaApp;
- (BOOL)_isNewsstandApp;
- (BOOL)canReceiveMessages;
- (BOOL)isAdHocCodeSigned;
- (BOOL)isAppleSigned;
- (BOOL)isBetaApp;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNewsstandApp;
- (NSString)clientIdentifierHeader;
- (NSString)userAgent;
- (SSXPCConnection)outputConnection;
- (XPCClient)initWithApplicationIdentifier:(id)identifier isAppleSigned:(BOOL)signed;
- (XPCClient)initWithInputConnection:(id)connection;
- (id)_applicationBackgroundModes;
- (id)_initCommon;
- (id)beginBackgroundTaskWithReason:(unsigned int)reason expirationBlock:(id)block;
- (id)copyApplicationBackgroundModes;
- (id)copyInputConnection;
- (id)description;
- (int64_t)_clientType;
- (int64_t)clientType;
- (unsigned)_applicationState;
- (unsigned)applicationState;
- (void)_applicationStateChanged:(id)changed;
- (void)_handleOutputConnectionDisconnect;
- (void)_invalidateBackgroundTaskAssertion:(id)assertion;
- (void)dealloc;
- (void)endBackgroundTaskWithIdentifier:(id)identifier;
- (void)loadSpringBoardStateWithCompletionBlock:(id)block;
- (void)sendCoalescedMessageWithIdentifier:(unint64_t)identifier;
- (void)setOutputConnectionWithConnection:(id)connection;
@end

@implementation XPCClient

- (id)copyInputConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100120584;
  v10 = sub_100120594;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000021C0;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_initCommon
{
  v6.receiver = self;
  v6.super_class = XPCClient;
  v2 = [(XPCClient *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.XPCClient", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_appleSigned = -1;
    v2->_applicationState = -1;
    *&v2->_isNewsstandApp = -1;
    v2->_isAdHocCodeSigned = -1;
  }

  return v2;
}

- (SSXPCConnection)outputConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100120584;
  v10 = sub_100120594;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002728;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dealloc
{
  if (self->_stateChangeObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_stateChangeObserver];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_backgroundTasks;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_backgroundTasks objectForKey:*(*(&v14 + 1) + 8 * v8)];
        processAssertion = [v9 processAssertion];
        [processAssertion setInvalidationHandler:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if (self->_clientIdentifier)
  {
    v11 = +[SpringBoardUtility sharedInstance];
    v12 = [NSArray arrayWithObject:self->_clientIdentifier];
    [v11 endGeneratingStateChangeNotificationsForIdentifiers:v12];
  }

  [(SSXPCConnection *)self->_outputConnection setDisconnectBlock:0];
  v13.receiver = self;
  v13.super_class = XPCClient;
  [(XPCClient *)&v13 dealloc];
}

- (int64_t)_clientType
{
  result = self->_clientType;
  if (result == -1)
  {
    v4 = +[SpringBoardUtility sharedInstance];
    v5 = [v4 mostElevatedApplicationStateForPID:self->_pid];

    if (v5)
    {
      if (v5 == 16)
      {
        result = 2;
      }

      else
      {
        result = 1;
      }

      self->_clientType = result;
    }

    else
    {
      if (self->_clientIdentifier)
      {
        v6 = [LSApplicationProxy applicationProxyForIdentifier:?];
      }

      else
      {
        v6 = 0;
      }

      applicationType = [v6 applicationType];

      v8 = 1;
      if (!applicationType)
      {
        v8 = 2;
      }

      self->_clientType = v8;

      return self->_clientType;
    }
  }

  return result;
}

- (BOOL)_isNewsstandApp
{
  isNewsstandApp = self->_isNewsstandApp;
  if (isNewsstandApp == 255)
  {
    v4 = +[SpringBoardUtility sharedInstance];
    v5 = [v4 copyBundleInfoValueForKey:@"UINewsstandApp" PID:self->_pid];

    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v5 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    self->_isNewsstandApp = bOOLValue;

    isNewsstandApp = self->_isNewsstandApp;
  }

  return isNewsstandApp != 0;
}

- (unsigned)_applicationState
{
  if ([(XPCClient *)self _clientType]!= 1)
  {
    return 0;
  }

  result = self->_applicationState;
  if (result == -1)
  {
    v4 = +[SpringBoardUtility sharedInstance];
    self->_applicationState = [v4 applicationStateForIdentifier:self->_clientIdentifier];

    return self->_applicationState;
  }

  return result;
}

- (id)_applicationBackgroundModes
{
  if (!self->_backgroundModes && [(XPCClient *)self _clientType]== 1)
  {
    v3 = +[SpringBoardUtility sharedInstance];
    v4 = [v3 copyBundleInfoValueForKey:@"UIBackgroundModes" PID:self->_pid];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 copy];
    }

    else
    {
      v5 = objc_alloc_init(NSArray);
    }

    backgroundModes = self->_backgroundModes;
    self->_backgroundModes = v5;
  }

  v7 = self->_backgroundModes;

  return v7;
}

- (int64_t)clientType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 2;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003654;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isBetaApp
{
  if (self->_isBetaApp == 255)
  {
    self->_isBetaApp = 0;
    _clientType = [(XPCClient *)self _clientType];
    switch(_clientType)
    {
      case 3:
LABEL_5:
        self->_isBetaApp = 0;
        return self->_isBetaApp != 0;
      case 1:
        if (self->_clientIdentifier)
        {
          v4 = [LSApplicationProxy applicationProxyForIdentifier:?];
          appState = [v4 appState];
          isValid = [appState isValid];

          if (isValid)
          {
            self->_isBetaApp = [v4 isBetaApp];
          }
        }

        break;
      case 0:
        goto LABEL_5;
    }
  }

  return self->_isBetaApp != 0;
}

- (unsigned)applicationState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003884;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)copyApplicationBackgroundModes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100120584;
  v10 = sub_100120594;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003558;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (XPCClient)initWithInputConnection:(id)connection
{
  connectionCopy = connection;
  _initCommon = [(XPCClient *)self _initCommon];
  if (_initCommon)
  {
    if (connectionCopy)
    {
      v7 = SSXPCConnectionCopyExecutablePath();
      if (v7)
      {
        v8 = CFURLCreateWithFileSystemPath(0, v7, kCFURLPOSIXPathStyle, 0);
        if (v8)
        {
          v9 = v8;
          v10 = _CFBundleCopyBundleURLForExecutableURL();
          if (v10)
          {
            v11 = v10;
            v12 = CFBundleCreate(0, v10);
            if (v12)
            {
              v13 = v12;
              v14 = CFBundleGetIdentifier(v12);
              clientIdentifier = _initCommon->_clientIdentifier;
              _initCommon->_clientIdentifier = v14;

              v16 = CFBundleGetValueForInfoDictionaryKey(v13, _kCFBundleShortVersionStringKey);
              if (!v16)
              {
                v16 = CFBundleGetValueForInfoDictionaryKey(v13, kCFBundleVersionKey);
              }

              objc_storeStrong(&_initCommon->_clientVersion, v16);
              v17 = CFBundleGetInfoDictionary(v13);
              if ([v17 count])
              {
                v18 = +[SSDevice currentDevice];
                v19 = [v18 userAgentWithBundleRef:v13 isCachable:0];
                userAgent = _initCommon->_userAgent;
                _initCommon->_userAgent = v19;
              }

              CFRelease(v13);
            }

            CFRelease(v11);
          }

          CFRelease(v9);
        }

        v21 = _initCommon->_clientIdentifier;
        v22 = v21 != 0;
        if (!v21)
        {
          lastPathComponent = [(__CFString *)v7 lastPathComponent];
          v24 = _initCommon->_clientIdentifier;
          _initCommon->_clientIdentifier = lastPathComponent;

          clientVersion = _initCommon->_clientVersion;
          _initCommon->_clientVersion = @"1.0";
        }

        if (!_initCommon->_userAgent)
        {
          v26 = +[SSDevice currentDevice];
          v27 = [v26 userAgentWithClientName:_initCommon->_clientIdentifier version:_initCommon->_clientVersion];
          v28 = _initCommon->_userAgent;
          _initCommon->_userAgent = v27;
        }
      }

      else
      {
        v22 = 1;
      }

      *location = 0u;
      v44 = 0u;
      xpc_connection_get_audit_token();
      v29 = [[NSData alloc] initWithBytes:location length:32];
      auditTokenData = _initCommon->_auditTokenData;
      _initCommon->_auditTokenData = v29;

      objc_storeStrong(&_initCommon->_inputConnection, connection);
      _initCommon->_pid = xpc_connection_get_pid(connectionCopy);
      v31 = SSXPCConnectionCopyValueForEntitlement();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&_initCommon->_entitlements, v31);
      }

      else if (objc_opt_respondsToSelector())
      {
        v32 = objc_alloc_init(NSDictionary);
        entitlements = _initCommon->_entitlements;
        _initCommon->_entitlements = v32;

        _initCommon->_legacyEntitlements = 1;
      }
    }

    else
    {
      v22 = 1;
    }

    if ([(NSString *)_initCommon->_clientIdentifier isEqualToString:@"com.apple.springboard"])
    {
      v34 = 3;
LABEL_27:
      _initCommon->_clientType = v34;
      goto LABEL_33;
    }

    if ([(NSString *)_initCommon->_clientIdentifier isEqualToString:@"com.apple.lowtide"])
    {
      _initCommon->_clientType = 0;
      goto LABEL_33;
    }

    if (!v22)
    {
      v34 = 2;
      goto LABEL_27;
    }

    _initCommon->_clientType = -1;
    if (_initCommon->_clientIdentifier)
    {
      v35 = +[NSNotificationCenter defaultCenter];
      objc_initWeak(location, _initCommon);
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10011FED4;
      v41[3] = &unk_100329090;
      objc_copyWeak(&v42, location);
      v36 = [v35 addObserverForName:@"SpringBoardUtilityApplicationStateChangeNotification" object:0 queue:0 usingBlock:v41];
      stateChangeObserver = _initCommon->_stateChangeObserver;
      _initCommon->_stateChangeObserver = v36;

      v38 = +[SpringBoardUtility sharedInstance];
      v39 = [NSArray arrayWithObject:_initCommon->_clientIdentifier];
      [v38 beginGeneratingStateChangeNotificationsForIdentifiers:v39];

      objc_destroyWeak(&v42);
      objc_destroyWeak(location);
    }
  }

LABEL_33:

  return _initCommon;
}

- (XPCClient)initWithApplicationIdentifier:(id)identifier isAppleSigned:(BOOL)signed
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = XPCClient;
  v7 = [(XPCClient *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_appleSigned = signed;
    v9 = [identifierCopy copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v9;

    v8->_clientType = 1;
  }

  return v8;
}

- (id)beginBackgroundTaskWithReason:(unsigned int)reason expirationBlock:(id)block
{
  v4 = *&reason;
  blockCopy = block;
  if ([(XPCClient *)self clientType]== 1)
  {
    v7 = [[BKSProcessAssertion alloc] initWithPID:self->_pid flags:1 reason:v4 name:@"com.apple.itunesstored.xpcclient"];
    if ([v7 valid])
    {
      v8 = +[NSUUID UUID];
      uUIDString = [v8 UUIDString];
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001201C0;
      block[3] = &unk_1003290B8;
      v11 = v7;
      v18 = v11;
      v21 = blockCopy;
      selfCopy = self;
      v22 = v4;
      v12 = uUIDString;
      v20 = v12;
      dispatch_sync(dispatchQueue, block);
      objc_initWeak(&location, v11);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001203C8;
      v14[3] = &unk_100328EF8;
      v14[4] = self;
      objc_copyWeak(&v15, &location);
      [v11 setInvalidationHandler:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)canReceiveMessages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001204CC;
  v5[3] = &unk_1003290E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)clientIdentifierHeader
{
  clientIdentifier = [(XPCClient *)self clientIdentifier];
  v3 = ISClientIdentifierForBundleIdentifier();

  return v3;
}

- (void)endBackgroundTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100120644;
    v7[3] = &unk_100327238;
    v7[4] = self;
    v8 = identifierCopy;
    dispatch_sync(dispatchQueue, v7);
  }
}

- (BOOL)isAppleSigned
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001208D0;
  v5[3] = &unk_1003290E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isNewsstandApp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100120ACC;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isBetaApp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100120BAC;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isAdHocCodeSigned
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100120C8C;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)loadSpringBoardStateWithCompletionBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100120D58;
  v7[3] = &unk_1003271C0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)sendCoalescedMessageWithIdentifier:(unint64_t)identifier
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100120E74;
  v4[3] = &unk_100329108;
  v4[4] = self;
  v4[5] = identifier;
  dispatch_async(dispatchQueue, v4);
}

- (void)setOutputConnectionWithConnection:(id)connection
{
  connectionCopy = connection;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012108C;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_sync(dispatchQueue, v7);
}

- (NSString)userAgent
{
  if (MGGetSInt32Answer() == 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_userAgent;
  }

  return v3;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = XPCClient;
  v3 = [(XPCClient *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@: %@", v3, self->_clientIdentifier];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    clientIdentifier = self->_clientIdentifier;
    clientIdentifier = [equalCopy clientIdentifier];
    v6 = [(NSString *)clientIdentifier isEqual:clientIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_applicationStateChanged:(id)changed
{
  changedCopy = changed;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100121400;
  v7[3] = &unk_100327238;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleOutputConnectionDisconnect
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012178C;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidateBackgroundTaskAssertion:(id)assertion
{
  assertionCopy = assertion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100121924;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = assertionCopy;
  v6 = assertionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (BOOL)_isAdHocCodeSigned
{
  if (self->_isAdHocCodeSigned == 255)
  {
    self->_isAdHocCodeSigned = 0;
    _clientType = [(XPCClient *)self _clientType];
    switch(_clientType)
    {
      case 3:
LABEL_5:
        self->_isAdHocCodeSigned = 0;
        return self->_isAdHocCodeSigned != 0;
      case 1:
        if (self->_clientIdentifier)
        {
          v4 = [LSApplicationProxy applicationProxyForIdentifier:?];
          appState = [v4 appState];
          isValid = [appState isValid];

          if (isValid)
          {
            self->_isAdHocCodeSigned = [v4 isAdHocCodeSigned];
          }
        }

        break;
      case 0:
        goto LABEL_5;
    }
  }

  return self->_isAdHocCodeSigned != 0;
}

@end