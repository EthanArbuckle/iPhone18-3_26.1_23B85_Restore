@interface RMStoreXPCProxyHandler
+ (BOOL)_doesConnection:(id)connection haveEntitlements:(id)entitlements;
+ (BOOL)_isConnection:(id)connection fromApplicationIdentifier:(id)identifier;
- (RMStoreXPCProxyHandler)initWithXPCConnection:(id)connection persistentContainer:(id)container;
- (void)applyChangesForStoreIdentifier:(id)identifier completionHandler:(id)handler;
- (void)certificatePersistentRefForAssetKey:(id)key storeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)certificateStatusWithStoreIdentifier:(id)identifier completionHandler:(id)handler;
- (void)configurationUIsForStoreIdentifier:(id)identifier completionHandler:(id)handler;
- (void)declarationManifestForStoreIdentifier:(id)identifier completionHandler:(id)handler;
- (void)declarationWithIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier completionHandler:(id)handler;
- (void)declarationsForStoreIdentifier:(id)identifier completionHandler:(id)handler;
- (void)declarationsWithTypes:(id)types storeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteDeclarationWithIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier completionHandler:(id)handler;
- (void)displayableProfileConfigurationsForStoreIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchDataAtURL:(id)l storeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)linkStoreIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier accountIdentifier:(id)accountIdentifier completionHandler:(id)handler;
- (void)metadataForStoreIdentifier:(id)identifier completionHandler:(id)handler;
- (void)metadataValueForKey:(id)key storeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)observerStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)observerStoresWithCompletionHandler:(id)handler;
- (void)providerStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)providerStoresWithCompletionHandler:(id)handler;
- (void)publishStatusWithStoreIdentifier:(id)identifier status:(id)status completionHandler:(id)handler;
- (void)removeStatusWithStoreIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token sourceIdentifier:(id)sourceIdentifier completionHandler:(id)handler;
- (void)removeStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)resolveAsset:(id)asset storeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)saveDeclaration:(id)declaration storeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setMetadataValue:(id)value forKey:(id)key storeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setShouldInstallConfiguration:(id)configuration shouldInstall:(BOOL)install storeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)subscribedDeclarationsWithTypes:(id)types storeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)subscribedStoreConfigurationsVisibleUIWithTypes:(id)types completionHandler:(id)handler;
- (void)subscribedStoreDeclarationsWithTypes:(id)types completionHandler:(id)handler;
- (void)subscriberStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)subscriberStoresWithCompletionHandler:(id)handler;
- (void)unassignAssets:(id)assets completionHandler:(id)handler;
- (void)waitForActiveAndValidDeclarations:(id)declarations timeout:(double)timeout storeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)waitForProcessingOfDeclarations:(id)declarations timeout:(double)timeout storeIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation RMStoreXPCProxyHandler

