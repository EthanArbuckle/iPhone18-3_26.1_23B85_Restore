@interface RMStoreXPCProxyHandler
+ (BOOL)_doesConnection:(id)a3 haveEntitlements:(id)a4;
+ (BOOL)_isConnection:(id)a3 fromApplicationIdentifier:(id)a4;
- (RMStoreXPCProxyHandler)initWithXPCConnection:(id)a3 persistentContainer:(id)a4;
- (void)applyChangesForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)certificatePersistentRefForAssetKey:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)certificateStatusWithStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)configurationUIsForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)declarationManifestForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)declarationWithIdentifier:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)declarationsForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)declarationsWithTypes:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)deleteDeclarationWithIdentifier:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)displayableProfileConfigurationsForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)fetchDataAtURL:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)linkStoreIdentifier:(id)a3 profileIdentifier:(id)a4 accountIdentifier:(id)a5 completionHandler:(id)a6;
- (void)metadataForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)metadataValueForKey:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)observerStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)observerStoresWithCompletionHandler:(id)a3;
- (void)providerStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)providerStoresWithCompletionHandler:(id)a3;
- (void)publishStatusWithStoreIdentifier:(id)a3 status:(id)a4 completionHandler:(id)a5;
- (void)removeStatusWithStoreIdentifier:(id)a3 declarationIdentifier:(id)a4 declarationServerToken:(id)a5 sourceIdentifier:(id)a6 completionHandler:(id)a7;
- (void)removeStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)resolveAsset:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)saveDeclaration:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setMetadataValue:(id)a3 forKey:(id)a4 storeIdentifier:(id)a5 completionHandler:(id)a6;
- (void)setShouldInstallConfiguration:(id)a3 shouldInstall:(BOOL)a4 storeIdentifier:(id)a5 completionHandler:(id)a6;
- (void)subscribedDeclarationsWithTypes:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)subscribedStoreConfigurationsVisibleUIWithTypes:(id)a3 completionHandler:(id)a4;
- (void)subscribedStoreDeclarationsWithTypes:(id)a3 completionHandler:(id)a4;
- (void)subscriberStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)subscriberStoresWithCompletionHandler:(id)a3;
- (void)unassignAssets:(id)a3 completionHandler:(id)a4;
- (void)waitForActiveAndValidDeclarations:(id)a3 timeout:(double)a4 storeIdentifier:(id)a5 completionHandler:(id)a6;
- (void)waitForProcessingOfDeclarations:(id)a3 timeout:(double)a4 storeIdentifier:(id)a5 completionHandler:(id)a6;
@end

@implementation RMStoreXPCProxyHandler

- (RMStoreXPCProxyHandler)initWithXPCConnection:(id)a3 persistentContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = RMStoreXPCProxyHandler;
  v8 = [(RMStoreXPCProxyHandler *)&v19 init];
  if (v8)
  {
    v9 = objc_opt_class();
    v23 = @"com.apple.private.remotemanagement";
    v10 = [NSArray arrayWithObjects:&v23 count:1];
    LODWORD(v9) = [v9 _doesConnection:v6 haveEntitlements:v10];

    objc_storeStrong(v8 + 2, a4);
    v8[8] = v9;
    if (v9)
    {
      *(v8 + 9) = 257;
      v8[11] = 1;
      v11 = 1;
    }

    else
    {
      v12 = objc_opt_class();
      v22[0] = @"com.apple.private.remotemanagement.observer";
      v22[1] = @"com.apple.private.remotemanagement.provider";
      v22[2] = @"com.apple.private.remotemanagement.subscriber";
      v13 = [NSArray arrayWithObjects:v22 count:3];
      v8[9] = [v12 _doesConnection:v6 haveEntitlements:v13];

      v14 = objc_opt_class();
      v21 = @"com.apple.private.remotemanagement.provider";
      v11 = 1;
      v15 = [NSArray arrayWithObjects:&v21 count:1];
      v8[10] = [v14 _doesConnection:v6 haveEntitlements:v15];

      v16 = objc_opt_class();
      v20 = @"com.apple.private.remotemanagement.subscriber";
      v17 = [NSArray arrayWithObjects:&v20 count:1];
      v8[11] = [v16 _doesConnection:v6 haveEntitlements:v17];

      if ((v8[10] & 1) == 0)
      {
        if (v8[9])
        {
          v11 = 1;
        }

        else
        {
          v11 = v8[11];
        }
      }
    }

    v8[12] = v11 & 1;
  }

  return v8;
}

