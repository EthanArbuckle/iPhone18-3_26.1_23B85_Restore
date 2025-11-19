@interface RMClientController
+ (RMClientController)sharedController;
+ (void)start;
+ (void)startListeningForNotifications;
- (BOOL)_canProcessClientStateChanges:(id)a3;
- (BOOL)_didUnenrollClientWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_hasMDMv1ManagementForManagingProfileIdentifier:(id)a3;
- (BOOL)_verifyUniqueStoreWithURL:(id)a3 enrollmentType:(int64_t)a4 context:(id)a5 error:(id *)a6;
- (RMClientController)initWithPersistentContainer:(id)a3 context:(id)a4;
- (id)_bootstrapURIForAccount:(id)a3;
- (id)_clientWithIdentifier:(id)a3;
- (id)_genericCredentialForAccount:(id)a3 fromStore:(id)a4;
- (id)_makeClientWithManagementSourceObjectID:(id)a3 managementSourceIdentifier:(id)a4 persistentContainer:(id)a5;
- (void)_checkCloudConfig;
- (void)_checkCloudConfigAsync:(id)a3;
- (void)_checkForMandatoryDeviceEnrollmentWithCompletionHandler:(id)a3;
- (void)_completedClientStateChanges:(id)a3;
- (void)_didEnrollClient:(id)a3 conduitType:(int64_t)a4 managementSourceObjectID:(id)a5 account:(id)a6 accountStore:(id)a7 completionHandler:(id)a8;
- (void)_didFailToEnrollClientForManagementObjectID:(id)a3;
- (void)_enrollAccount:(id)a3 fromStore:(id)a4 completionHandler:(id)a5;
- (void)_enrollClientWithManagementSourceObjectID:(id)a3 managementSourceIdentifier:(id)a4 conduitType:(int64_t)a5 account:(id)a6 accountStore:(id)a7 completionHandler:(id)a8;
- (void)_registerForCloudConfigAvailableNotificationIfNeeded;
- (void)_removeInvalidManagementChannels:(id)a3;
- (void)_start;
- (void)_unenrollAndReenrollIfDEP:(id)a3;
- (void)_validateManagementSources;
- (void)applyNowWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)clientNeedsToReenrollWithManagementSourceIdentifier:(id)a3;
- (void)clientNeedsToUnenrollWithManagementSourceIdentifier:(id)a3;
- (void)deviceChannelEnrollmentExistsWithCompletionHandler:(id)a3;
- (void)enrollDeviceChannelWithURI:(id)a3 completionHandler:(id)a4;
- (void)enrollUserChannelWithAccountIdentifier:(id)a3 completionHandler:(id)a4;
- (void)enrollViaMDMWithEnrollmentType:(int64_t)a3 uri:(id)a4 accountIdentifier:(id)a5 personaIdentifier:(id)a6 completionHandler:(id)a7;
- (void)lockStateDidChange:(BOOL)a3;
- (void)managementChannelWithAccountIdentifier:(id)a3 completionHandler:(id)a4;
- (void)managementChannelWithEnrollmentURL:(id)a3 completionHandler:(id)a4;
- (void)managementChannelsChanged;
- (void)queryForStatusSubscriptionsWithIdentifiers:(id)a3 fromManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)reenrollWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)sendStatusData:(id)a3 toManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)sendStatusForSubscriptionsWithIdentifiers:(id)a3 toManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)syncAllManagementSourcesWithCompletionHandler:(id)a3;
- (void)syncWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)takeOwnershipOfMDMStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)unenrollWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)updateWithIdentifier:(id)a3 pushMessage:(id)a4 completionHandler:(id)a5;
- (void)updateWithIdentifier:(id)a3 tokensResponse:(id)a4 completionHandler:(id)a5;
@end

@implementation RMClientController

+ (RMClientController)sharedController
{
  if (qword_1000E6758 != -1)
  {
    sub_1000198B8();
  }

  v3 = qword_1000E6750;

  return v3;
}

+ (void)start
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011158;
  block[3] = &unk_1000D12D0;
  block[4] = a1;
  if (qword_1000E6760 != -1)
  {
    dispatch_once(&qword_1000E6760, block);
  }
}

+ (void)startListeningForNotifications
{
  v2 = [a1 sharedController];
  [v2 _startListeningForNotifications];
}

- (RMClientController)initWithPersistentContainer:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = RMClientController;
  v9 = [(RMClientController *)&v22 init];
  if (v9)
  {
    v10 = objc_opt_new();
    processingClientStateChanges = v9->_processingClientStateChanges;
    v9->_processingClientStateChanges = v10;

    objc_storeStrong(&v9->_persistentContainer, a3);
    v12 = [RMDeviceLockStateListener newListenerWithDelegate:v9];
    lockStateListener = v9->_lockStateListener;
    v9->_lockStateListener = v12;

    objc_storeStrong(&v9->_context, a4);
    v14 = objc_opt_new();
    clientByManagementSourceIdentifier = v9->_clientByManagementSourceIdentifier;
    v9->_clientByManagementSourceIdentifier = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.RemoteManagement.RMClientController", v16);
    dispatchQueue = v9->_dispatchQueue;
    v9->_dispatchQueue = v17;

    v19 = [RMSharedLock newSharedLockWithDescription:@"RMClientController-cloudConfigLock"];
    cloudConfigLock = v9->_cloudConfigLock;
    v9->_cloudConfigLock = v19;
  }

  return v9;
}

