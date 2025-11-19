@interface BKTouchEventServer
- (BKTouchEventServer)init;
- (id)transform3DForDisplayUUID:(id)a3 layerID:(id)a4 contextID:(id)a5;
- (void)_lock_updateContextIDMap;
- (void)_lock_updateHitTestFilterParameters;
- (void)_lock_updateSceneHostSettings;
- (void)connectionDidTerminate:(id)a3;
- (void)connectionWillBegin:(id)a3;
- (void)setContextIDs:(id)a3 forHitTestContextCategory:(id)a4;
- (void)setHitTestFilterParameters:(id)a3;
- (void)setSceneHostSettings:(id)a3 forContextID:(id)a4;
@end

@implementation BKTouchEventServer

- (void)_lock_updateSceneHostSettings
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_alloc_init(NSMutableDictionary);
  server = self->_server;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004E28;
  v7[3] = &unk_1000FAEC8;
  v8 = v3;
  v5 = v3;
  [(BKHIDDomainServiceServer *)server enumerateUserInfoWithBlock:v7];
  v6 = +[BKDisplayController sharedInstance];
  [v6 setSceneHostSettings:v5];
}

- (void)_lock_updateHitTestFilterParameters
{
  os_unfair_lock_assert_owner(&self->_lock);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10003E50C;
  v20 = sub_10003E51C;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10003E50C;
  v14 = sub_10003E51C;
  v15 = 0;
  v3 = objc_opt_class();
  server = self->_server;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003E524;
  v9[3] = &unk_1000FAF40;
  v9[5] = &v10;
  v9[6] = v3;
  v9[4] = &v16;
  [(BKHIDDomainServiceServer *)server enumerateUserInfoWithBlock:v9];
  v5 = BKLogTouchEvents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v17[5];
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "contextIDsToFilterBySenderID now %{public}@", buf, 0xCu);
  }

  v7 = BKLogTouchEvents();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v11[5];
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "contextIDsToFilterForMouseEvents now %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&self->_lock_contextIDsToFilterBySenderID, v17[5]);
  objc_storeStrong(&self->_lock_contextIDsToFilterForMouseEvents, v11[5]);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
}

- (void)_lock_updateContextIDMap
{
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003E50C;
  v11 = sub_10003E51C;
  v12 = 0;
  server = self->_server;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003EA5C;
  v6[3] = &unk_1000FAF18;
  v6[4] = &v7;
  [(BKHIDDomainServiceServer *)server enumerateUserInfoWithBlock:v6];
  v4 = BKLogTouchEvents();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v8[5];
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "contextID category map is now %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&self->_lock_contextIDToCategory, v8[5]);
  _Block_object_dispose(&v7, 8);
}

- (void)connectionDidTerminate:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(BKTouchEventServer *)self _lock_updateSceneHostSettings];
  [(BKTouchEventServer *)self _lock_updateContextIDMap];
  [(BKTouchEventServer *)self _lock_updateHitTestFilterParameters];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)connectionWillBegin:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_BKTouchServerClientRecord);
  [(BKHIDDomainServiceServer *)self->_server setUserInfo:v5 forConnection:v4];
}

- (void)setHitTestFilterParameters:(id)a3
{
  v5 = a3;
  v6 = +[BSServiceConnection currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 auditToken];
  if (([v8 hasEntitlement:BKHitTestContextFilteringEntitlement] & 1) != 0 || objc_msgSend(v8, "hasEntitlement:", BKExcludeZoomContextsFromHitTestingEntitlement))
  {
    os_unfair_lock_lock(&self->_lock);
    v9 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:v6];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong((v9 + 24), a3);
    }

    [(BKTouchEventServer *)self _lock_updateHitTestFilterParameters];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v11 = BKLogTouchEvents();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "setHitTestFilterParameters: %{public}@ doesn't have the required entitlement", &v12, 0xCu);
    }
  }
}

- (void)setContextIDs:(id)a3 forHitTestContextCategory:(id)a4
{
  v6 = a3;
  v7 = [a4 integerValue];
  if (a4)
  {
    v8 = v7;
    v9 = +[BSServiceConnection currentContext];
    v10 = [v9 remoteProcess];
    v11 = [v10 auditToken];
    v12 = BKHitTestContextCategoryEntitlement;
    v13 = [v11 hasEntitlement:BKHitTestContextCategoryEntitlement];

    if (v13)
    {
      os_unfair_lock_lock(&self->_lock);
      v14 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:v9];
      v15 = v6;
      v16 = v15;
      if (v14)
      {
        if (![v15 count])
        {

          v16 = 0;
        }

        v17 = [v16 copy];
        v18 = v14[2];
        v19 = [NSNumber numberWithInteger:v8];
        [v18 setObject:v17 forKeyedSubscript:v19];
      }

      [(BKTouchEventServer *)self _lock_updateContextIDMap];
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v20 = BKLogTouchEvents();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = 138543618;
        v22 = v10;
        v23 = 2114;
        v24 = v12;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "setContextIDs:forHitTestContextCategory: %{public}@ doesn't have entitlement %{public}@", &v21, 0x16u);
      }
    }
  }

  else
  {
    v9 = BKLogTouchEvents();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "gotta specify a category, bucko", &v21, 2u);
    }
  }
}

