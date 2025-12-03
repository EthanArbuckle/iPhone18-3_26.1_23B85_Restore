@interface MediaLibraryAccessRevocationController
+ (MediaLibraryAccessRevocationController)sharedController;
+ (id)_identifiersOfApplicationsWithGrantedAccessToMediaLibrary;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_identifiersOfApplicationsWithExpiredAccessToMediaLibrary;
- (id)_init;
- (id)_storeRequestContextWithIdentity:(id)identity applicationIdentifier:(id)identifier;
- (id)_storeRequestContextWithIdentity:(id)identity clientInfo:(id)info;
- (id)_supportedInterfaceForXPCConnection;
- (void)_checkForRecentRevocations;
- (void)_displayNotificationForBuilder:(id)builder withReplyBlock:(id)block;
- (void)_registerFailureToRevokeMusicUserTokensForApplicationIdentifier:(id)identifier error:(id)error;
- (void)_registerFailureToRevokeMusicUserTokensForApplicationsWithIdentifiers:(id)identifiers error:(id)error;
- (void)_revokeMusicUserTokensForApplicationWithIdentifier:(id)identifier andUserIdentity:(id)identity withCompletion:(id)completion;
- (void)_revokeMusicUserTokensForApplicationsWithIdentifiers:(id)identifiers;
- (void)_startObservingRevocations;
- (void)_stopObservingRevocations;
- (void)dealloc;
- (void)revokeMusicKitUserTokensForUserIdentity:(id)identity withCompletion:(id)completion;
- (void)startObservingRevocations;
- (void)stopObservingRevocations;
- (void)validateExpirationForBundleIdentifier:(id)identifier withReplyBlock:(id)block;
@end

@implementation MediaLibraryAccessRevocationController

- (id)_supportedInterfaceForXPCConnection
{
  if (qword_100213D48 != -1)
  {
    dispatch_once(&qword_100213D48, &stru_1001DD960);
  }

  v3 = qword_100213D40;

  return v3;
}

- (id)_storeRequestContextWithIdentity:(id)identity clientInfo:(id)info
{
  identityCopy = identity;
  infoCopy = info;
  v7 = [ICStoreRequestContext alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DF1FC;
  v12[3] = &unk_1001DF490;
  v13 = identityCopy;
  v14 = infoCopy;
  v8 = infoCopy;
  v9 = identityCopy;
  v10 = [v7 initWithBlock:v12];

  return v10;
}

- (void)_stopObservingRevocations
{
  dispatch_assert_queue_barrier(self->_accessQueue);
  if (self->_isObservingTCCAccessChangedNotification)
  {
    notify_cancel(self->_tccAccessChangedNotificationToken);
    self->_tccAccessChangedNotificationToken = 0;
    self->_isObservingTCCAccessChangedNotification = 0;
    identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates = self->_identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates;
    self->_identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates = 0;
  }
}

- (void)_startObservingRevocations
{
  dispatch_assert_queue_barrier(self->_accessQueue);
  if (!self->_isObservingTCCAccessChangedNotification)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_get_global_queue(0, 0);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_1000DF460;
    v8 = &unk_1001DD940;
    objc_copyWeak(&v9, &location);
    v4 = notify_register_dispatch("com.apple.tcc.access.changed", &self->_tccAccessChangedNotificationToken, v3, &v5);

    self->_isObservingTCCAccessChangedNotification = v4 == 0;
    if (!v4)
    {
      [(MediaLibraryAccessRevocationController *)self _checkForRecentRevocations:v5];
    }

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_registerFailureToRevokeMusicUserTokensForApplicationsWithIdentifiers:(id)identifiers error:(id)error
{
  identifiersCopy = identifiers;
  errorCopy = error;
  v7 = os_log_create("com.apple.amp.itunescloudd", "SDK");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = identifiersCopy;
    v10 = 2114;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to revoke Music User Tokens for applications %{public}@ with error %{public}@.", &v8, 0x16u);
  }
}

- (void)_registerFailureToRevokeMusicUserTokensForApplicationIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v7 = os_log_create("com.apple.amp.itunescloudd", "SDK");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = identifierCopy;
    v10 = 2114;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to revoke Music User Tokens for application %{public}@ with error %{public}@.", &v8, 0x16u);
  }
}