- (RMStoreXPCProxyHandler)initWithXPCConnection:(id)connection persistentContainer:(id)container
{
  connectionCopy = connection;
  containerCopy = container;
  v19.receiver = self;
  v19.super_class = RMStoreXPCProxyHandler;
  v8 = [(RMStoreXPCProxyHandler *)&v19 init];
  if (v8)
  {
    v9 = objc_opt_class();
    v23 = @"com.apple.private.remotemanagement";
    v10 = [NSArray arrayWithObjects:&v23 count:1];
    LODWORD(v9) = [v9 _doesConnection:connectionCopy haveEntitlements:v10];

    objc_storeStrong(v8 + 2, container);
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
      v8[9] = [v12 _doesConnection:connectionCopy haveEntitlements:v13];

      v14 = objc_opt_class();
      v21 = @"com.apple.private.remotemanagement.provider";
      v11 = 1;
      v15 = [NSArray arrayWithObjects:&v21 count:1];
      v8[10] = [v14 _doesConnection:connectionCopy haveEntitlements:v15];

      v16 = objc_opt_class();
      v20 = @"com.apple.private.remotemanagement.subscriber";
      v17 = [NSArray arrayWithObjects:&v20 count:1];
      v8[11] = [v16 _doesConnection:connectionCopy haveEntitlements:v17];

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

+ (BOOL)_doesConnection:(id)connection haveEntitlements:(id)entitlements
{
  connectionCopy = connection;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  entitlementsCopy = entitlements;
  v8 = [entitlementsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(entitlementsCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [connectionCopy valueForEntitlement:{v12, v17}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue = [v13 BOOLValue];

          if (bOOLValue)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }

        if ([v12 isEqualToString:@"com.apple.private.remotemanagement.provider"] || objc_msgSend(v12, "isEqualToString:", @"com.apple.private.remotemanagement.observer")) && (objc_msgSend(self, "_isConnection:fromApplicationIdentifier:", connectionCopy, @"com.apple.Preferences"))
        {
LABEL_16:
          v15 = 1;
          goto LABEL_17;
        }
      }

      v9 = [entitlementsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (BOOL)_isConnection:(id)connection fromApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [self _applicationIdentifierFromConnection:connection];
  v8 = +[RMLog StoreXPCListenerDelegate];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10008B9E4();
  }

  v9 = [identifierCopy isEqualToString:v7];
  return v9;
}

- (void)observerStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ObserverStoreWithIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000857B4;
    v12[3] = &unk_1000D31C8;
    v13 = handlerCopy;
    [v10 observerStoreWithIdentifier:identifierCopy completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)observerStoresWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
    v9 = handlerCopy;
    [v7 observerStoresWithCompletionHandler:v8];

    os_activity_scope_leave(&state);
  }

  else
  {
    v5 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(handlerCopy + 2))(handlerCopy, 0, v5);
  }
}

- (void)declarationWithIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  storeIdentifierCopy = storeIdentifier;
  handlerCopy = handler;
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
      v19 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DeclarationWithIdentifier with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100085CB8;
    v15[3] = &unk_1000D3218;
    v16 = handlerCopy;
    [v13 declarationWithIdentifier:identifierCopy storeIdentifier:storeIdentifierCopy completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

- (void)declarationsForStoreIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DeclarationsForStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100085F58;
    v12[3] = &unk_1000D31F0;
    v13 = handlerCopy;
    [v10 declarationsForStoreIdentifier:identifierCopy completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)declarationsWithTypes:(id)types storeIdentifier:(id)identifier completionHandler:(id)handler
{
  typesCopy = types;
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v19 = typesCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DeclarationsWithTypes with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100086214;
    v15[3] = &unk_1000D31F0;
    v16 = handlerCopy;
    [v13 declarationsWithTypes:typesCopy storeIdentifier:identifierCopy completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

- (void)declarationManifestForStoreIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DeclarationManifestForStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000864B4;
    v12[3] = &unk_1000D3240;
    v13 = handlerCopy;
    [v10 declarationManifestForStoreIdentifier:identifierCopy completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)configurationUIsForStoreIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ConfigurationUIsForStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100086754;
    v12[3] = &unk_1000D31F0;
    v13 = handlerCopy;
    [v10 configurationUIsForStoreIdentifier:identifierCopy completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)displayableProfileConfigurationsForStoreIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DisplayableProfileConfigurationsForStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000869F4;
    v12[3] = &unk_1000D31F0;
    v13 = handlerCopy;
    [v10 displayableProfileConfigurationsForStoreIdentifier:identifierCopy completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)setShouldInstallConfiguration:(id)configuration shouldInstall:(BOOL)install storeIdentifier:(id)identifier completionHandler:(id)handler
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(RMStoreXPCProxyHandler *)self hasObserverEntitlement])
  {
    v12 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: SetShouldInstallConfiguration from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v17.opaque[0] = 0;
    v17.opaque[1] = 0;
    os_activity_scope_enter(v12, &v17);
    v13 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      declarationIdentifier = [configurationCopy declarationIdentifier];
      *buf = 138543362;
      v19 = declarationIdentifier;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SetShouldInstallConfiguration with %{public}@...", buf, 0xCu);
    }

    v15 = [RMErrorUtilities createNotImplementedErrorForFeature:@"SetShouldInstallConfiguration"];
    handlerCopy[2](handlerCopy, v15);

    os_activity_scope_leave(&v17);
  }

  else
  {
    v16 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.observer"];
    handlerCopy[2](handlerCopy, v16);
  }
}

