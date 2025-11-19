@interface RMXPCProxyHandler
+ (BOOL)_doesConnection:(id)a3 haveEntitlement:(id)a4;
+ (BOOL)_isConnection:(id)a3 fromApplicationIdentifier:(id)a4;
+ (id)_activeConfigurationsByTypeForTypes:(id)a3 persistentContainer:(id)a4 error:(id *)a5;
+ (id)_managementChannelWithIdentifier:(id)a3 error:(id *)a4;
- (RMXPCProxyHandler)initWithXPCConnection:(id)a3 persistentContainer:(id)a4;
- (void)deviceChannelEnrollmentExistsWithCompletionHandler:(id)a3;
- (void)enrollDeviceChannelWithURI:(id)a3 completionHandler:(id)a4;
- (void)enrollUserChannelWithAccountIdentifier:(id)a3 completionHandler:(id)a4;
- (void)enrollViaMDMWithEnrollmentType:(int64_t)a3 uri:(id)a4 accountIdentifier:(id)a5 personaIdentifier:(id)a6 completionHandler:(id)a7;
- (void)fetchConfigurationsWithTypes:(id)a3 completionHandler:(id)a4;
- (void)managementChannelWithAccountIdentifier:(id)a3 completionHandler:(id)a4;
- (void)managementChannelWithEnrollmentURL:(id)a3 completionHandler:(id)a4;
- (void)periodicSyncWithCompletionHandler:(id)a3;
- (void)queryForStatusAndErrorsWithKeyPaths:(id)a3 fromManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)queryForStatusSubscriptionsWithIdentifiers:(id)a3 fromManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)reportPluginDetailsWithCompletionHandler:(id)a3;
- (void)sendStatusData:(id)a3 toManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)sendStatusForKeyPaths:(id)a3 toManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)sendStatusForSubscriptionsWithIdentifiers:(id)a3 toManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)syncWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)unenrollWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)updateWithIdentifier:(id)a3 pushMessage:(id)a4 completionHandler:(id)a5;
- (void)updateWithIdentifier:(id)a3 tokensResponse:(id)a4 completionHandler:(id)a5;
@end

@implementation RMXPCProxyHandler

- (RMXPCProxyHandler)initWithXPCConnection:(id)a3 persistentContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = RMXPCProxyHandler;
  v8 = [(RMXPCProxyHandler *)&v12 init];
  if (v8)
  {
    v9 = [objc_opt_class() _doesConnection:v6 haveEntitlement:@"com.apple.private.remotemanagement"];
    objc_storeStrong(v8 + 2, a4);
    v8[8] = v9;
    if (v9)
    {
      *(v8 + 9) = 257;
      v10 = 1;
    }

    else
    {
      v8[10] = [objc_opt_class() _doesConnection:v6 haveEntitlement:@"com.apple.private.remotemanagement.configuration-subscriber"];
      v8[9] = [objc_opt_class() _doesConnection:v6 haveEntitlement:@"com.apple.private.remotemanagement.account-changes"];
      v10 = [objc_opt_class() _doesConnection:v6 haveEntitlement:@"com.apple.private.remotemanagement.enrollment"];
    }

    v8[11] = v10;
  }

  return v8;
}

+ (BOOL)_doesConnection:(id)a3 haveEntitlement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 valueForEntitlement:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 BOOLValue];

    if (v9)
    {
LABEL_10:
      v11 = 1;
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ([v7 isEqualToString:@"com.apple.private.remotemanagement.account-changes"])
  {
    v10 = @"AAACCOUNTS.com.apple.accountsd";
  }

  else
  {
    if (![v7 isEqualToString:@"com.apple.private.remotemanagement.enrollment"])
    {
      v11 = 0;
      goto LABEL_12;
    }

    if ([a1 _isConnection:v6 fromApplicationIdentifier:@"com.apple.purplebuddy"])
    {
      goto LABEL_10;
    }

    v10 = @"com.apple.Preferences";
  }

  v11 = [a1 _isConnection:v6 fromApplicationIdentifier:v10];
LABEL_12:

  return v11;
}