- (id)_storeRequestContextWithIdentity:(id)identity applicationIdentifier:(id)identifier
{
  identityCopy = identity;
  identifierCopy = identifier;
  v7 = [ICStoreRequestContext alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DF790;
  v12[3] = &unk_1001DF490;
  v13 = identityCopy;
  v14 = identifierCopy;
  v8 = identifierCopy;
  v9 = identityCopy;
  v10 = [v7 initWithBlock:v12];

  return v10;
}

- (void)_revokeMusicUserTokensForApplicationsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[ICUserIdentity activeAccount];
  v6 = os_log_create("com.apple.amp.itunescloudd", "SDK");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = identifiersCopy;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Revoking Music User Tokens for applications %{public}@ using identity %{public}@.", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(MediaLibraryAccessRevocationController *)self _revokeMusicUserTokensForApplicationWithIdentifier:_NSConcreteStackBlock andUserIdentity:3221225472 withCompletion:sub_1000DFAB4, &unk_1001DFB10, self, *(*(&v12 + 1) + 8 * v11), v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_revokeMusicUserTokensForApplicationWithIdentifier:(id)identifier andUserIdentity:(id)identity withCompletion:(id)completion
{
  identifierCopy = identifier;
  identityCopy = identity;
  completionCopy = completion;
  v11 = os_log_create("com.apple.amp.itunescloudd", "SDK");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v25 = 2114;
    v26 = identifierCopy;
    v27 = 2114;
    v28 = identityCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Revoking music kit user tokens for application '%{public}@' and user identity %{public}@", buf, 0x20u);
  }

  v12 = [(MediaLibraryAccessRevocationController *)self _storeRequestContextWithIdentity:identityCopy applicationIdentifier:identifierCopy];
  v13 = +[ICURLBagProvider sharedBagProvider];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000DFD0C;
  v18[3] = &unk_1001DD918;
  v18[4] = self;
  v19 = identifierCopy;
  v21 = identityCopy;
  v22 = completionCopy;
  v20 = v12;
  v14 = identityCopy;
  v15 = v12;
  v16 = completionCopy;
  v17 = identifierCopy;
  [v13 getBagForRequestContext:v15 withCompletionHandler:v18];
}

- (void)_displayNotificationForBuilder:(id)builder withReplyBlock:(id)block
{
  blockCopy = block;
  createCFUserNotification = [builder createCFUserNotification];
  if (createCFUserNotification)
  {
    v7 = createCFUserNotification;
    responseFlags = 0;
    v8 = CFUserNotificationReceiveResponse(createCFUserNotification, 0.0, &responseFlags);
    CFRelease(v7);
    if (v8)
    {
      v9 = [NSError errorWithDomain:ICErrorDomain code:v8 userInfo:0];
      blockCopy[2](blockCopy, 0, v9);
    }

    else
    {
      (blockCopy)[2](blockCopy, responseFlags == 0, 0);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "SDK");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create a CFUserNotification to renew media library access for TCC expiration", buf, 2u);
    }

    blockCopy[2](blockCopy, 0, 0);
  }
}