- (void)_start
{
  v3 = _os_activity_create(&_mh_execute_header, "ClientController: starting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = +[RMLog clientController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000198CC();
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v5 = objc_opt_new();
  [(RMClientController *)self context];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000115B0;
  v21[3] = &unk_1000D12F8;
  v6 = v24 = &v25;
  v22 = v6;
  v7 = v5;
  v23 = v7;
  [v6 performBlockAndWait:v21];
  v8 = dispatch_group_create();
  v9 = self->_clientByManagementSourceIdentifier;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100011910;
  v17 = &unk_1000D1320;
  v18 = self;
  v10 = v9;
  v19 = v10;
  v11 = v8;
  v20 = v11;
  [v7 enumerateKeysAndObjectsUsingBlock:&v14];
  v12 = dispatch_get_global_queue(9, 0);
  dispatch_group_notify(v11, v12, &stru_1000D1340);

  [(RMClientController *)self _validateManagementSources:v14];
  [(RMClientController *)self _syncMDMv1ManagementSourcesWithUnenroll:0];
  if (v26[3])
  {
    v13 = [(RMClientController *)self lockStateListener];
    [v13 startListening];
  }

  _Block_object_dispose(&v25, 8);
  os_activity_scope_leave(&state);
}

- (void)_validateManagementSources
{
  v3 = _os_activity_create(&_mh_execute_header, "ClientController: validating management sources", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = +[RMLog clientController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000199D8();
  }

  v5 = os_transaction_create();
  v6 = +[RMLog clientController];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Validating sources...", buf, 2u);
  }

  v7 = [(RMClientController *)self context];
  v8 = objc_opt_new();
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100011C9C;
  v14 = &unk_1000D1270;
  v9 = v7;
  v15 = v9;
  v10 = v8;
  v16 = v10;
  [v9 performBlockAndWait:&v11];
  if ([v10 count])
  {
    [(RMClientController *)self _removeInvalidManagementChannels:v10];
  }

  os_activity_scope_leave(&state);
}

- (void)_removeInvalidManagementChannels:(id)a3
{
  v4 = a3;
  v5 = [[NSConditionLock alloc] initWithCondition:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 138543362;
    v14 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = +[RMLog clientController];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = v14;
          v23 = v11;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Removing invalid management channel %{public}@", buf, 0xCu);
        }

        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000121DC;
        v16[3] = &unk_1000D1368;
        v16[4] = v11;
        v17 = v5;
        [(RMClientController *)self unenrollWithIdentifier:v11 completionHandler:v16];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  if (([v5 tryLockWhenCondition:0] & 1) == 0)
  {
    v13 = +[RMLog clientController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Waiting for invalid enrollments to unenroll...", buf, 2u);
    }

    [v5 lockWhenCondition:0];
  }

  [v5 unlock];
}

- (void)_registerForCloudConfigAvailableNotificationIfNeeded
{
  if (([objc_opt_class() _shouldRegisterForCloudConfigAvailableNotification] & 1) == 0)
  {
    v2 = +[RMLog clientController];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100019AE4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_checkCloudConfigAsync:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(RMClientController *)self dispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000123AC;
  v6[3] = &unk_1000D1390;
  objc_copyWeak(&v7, &location);
  dispatch_sync(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_checkCloudConfig
{
  v3 = _os_activity_create(&_mh_execute_header, "ClientController: checking cloud config", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = +[RMLog clientController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100019B5C();
  }

  v5 = os_transaction_create();
  [(RMSharedLock *)self->_cloudConfigLock lock];
  v6 = +[RMLog clientController];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Checking cloud config...", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012570;
  v8[3] = &unk_1000D13B8;
  v8[4] = self;
  v7 = v5;
  v9 = v7;
  [(RMClientController *)self _checkForMandatoryDeviceEnrollmentWithCompletionHandler:v8];

  os_activity_scope_leave(&state);
}

- (void)_checkForMandatoryDeviceEnrollmentWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[RMCloudConfigController cloudConfigEnrollmentURL];
  if (v5)
  {
    v12 = 0;
    v13[0] = &v12;
    v13[1] = 0x3032000000;
    v13[2] = sub_1000128B8;
    v13[3] = sub_1000128C8;
    v14 = 0;
    v6 = [(RMClientController *)self context];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000128D0;
    v11[3] = &unk_1000D13E0;
    v11[4] = &v12;
    [v6 performBlockAndWait:v11];
    if (*(v13[0] + 40))
    {
      if ([v5 isEqual:?])
      {
        v7 = +[RMLog clientController];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_100019C0C();
        }
      }

      else
      {
        v7 = +[RMLog clientController];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_100019B98(v5, v13);
        }
      }

      v4[2](v4, 0);
    }

    else
    {
      v8 = +[RMLog clientController];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Forcing mandatory enrollment of device channel: %{public}@", buf, 0xCu);
      }

      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000129B8;
      v9[3] = &unk_1000D1408;
      v10 = v4;
      [(RMClientController *)self enrollDeviceChannelWithURI:v5 completionHandler:v9];
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (id)_makeClientWithManagementSourceObjectID:(id)a3 managementSourceIdentifier:(id)a4 persistentContainer:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [RMClient alloc];
  v12 = objc_opt_new();
  v13 = [(RMClient *)v11 initWithManagementSourceObjectID:v10 managementSourceIdentifier:v9 statusQuerier:v12 persistentContainer:v8];

  [(RMClient *)v13 setDelegate:self];

  return v13;
}

- (void)_unenrollAndReenrollIfDEP:(id)a3
{
  v4 = a3;
  v5 = [(RMClientController *)self context];
  v6 = v4;
  v7 = v5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  location[0] = _NSConcreteStackBlock;
  location[1] = 3221225472;
  location[2] = sub_100019714;
  location[3] = &unk_1000D0E38;
  v8 = v6;
  v20 = v8;
  v9 = v7;
  v21 = v9;
  v22 = &v23;
  [v9 performBlockAndWait:location];
  v10 = v24[3];

  _Block_object_dispose(&v23, 8);
  objc_initWeak(location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100012C90;
  v16 = &unk_1000D1498;
  v11 = v8;
  v17 = v11;
  objc_copyWeak(v18, location);
  v18[1] = v10;
  dispatch_async(&_dispatch_main_q, &v13);
  v12 = [RMLog clientController:v13];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100019CB0();
  }

  objc_destroyWeak(v18);
  objc_destroyWeak(location);
}

- (BOOL)_hasMDMv1ManagementForManagingProfileIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[RMManagedDevice currentManagedDevice];
  v5 = [v4 mdmProfileIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v3];
  return v4;
}

- (void)enrollDeviceChannelWithURI:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "ClientController: enrolling management source", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = +[RMLog clientController];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100019F30();
  }

  if (+[RMMDMv1Liaison isEnrolledInMDMv1])
  {
    v10 = +[RMLog clientController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001A0D0();
    }

    v11 = +[RMErrorUtilities createAlreadyEnrolledInMDMv1Error];
    v7[2](v7, 0, v11);
  }

  else
  {
    v12 = [v6 scheme];
    if ([v12 caseInsensitiveCompare:@"https"])
    {
      if ([v12 caseInsensitiveCompare:@"file"])
      {
        v13 = 4 * ([v12 caseInsensitiveCompare:@"mdm"] == 0);
      }

      else if (+[RMFeatureFlags isFileConduitEnabled])
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }
    }

    else if (+[RMFeatureFlags isHTTPConduitEnabled])
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 3) != 0)
    {
      if (v13 == 1)
      {
        v14 = +[RMLog clientController];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10001A000();
        }

        v11 = [NSError errorWithDomain:RMErrorDomain code:4 userInfo:0];
        v7[2](v7, 0, v11);
      }

      else
      {
        v16 = +[RMManagedDevice currentManagedDevice];
        v17 = [v16 isSupervised];

        if (v17)
        {
          v18 = 3;
        }

        else
        {
          v18 = 1;
        }

        v23 = [v6 absoluteString];
        v45 = 0;
        v46[0] = &v45;
        v46[1] = 0x3032000000;
        v46[2] = sub_1000128B8;
        v46[3] = sub_1000128C8;
        v47 = 0;
        v39 = 0;
        v40 = &v39;
        v41 = 0x3032000000;
        v42 = sub_1000128B8;
        v43 = sub_1000128C8;
        v44 = 0;
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = sub_1000128B8;
        v37 = sub_1000128C8;
        v38 = 0;
        v19 = [(RMClientController *)self context];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100013C64;
        v24[3] = &unk_1000D14E8;
        v24[4] = self;
        v20 = v6;
        v25 = v20;
        v31 = v18;
        v21 = v19;
        v26 = v21;
        v28 = &v45;
        v32 = v13;
        v11 = v23;
        v27 = v11;
        v29 = &v39;
        v30 = &v33;
        [v21 performBlockAndWait:v24];
        if (*(v46[0] + 40))
        {
          v22 = +[RMLog clientController];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_100019F98(v20, v46);
          }

          v7[2](v7, 0, *(v46[0] + 40));
        }

        else
        {
          [(RMClientController *)self _enrollClientWithManagementSourceObjectID:v40[5] managementSourceIdentifier:v34[5] conduitType:v13 account:0 accountStore:0 completionHandler:v7];
        }

        _Block_object_dispose(&v33, 8);
        _Block_object_dispose(&v39, 8);

        _Block_object_dispose(&v45, 8);
      }
    }

    else
    {
      v15 = +[RMLog clientController];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10001A068();
      }

      v11 = [NSError errorWithDomain:NSCocoaErrorDomain code:262 userInfo:0];
      v7[2](v7, 0, v11);
    }
  }

  os_activity_scope_leave(&state);
}

- (void)enrollUserChannelWithAccountIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000128B8;
  v23 = sub_1000128C8;
  v24 = 0;
  v8 = [(RMClientController *)self context];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100014114;
  v15[3] = &unk_1000D0E38;
  v9 = v6;
  v16 = v9;
  v10 = v8;
  v17 = v10;
  v18 = &v19;
  [v10 performBlockAndWait:v15];
  if (v20[5])
  {
    v7[2](v7, 0);
  }

  else
  {
    v11 = +[ACAccountStore rm_defaultStore];
    v12 = [v11 accountWithIdentifier:v9];
    if (v12)
    {
      [(RMClientController *)self _enrollAccount:v12 fromStore:v11 completionHandler:v7];
    }

    else
    {
      v13 = +[RMLog clientController];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10001A1A0();
      }

      v14 = [RMErrorUtilities createAccountMissingErrorWithIdentifier:v9];
      (v7[2])(v7, 0, v14);
    }
  }

  _Block_object_dispose(&v19, 8);
}

- (void)enrollViaMDMWithEnrollmentType:(int64_t)a3 uri:(id)a4 accountIdentifier:(id)a5 personaIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = _os_activity_create(&_mh_execute_header, "ClientController: enrolling management source DDM", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  v17 = +[RMLog clientController];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A270();
  }

  if (!+[RMMDMv1Liaison isEnrolledInMDMv1])
  {
    v22 = +[RMLog clientController];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10001A2F4();
    }

    v23 = +[RMErrorUtilities createBootstrapURINotFound];
    v15[2](v15, 0, v23);
    goto LABEL_19;
  }

  v18 = [v12 scheme];
  if (![v18 caseInsensitiveCompare:@"https"])
  {
    +[RMFeatureFlags isHTTPConduitEnabled];
    goto LABEL_16;
  }

  if (![v18 caseInsensitiveCompare:@"file"])
  {
    +[RMFeatureFlags isFileConduitEnabled];
    goto LABEL_16;
  }

  if ([v18 caseInsensitiveCompare:@"mdm"])
  {
LABEL_16:

    v24 = +[RMLog clientController];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10001A334();
    }

    v23 = [NSError errorWithDomain:NSCocoaErrorDomain code:262 userInfo:0];
    v15[2](v15, 0, v23);
