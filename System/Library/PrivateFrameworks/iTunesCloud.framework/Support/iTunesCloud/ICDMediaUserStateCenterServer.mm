@interface ICDMediaUserStateCenterServer
- (BOOL)_locked_userStatesChanged:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICDMediaUserStateCenterServer)init;
- (NSArray)userStatesCache;
- (id)_getUserIdentitiesfromDefaultStore;
- (id)_sanitizedUserStatesForRemoteClientConnection:(id)a3;
- (id)_storeRequestContextFromUserIdentity:(id)a3;
- (id)_supportedInterfaceForXPCConnection;
- (id)_updatedUserStateFromState:(id)a3 withUserProfile:(id)a4;
- (unint64_t)_userStateAccessForConnection:(id)a3;
- (void)_fetchUpdatedUserProfilesForUserStates:(id)a3 completion:(id)a4;
- (void)_notifyServerStateUpdatedIfNeeded:(id)a3;
- (void)getCachedUserStatesWithReply:(id)a3;
- (void)notificationsManager:(id)a3 didReceiveNotificationChangingUserState:(id)a4;
- (void)refreshSocialProfilesWithReply:(id)a3;
- (void)start;
- (void)stop;
- (void)updateUserProfile:(id)a3 forRequestContext:(id)a4;
@end

@implementation ICDMediaUserStateCenterServer

- (NSArray)userStatesCache
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_cachedUserStateByDSID allValues];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_getUserIdentitiesfromDefaultStore
{
  v3 = +[ICUserIdentityStore defaultIdentityStore];
  v9 = 0;
  v4 = [v3 userIdentitiesForManageableAccountsWithError:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = self;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch user state identities, err=%{public}@", buf, 0x16u);
    }

    v7 = &__NSArray0__struct;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (id)_supportedInterfaceForXPCConnection
{
  if (qword_100213BB8 != -1)
  {
    dispatch_once(&qword_100213BB8, &stru_1001DB310);
  }

  v3 = qword_100213BB0;

  return v3;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  hasStarted = self->_hasStarted;
  os_unfair_lock_unlock(&self->_lock);
  if (!hasStarted || [(ICDMediaUserStateCenterServer *)self _userStateAccessForConnection:v5]!= -1)
  {
    if (![(ICDMediaUserStateCenterServer *)self _userStateAccessForConnection:v5])
    {
      v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v18 = self;
        v19 = 2114;
        v20 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: Refused new client connection: %{public}@. Entitlements error.", buf, 0x16u);
      }
    }

    goto LABEL_11;
  }

  if (![v5 icd_isConnectionAllowedForService:5])
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v8 = [v5 processIdentifier];
  v9 = [(ICDMediaUserStateCenterServer *)self _supportedInterfaceForXPCConnection];
  [v5 setExportedInterface:v9];

  [v5 setExportedObject:self];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004D364;
  v15[3] = &unk_1001DF780;
  v15[4] = self;
  v16 = v8;
  [v5 setInvalidationHandler:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004D428;
  v13[3] = &unk_1001DF780;
  v13[4] = self;
  v14 = v8;
  [v5 setInterruptionHandler:v13];
  [v5 resume];
  v10 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Accepted new client connection: %{public}@.", buf, 0x16u);
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (unint64_t)_userStateAccessForConnection:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.itunescloudd.private"];
  if (v3)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_updatedUserStateFromState:(id)a3 withUserProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && ([v6 music], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v6 music];
    v10 = [v9 userProfile];
    v11 = v10;
    if (v10 == v7)
    {
    }

    else
    {
      v12 = [v10 isEqual:v7];

      if ((v12 & 1) == 0)
      {
        v13 = [v6 music];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10004D7D4;
        v25[3] = &unk_1001DB2F0;
        v26 = v7;
        v14 = [v13 copyWithBlock:v25];

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10004D7E0;
        v23[3] = &unk_1001DB2C8;
        v24 = v14;
        v15 = v14;
        v16 = [v6 copyWithBlock:v23];

        goto LABEL_13;
      }
    }

    v17 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = self;
      v18 = "%{public}@ User profile unchanged. Returning state.";
      v19 = v17;
      v20 = OS_LOG_TYPE_DEFAULT;
      v21 = 12;
      goto LABEL_11;
    }
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v28 = self;
      v29 = 2114;
      v30 = v6;
      v18 = "%{public}@ cannot update state. Unexpected nil ICMusicUserState for mediaUserState=%{public}@";
      v19 = v17;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 22;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, v21);
    }
  }

  v16 = v6;