+ (BOOL)_doesConnection:(id)a3 haveEntitlements:(id)a4
{
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v6 valueForEntitlement:{v12, v17}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 BOOLValue];

          if (v14)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }

        if ([v12 isEqualToString:@"com.apple.private.remotemanagement.provider"] || objc_msgSend(v12, "isEqualToString:", @"com.apple.private.remotemanagement.observer")) && (objc_msgSend(a1, "_isConnection:fromApplicationIdentifier:", v6, @"com.apple.Preferences"))
        {
LABEL_16:
          v15 = 1;
          goto LABEL_17;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_17:

  return v15;
}

+ (BOOL)_isConnection:(id)a3 fromApplicationIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a1 _applicationIdentifierFromConnection:a3];
  v8 = +[RMLog StoreXPCListenerDelegate];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10008B9E4();
  }

  v9 = [v6 isEqualToString:v7];
  return v9;
}

- (void)observerStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: ObserverStoreWithIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ObserverStoreWithIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000857B4;
    v12[3] = &unk_1000D31C8;
    v13 = v7;
    [v10 observerStoreWithIdentifier:v6 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)observerStoresWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v5 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: ObserverStoresWithCompletionHandler from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    v6 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ObserverStoresWithCompletionHandler...", buf, 2u);
    }

    v7 = +[RMStoreController sharedController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000859FC;
    v8[3] = &unk_1000D31F0;
    v9 = v4;
    [v7 observerStoresWithCompletionHandler:v8];

    os_activity_scope_leave(&state);
  }

  else
  {
    v5 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(v4 + 2))(v4, 0, v5);
  }
}

- (void)declarationWithIdentifier:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: DeclarationWithIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DeclarationWithIdentifier with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100085CB8;
    v15[3] = &unk_1000D3218;
    v16 = v10;
    [v13 declarationWithIdentifier:v8 storeIdentifier:v9 completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

- (void)declarationsForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: DeclarationsForStoreIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DeclarationsForStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100085F58;
    v12[3] = &unk_1000D31F0;
    v13 = v7;
    [v10 declarationsForStoreIdentifier:v6 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)declarationsWithTypes:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: DeclarationsWithTypes from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DeclarationsWithTypes with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100086214;
    v15[3] = &unk_1000D31F0;
    v16 = v10;
    [v13 declarationsWithTypes:v8 storeIdentifier:v9 completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

- (void)declarationManifestForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: DeclarationManifestForStoreIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DeclarationManifestForStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000864B4;
    v12[3] = &unk_1000D3240;
    v13 = v7;
    [v10 declarationManifestForStoreIdentifier:v6 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)configurationUIsForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: ConfigurationUIsForStoreIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ConfigurationUIsForStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100086754;
    v12[3] = &unk_1000D31F0;
    v13 = v7;
    [v10 configurationUIsForStoreIdentifier:v6 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)displayableProfileConfigurationsForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: DisplayableProfileConfigurationsForStoreIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DisplayableProfileConfigurationsForStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000869F4;
    v12[3] = &unk_1000D31F0;
    v13 = v7;
    [v10 displayableProfileConfigurationsForStoreIdentifier:v6 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)setShouldInstallConfiguration:(id)a3 shouldInstall:(BOOL)a4 storeIdentifier:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if ([(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v12 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: SetShouldInstallConfiguration from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v17.opaque[0] = 0;
    v17.opaque[1] = 0;
    os_activity_scope_enter(v12, &v17);
    v13 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 declarationIdentifier];
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SetShouldInstallConfiguration with %{public}@...", buf, 0xCu);
    }

    v15 = [RMErrorUtilities createNotImplementedErrorForFeature:@"SetShouldInstallConfiguration"];
    v11[2](v11, v15);

    os_activity_scope_leave(&v17);
  }

  else
  {
    v16 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    v11[2](v11, v16);
  }
}

- (void)fetchDataAtURL:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: FetchDataForURL from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FetchDataForURL with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100086E84;
    v15[3] = &unk_1000D3268;
    v16 = v10;
    [v13 fetchDataAtURL:v8 storeIdentifier:v9 completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

- (void)removeStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasProviderEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: RemoveStoreWithIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RemoveStoreWithIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000873A8;
    v12[3] = &unk_1000D2CE0;
    v13 = v7;
    [v10 removeStoreWithIdentifier:v6 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(v7 + 2))(v7, v11);
  }
}