LABEL_19:

    goto LABEL_20;
  }

  v52 = 0;
  v53[0] = &v52;
  v53[1] = 0x3032000000;
  v53[2] = sub_1000128B8;
  v53[3] = sub_1000128C8;
  v54 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_1000128B8;
  v50 = sub_1000128C8;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_1000128B8;
  v44 = sub_1000128C8;
  v45 = 0;
  v19 = [(RMClientController *)self context];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100014724;
  v29 = &unk_1000D1510;
  v30 = self;
  v25 = v12;
  v31 = v25;
  v38 = a3;
  v20 = v19;
  v32 = v20;
  v35 = &v52;
  v39 = 4;
  v33 = v13;
  v34 = v14;
  v36 = &v46;
  v37 = &v40;
  [v20 performBlockAndWait:&v26];
  if (*(v53[0] + 40))
  {
    v21 = +[RMLog clientController];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100019F98(v25, v53);
    }

    v15[2](v15, 0, *(v53[0] + 40));
  }

  else
  {
    [(RMClientController *)self _enrollClientWithManagementSourceObjectID:v47[5] managementSourceIdentifier:v41[5] conduitType:4 account:0 accountStore:0 completionHandler:v15, v25, v26, v27, v28, v29, v30, v31, v32, v33];
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
LABEL_20:
  os_activity_scope_leave(&state);
}

- (void)takeOwnershipOfMDMStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "ClientController: taking ownership of management source DDM", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = +[RMLog clientController];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A39C();
  }

  if (+[RMMDMv1Liaison isEnrolledInMDMv1])
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_1000128B8;
    v36 = sub_1000128C8;
    v37 = 0;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = sub_1000128B8;
    v30[4] = sub_1000128C8;
    v31 = 0;
    v27 = 0;
    v28[0] = &v27;
    v28[1] = 0x3032000000;
    v28[2] = sub_1000128B8;
    v28[3] = sub_1000128C8;
    v29 = 0;
    v10 = [(RMClientController *)self context];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100014DB4;
    v20[3] = &unk_1000D1538;
    v11 = v6;
    v21 = v11;
    v12 = v10;
    v22 = v12;
    v23 = &v27;
    v24 = &v32;
    v25 = v30;
    v26 = &v38;
    [v12 performBlockAndWait:v20];
    if (*(v28[0] + 40))
    {
      v13 = +[RMLog clientController];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10001A404(v11, v28);
      }

      v7[2](v7, *(v28[0] + 40));
    }

    else
    {
      v16 = v33[5];
      v17 = v39[3];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000151A4;
      v18[3] = &unk_1000D1408;
      v19 = v7;
      [(RMClientController *)self _enrollClientWithManagementSourceObjectID:v16 managementSourceIdentifier:v11 conduitType:v17 account:0 accountStore:0 completionHandler:v18];
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(v30, 8);

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v14 = +[RMLog clientController];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10001A2F4();
    }

    v15 = +[RMErrorUtilities createBootstrapURINotFound];
    (v7)[2](v7, v15);
  }

  os_activity_scope_leave(&state);
}

- (void)reenrollWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "ClientController: re-enrolling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = +[RMLog clientController];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A544();
  }

  v10 = [(RMClientController *)self _clientWithIdentifier:v6];
  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001538C;
    v13[3] = &unk_1000D1100;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    [v10 reenrollWithCompletionHandler:v13];
  }

  else
  {
    v11 = +[RMLog clientController];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001A5AC();
    }

    v12 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:v6];
    (*(v7 + 2))(v7, v12);
  }

  os_activity_scope_leave(&state);
}