- (id)transform3DForDisplayUUID:(id)a3 layerID:(id)a4 contextID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[BSServiceConnection currentContext];
  v11 = [v10 remoteProcess];
  v12 = [v11 auditToken];
  v13 = BKLayerTransformLookupEntitlement;
  v14 = [v12 hasEntitlement:BKLayerTransformLookupEntitlement];

  if (v14)
  {
    if (v7)
    {
      v15 = +[CAWindowServer serverIfRunning];
      v16 = [v15 displayWithUniqueId:v7];
    }

    else
    {
      v16 = sub_1000076E8();
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    memset(buf, 0, sizeof(buf));
    v18 = [v8 unsignedLongLongValue];
    v19 = [v9 unsignedIntValue];
    if (v16)
    {
      [v16 transformFromLayerId:v18 inContextId:v19];
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    v17 = objc_alloc_init(_BKSCATransform3DContainer);
    v22[4] = v26;
    v22[5] = v27;
    v22[6] = v28;
    v22[7] = v29;
    v22[0] = *buf;
    v22[1] = *&buf[16];
    v22[2] = v24;
    v22[3] = v25;
    [v17 setTransform:v22];
  }

  else
  {
    v16 = BKLogTouchEvents();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [v11 pid];
      v21 = BSProcessDescriptionForPID();
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "process '%{public}@' must have entitlement %{public}@ to look up CA transforms", buf, 0x16u);
    }

    v17 = 0;
  }

  return v17;
}

- (void)setSceneHostSettings:(id)a3 forContextID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[BSServiceConnection currentContext];
  v9 = [v8 remoteProcess];
  v25 = 0u;
  v26 = 0u;
  v10 = [v9 auditToken];
  v11 = v10;
  if (v10)
  {
    [v10 realToken];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v12 = +[BKSystemShellSentinel sharedInstance];
  v13 = [v12 auditTokenRepresentsSystemApp:&v25];

  if (v13)
  {
    os_unfair_lock_lock(&self->_lock);
    v14 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:v8];
    v15 = v14;
    if (v14)
    {
      v16 = *(v14 + 8);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = [v17 objectForKey:v7];
    if ((BSEqualObjects() & 1) == 0)
    {
      v19 = BKLogTouchEvents();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v7 unsignedIntValue];
        v24 = [v6 identifier];
        [v18 touchBehavior];
        v22 = NSStringFromBKSSceneHostTouchBehavior();
        [v6 touchBehavior];
        v20 = NSStringFromBKSSceneHostTouchBehavior();
        *buf = 67109890;
        *v28 = v23;
        *&v28[4] = 2114;
        *&v28[6] = v24;
        v29 = 2114;
        v30 = v22;
        v31 = 2114;
        v32 = v20;
        v21 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "new scene host settings: contextID:%X <%{public}@> %{public}@ -> %{public}@", buf, 0x26u);
      }

      if (v6)
      {
        [v17 setObject:v6 forKey:v7];
      }

      else
      {
        [v17 removeObjectForKey:v7];
      }

      [(BKTouchEventServer *)self _lock_updateSceneHostSettings];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v15 = BKLogTouchEvents();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v28 = v9;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "non-shell process cannot modify scene host settings: %{public}@", buf, 0xCu);
    }
  }
}

- (BKTouchEventServer)init
{
  v9.receiver = self;
  v9.super_class = BKTouchEventServer;
  v2 = [(BKTouchEventServer *)&v9 init];
  if (v2)
  {
    v3 = [BKHIDDomainServiceServer alloc];
    v4 = BKSTouchEventBSServiceName;
    v5 = BKLogTouchEvents();
    v6 = [v3 initWithDelegate:v2 incomingServiceConnectionHandler:0 serverTarget:v2 serverProtocol:&OBJC_PROTOCOL___BKSTouchEventServer_IPC clientProtocol:&OBJC_PROTOCOL___BKSTouchEventClient_IPC serviceName:v4 queue:0 log:v5 entitlement:0];
    server = v2->_server;
    v2->_server = v6;

    [(BKHIDDomainServiceServer *)v2->_server activate];
  }

  return v2;
}

@end