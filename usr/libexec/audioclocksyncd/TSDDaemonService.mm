@interface TSDDaemonService
+ (id)daemonService;
+ (id)sharedDaemonService;
- (BOOL)callMethodForDaemonClient:(unsigned int)a3 clientMethodSelector:(unsigned int)a4 scalarInputs:(const unint64_t *)a5 scalarInputCount:(unsigned int)a6 structInput:(const void *)a7 structInputSize:(unint64_t)a8 scalarOutputs:(unint64_t *)a9 scalarOutputCount:(unsigned int *)a10 error:(id *)a11;
- (BOOL)closeDaemonClient:(int)a3 daemonClientID:(unsigned int)a4 error:(id *)a5;
- (BOOL)deregisterAsyncCallback;
- (BOOL)registerAsyncCallback;
- (TSDDaemonService)init;
- (unsigned)openDaemonClient:(int)a3 withRegistryEntryID:(unint64_t)a4 clientType:(unsigned int)a5 error:(id *)a6;
- (void)dealloc;
- (void)finalizeNotifications;
@end

@implementation TSDDaemonService

+ (id)sharedDaemonService
{
  if (qword_100058888 != -1)
  {
    sub_10002AEA8();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016E60;
  block[3] = &unk_10004CAB0;
  block[4] = a1;
  dispatch_sync(qword_100058880, block);
  v3 = qword_100058878;

  return v3;
}

+ (id)daemonService
{
  v2 = objc_alloc_init(TSDDaemonService);
  if (!v2)
  {
    v3 = 10;
    do
    {
      usleep(0x2710u);
      v2 = objc_alloc_init(TSDDaemonService);
      if (v3 < 2)
      {
        break;
      }

      --v3;
    }

    while (!v2);
  }

  return v2;
}

- (TSDDaemonService)init
{
  v18.receiver = self;
  v18.super_class = TSDDaemonService;
  v2 = [(TSDDaemonService *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_asyncCallbackRefcon = 0;
    v4 = +[NSMutableDictionary dictionary];
    processCallbacks = v3->_processCallbacks;
    v3->_processCallbacks = v4;

    v3->_processCallbacksLock._os_unfair_lock_opaque = 0;
    v6 = [IOKService serviceMatching:@"IOTimeSyncDaemonService"];
    v7 = [IOKService matchingService:v6];

    if (v7)
    {
      v8 = [v7 propertyForKey:@"IOTimeSyncDaemonClientEntryIDMatching"];
      v3->_supportsRegistryEntryIDDaemonClientMatching = v8 != 0;

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        if (v3->_supportsRegistryEntryIDDaemonClientMatching)
        {
          v9 = "YES";
        }

        else
        {
          v9 = "NO";
        }

        *buf = 136315138;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_supportsRegistryEntryIDDaemonClientMatching %s\n", buf, 0xCu);
      }

      v10 = [[IOKConnection alloc] initWithService:v7 andType:42];
      connection = v3->_connection;
      v3->_connection = v10;

      if (v3->_connection)
      {
        p_super = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
        v13 = dispatch_queue_create("com.apple.TimeSync.daemon.service", p_super);
        notificationsQueue = v3->_notificationsQueue;
        v3->_notificationsQueue = v13;

        if (v3->_notificationsQueue)
        {
          v15 = [[IOKNotificationPort alloc] initOnDispatchQueue:v3->_notificationsQueue];
          notificationPort = v3->_notificationPort;
          v3->_notificationPort = v15;

          if (v3->_connection)
          {
            [(TSDDaemonService *)v3 registerAsyncCallback];
LABEL_12:

            return v3;
          }

          sub_10002AEBC(v3);
        }

        else
        {
          sub_10002AF7C(v3);
        }

LABEL_19:
        v3 = 0;
        goto LABEL_12;
      }

      sub_10002B03C();
    }

    else
    {
      sub_10002B0EC();
    }

    p_super = &v3->super;
    goto LABEL_19;
  }

  return v3;
}

- (void)dealloc
{
  [(TSDDaemonService *)self finalizeNotifications];
  v3.receiver = self;
  v3.super_class = TSDDaemonService;
  [(TSDDaemonService *)&v3 dealloc];
}

- (void)finalizeNotifications
{
  [(TSDDaemonService *)self deregisterAsyncCallback];
  notificationPort = self->_notificationPort;
  self->_notificationPort = 0;
}

- (unsigned)openDaemonClient:(int)a3 withRegistryEntryID:(unint64_t)a4 clientType:(unsigned int)a5 error:(id *)a6
{
  v15[0] = 4;
  v15[1] = a3;
  v16 = a4;
  v17 = a5;
  v14 = 0;
  v13[0] = 1;
  if (!self->_supportsRegistryEntryIDDaemonClientMatching)
  {
    v8 = [IOKService entryIDMatching:a4];
    v9 = [IOKService matchingService:v8];

    if (!v9)
    {
      sub_10002B3C8();
      return v13[1];
    }

    v10 = [v9 propertyForKey:@"IOTimeSyncDaemonServiceUniqueID"];
    if (!v10)
    {
      sub_10002B308(v9);
      return 0;
    }

    v11 = v10;
    v16 = [v10 unsignedIntValue];
  }

  if (([(IOKConnection *)self->_connection callMethodWithSelector:0 scalarInputs:v15 scalarInputCount:4 structInput:0 structInputSize:0 scalarOutputs:&v14 scalarOutputCount:v13 structOutput:0 structOutputSize:0 error:a6]& 1) == 0)
  {
    sub_10002B484();
    return v13[1];
  }

  if (v13[0] != 1)
  {
    sub_10002B540();
    return v13[1];
  }

  return v14;
}

- (BOOL)closeDaemonClient:(int)a3 daemonClientID:(unsigned int)a4 error:(id *)a5
{
  v8[0] = 5;
  v8[1] = a3;
  v8[2] = a4;
  v7 = 0;
  v5 = [(IOKConnection *)self->_connection callMethodWithSelector:0 scalarInputs:v8 scalarInputCount:3 scalarOutputs:0 scalarOutputCount:&v7 error:a5];
  if ((v5 & 1) == 0)
  {
    sub_10002B5FC();
  }

  return v5;
}

- (BOOL)callMethodForDaemonClient:(unsigned int)a3 clientMethodSelector:(unsigned int)a4 scalarInputs:(const unint64_t *)a5 scalarInputCount:(unsigned int)a6 structInput:(const void *)a7 structInputSize:(unint64_t)a8 scalarOutputs:(unint64_t *)a9 scalarOutputCount:(unsigned int *)a10 error:(id *)a11
{
  if (a6 > 0xE)
  {
    return 0;
  }

  memset(v24, 0, sizeof(v24));
  v23[0] = a3;
  v23[1] = a4;
  if (a6)
  {
    memcpy(v24, a5, 8 * a6);
  }

  v17 = [(IOKConnection *)self->_connection callMethodWithSelector:1 scalarInputs:v23 scalarInputCount:a6 + 2 structInput:a7 structInputSize:a8 scalarOutputs:a9 scalarOutputCount:a10 structOutput:0 structOutputSize:0 error:a11];
  if ((v17 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v20 = a3;
    v21 = 1024;
    v22 = a4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDDaemonService callMethodForDaemonClient failed clientID %u, clientMethodSelector %u\n", buf, 0xEu);
  }

  return v17;
}

- (BOOL)registerAsyncCallback
{
  v3 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  self->_asyncCallbackRefcon = [v3 allocateRefcon:self];
  p_asyncCallbackRefcon = &self->_asyncCallbackRefcon;

  v6 = *p_asyncCallbackRefcon;
  v5 = p_asyncCallbackRefcon[1];
  v12 = sub_1000012AC;
  v13 = v6;
  v10 = 2;
  v9 = 0;
  v7 = [*(p_asyncCallbackRefcon - 3) callAsyncMethodWithSelector:0 wakePort:objc_msgSend(v5 reference:"machPort") referenceCount:v11 scalarInputs:8 scalarInputCount:&v10 scalarOutputs:1 scalarOutputCount:0 error:{&v9, 0}];
  if ((v7 & 1) == 0)
  {
    sub_10002B6AC(p_asyncCallbackRefcon);
  }

  return v7;
}

- (BOOL)deregisterAsyncCallback
{
  v7 = 3;
  v6 = 0;
  v3 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v3 releaseRefcon:self->_asyncCallbackRefcon];

  v4 = [(IOKConnection *)self->_connection callMethodWithSelector:0 scalarInputs:&v7 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v6 error:0];
  if ((v4 & 1) == 0)
  {
    sub_10002B788();
  }

  return v4;
}

@end