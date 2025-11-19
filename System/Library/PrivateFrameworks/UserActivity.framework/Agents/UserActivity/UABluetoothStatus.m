@interface UABluetoothStatus
+ (UABluetoothStatus)sharedInstance;
- (BOOL)poweredOn;
- (UABluetoothStatus)init;
- (id)registerCallback:(id)a3;
- (void)attachToBluetoothSession;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)dealloc;
- (void)detachFromBluetoothSession;
- (void)handleStateChange:(int64_t)a3;
- (void)processCallbacks;
- (void)unregisterCallback:(id)a3;
@end

@implementation UABluetoothStatus

- (BOOL)poweredOn
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_poweredOnValid)
  {
    goto LABEL_8;
  }

  v2->_poweredOn = 0;
  if (v2->_attached)
  {
    v3 = [(UABluetoothStatus *)v2 cbManager];
    v4 = [v3 state];

    [(UABluetoothStatus *)v2 handleStateChange:v4];
  }

  else
  {
    v5 = sub_100001A30(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BLUETOOTH: Returning NO for .poweredOn because our session has been detached, so also triggering a re-attach.", v8, 2u);
    }

    [(UABluetoothStatus *)v2 attachToBluetoothSession];
  }

  if (v2->_poweredOnValid)
  {
LABEL_8:
    poweredOn = v2->_poweredOn;
  }

  else
  {
    poweredOn = 0;
  }

  objc_sync_exit(v2);

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

- (void)handleStateChange:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (a3 > 2)
  {
    switch(a3)
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

  if (a3)
  {
    if (a3 == 1)
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

    if (a3 == 2)
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
      v13 = a3;
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

  v4->_poweredOn = v7;
  v4->_poweredOnValid = v11;
  objc_sync_exit(v4);
}

- (void)attachToBluetoothSession
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_attached && !v2->_attachInProcess)
  {
    v2->_attachInProcess = 1;
    v3 = sub_100046FB4();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100046FF8;
    block[3] = &unk_1000C4CC0;
    block[4] = v2;
    dispatch_async(v3, block);
  }

  objc_sync_exit(v2);
}

- (void)detachFromBluetoothSession
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_attached)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = sub_100001F34;
    v8[4] = sub_10004729C;
    v9 = v2->_cbManager;
    cbManager = v2->_cbManager;
    v2->_cbManager = 0;

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

  objc_sync_exit(v2);
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  -[UABluetoothStatus handleStateChange:](v4, "handleStateChange:", [v5 state]);
  objc_sync_exit(v4);

  [(UABluetoothStatus *)v4 processCallbacks];
}

- (id)registerCallback:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_callbacks)
  {
    v7 = objc_opt_new();
    callbacks = v5->_callbacks;
    v5->_callbacks = v7;
  }

  *&v6 = 138543618;
  v16 = v6;
  do
  {
    v9 = +[NSUUID UUID];
    v10 = [(NSMutableDictionary *)v5->_callbacks objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v12 = objc_retainBlock(v4);
      [(NSMutableDictionary *)v5->_callbacks setObject:v12 forKeyedSubscript:v9];

      v13 = sub_100001A30(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = objc_retainBlock(v4);
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
  objc_sync_exit(v5);

  return v11;
}

- (void)unregisterCallback:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_callbacks objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = sub_100001A30(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "BLUETOOTH: Unregistering callback %{public}@", &v8, 0xCu);
    }

    [(NSMutableDictionary *)v5->_callbacks removeObjectForKey:v4];
  }

  objc_sync_exit(v5);
}

- (void)processCallbacks
{
  v2 = self;
  objc_sync_enter(v2);
  callbacks = v2->_callbacks;
  if (callbacks && [(NSMutableDictionary *)callbacks count]&& ((poweredOn = v2->_poweredOn, v5 = [(UABluetoothStatus *)v2 poweredOn], v6 = v5, !v2->_poweredOnValid) || poweredOn != v5))
  {
    v7 = [(NSMutableDictionary *)v2->_callbacks copy];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  objc_sync_exit(v2);

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