- (void)_enrollAccount:(id)a3 fromStore:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&_mh_execute_header, "ClientController: enrolling management source", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v12 = [(RMClientController *)self _bootstrapURIForAccount:v8];
  if (v12)
  {
    v13 = +[RMLog clientController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10001A67C();
    }

    if (+[RMMDMv1Liaison isEnrolledInMDMv1])
    {
      v14 = +[RMLog clientController];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10001A81C();
      }

      v15 = +[RMErrorUtilities createAlreadyEnrolledInMDMv1Error];
      v10[2](v10, 0, v15);
    }

    else
    {
      v16 = [v12 scheme];
      if ([v16 caseInsensitiveCompare:@"https"])
      {
        if ([v16 caseInsensitiveCompare:@"file"])
        {
          v17 = 4 * ([v16 caseInsensitiveCompare:@"mdm"] == 0);
        }

        else if (+[RMFeatureFlags isFileConduitEnabled])
        {
          v17 = 3;
        }

        else
        {
          v17 = 1;
        }
      }

      else if (+[RMFeatureFlags isHTTPConduitEnabled])
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      if ((v17 & 3) != 0)
      {
        if (v17 == 1)
        {
          v18 = +[RMLog clientController];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10001A74C();
          }

          v15 = [NSError errorWithDomain:RMErrorDomain code:4 userInfo:0];
          v10[2](v10, 0, v15);
        }

        else
        {
          v20 = [(RMClientController *)self _genericCredentialForAccount:v8 fromStore:v9];
          v46 = 0;
          v47[0] = &v46;
          v47[1] = 0x3032000000;
          v47[2] = sub_1000128B8;
          v47[3] = sub_1000128C8;
          v48 = 0;
          v40 = 0;
          v41 = &v40;
          v42 = 0x3032000000;
          v43 = sub_1000128B8;
          v44 = sub_1000128C8;
          v45 = 0;
          v34 = 0;
          v35 = &v34;
          v36 = 0x3032000000;
          v37 = sub_1000128B8;
          v38 = sub_1000128C8;
          v39 = 0;
          [(RMClientController *)self context];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100015A38;
          v26 = v25[3] = &unk_1000D1560;
          v23 = v12;
          v27 = v23;
          v33 = v17;
          v15 = v20;
          v28 = v15;
          v21 = v8;
          v29 = v21;
          v30 = &v46;
          v31 = &v40;
          v32 = &v34;
          v24 = v26;
          [v26 performBlockAndWait:v25];
          if (*(v47[0] + 40))
          {
            v22 = +[RMLog clientController];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_10001A6E4(v23, v47);
            }

            v10[2](v10, 0, *(v47[0] + 40));
          }

          else
          {
            [(RMClientController *)self _enrollClientWithManagementSourceObjectID:v41[5] managementSourceIdentifier:v35[5] conduitType:v17 account:v21 accountStore:v9 completionHandler:v10];
          }

          _Block_object_dispose(&v34, 8);
          _Block_object_dispose(&v40, 8);

          _Block_object_dispose(&v46, 8);
        }
      }

      else
      {
        v19 = +[RMLog clientController];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10001A7B4();
        }

        v15 = [NSError errorWithDomain:NSCocoaErrorDomain code:262 userInfo:0];
        v10[2](v10, 0, v15);
      }
    }
  }

  else
  {
    v15 = +[RMErrorUtilities createBootstrapURINotFound];
    v10[2](v10, 0, v15);
  }

  os_activity_scope_leave(&state);
}

- (BOOL)_verifyUniqueStoreWithURL:(id)a3 enrollmentType:(int64_t)a4 context:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v16 = 0;
  if (![RMStoreHelper hasDuplicateInContext:v10 uri:v9 storeType:a4 hasDuplicate:&v16 error:0])
  {
    goto LABEL_15;
  }

  if (v16 != 1)
  {
    v15 = 0;
    if ([RMStoreHelper hasExistingSingletonTypeInContext:v10 hasExisting:&v15 error:0])
    {
      if (v15 != 1)
      {
        LOBYTE(a6) = 1;
        goto LABEL_19;
      }

      v13 = +[RMLog clientController];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10001A884();
      }

      if (!a6)
      {
        goto LABEL_19;
      }

      v12 = +[RMErrorUtilities createTooManyDeviceManagementSourcesError];
      if (!v12)
      {
        goto LABEL_18;
      }

LABEL_17:
      v12 = v12;
      *a6 = v12;
      goto LABEL_18;
    }

LABEL_15:
    if (!a6)
    {
      goto LABEL_19;
    }

    v12 = +[RMErrorUtilities createInternalError];
    if (!v12)
    {
LABEL_18:

      LOBYTE(a6) = 0;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v11 = +[RMLog clientController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10001A8EC();
  }

  if (a6)
  {
    v12 = [RMErrorUtilities createManagementSourceAlreadyExistsErrorWithURI:v9];
    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:

  return a6;
}

- (void)_enrollClientWithManagementSourceObjectID:(id)a3 managementSourceIdentifier:(id)a4 conduitType:(int64_t)a5 account:(id)a6 accountStore:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a4;
  v19 = [(RMClientController *)self persistentContainer];
  v20 = [(RMClientController *)self _makeClientWithManagementSourceObjectID:v14 managementSourceIdentifier:v18 persistentContainer:v19];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100015F78;
  v26[3] = &unk_1000D1588;
  v26[4] = self;
  v27 = v14;
  v31 = v17;
  v32 = a5;
  v28 = v20;
  v29 = v15;
  v30 = v16;
  v21 = v16;
  v22 = v15;
  v23 = v20;
  v24 = v17;
  v25 = v14;
  [v23 enrollWithCompletionHandler:v26];
}