- (void)fetchDataAtURL:(id)l storeIdentifier:(id)identifier completionHandler:(id)handler
{
  lCopy = l;
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v19 = lCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FetchDataForURL with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100086E84;
    v15[3] = &unk_1000D3268;
    v16 = handlerCopy;
    [v13 fetchDataAtURL:lCopy storeIdentifier:identifierCopy completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

- (void)removeStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RemoveStoreWithIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000873A8;
    v12[3] = &unk_1000D2CE0;
    v13 = handlerCopy;
    [v10 removeStoreWithIdentifier:identifierCopy completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

- (void)providerStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ProviderStoreWithIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100087630;
    v12[3] = &unk_1000D3290;
    v13 = handlerCopy;
    [v10 providerStoreWithIdentifier:identifierCopy completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)providerStoresWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
    v9 = handlerCopy;
    [v7 providerStoresWithCompletionHandler:v8];

    os_activity_scope_leave(&state);
  }

  else
  {
    v5 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(handlerCopy + 2))(handlerCopy, 0, v5);
  }
}

- (void)saveDeclaration:(id)declaration storeIdentifier:(id)identifier completionHandler:(id)handler
{
  declarationCopy = declaration;
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(RMStoreXPCProxyHandler *)self hasProviderEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: SaveDeclaration from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      declarationIdentifier = [declarationCopy declarationIdentifier];
      *buf = 138543362;
      v20 = declarationIdentifier;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SaveDeclaration with %{public}@...", buf, 0xCu);
    }

    v14 = +[RMStoreController sharedController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100087B48;
    v16[3] = &unk_1000D2CE0;
    v17 = handlerCopy;
    [v14 saveDeclaration:declarationCopy storeIdentifier:identifierCopy completionHandler:v16];

    os_activity_scope_leave(&state);
  }

  else
  {
    v15 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

- (void)deleteDeclarationWithIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  storeIdentifierCopy = storeIdentifier;
  handlerCopy = handler;
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
      v19 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DeleteDeclarationWithIdentifier with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100087DE8;
    v15[3] = &unk_1000D2CE0;
    v16 = handlerCopy;
    [v13 deleteDeclarationWithIdentifier:identifierCopy storeIdentifier:storeIdentifierCopy completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(handlerCopy + 2))(handlerCopy, v14);
  }
}

- (void)applyChangesForStoreIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ApplyChangesForStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008806C;
    v12[3] = &unk_1000D2CE0;
    v13 = handlerCopy;
    [v10 applyChangesForStoreIdentifier:identifierCopy completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

- (void)linkStoreIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier accountIdentifier:(id)accountIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  profileIdentifierCopy = profileIdentifier;
  accountIdentifierCopy = accountIdentifier;
  handlerCopy = handler;
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
      v22 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "LinkStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v16 = +[RMStoreController sharedController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100088320;
    v18[3] = &unk_1000D2CE0;
    v19 = handlerCopy;
    [v16 linkStoreIdentifier:identifierCopy profileIdentifier:profileIdentifierCopy accountIdentifier:accountIdentifierCopy completionHandler:v18];

    os_activity_scope_leave(&state);
  }

  else
  {
    v17 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

- (void)waitForActiveAndValidDeclarations:(id)declarations timeout:(double)timeout storeIdentifier:(id)identifier completionHandler:(id)handler
{
  declarationsCopy = declarations;
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v22 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WaitForActiveAndValidDeclarations with %{public}@...", buf, 0xCu);
    }

    v15 = +[RMStoreController sharedController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100088610;
    v18[3] = &unk_1000D2CE0;
    v19 = handlerCopy;
    [v15 waitForActiveAndValidDeclarations:declarationsCopy timeout:identifierCopy storeIdentifier:v18 completionHandler:timeout];

    os_activity_scope_leave(&state);
  }

  else
  {
    v16 = [NSString stringWithFormat:@"%@ or %@", @"com.apple.private.remotemanagement.provider", @"com.apple.private.remotemanagement.observer"];
    v17 = [RMErrorUtilities createConnectionNotEntitledWithName:v16];
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

- (void)waitForProcessingOfDeclarations:(id)declarations timeout:(double)timeout storeIdentifier:(id)identifier completionHandler:(id)handler
{
  declarationsCopy = declarations;
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v22 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WaitForDeclarationsToBeProcessed with %{public}@...", buf, 0xCu);
    }

    v15 = +[RMStoreController sharedController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100088900;
    v18[3] = &unk_1000D2CE0;
    v19 = handlerCopy;
    [v15 waitForProcessingOfDeclarations:declarationsCopy timeout:identifierCopy storeIdentifier:v18 completionHandler:timeout];

    os_activity_scope_leave(&state);
  }

  else
  {
    v16 = [NSString stringWithFormat:@"%@ or %@", @"com.apple.private.remotemanagement.provider", @"com.apple.private.remotemanagement.observer"];
    v17 = [RMErrorUtilities createConnectionNotEntitledWithName:v16];
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

- (void)subscriberStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SubscriberStoreWithIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100088B88;
    v12[3] = &unk_1000D32B8;
    v13 = handlerCopy;
    [v10 subscriberStoreWithIdentifier:identifierCopy completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)subscriberStoresWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
    v9 = handlerCopy;
    [v7 subscriberStoresWithCompletionHandler:v8];

    os_activity_scope_leave(&state);
  }

  else
  {
    v5 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(handlerCopy + 2))(handlerCopy, 0, v5);
  }
}