- (void)_checkForRecentRevocations
{
  dispatch_assert_queue_barrier(self->_accessQueue);
  v3 = +[ICDefaults standardDefaults];
  v4 = v3;
  if (!self->_identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates)
  {
    mediaLibraryAccessApplicationIdentifiersWithTCCAcceptanceDates = [v3 mediaLibraryAccessApplicationIdentifiersWithTCCAcceptanceDates];
    identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates = self->_identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates;
    self->_identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates = mediaLibraryAccessApplicationIdentifiersWithTCCAcceptanceDates;
  }

  _identifiersOfApplicationsWithGrantedAccessToMediaLibrary = [objc_opt_class() _identifiersOfApplicationsWithGrantedAccessToMediaLibrary];
  if (self->_identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates)
  {
    v8 = [NSSet alloc];
    allKeys = [(NSDictionary *)self->_identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates allKeys];
    v10 = [v8 initWithArray:allKeys];

    if ([v10 isEqualToSet:_identifiersOfApplicationsWithGrantedAccessToMediaLibrary])
    {

      v11 = 0;
      goto LABEL_18;
    }

    v25 = v4;
    v12 = [v10 mutableCopy];
    [v12 minusSet:_identifiersOfApplicationsWithGrantedAccessToMediaLibrary];
    v11 = [v12 copy];
  }

  else
  {
    v25 = v4;
    v11 = 0;
  }

  v13 = +[NSDate date];
  v14 = objc_alloc_init(NSMutableDictionary);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = _identifiersOfApplicationsWithGrantedAccessToMediaLibrary;
  v15 = _identifiersOfApplicationsWithGrantedAccessToMediaLibrary;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [(NSDictionary *)self->_identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates objectForKey:v20, v24];
        if (!v21)
        {
          v21 = v13;
        }

        [v14 setObject:v21 forKey:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  v22 = [v14 copy];
  v23 = self->_identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates;
  self->_identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates = v22;

  v4 = v25;
  [v25 setMediaLibraryAccessApplicationIdentifiersWithTCCAcceptanceDates:self->_identifiersOfApplicationsWithGrantedAccessToMediaLibraryIncludingTCCAcceptanceDates];

  _identifiersOfApplicationsWithGrantedAccessToMediaLibrary = v24;
LABEL_18:
  if ([v11 count])
  {
    [(MediaLibraryAccessRevocationController *)self _revokeMusicUserTokensForApplicationsWithIdentifiers:v11];
  }
}

- (id)_identifiersOfApplicationsWithExpiredAccessToMediaLibrary
{
  v17 = kTCCInfoBundle;
  v2 = kTCCInfoExpiredAt;
  v3 = TCCExpirationCopyInformationForService();
  v16 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{v2, v16}];
        v11 = +[NSDate date];
        v12 = [v10 earlierDate:v11];

        if (v12 == v10)
        {
          v13 = [v9 objectForKeyedSubscript:v17];

          v14 = CFBundleGetIdentifier(v13);
          [v16 addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v16;
}

- (void)revokeMusicKitUserTokensForUserIdentity:(id)identity withCompletion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E07F8;
  v7[3] = &unk_1001DD8F0;
  completionCopy = completion;
  v6 = completionCopy;
  [(MediaLibraryAccessRevocationController *)self _revokeMusicUserTokensForApplicationWithIdentifier:0 andUserIdentity:identity withCompletion:v7];
}

- (void)validateExpirationForBundleIdentifier:(id)identifier withReplyBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v31 = +[NSXPCConnection currentConnection];
  _identifiersOfApplicationsWithExpiredAccessToMediaLibrary = [(MediaLibraryAccessRevocationController *)self _identifiersOfApplicationsWithExpiredAccessToMediaLibrary];
  if ([_identifiersOfApplicationsWithExpiredAccessToMediaLibrary containsObject:identifierCopy])
  {
    v30 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
    if ([v30 containsObject:kTCCServiceMediaLibrary])
    {
      v7 = os_log_create("com.apple.amp.itunescloudd", "SDK");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Can not present dialog for renewing applications, parental controls active", buf, 2u);
      }

      (*(blockCopy + 2))(blockCopy, 0, 0);
    }

    else
    {
      processIdentifier = [v31 processIdentifier];
      *buf = 0;
      v48 = buf;
      v49 = 0x2020000000;
      v50 = 0;
      accessQueue = self->_accessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E0E1C;
      block[3] = &unk_1001DD878;
      v28 = processIdentifier;
      v46 = processIdentifier;
      block[4] = self;
      v45 = buf;
      v44 = blockCopy;
      dispatch_barrier_sync(accessQueue, block);
      if (v48[24] == 1)
      {
        v29 = objc_alloc_init(ICUserNotificationBuilder);
        if ([_identifiersOfApplicationsWithExpiredAccessToMediaLibrary count] == 1)
        {
          v10 = +[NSBundle mediaPlayerBundle];
          v11 = [v10 localizedStringForKey:@"TCC_EXPIRATION_SINGLE_APP_TITLE" value:&stru_1001E0388 table:@"MediaPlayer"];

          v12 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];
          localizedName = [v12 localizedName];

          v14 = [NSString stringWithFormat:v11, localizedName];
          [v29 setTitle:v14];
        }

        else
        {
          v15 = +[NSBundle mediaPlayerBundle];
          v16 = [v15 localizedStringForKey:@"TCC_EXPIRATION_MULTIPLE_APPS_TITLE" value:&stru_1001E0388 table:@"MediaPlayer"];
          [v29 setTitle:v16];

          v11 = +[NSMutableArray array];
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v17 = _identifiersOfApplicationsWithExpiredAccessToMediaLibrary;
          v18 = [v17 countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v18)
          {
            v19 = *v40;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v40 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = [[LSApplicationRecord alloc] initWithBundleIdentifier:*(*(&v39 + 1) + 8 * i) allowPlaceholder:0 error:0];
                localizedName2 = [v21 localizedName];

                if (localizedName2)
                {
                  [v11 addObject:localizedName2];
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v39 objects:v51 count:16];
            }

            while (v18);
          }

          localizedName = [v11 componentsJoinedByString:@"\n"];
          [v29 setMessage:localizedName];
        }

        v23 = +[NSBundle mediaPlayerBundle];
        v24 = [v23 localizedStringForKey:@"TCC_EXPIRATION_ACCEPT_BUTTON_TITLE" value:&stru_1001E0388 table:@"MediaPlayer"];
        [v29 setDefaultButtonTitle:v24];

        v25 = +[NSBundle mediaPlayerBundle];
        v26 = [v25 localizedStringForKey:@"TCC_EXPIRATION_REJECT_BUTTON_TITLE" value:&stru_1001E0388 table:@"MediaPlayer"];
        [v29 setAlternateButtonTitle:v26];

        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1000E0F10;
        v34[3] = &unk_1001DDD98;
        v34[4] = self;
        v35 = v29;
        v36 = _identifiersOfApplicationsWithExpiredAccessToMediaLibrary;
        v37 = identifierCopy;
        v38 = v28;
        v27 = v29;
        dispatch_async(&_dispatch_main_q, v34);
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 1, 0);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v16 = 1024;
    v17 = processIdentifier;
    v18 = 2114;
    v19 = @"com.apple.itunescloudd.tcchelper";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ connection from pid %i beginning for service %{public}@.", buf, 0x1Cu);
  }

  _supportedInterfaceForXPCConnection = [(MediaLibraryAccessRevocationController *)self _supportedInterfaceForXPCConnection];
  [connectionCopy setExportedInterface:_supportedInterfaceForXPCConnection];
  [connectionCopy setExportedObject:self];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E1654;
  v12[3] = &unk_1001DF780;
  v12[4] = self;
  v13 = processIdentifier;
  [connectionCopy setInterruptionHandler:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E172C;
  v10[3] = &unk_1001DF780;
  v10[4] = self;
  v11 = processIdentifier;
  [connectionCopy setInvalidationHandler:v10];
  [connectionCopy resume];

  return 1;
}