LABEL_13:

  return v16;
}

- (id)_storeRequestContextFromUserIdentity:(id)a3
{
  v3 = a3;
  v4 = [ICStoreRequestContext alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004D8A8;
  v8[3] = &unk_1001DEFB8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 initWithBlock:v8];

  return v6;
}

- (id)_sanitizedUserStatesForRemoteClientConnection:(id)a3
{
  v4 = a3;
  v5 = [(ICDMediaUserStateCenterServer *)self userStatesCache];
  v6 = [v4 valueForEntitlement:ICMediaUserStateCenterEntitlementSiri];

  if (v4 && !v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543874;
      v11 = self;
      v12 = 2114;
      v13 = v4;
      v14 = 1024;
      v15 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Sanitizing user state for client connection %{public}@. hasSiriDataEntitlement=%{BOOL}u", &v10, 0x1Cu);
    }

    v8 = [v5 msv_map:&stru_1001DB260];

    v5 = v8;
  }

  return v5;
}

- (BOOL)_locked_userStatesChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5 == [(NSDictionary *)self->_cachedUserStateByDSID count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          cachedUserStateByDSID = self->_cachedUserStateByDSID;
          v13 = [v11 dsid];
          v14 = [(NSDictionary *)cachedUserStateByDSID objectForKeyedSubscript:v13];

          LODWORD(v11) = [v14 isEqual:v11];
          if (!v11)
          {
            v15 = 1;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_13:
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)_fetchUpdatedUserProfilesForUserStates:(id)a3 completion:(id)a4
{
  v6 = a3;
  v23 = a4;
  v7 = [(ICDMediaUserStateCenterServer *)self _getUserIdentitiesfromDefaultStore];
  v24 = [v6 mutableCopy];
  v8 = dispatch_group_create();
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2810000000;
  v39[3] = "";
  v40 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v9)
  {
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [(ICDMediaUserStateCenterServer *)self _storeRequestContextFromUserIdentity:v12];
        v14 = [v12 DSID];
        v15 = [v6 objectForKeyedSubscript:v14];

        if (!v15 || ([v15 music], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v17))
        {
          v19 = os_log_create("com.apple.amp.itunescloudd", "UserState");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543619;
            v42 = self;
            v43 = 2113;
            v44 = v12;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ No ICMusicUserState for userIdentity=%{private}@ Returning cached userState.", buf, 0x16u);
          }
        }

        else
        {
          dispatch_group_enter(v8);
          userSocialProfileProvider = self->_userSocialProfileProvider;
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10004F0F0;
          v29[3] = &unk_1001DB158;
          v29[4] = self;
          v30 = v15;
          v34 = v39;
          v31 = v24;
          v32 = v12;
          v33 = v8;
          [(ICDMusicUserSocialProfileProvider *)userSocialProfileProvider fetchMusicUserProfileWithStoreRequestContext:v13 ignoreCache:1 completion:v29];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v9);
  }

  v20 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F2C4;
  block[3] = &unk_1001DF5A0;
  v27 = v24;
  v28 = v23;
  v21 = v24;
  v22 = v23;
  dispatch_group_notify(v8, v20, block);

  _Block_object_dispose(v39, 8);
}

- (void)_notifyServerStateUpdatedIfNeeded:(id)a3
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100053424;
  v22[3] = &unk_1001DAE60;
  v4 = a3;
  v23 = v4;
  v5 = [v4 msv_filter:v22];
  os_unfair_lock_lock(&self->_lock);
  if ([(ICDMediaUserStateCenterServer *)self _locked_userStatesChanged:v5])
  {
    v6 = +[NSMutableDictionary dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 dsid];
          [v6 setObject:v12 forKeyedSubscript:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
    cachedUserStateByDSID = self->_cachedUserStateByDSID;
    self->_cachedUserStateByDSID = v14;

    os_unfair_lock_unlock(&self->_lock);
    v16 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ User states changed - posting notification", buf, 0xCu);
    }

    v17 = dispatch_get_global_queue(0, 0);
    dispatch_async(v17, &stru_1001DAE80);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v17 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ No change in user state detected", buf, 0xCu);
    }
  }
}