- (void)subscribedStoreDeclarationsWithTypes:(id)types completionHandler:(id)handler
{
  typesCopy = types;
  handlerCopy = handler;
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
    v12 = handlerCopy;
    [v10 subscribedStoreDeclarationsWithTypes:typesCopy completionHandler:v11];

    os_activity_scope_leave(&state);
  }

  else
  {
    v8 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
  }
}

- (void)subscribedDeclarationsWithTypes:(id)types storeIdentifier:(id)identifier completionHandler:(id)handler
{
  typesCopy = types;
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v19 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SubscribedDeclarationsWithTypes with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100089308;
    v15[3] = &unk_1000D31F0;
    v16 = handlerCopy;
    [v13 subscribedDeclarationsWithTypes:typesCopy storeIdentifier:identifierCopy completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

- (void)subscribedStoreConfigurationsVisibleUIWithTypes:(id)types completionHandler:(id)handler
{
  typesCopy = types;
  handlerCopy = handler;
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
    v12 = handlerCopy;
    [v10 subscribedStoreConfigurationsVisibleUIWithTypes:typesCopy completionHandler:v11];

    os_activity_scope_leave(&state);
  }

  else
  {
    v8 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
  }
}

- (void)resolveAsset:(id)asset storeIdentifier:(id)identifier completionHandler:(id)handler
{
  assetCopy = asset;
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(RMStoreXPCProxyHandler *)self hasSubscriberEntitlement])
  {
    v11 = _os_activity_create(&_mh_execute_header, "StoreXPCListenerDelegate: ResolveAsset from proxy handler", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v12 = +[RMLog StoreXPCListenerDelegate];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      assetIdentifier = [assetCopy assetIdentifier];
      *buf = 138543362;
      v20 = assetIdentifier;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ResolveAsset with %{public}@...", buf, 0xCu);
    }

    v14 = +[RMStoreController sharedController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100089858;
    v16[3] = &unk_1000D2BB0;
    v17 = handlerCopy;
    [v14 resolveAsset:assetCopy storeIdentifier:identifierCopy completionHandler:v16];

    os_activity_scope_leave(&state);
  }

  else
  {
    v15 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

- (void)unassignAssets:(id)assets completionHandler:(id)handler
{
  assetsCopy = assets;
  handlerCopy = handler;
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
      v16 = assetsCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UnassignAssets with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100089AF4;
    v12[3] = &unk_1000D2CE0;
    v13 = handlerCopy;
    [v10 unassignAssets:assetsCopy completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

- (void)removeStatusWithStoreIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token sourceIdentifier:(id)sourceIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  declarationIdentifierCopy = declarationIdentifier;
  tokenCopy = token;
  sourceIdentifierCopy = sourceIdentifier;
  handlerCopy = handler;
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
      v27 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "RemoveStatusWithStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v24 = 0;
    v19 = [RMConfigurationStatusArchiver removeStatusForStoreIdentifier:identifierCopy declarationIdentifier:declarationIdentifierCopy declarationServerToken:tokenCopy sourceIdentifier:sourceIdentifierCopy error:&v24];
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

    (handlerCopy)[2](handlerCopy, v22);
    os_activity_scope_leave(&state);
  }

  else
  {
    v23 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (handlerCopy)[2](handlerCopy, v23);
  }
}

- (void)publishStatusWithStoreIdentifier:(id)identifier status:(id)status completionHandler:(id)handler
{
  identifierCopy = identifier;
  statusCopy = status;
  handlerCopy = handler;
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
      v22 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PublishStatusWithStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMExternalStatusPublisher sharedPublisher];
    v19 = 0;
    v14 = [v13 persistStatusWithStoreIdentifier:identifierCopy status:statusCopy error:&v19];
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

    (handlerCopy)[2](handlerCopy, v17);
    os_activity_scope_leave(&state);
  }

  else
  {
    v18 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (handlerCopy)[2](handlerCopy, v18);
  }
}