- (id)_bootstrapURIForAccount:(id)a3
{
  v3 = a3;
  if (([v3 rm_isAccountSchemeTest] & 1) != 0 || (objc_msgSend(v3, "rm_isAccountSchemeBearer") & 1) != 0 || (objc_msgSend(v3, "rm_isAccountSchemeMAID") & 1) != 0 || objc_msgSend(v3, "dmc_isAccountSchemeSharediPad"))
  {
    v4 = [v3 rm_enrollmentURL];
    v5 = [NSURL URLWithString:v4];

    if (v5)
    {
      goto LABEL_9;
    }

    v6 = +[RMLog clientController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001AA10(v3);
    }
  }

  else
  {
    v6 = +[RMLog clientController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001A954(v3);
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)_genericCredentialForAccount:(id)a3 fromStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  if ([v5 rm_isAccountSchemeTest])
  {
    v8 = objc_opt_new();
    v9 = [v5 username];
    [v8 setObject:v9 forKeyedSubscript:RMAuthenticationSchemeTestFieldUsername];

    v10 = objc_opt_new();
    v11 = [v10 UUIDString];
    [v8 setObject:v11 forKeyedSubscript:RMAuthenticationSchemeTestFieldToken];

    v12 = [RMGenericAuthenticationCredential alloc];
    v13 = &RMAuthenticationSchemeTest;
LABEL_5:
    v15 = [v12 initWithAuthenticationScheme:*v13 properties:v8];
LABEL_6:

    goto LABEL_7;
  }

  if ([v5 rm_isAccountSchemeBearer])
  {
    v8 = objc_opt_new();
    v14 = [v5 rm_bearerToken];
    [v8 setObject:v14 forKeyedSubscript:RMAuthenticationSchemeBearerFieldAccessToken];

    v12 = [RMGenericAuthenticationCredential alloc];
    v13 = &RMAuthenticationSchemeBearer;
    goto LABEL_5;
  }

  if ([v5 rm_isAccountSchemeMAID])
  {
    v8 = objc_opt_new();
    v17 = [v5 username];
    [v8 setObject:v17 forKeyedSubscript:RMAuthenticationSchemeMAIDFieldUsername];

    v18 = [v5 rm_DSID];
    [v8 setObject:v18 forKeyedSubscript:RMAuthenticationSchemeMAIDFieldDSID];

    v19 = [v5 rm_altDSID];
    [v8 setObject:v19 forKeyedSubscript:RMAuthenticationSchemeMAIDFieldAltDSID];

    v20 = [v5 rm_altDSID];
    v21 = [v6 aida_accountForAltDSID:v20];

    v22 = [v21 aida_tokenForService:@"com.apple.gs.mdm.auth"];
    [v8 setObject:v22 forKeyedSubscript:RMAuthenticationSchemeMAIDFieldShortLivedToken];
    v23 = [RMGenericAuthenticationCredential alloc];
    v15 = [v23 initWithAuthenticationScheme:RMAuthenticationSchemeMAID properties:v8];

    goto LABEL_6;
  }

  v24 = +[RMLog clientController];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_10001AA9C(v5);
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (void)_didFailToEnrollClientForManagementObjectID:(id)a3
{
  v4 = a3;
  [(RMClientController *)self context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000164AC;
  v8 = v7[3] = &unk_1000D1270;
  v9 = v4;
  v5 = v4;
  v6 = v8;
  [v6 performBlockAndWait:v7];
}

- (void)_didEnrollClient:(id)a3 conduitType:(int64_t)a4 managementSourceObjectID:(id)a5 account:(id)a6 accountStore:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_1000128B8;
  v57 = sub_1000128C8;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_1000128B8;
  v51 = sub_1000128C8;
  v52 = 0;
  [(RMClientController *)self context];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100016A14;
  v19 = v42[3] = &unk_1000D15B0;
  v43 = v19;
  v20 = v15;
  v44 = v20;
  v45 = &v47;
  v46 = &v53;
  [v19 performBlockAndWait:v42];
  if (v16 && v17)
  {
    [v16 rm_setEnrollmentToken:v54[5]];
    [v16 rm_setManagementSourceIdentifier:v48[5]];
    v21 = +[RMLog clientController];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Saving account...", buf, 2u);
    }

    *buf = 0;
    v37 = buf;
    v38 = 0x3032000000;
    v39 = sub_1000128B8;
    v40 = sub_1000128C8;
    v41 = 0;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100016AC8;
    v35[3] = &unk_1000D15D8;
    v35[4] = buf;
    [v17 saveAccount:v16 withCompletionHandler:v35];
    v22 = +[RMLog clientController];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Accounts finished saving.", v34, 2u);
    }

    _Block_object_dispose(buf, 8);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100016B34;
  v31[3] = &unk_1000D1270;
  v23 = v19;
  v32 = v23;
  v24 = v20;
  v33 = v24;
  [v23 performBlockAndWait:v31];
  if (a4 != 4)
  {
    +[RMMDMv1Liaison remoteManagementDidEnroll];
  }

  v25 = [(RMClientController *)self lockStateListener];
  [v25 startListening];

  v26 = self->_clientByManagementSourceIdentifier;
  objc_sync_enter(v26);
  [(NSMutableDictionary *)v26 setObject:v14 forKeyedSubscript:v48[5]];
  objc_sync_exit(v26);

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100016BE0;
  v28[3] = &unk_1000D1600;
  v27 = v18;
  v29 = v27;
  v30 = &v47;
  [v14 startWithCompletionHandler:v28];

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
}

- (void)unenrollWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "ClientController: unenrolling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = +[RMLog clientController];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10001AC1C();
  }

  v10 = [(RMClientController *)self _clientWithIdentifier:v6];
  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100016DD8;
    v13[3] = &unk_1000D1628;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    [v10 unenrollWithCompletionHandler:v13];
  }

  else
  {
    v11 = +[RMLog clientController];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001AC84();
    }

    v12 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:v6];
    (*(v7 + 2))(v7, 0, v12);
  }

  os_activity_scope_leave(&state);
}

