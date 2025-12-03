@interface UABluetoothStatus
+ (UABluetoothStatus)sharedInstance;
- (BOOL)poweredOn;
- (UABluetoothStatus)init;
- (id)registerCallback:(id)callback;
- (void)attachToBluetoothSession;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)detachFromBluetoothSession;
- (void)handleStateChange:(int64_t)change;
- (void)processCallbacks;
- (void)unregisterCallback:(id)callback;
@end

@implementation UABluetoothStatus

- (BOOL)poweredOn
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_poweredOnValid)
  {
    goto LABEL_8;
  }

  selfCopy->_poweredOn = 0;
  if (selfCopy->_attached)
  {
    cbManager = [(UABluetoothStatus *)selfCopy cbManager];
    state = [cbManager state];

    [(UABluetoothStatus *)selfCopy handleStateChange:state];
  }

  else
  {
    v5 = sub_100001A30(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BLUETOOTH: Returning NO for .poweredOn because our session has been detached, so also triggering a re-attach.", v8, 2u);
    }

    [(UABluetoothStatus *)selfCopy attachToBluetoothSession];
  }

  if (selfCopy->_poweredOnValid)
  {
LABEL_8:
    poweredOn = selfCopy->_poweredOn;
  }

  else
  {
    poweredOn = 0;
  }

  objc_sync_exit(selfCopy);

  return poweredOn;
}

- (UABluetoothStatus)init
{
  v5.receiver = self;
  v5.super_class = UABluetoothStatus;
  v2 = [(UABluetoothStatus *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UABluetoothStatus *)v2 attachToBluetoothSession];
  }

  return v3;
}

- (void)dealloc
{
  [(UABluetoothStatus *)self detachFromBluetoothSession];
  v3.receiver = self;
  v3.super_class = UABluetoothStatus;
  [(UABluetoothStatus *)&v3 dealloc];
}

+ (UABluetoothStatus)sharedInstance
{
  if (qword_1000E5D90 != -1)
  {
    sub_10007BE68();
  }

  v3 = qword_1000E5D88;

  return v3;
}

- (void)handleStateChange:(int64_t)change
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (change > 2)
  {
    switch(change)
    {
      case 3:
        v5 = sub_100001A30(0);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v12) = 0;
          v8 = "BLUETOOTH: Setting powered status to unauthorized";
LABEL_26:
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v8, &v12, 2u);
        }

        break;
      case 4:
        v5 = sub_100001A30(0);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v12) = 0;
          v8 = "BLUETOOTH: Setting powered status to OFF";
          goto LABEL_26;
        }

        break;
      case 5:
        v5 = sub_100001A30(0);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "BLUETOOTH: Setting powered status to ON", &v12, 2u);
        }

        v7 = 1;
LABEL_28:
        v11 = 1;
        goto LABEL_29;
      default:
        goto LABEL_17;
    }

    v7 = 0;
    goto LABEL_28;
  }

  if (change)
  {
    if (change == 1)
    {
      v5 = sub_100001A30(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v12) = 0;
        v6 = "BLUETOOTH: Setting powered status to resetting";
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    if (change == 2)
    {
      v5 = sub_100001A30(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v12) = 0;
        v6 = "BLUETOOTH: Setting powered status to unsupported";
LABEL_21:
        v9 = v5;
        v10 = 2;
        goto LABEL_22;
      }

      goto LABEL_23;
    }

LABEL_17:
    v5 = sub_100001A30(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = 134349056;
      changeCopy = change;
      v6 = "BLUETOOTH: Unexpected state %{public}ld";
      v9 = v5;
      v10 = 12;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, v6, &v12, v10);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    v6 = "BLUETOOTH: Setting powered status to unknown";
    goto LABEL_21;
  }

LABEL_23:
  v7 = 0;
  v11 = 0;
LABEL_29:

  selfCopy->_poweredOn = v7;
  selfCopy->_poweredOnValid = v11;
  objc_sync_exit(selfCopy);
}

- (void)attachToBluetoothSession
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_attached && !selfCopy->_attachInProcess)
  {
    selfCopy->_attachInProcess = 1;
    v3 = sub_100046FB4();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100046FF8;
    block[3] = &unk_1000C4CC0;
    block[4] = selfCopy;
    dispatch_async(v3, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)detachFromBluetoothSession
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_attached)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = sub_100001F34;
    v8[4] = sub_10004729C;
    v9 = selfCopy->_cbManager;
    cbManager = selfCopy->_cbManager;
    selfCopy->_cbManager = 0;

    v4 = sub_100046FB4();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000472A4;
    block[3] = &unk_1000C57A0;
    block[4] = v8;
    dispatch_async(v4, block);

    v5 = sub_100001A30(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BLUETOOTH: Detached from bluetooth session.", v6, 2u);
    }

    _Block_object_dispose(v8, 8);
  }

  objc_sync_exit(selfCopy);
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  -[UABluetoothStatus handleStateChange:](selfCopy, "handleStateChange:", [stateCopy state]);
  objc_sync_exit(selfCopy);

  [(UABluetoothStatus *)selfCopy processCallbacks];
}

- (id)registerCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_callbacks)
  {
    v7 = objc_opt_new();
    callbacks = selfCopy->_callbacks;
    selfCopy->_callbacks = v7;
  }

  *&v6 = 138543618;
  v16 = v6;
  do
  {
    v9 = +[NSUUID UUID];
    v10 = [(NSMutableDictionary *)selfCopy->_callbacks objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v12 = objc_retainBlock(callbackCopy);
      [(NSMutableDictionary *)selfCopy->_callbacks setObject:v12 forKeyedSubscript:v9];

      v13 = sub_100001A30(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = objc_retainBlock(callbackCopy);
        *buf = v16;
        v18 = v9;
        v19 = 2050;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "BLUETOOTH: Registering callback %{public}@ to %{public}p", buf, 0x16u);
      }

      v11 = v9;
    }
  }

  while (!v11);
  objc_sync_exit(selfCopy);

  return v11;
}

- (void)unregisterCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_callbacks objectForKeyedSubscript:callbackCopy];

  if (v6)
  {
    v7 = sub_100001A30(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138543362;
      v9 = callbackCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "BLUETOOTH: Unregistering callback %{public}@", &v8, 0xCu);
    }

    [(NSMutableDictionary *)selfCopy->_callbacks removeObjectForKey:callbackCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)processCallbacks
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  callbacks = selfCopy->_callbacks;
  if (callbacks && [(NSMutableDictionary *)callbacks count]&& ((poweredOn = selfCopy->_poweredOn, v5 = [(UABluetoothStatus *)selfCopy poweredOn], v6 = v5, !selfCopy->_poweredOnValid) || poweredOn != v5))
  {
    v7 = [(NSMutableDictionary *)selfCopy->_callbacks copy];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004773C;
    v8[3] = &unk_1000C5CD8;
    v9 = v6;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

@end