+ (BOOL)_isConnection:(id)a3 fromApplicationIdentifier:(id)a4
{
  v5 = a4;
  v6 = [a3 valueForEntitlement:@"application-identifier"];
  v7 = +[RMLog XPCListenerDelegate];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000932B0();
  }

  v8 = [v5 isEqualToString:v6];
  return v8;
}

- (void)enrollDeviceChannelWithURI:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMXPCProxyHandler *)self hasEnrollmentEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Enrolling from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enrolling with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMClientController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008F334;
    v12[3] = &unk_1000D33C8;
    v13 = v6;
    v14 = v7;
    [v10 enrollDeviceChannelWithURI:v13 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)enrollUserChannelWithAccountIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMXPCProxyHandler *)self hasEnrollmentEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Enrolling user channel from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enrolling with account %{public}@...", buf, 0xCu);
    }

    v10 = +[RMClientController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008F65C;
    v12[3] = &unk_1000D33C8;
    v13 = v6;
    v14 = v7;
    [v10 enrollUserChannelWithAccountIdentifier:v13 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)enrollViaMDMWithEnrollmentType:(int64_t)a3 uri:(id)a4 accountIdentifier:(id)a5 personaIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([(RMXPCProxyHandler *)self hasEnrollmentEntitlement])
  {
    v16 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Enrolling DDM from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v16, &state);
    v17 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Enrolling DDM with %{public}@...", buf, 0xCu);
    }

    v18 = +[RMClientController sharedController];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10008F9B8;
    v20[3] = &unk_1000D33C8;
    v21 = v12;
    v22 = v15;
    [v18 enrollViaMDMWithEnrollmentType:a3 uri:v21 accountIdentifier:v13 personaIdentifier:v14 completionHandler:v20];

    os_activity_scope_leave(&state);
  }

  else
  {
    v19 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v15 + 2))(v15, 0, v19);
  }
}

- (void)unenrollWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMXPCProxyHandler *)self hasEnrollmentEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Unenrolling from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unenrolling %{public}@...", buf, 0xCu);
    }

    v10 = +[RMClientController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008FCE0;
    v12[3] = &unk_1000D1128;
    v13 = v6;
    v14 = v7;
    [v10 unenrollWithIdentifier:v13 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)syncWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMXPCProxyHandler *)self hasEnrollmentEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Syncing from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Syncing %{public}@...", buf, 0xCu);
    }

    v10 = +[RMClientController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009001C;
    v12[3] = &unk_1000D10B0;
    v13 = v6;
    v14 = v7;
    [v10 syncWithIdentifier:v13 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v7 + 2))(v7, v11);
  }
}

- (void)periodicSyncWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(RMXPCProxyHandler *)self hasEnrollmentEntitlement])
  {
    v5 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Periodic sync from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    v6 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Periodic sync...", buf, 2u);
    }

    v7 = +[RMClientController sharedController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000902AC;
    v8[3] = &unk_1000D2CE0;
    v9 = v4;
    [v7 syncAllManagementSourcesWithCompletionHandler:v8];

    os_activity_scope_leave(&state);
  }

  else
  {
    v5 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v4 + 2))(v4, v5);
  }
}

- (void)updateWithIdentifier:(id)a3 pushMessage:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMXPCProxyHandler *)self hasEnrollmentEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Updating from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating %{public}@ with push message...", buf, 0xCu);
    }

    v13 = +[RMClientController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100090584;
    v15[3] = &unk_1000D10B0;
    v16 = v8;
    v17 = v10;
    [v13 updateWithIdentifier:v16 pushMessage:v9 completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v10 + 2))(v10, v14);
  }
}

- (void)updateWithIdentifier:(id)a3 tokensResponse:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMXPCProxyHandler *)self hasEnrollmentEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Updating from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating %{public}@ with sync tokens response..", buf, 0xCu);
    }

    v13 = +[RMClientController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009089C;
    v15[3] = &unk_1000D10B0;
    v16 = v8;
    v17 = v10;
    [v13 updateWithIdentifier:v16 tokensResponse:v9 completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v10 + 2))(v10, v14);
  }
}

- (void)deviceChannelEnrollmentExistsWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(RMXPCProxyHandler *)self hasEnrollmentEntitlement])
  {
    v5 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Checking device enrollment from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    v6 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Checking device enrollment", buf, 2u);
    }

    v7 = +[RMClientController sharedController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100090B30;
    v8[3] = &unk_1000D33F0;
    v9 = v4;
    [v7 deviceChannelEnrollmentExistsWithCompletionHandler:v8];

    os_activity_scope_leave(&state);
  }

  else
  {
    v5 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v4 + 2))(v4, 0, v5);
  }
}

- (void)managementChannelWithAccountIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMXPCProxyHandler *)self hasEnrollmentEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Finding management channel from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Finding management channel", buf, 2u);
    }

    v10 = +[RMClientController sharedController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100090DC4;
    v11[3] = &unk_1000D3418;
    v12 = v7;
    [v10 managementChannelWithAccountIdentifier:v6 completionHandler:v11];

    os_activity_scope_leave(&state);
  }

  else
  {
    v8 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v7 + 2))(v7, 0, v8);
  }
}

- (void)managementChannelWithEnrollmentURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMXPCProxyHandler *)self hasEnrollmentEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Finding management channel from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Finding management channel", buf, 2u);
    }

    v10 = +[RMClientController sharedController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100091074;
    v11[3] = &unk_1000D3418;
    v12 = v7;
    [v10 managementChannelWithEnrollmentURL:v6 completionHandler:v11];

    os_activity_scope_leave(&state);
  }

  else
  {
    v8 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v7 + 2))(v7, 0, v8);
  }
}

- (void)sendStatusData:(id)a3 toManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMXPCProxyHandler *)self hasCommandLineEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Sending status data from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending status data to %{public}@...", buf, 0xCu);
    }

    v13 = +[RMClientController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100091394;
    v15[3] = &unk_1000D10B0;
    v16 = v9;
    v17 = v10;
    [v13 sendStatusData:v8 toManagementSourceWithIdentifier:v16 completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v10 + 2))(v10, v14);
  }
}

+ (id)_managementChannelWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100091674;
  v28 = sub_100091684;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100091674;
  v22 = sub_100091684;
  v23 = 0;
  v6 = +[RMPersistentController sharedController];
  v7 = [v6 persistentContainer];
  v8 = [v7 newBackgroundContext];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009168C;
  v14[3] = &unk_1000D18B8;
  v9 = v5;
  v15 = v9;
  v16 = &v18;
  v17 = &v24;
  [v8 performBlockAndWait:v14];
  v10 = v25[5];
  if (v10)
  {
    v11 = v10;
  }

  else if (a4)
  {
    v13 = v19[5];
    if (v13)
    {
      *a4 = v13;
    }
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v10;
}

- (void)queryForStatusAndErrorsWithKeyPaths:(id)a3 fromManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMXPCProxyHandler *)self hasCommandLineEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Querying for status and errors from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v8;
      v14 = [v13 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
      v15 = [v14 componentsJoinedByString:{@", "}];

      *buf = 138543618;
      v29 = v15;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Querying for status and errors with key paths %{public}@ from %{public}@...", buf, 0x16u);
    }

    v26 = 0;
    v16 = [objc_opt_class() _managementChannelWithIdentifier:v9 error:&v26];
    v17 = v26;
    if (v16)
    {
      v18 = +[RMExternalStatusPublisher sharedPublisher];
      v19 = [NSSet setWithArray:v8];
      [v18 publishStatusKeys:v19 storeIdentifier:v9];

      v20 = objc_opt_new();
      v21 = [NSSet setWithArray:v8];
      v22 = [v20 queryForStatusWithKeyPaths:v21 onBehalfOfManagementChannel:v16];

      v23 = [v22 statusByKeyPath];
      v24 = [v22 errorByKeyPath];
      v10[2](v10, v23, v24, 0);
    }

    else
    {
      (v10)[2](v10, 0, 0, v17);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v25 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (v10)[2](v10, 0, 0, v25);
  }
}