- (void)updateUserProfile:(id)a3 forRequestContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSDictionary *)self->_cachedUserStateByDSID mutableCopy];
  os_unfair_lock_unlock(&self->_lock);
  v9 = [v7 identity];

  v10 = [v9 DSID];

  v11 = [v8 objectForKeyedSubscript:v10];
  v12 = v11;
  if (v11 && ([v11 music], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [(ICDMediaUserStateCenterServer *)self _updatedUserStateFromState:v12 withUserProfile:v6];
    [v8 setObject:v14 forKeyedSubscript:v10];

    v15 = [v8 allValues];
    [(ICDMediaUserStateCenterServer *)self _notifyServerStateUpdatedIfNeeded:v15];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543618;
      v17 = self;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ updateUserProfile:forRequestContext: unexpected nil ICMusicUserState for cachedUserState=%{public}@", &v16, 0x16u);
    }
  }
}

- (void)notificationsManager:(id)a3 didReceiveNotificationChangingUserState:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100053724;
  v4[3] = &unk_1001DEAC8;
  v4[4] = self;
  [(ICDMediaUserStateCenterServer *)self _fetchAccountsWithForceRefresh:0 completion:v4];
}

- (void)stop
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping server:", &v5, 0xCu);
  }

  serverNotificationsManager = self->_serverNotificationsManager;
  self->_serverNotificationsManager = 0;
}

- (void)start
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting server:", &v6, 0xCu);
  }

  v4 = [[ICDMediaUserStateCenterServerNotificationsManager alloc] initWithDelegate:self];
  serverNotificationsManager = self->_serverNotificationsManager;
  self->_serverNotificationsManager = v4;

  os_unfair_lock_lock(&self->_lock);
  self->_hasStarted = 1;
  os_unfair_lock_unlock(&self->_lock);
  [(ICDMediaUserStateCenterServer *)self getUserStatesForcingRefresh:0 withReply:&stru_1001DAE38];
}

- (void)refreshSocialProfilesWithReply:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ refreshSocialProfilesWithReply: Received request for social profile refresh from client connection %{public}@.", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSDictionary *)self->_cachedUserStateByDSID copy];
  os_unfair_lock_unlock(&self->_lock);
  if ([v7 count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100053BD8;
    v17[3] = &unk_1001DADF8;
    v8 = &v18;
    v17[4] = self;
    v18 = v5;
    v9 = &v19;
    v19 = v4;
    v10 = v4;
    v11 = v5;
    [(ICDMediaUserStateCenterServer *)self _fetchUpdatedUserProfilesForUserStates:v7 completion:v17];
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100053CE0;
    v14[3] = &unk_1001DADD0;
    v8 = &v16;
    v15 = v5;
    v16 = v4;
    v9 = &v15;
    v14[4] = self;
    v12 = v4;
    v13 = v5;
    [(ICDMediaUserStateCenterServer *)self _fetchAccountsWithForceRefresh:1 ignoreResponseCache:1 completion:v14];
  }
}

- (void)getCachedUserStatesWithReply:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(ICDMediaUserStateCenterServer *)self _sanitizedUserStatesForRemoteClientConnection:v5];

  v4[2](v4, v6);
  if (!v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Lazily fetching user states", buf, 0xCu);
    }

    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054404;
    block[3] = &unk_1001DF578;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

- (ICDMediaUserStateCenterServer)init
{
  v13.receiver = self;
  v13.super_class = ICDMediaUserStateCenterServer;
  v2 = [(ICDMediaUserStateCenterServer *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_hasStarted = 0;
    v4 = dispatch_queue_create("com.apple.amp.iTunesCloud.ICDMediaUserStateCenterServer", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = +[NSDictionary dictionary];
    cachedUserStateByDSID = v3->_cachedUserStateByDSID;
    v3->_cachedUserStateByDSID = v6;

    v8 = [[ICDMusicUserSocialProfileProvider alloc] initWithDelegate:v3];
    userSocialProfileProvider = v3->_userSocialProfileProvider;
    v3->_userSocialProfileProvider = v8;

    v10 = +[NSMutableArray array];
    pendingCompletionHandlers = v3->_pendingCompletionHandlers;
    v3->_pendingCompletionHandlers = v10;

    *&v3->_coalescedForceRefreshValue = 0;
  }

  return v3;
}

@end