- (void)stopObservingRevocations
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E1878;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

- (void)startObservingRevocations
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E18F4;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E1994;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_barrier_sync(accessQueue, block);
  v4.receiver = self;
  v4.super_class = MediaLibraryAccessRevocationController;
  [(MediaLibraryAccessRevocationController *)&v4 dealloc];
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = MediaLibraryAccessRevocationController;
  v2 = [(MediaLibraryAccessRevocationController *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunescloudd.MediaLibraryAccessRevocationController.accessQueue", &_dispatch_queue_attr_concurrent);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.itunescloudd.tcchelper"];
    listener = v2->_listener;
    v2->_listener = v5;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v7 = +[NSMutableDictionary dictionary];
    replyBlocksForPID = v2->_replyBlocksForPID;
    v2->_replyBlocksForPID = v7;
  }

  return v2;
}

+ (id)_identifiersOfApplicationsWithGrantedAccessToMediaLibrary
{
  v20 = objc_alloc_init(NSMutableSet);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = TCCAccessCopyInformation();
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        if (_NSIsNSDictionary())
        {
          v8 = v7;
          v9 = [v8 objectForKey:kTCCInfoBundle];
          v10 = v9;
          if (v9)
          {
            v11 = CFGetTypeID(v9);
            if (v11 != CFBundleGetTypeID())
            {
              v10 = 0;
            }
          }

          v12 = [v8 objectForKey:kTCCInfoGranted];
          if (v12)
          {
            v13 = v12;
            v14 = CFGetTypeID(v12);
            TypeID = CFBooleanGetTypeID();
            if (v10)
            {
              if (v14 == TypeID)
              {
                v16 = [(__CFString *)CFBundleGetIdentifier(v10) copy];
                Value = CFBooleanGetValue(v13);
                if (v16 && Value)
                {
                  [v20 addObject:v16];
                }
              }
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  v18 = [v20 copy];

  return v18;
}

+ (MediaLibraryAccessRevocationController)sharedController
{
  if (qword_100213D38 != -1)
  {
    dispatch_once(&qword_100213D38, &stru_1001DD850);
  }

  v3 = qword_100213D30;

  return v3;
}

@end