- (void)sendStatusForKeyPaths:(id)a3 toManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMXPCProxyHandler *)self hasCommandLineEntitlement])
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v38 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Querying and sending status of specific type from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v38, &state);
    v11 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      v13 = [v12 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
      v14 = [v13 componentsJoinedByString:{@", "}];

      *buf = 138543618;
      v47 = v14;
      v48 = 2114;
      v49 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Querying and sending status with key paths %{public}@ to %{public}@...", buf, 0x16u);
    }

    v44 = 0;
    v15 = [objc_opt_class() _managementChannelWithIdentifier:v9 error:&v44];
    v16 = v44;
    v17 = v16;
    if (v15)
    {
      v18 = objc_opt_new();
      v19 = [NSSet setWithArray:v8];
      v20 = [v18 queryForStatusWithKeyPaths:v19 onBehalfOfManagementChannel:v15];

      v21 = [v20 protocolStatusReportWithFullReport:0];
      v43 = v17;
      v22 = [v21 serializeAsDataWithType:1 error:&v43];
      v23 = v43;

      if (v22)
      {
        v37 = v23;
        v24 = +[RMClientController sharedController];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_100091EAC;
        v39[3] = &unk_1000D1100;
        v40 = v8;
        v25 = v9;
        v26 = v9;
        v27 = v21;
        v28 = v8;
        v29 = v20;
        v30 = v18;
        v31 = v25;
        v41 = v25;
        v42 = v10;
        v32 = v31;
        v33 = v30;
        v34 = v29;
        v8 = v28;
        v35 = v27;
        v9 = v26;
        [v24 sendStatusData:v22 toManagementSourceWithIdentifier:v32 completionHandler:v39];

        v23 = v37;
LABEL_11:

        os_activity_scope_leave(&state);
        goto LABEL_12;
      }
    }

    else
    {
      v23 = v16;
    }

    (*(v10 + 2))(v10, v23);
    goto LABEL_11;
  }

  v36 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
  (*(v10 + 2))(v10, v36);

LABEL_12:
}

- (void)queryForStatusSubscriptionsWithIdentifiers:(id)a3 fromManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMXPCProxyHandler *)self hasCommandLineEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Querying for status subscriptions from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v8;
      v14 = [v13 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
      v15 = [v14 componentsJoinedByString:{@", "}];

      *buf = 138543618;
      v24 = v15;
      v25 = 2114;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Querying for status subscriptions with identifiers %{public}@ from %{public}@...", buf, 0x16u);
    }

    v16 = +[RMClientController sharedController];
    v17 = [NSSet setWithArray:v8];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100092290;
    v19[3] = &unk_1000D3440;
    v20 = v9;
    v21 = v10;
    [v16 queryForStatusSubscriptionsWithIdentifiers:v17 fromManagementSourceWithIdentifier:v20 completionHandler:v19];

    os_activity_scope_leave(&state);
  }

  else
  {
    v18 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v10 + 2))(v10, 0, v18);
  }
}

- (void)sendStatusForSubscriptionsWithIdentifiers:(id)a3 toManagementSourceWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMXPCProxyHandler *)self hasCommandLineEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Querying and sending status subscriptions from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v8;
      v14 = [v13 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
      v15 = [v14 componentsJoinedByString:{@", "}];

      *buf = 138543618;
      v25 = v15;
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Querying and sending status subscriptions with identifiers %{public}@ to %{public}@...", buf, 0x16u);
    }

    v16 = +[RMClientController sharedController];
    v17 = [NSSet setWithArray:v8];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100092640;
    v19[3] = &unk_1000D1100;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    [v16 sendStatusForSubscriptionsWithIdentifiers:v17 toManagementSourceWithIdentifier:v21 completionHandler:v19];

    os_activity_scope_leave(&state);
  }

  else
  {
    v18 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    (*(v10 + 2))(v10, v18);
  }
}