- (BOOL)_didUnenrollClientWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self->_clientByManagementSourceIdentifier;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)v7 removeObjectForKey:v6];
  objc_sync_exit(v7);

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000128B8;
  v32 = sub_1000128C8;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v8 = [(RMClientController *)self context];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10001710C;
  v19 = &unk_1000D15B0;
  v9 = v6;
  v20 = v9;
  v10 = v8;
  v21 = v10;
  v22 = &v28;
  v23 = &v24;
  [v10 performBlockAndWait:&v16];
  if (a4)
  {
    v11 = v29[5];
    if (v11)
    {
      *a4 = v11;
    }
  }

  v12 = v29[5];
  if (!v12)
  {
    [RMConfigurationStatusArchiver removeAllStatusForStoreIdentifier:v9 error:0, v16, v17, v18, v19, v20];
    v13 = +[RMExternalStatusPublisher sharedPublisher];
    [v13 listenToNotificationsForAllKeyPaths];

    [RMStoreAssetCache removeAllCachedAssetsForStoreIdentifier:v9 error:0];
    if ((v25[3] & 1) == 0)
    {
      +[RMMDMv1Liaison remoteManagementDidUnenroll];
      v14 = [(RMClientController *)self lockStateListener];
      [v14 stopListening];
    }
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v12 == 0;
}

- (void)deviceChannelEnrollmentExistsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(RMClientController *)self context];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100017494;
  v6[3] = &unk_1000D13E0;
  v6[4] = &v7;
  [v5 performBlockAndWait:v6];
  (*(v4 + 2))(v4, *(v8 + 24), 0);

  _Block_object_dispose(&v7, 8);
}

- (void)managementChannelWithAccountIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000128B8;
  v26 = sub_1000128C8;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000128B8;
  v20 = sub_1000128C8;
  v21 = 0;
  v8 = [(RMClientController *)self context];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001773C;
  v11[3] = &unk_1000D15B0;
  v9 = v6;
  v12 = v9;
  v10 = v8;
  v13 = v10;
  v14 = &v16;
  v15 = &v22;
  [v10 performBlockAndWait:v11];
  v7[2](v7, v23[5], v17[5]);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

- (void)managementChannelWithEnrollmentURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000128B8;
  v26 = sub_1000128C8;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000128B8;
  v20 = sub_1000128C8;
  v21 = 0;
  v8 = [(RMClientController *)self context];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000179FC;
  v11[3] = &unk_1000D15B0;
  v9 = v6;
  v12 = v9;
  v10 = v8;
  v13 = v10;
  v14 = &v16;
  v15 = &v22;
  [v10 performBlockAndWait:v11];
  v7[2](v7, v23[5], v17[5]);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

- (void)managementChannelsChanged
{
  [(RMClientController *)self context];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000128B8;
  v24 = sub_1000128C8;
  v25 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100017DD8;
  v17 = v16[3] = &unk_1000D0E38;
  v18 = self;
  v19 = &v20;
  v11 = v17;
  [v17 performBlockAndWait:v16];
  if (v21[5])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [(RMClientController *)self clientByManagementSourceIdentifier];
    v4 = [v3 allKeys];

    v5 = [v4 countByEnumeratingWithState:&v12 objects:v28 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          if (([v21[5] containsObject:v8] & 1) == 0)
          {
            v9 = +[RMLog clientController];
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v27 = v8;
              _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Removing stale RMClient for: %{public}@", buf, 0xCu);
            }

            v10 = [(RMClientController *)self clientByManagementSourceIdentifier];
            [v10 removeObjectForKey:v8];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v28 count:16];
      }

      while (v5);
    }
  }

  _Block_object_dispose(&v20, 8);
}

- (void)syncWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "ClientController: syncing", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v8, &v14);
  v9 = +[RMLog clientController];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10001AF00();
  }

  v10 = [(RMClientController *)self _clientWithIdentifier:v6];
  v11 = v10;
  if (v10)
  {
    [v10 syncWithCompletionHandler:v7];
  }

  else
  {
    v12 = +[RMLog clientController];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001AF68();
    }

    v13 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:v6];
    v7[2](v7, v13);
  }

  os_activity_scope_leave(&v14);
}

- (void)syncAllManagementSourcesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v6 = self->_clientByManagementSourceIdentifier;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)v6 copy];
  objc_sync_exit(v6);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000181E8;
  v13[3] = &unk_1000D1650;
  v14 = v5;
  v8 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];
  v9 = [(RMClientController *)self dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000183A8;
  v11[3] = &unk_1000D1678;
  v12 = v4;
  v10 = v4;
  dispatch_group_notify(v8, v9, v11);
}

- (void)applyNowWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "ClientController: apply now", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v8, &v14);
  v9 = +[RMLog clientController];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B038();
  }

  v10 = [(RMClientController *)self _clientWithIdentifier:v6];
  v11 = v10;
  if (v10)
  {
    [v10 applyNowWithCompletionHandler:v7];
  }

  else
  {
    v12 = +[RMLog clientController];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001B0A0();
    }

    v13 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:v6];
    v7[2](v7, v13);
  }

  os_activity_scope_leave(&v14);
}

- (void)updateWithIdentifier:(id)a3 pushMessage:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&_mh_execute_header, "ClientController: updating via push message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v11, &v17);
  v12 = +[RMLog clientController];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B108();
  }

  v13 = [(RMClientController *)self _clientWithIdentifier:v8];
  v14 = v13;
  if (v13)
  {
    [v13 updateWithPushMessage:v9 completionHandler:v10];
  }

  else
  {
    v15 = +[RMLog clientController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10001B170();
    }

    v16 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:v8];
    v10[2](v10, v16);
  }

  os_activity_scope_leave(&v17);
}