- (void)providerStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasProviderEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: ProviderStoreWithIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ProviderStoreWithIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100087630;
    v12[3] = &unk_1000D3290;
    v13 = v7;
    [v10 providerStoreWithIdentifier:v6 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)providerStoresWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(RMStoreXPCProxyHandler *)self hasProviderEntitlement])
  {
    v5 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: ProviderStoresWithCompletionHandler from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    v6 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ProviderStoresWithCompletionHandler...", buf, 2u);
    }

    v7 = +[RMStoreController sharedController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100087878;
    v8[3] = &unk_1000D31F0;
    v9 = v4;
    [v7 providerStoresWithCompletionHandler:v8];

    os_activity_scope_leave(&state);
  }

  else
  {
    v5 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(v4 + 2))(v4, 0, v5);
  }
}

- (void)saveDeclaration:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMStoreXPCProxyHandler *)self hasProviderEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: SaveDeclaration from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 declarationIdentifier];
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SaveDeclaration with %{public}@...", buf, 0xCu);
    }

    v14 = +[RMStoreController sharedController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100087B48;
    v16[3] = &unk_1000D2CE0;
    v17 = v10;
    [v14 saveDeclaration:v8 storeIdentifier:v9 completionHandler:v16];

    os_activity_scope_leave(&state);
  }

  else
  {
    v15 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(v10 + 2))(v10, v15);
  }
}

- (void)deleteDeclarationWithIdentifier:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMStoreXPCProxyHandler *)self hasProviderEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: DeleteDeclarationWithIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DeleteDeclarationWithIdentifier with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100087DE8;
    v15[3] = &unk_1000D2CE0;
    v16 = v10;
    [v13 deleteDeclarationWithIdentifier:v8 storeIdentifier:v9 completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(v10 + 2))(v10, v14);
  }
}

- (void)applyChangesForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasProviderEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: ApplyChangesForStoreIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ApplyChangesForStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008806C;
    v12[3] = &unk_1000D2CE0;
    v13 = v7;
    [v10 applyChangesForStoreIdentifier:v6 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(v7 + 2))(v7, v11);
  }
}

- (void)linkStoreIdentifier:(id)a3 profileIdentifier:(id)a4 accountIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(RMStoreXPCProxyHandler *)self hasProviderEntitlement])
  {
    v14 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: LinkStoreIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v14, &state);
    v15 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "LinkStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v16 = +[RMStoreController sharedController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100088320;
    v18[3] = &unk_1000D2CE0;
    v19 = v13;
    [v16 linkStoreIdentifier:v10 profileIdentifier:v11 accountIdentifier:v12 completionHandler:v18];

    os_activity_scope_leave(&state);
  }

  else
  {
    v17 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(v13 + 2))(v13, v17);
  }
}

- (void)waitForActiveAndValidDeclarations:(id)a3 timeout:(double)a4 storeIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(RMStoreXPCProxyHandler *)self hasProviderEntitlement]|| [(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v13 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: WaitForActiveAndValidDeclarations from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v13, &state);
    v14 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WaitForActiveAndValidDeclarations with %{public}@...", buf, 0xCu);
    }

    v15 = +[RMStoreController sharedController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100088610;
    v18[3] = &unk_1000D2CE0;
    v19 = v12;
    [v15 waitForActiveAndValidDeclarations:v10 timeout:v11 storeIdentifier:v18 completionHandler:a4];

    os_activity_scope_leave(&state);
  }

  else
  {
    v16 = [NSString stringWithFormat:@"%@ or %@", @"com.apple.private.remotemanagement.provider", @"com.apple.private.remotemanagement.observer"];
    v17 = [RMErrorUtilities createConnectionNotEntitledWithName:v16];
    (*(v12 + 2))(v12, v17);
  }
}