- (void)fetchConfigurationsWithTypes:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMXPCProxyHandler *)self hasConfigurationSubscriberEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Fetching configurations", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetching configurations for: %{public}@", buf, 0xCu);
    }

    v10 = objc_opt_class();
    v11 = [(RMXPCProxyHandler *)self persistentContainer];
    v23 = 0;
    v12 = [v10 _activeConfigurationsByTypeForTypes:v6 persistentContainer:v11 error:&v23];
    v13 = v23;

    if (v12)
    {
      v14 = +[RMLog XPCListenerDelegate];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v6;
        v16 = [v15 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
        v17 = [v16 componentsJoinedByString:{@", "}];

        *buf = 138543618;
        v26 = v17;
        v27 = 2114;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Fetched configurations of types %{public}@: %{public}@", buf, 0x16u);
      }

      v7[2](v7, v12, 0);
    }

    else
    {
      v19 = +[RMLog XPCListenerDelegate];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = v6;
        v21 = [v20 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
        v22 = [v21 componentsJoinedByString:{@", "}];

        *buf = 138543618;
        v26 = v22;
        v27 = 2114;
        v28 = v13;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not fetch configurations of types %{public}@: %{public}@", buf, 0x16u);
      }

      (v7)[2](v7, 0, v13);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v18 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.configuration-subscriber"];
    (v7)[2](v7, 0, v18);
  }
}

+ (id)_activeConfigurationsByTypeForTypes:(id)a3 persistentContainer:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[RMConfigurationQuerier alloc] initWithPersistentContainer:v7];

  v10 = [(RMConfigurationQuerier *)v9 activeConfigurationsByTypeForTypes:v8 error:a5];

  return v10;
}

- (void)reportPluginDetailsWithCompletionHandler:(id)a3
{
  v35 = a3;
  if ([(RMXPCProxyHandler *)self hasCommandLineEntitlement])
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v33 = _os_activity_create(&_mh_execute_header, "XPCProxyHandler: Query plugins", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v33, &state);
    v4 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Query plugins", buf, 2u);
    }

    v36 = objc_opt_new();
    v5 = +[RMConfigurationPublisher reportDetails];
    v6 = +[RMExternalStatusPublisher sharedPublisher];
    v7 = [v6 reportDetails];

    v8 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v9)
    {
      v10 = *v43;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v42 + 1) + 8 * i);
          v13 = [v12 mutableCopy];
          v14 = [v12 objectForKeyedSubscript:@"Identifier"];
          [v8 setObject:v13 forKeyedSubscript:v14];
        }

        v9 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v9);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v16)
    {
      v17 = *v39;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v38 + 1) + 8 * j);
          v20 = [v19 objectForKeyedSubscript:{@"Identifier", v33}];
          v21 = [v8 objectForKeyedSubscript:v20];
          if (v21)
          {
            v22 = [v19 objectForKeyedSubscript:@"StatusItems"];
            [v21 setObject:v22 forKeyedSubscript:@"StatusItems"];
          }

          else
          {
            v22 = [v19 mutableCopy];
            [v8 setObject:v22 forKeyedSubscript:v20];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v16);
    }

    v23 = [v8 allValues];
    v24 = [v23 sortedArrayUsingComparator:&stru_1000D3480];
    [v36 setObject:v24 forKeyedSubscript:@"Plugins"];

    v25 = +[RMModelConfigurationSchema schemas];
    v26 = [v25 allKeys];

    if ([v26 count])
    {
      v27 = [v26 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
      [v36 setObject:v27 forKeyedSubscript:@"Dynamic Configurations"];
    }

    v28 = +[RMModelStatusSchema schemas];
    v29 = [v28 allKeys];

    if ([v29 count])
    {
      v30 = [v29 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
      [v36 setObject:v30 forKeyedSubscript:@"Dynamic Status"];
    }

    v35[2](v35, v36, 0);

    os_activity_scope_leave(&state);
    v31 = v35;
  }

  else
  {
    v32 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement"];
    v31 = v35;
    (v35)[2](v35, 0, v32);
  }
}

@end