- (void)updateWithIdentifier:(id)a3 tokensResponse:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&_mh_execute_header, "ClientController: updating via sync tokens", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v11, &v17);
  v12 = +[RMLog clientController];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B1D8();
  }

  v13 = [(RMClientController *)self _clientWithIdentifier:v8];
  v14 = v13;
  if (v13)
  {
    [v13 updateWithTokensResponse:v9 completionHandler:v10];
  }

  else
  {
    v15 = +[RMLog clientController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10001B170();
    }

    v16 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:v8];
    v10[2](v10, v16);
  }

  os_activity_scope_leave(&v17);
}

- (void)sendStatusData:(id)a3 toManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&_mh_execute_header, "ClientController: sending arbitrary status", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v11, &v17);
  v12 = +[RMLog clientController];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B240();
  }

  v13 = [(RMClientController *)self _clientWithIdentifier:v9];
  v14 = v13;
  if (v13)
  {
    [v13 sendStatusData:v8 completionHandler:v10];
  }

  else
  {
    v15 = +[RMLog clientController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10001B2A8();
    }

    v16 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:v9];
    v10[2](v10, v16);
  }

  os_activity_scope_leave(&v17);
}

- (void)queryForStatusSubscriptionsWithIdentifiers:(id)a3 fromManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&_mh_execute_header, "ClientController: query for status subscriptions", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v23.opaque[0] = 0;
  v23.opaque[1] = 0;
  os_activity_scope_enter(v11, &v23);
  v12 = +[RMLog clientController];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v8 allObjects];
    v18 = [v17 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v19 = [v18 componentsJoinedByString:{@", "}];

    *buf = 138543618;
    v25 = v19;
    v26 = 2114;
    v27 = v9;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Querying for status subscriptions with identifiers %{public}@ from %{public}@...", buf, 0x16u);
  }

  v13 = [(RMClientController *)self _clientWithIdentifier:v9];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 queryForStatusSubscriptionsWithIdentifiers:v8];
    v10[2](v10, v15, 0);
  }

  else
  {
    v16 = +[RMLog clientController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [v8 allObjects];
      v21 = [v20 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
      v22 = [v21 componentsJoinedByString:{@", "}];

      *buf = 138543618;
      v25 = v22;
      v26 = 2114;
      v27 = v9;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not query for status subscriptions with identifiers %{public}@, could not find client for identifier: %{public}@", buf, 0x16u);
    }

    v15 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:v9];
    (v10)[2](v10, 0, v15);
  }

  os_activity_scope_leave(&v23);
}

- (void)sendStatusForSubscriptionsWithIdentifiers:(id)a3 toManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&_mh_execute_header, "ClientController: sending specific status", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v23.opaque[0] = 0;
  v23.opaque[1] = 0;
  os_activity_scope_enter(v11, &v23);
  v12 = +[RMLog clientController];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v8 allObjects];
    v18 = [v17 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v19 = [v18 componentsJoinedByString:{@", "}];

    *buf = 138543618;
    v25 = v19;
    v26 = 2114;
    v27 = v9;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Querying for status subscriptions with identifiers %{public}@ then sending to %{public}@...", buf, 0x16u);
  }

  v13 = [(RMClientController *)self _clientWithIdentifier:v9];
  v14 = v13;
  if (v13)
  {
    [v13 sendStatusForSubscriptionsWithIdentifiers:v8 completionHandler:v10];
  }

  else
  {
    v15 = +[RMLog clientController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = [v8 allObjects];
      v21 = [v20 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
      v22 = [v21 componentsJoinedByString:{@", "}];

      *buf = 138543618;
      v25 = v22;
      v26 = 2114;
      v27 = v9;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not query for status subscriptions with identifiers %{public}@, could not find client for identifier: %{public}@", buf, 0x16u);
    }

    v16 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:v9];
    v10[2](v10, v16);
  }

  os_activity_scope_leave(&v23);
}

- (id)_clientWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_clientByManagementSourceIdentifier;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_clientByManagementSourceIdentifier objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)clientNeedsToReenrollWithManagementSourceIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[RMLog clientController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B310();
  }

  if ([(RMClientController *)self _canProcessClientStateChanges:v4])
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019214;
    block[3] = &unk_1000D16C8;
    v9 = v4;
    objc_copyWeak(&v10, &location);
    dispatch_async(&_dispatch_main_q, block);
    v6 = +[RMLog clientController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B3E0();
    }

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = +[RMLog clientController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B378();
    }
  }
}

- (void)clientNeedsToUnenrollWithManagementSourceIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[RMLog clientController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B4B0();
  }

  if ([(RMClientController *)self _canProcessClientStateChanges:v4])
  {
    [(RMClientController *)self _unenrollAndReenrollIfDEP:v4];
  }

  else
  {
    v6 = +[RMLog clientController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B518();
    }
  }
}

- (BOOL)_canProcessClientStateChanges:(id)a3
{
  v4 = a3;
  v5 = [(RMClientController *)self processingClientStateChanges];
  objc_sync_enter(v5);
  v6 = [(RMClientController *)self processingClientStateChanges];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = +[RMLog clientController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B518();
    }
  }

  else
  {
    v8 = [(RMClientController *)self processingClientStateChanges];
    [v8 addObject:v4];
  }

  objc_sync_exit(v5);
  return v7 ^ 1;
}

- (void)_completedClientStateChanges:(id)a3
{
  v6 = a3;
  v4 = [(RMClientController *)self processingClientStateChanges];
  objc_sync_enter(v4);
  v5 = [(RMClientController *)self processingClientStateChanges];
  [v5 removeObject:v6];

  objc_sync_exit(v4);
}

- (void)lockStateDidChange:(BOOL)a3
{
  if (!a3)
  {
    +[RMConfigurationPublisher reprocessActiveConfigurations];
  }
}

@end