- (void)waitForProcessingOfDeclarations:(id)a3 timeout:(double)a4 storeIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(RMStoreXPCProxyHandler *)self hasProviderEntitlement]|| [(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v13 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: WaitForDeclarationsToBeProcessed from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v13, &state);
    v14 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WaitForDeclarationsToBeProcessed with %{public}@...", buf, 0xCu);
    }

    v15 = +[RMStoreController sharedController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100088900;
    v18[3] = &unk_1000D2CE0;
    v19 = v12;
    [v15 waitForProcessingOfDeclarations:v10 timeout:v11 storeIdentifier:v18 completionHandler:a4];

    os_activity_scope_leave(&state);
  }

  else
  {
    v16 = [NSString stringWithFormat:@"%@ or %@", @"com.apple.private.remotemanagement.provider", @"com.apple.private.remotemanagement.observer"];
    v17 = [RMErrorUtilities createConnectionNotEntitledWithName:v16];
    (*(v12 + 2))(v12, v17);
  }
}

- (void)subscriberStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasSubscriberEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: SubscriberStoreWithIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SubscriberStoreWithIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100088B88;
    v12[3] = &unk_1000D32B8;
    v13 = v7;
    [v10 subscriberStoreWithIdentifier:v6 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)subscriberStoresWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(RMStoreXPCProxyHandler *)self hasSubscriberEntitlement])
  {
    v5 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: SubscriberStoresWithCompletionHandler from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    v6 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SubscriberStoresWithCompletionHandler...", buf, 2u);
    }

    v7 = +[RMStoreController sharedController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100088DD0;
    v8[3] = &unk_1000D31F0;
    v9 = v4;
    [v7 subscriberStoresWithCompletionHandler:v8];

    os_activity_scope_leave(&state);
  }

  else
  {
    v5 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(v4 + 2))(v4, 0, v5);
  }
}

- (void)subscribedStoreDeclarationsWithTypes:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasSubscriberEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: SubscribedStoreDeclarationsWithTypes from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SubscribedStoreDeclarationsWithTypes...", buf, 2u);
    }

    v10 = +[RMStoreController sharedController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100089030;
    v11[3] = &unk_1000D32E0;
    v12 = v7;
    [v10 subscribedStoreDeclarationsWithTypes:v6 completionHandler:v11];

    os_activity_scope_leave(&state);
  }

  else
  {
    v8 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(v7 + 2))(v7, 0, 0, v8);
  }
}

- (void)subscribedDeclarationsWithTypes:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMStoreXPCProxyHandler *)self hasSubscriberEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: SubscribedDeclarationsWithTypes from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SubscribedDeclarationsWithTypes with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100089308;
    v15[3] = &unk_1000D31F0;
    v16 = v10;
    [v13 subscribedDeclarationsWithTypes:v8 storeIdentifier:v9 completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

- (void)subscribedStoreConfigurationsVisibleUIWithTypes:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasSubscriberEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: SubscribedStoreConfigurationsVisibleUIWithTypes from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SubscribedStoreConfigurationsVisibleUIWithTypes...", buf, 2u);
    }

    v10 = +[RMStoreController sharedController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100089568;
    v11[3] = &unk_1000D32E0;
    v12 = v7;
    [v10 subscribedStoreConfigurationsVisibleUIWithTypes:v6 completionHandler:v11];

    os_activity_scope_leave(&state);
  }

  else
  {
    v8 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(v7 + 2))(v7, 0, 0, v8);
  }
}

- (void)resolveAsset:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMStoreXPCProxyHandler *)self hasSubscriberEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: ResolveAsset from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 assetIdentifier];
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ResolveAsset with %{public}@...", buf, 0xCu);
    }

    v14 = +[RMStoreController sharedController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100089858;
    v16[3] = &unk_1000D2BB0;
    v17 = v10;
    [v14 resolveAsset:v8 storeIdentifier:v9 completionHandler:v16];

    os_activity_scope_leave(&state);
  }

  else
  {
    v15 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(v10 + 2))(v10, 0, v15);
  }
}

- (void)unassignAssets:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasSubscriberEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: UnassignAssets from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UnassignAssets with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100089AF4;
    v12[3] = &unk_1000D2CE0;
    v13 = v7;
    [v10 unassignAssets:v6 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(v7 + 2))(v7, v11);
  }
}