- (void)certificatePersistentRefForAssetKey:(id)key storeIdentifier:(id)identifier completionHandler:(id)handler
{
  keyCopy = key;
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v19 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CertificatePersistentRefForAssetKey with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008AD0C;
    v15[3] = &unk_1000D3268;
    v16 = handlerCopy;
    [v13 certificatePersistentRefForAssetKey:keyCopy storeIdentifier:identifierCopy completionHandler:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

- (void)certificateStatusWithStoreIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CertificateStatusWithStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008AFAC;
    v12[3] = &unk_1000D30A0;
    v13 = handlerCopy;
    [v10 certificateStatusWithStoreIdentifier:identifierCopy completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.subscriber"];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)metadataForStoreIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v17 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MetadataForStoreIdentifier with %{public}@...", buf, 0xCu);
    }

    v10 = +[RMStoreController sharedController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008B28C;
    v13[3] = &unk_1000D30A0;
    v14 = handlerCopy;
    [v10 metadataForStoreIdentifier:identifierCopy completionHandler:v13];

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = [NSString stringWithFormat:@"%@, %@, %@", @"com.apple.private.remotemanagement.provider", @"com.apple.private.remotemanagement.observer", @"com.apple.private.remotemanagement.subscriber"];
    v12 = [RMErrorUtilities createConnectionNotEntitledWithName:v11];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

- (void)metadataValueForKey:(id)key storeIdentifier:(id)identifier completionHandler:(id)handler
{
  keyCopy = key;
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v21 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MetadataValueForKey with %{public}@...", buf, 0xCu);
    }

    v13 = +[RMStoreController sharedController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10008B59C;
    v16[3] = &unk_1000D3308;
    v17 = keyCopy;
    v18 = handlerCopy;
    [v13 metadataValueForKey:v17 storeIdentifier:identifierCopy completionHandler:v16];

    os_activity_scope_leave(&state);
  }

  else
  {
    v14 = [NSString stringWithFormat:@"%@, %@, %@", @"com.apple.private.remotemanagement.provider", @"com.apple.private.remotemanagement.observer", @"com.apple.private.remotemanagement.subscriber"];
    v15 = [RMErrorUtilities createConnectionNotEntitledWithName:v14];
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

- (void)setMetadataValue:(id)value forKey:(id)key storeIdentifier:(id)identifier completionHandler:(id)handler
{
  valueCopy = value;
  keyCopy = key;
  identifierCopy = identifier;
  handlerCopy = handler;
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
      v23 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SetMetadataValue with %{public}@...", buf, 0xCu);
    }

    v16 = +[RMStoreController sharedController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008B88C;
    v18[3] = &unk_1000D10B0;
    v19 = keyCopy;
    v20 = handlerCopy;
    [v16 setMetadataValue:valueCopy forKey:v19 storeIdentifier:identifierCopy completionHandler:v18];

    os_activity_scope_leave(&state);
  }

  else
  {
    v17 = [RMErrorUtilities createConnectionNotEntitledWithName:@"com.apple.private.remotemanagement.provider"];
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

@end