- (void)removeStatusWithStoreIdentifier:(id)a3 declarationIdentifier:(id)a4 declarationServerToken:(id)a5 sourceIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(RMStoreXPCProxyHandler *)self hasSubscriberEntitlement])
  {
    v17 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: RemoveStatusWithStoreIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v17, &state);
    v18 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "RemoveStatusWithStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v24 = 0;
    v19 = [RMConfigurationStatusArchiver removeStatusForStoreIdentifier:v12 declarationIdentifier:v13 declarationServerToken:v14 sourceIdentifier:v15 error:&v24];
    v20 = v24;
    if (v19)
    {
      v21 = +[RMLog StoreXPCListenerDelegate];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10008CA78();
      }

      v22 = 0;
    }

    else
    {
      v21 = +[RMLog StoreXPCListenerDelegate];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10008CA10();
      }

      v22 = v20;
    }

    (v16)[2](v16, v22);
    os_activity_scope_leave(&state);
  }

  else
  {
    v23 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (v16)[2](v16, v23);
  }
}

- (void)publishStatusWithStoreIdentifier:(id)a3 status:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMStoreXPCProxyHandler *)self hasSubscriberEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: PublishStatusWithStoreIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PublishStatusWithStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMExternalStatusPublisher sharedPublisher];
    v19 = 0;
    v14 = [v13 persistStatusWithStoreIdentifier:v8 status:v9 error:&v19];
    v15 = v19;

    if (v14)
    {
      v16 = +[RMLog StoreXPCListenerDelegate];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_10008C9DC();
      }

      v17 = 0;
    }

    else
    {
      v16 = +[RMLog StoreXPCListenerDelegate];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10008C974();
      }

      v17 = v15;
    }

    (v10)[2](v10, v17);
    os_activity_scope_leave(&state);
  }

  else
  {
    v18 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (v10)[2](v10, v18);
  }
}

- (void)certificatePersistentRefForAssetKey:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMStoreXPCProxyHandler *)self hasSubscriberEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: CertificatePersistentRefForAssetKey from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CertificatePersistentRefForAssetKey with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008AD0C;
    v15[3] = &unk_1000D3268;
    v16 = v10;
    [v13 certificatePersistentRefForAssetKey:v8 storeIdentifier:v9 completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

- (void)certificateStatusWithStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasSubscriberEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: CertificateStatusWithStoreIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CertificateStatusWithStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008AFAC;
    v12[3] = &unk_1000D30A0;
    v13 = v7;
    [v10 certificateStatusWithStoreIdentifier:v6 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)metadataForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RMStoreXPCProxyHandler *)self hasAnyStoreEntitlement])
  {
    v8 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: MetadataForStoreIdentifier from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MetadataForStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008B28C;
    v13[3] = &unk_1000D30A0;
    v14 = v7;
    [v10 metadataForStoreIdentifier:v6 completionHandler:v13];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [NSString stringWithFormat:@"%@, %@, %@", @"com.apple.private.remotemanagement.provider", @"com.apple.private.remotemanagement.observer", @"com.apple.private.remotemanagement.subscriber"];
    v12 = [RMErrorUtilities createConnectionNotEntitledWithName:v11];
    (*(v7 + 2))(v7, 0, v12);
  }
}

- (void)metadataValueForKey:(id)a3 storeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RMStoreXPCProxyHandler *)self hasAnyStoreEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: MetadataValueForKey from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MetadataValueForKey with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10008B59C;
    v16[3] = &unk_1000D3308;
    v17 = v8;
    v18 = v10;
    [v13 metadataValueForKey:v17 storeIdentifier:v9 completionHandler:v16];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [NSString stringWithFormat:@"%@, %@, %@", @"com.apple.private.remotemanagement.provider", @"com.apple.private.remotemanagement.observer", @"com.apple.private.remotemanagement.subscriber"];
    v15 = [RMErrorUtilities createConnectionNotEntitledWithName:v14];
    (*(v10 + 2))(v10, 0, v15);
  }
}

- (void)setMetadataValue:(id)a3 forKey:(id)a4 storeIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(RMStoreXPCProxyHandler *)self hasProviderEntitlement])
  {
    v14 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: SetMetadataValue from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v14, &state);
    v15 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SetMetadataValue with %{public}@...", buf, 0xCu);
    }

    v16 = +[RMStoreController sharedController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008B88C;
    v18[3] = &unk_1000D10B0;
    v19 = v11;
    v20 = v13;
    [v16 setMetadataValue:v10 forKey:v19 storeIdentifier:v12 completionHandler:v18];

    os_activity_scope_leave(&state);
  }

  else
  {
    v17 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(v13 + 2))(v13, v17);
  }
}

@end