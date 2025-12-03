@interface TCCDAssumedIdentityMonitor
- (TCCDAssumedIdentityMonitor)initWithStateDirectoryPath:(id)path;
- (id)_osStateDump;
- (id)_serializeState;
- (id)monitoredProcessesAssumingIdentityWithIdentifier:(id)identifier;
- (void)_createOSStateHandler;
- (void)_loadState;
- (void)_saveState;
- (void)startMonitoringProcess:(id)process assumingIdentity:(id)identity;
- (void)stopMonitoringProcess:(id)process;
@end

@implementation TCCDAssumedIdentityMonitor

- (TCCDAssumedIdentityMonitor)initWithStateDirectoryPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = TCCDAssumedIdentityMonitor;
  v5 = [(TCCDAssumedIdentityMonitor *)&v14 init];
  if (v5)
  {
    v6 = [pathCopy stringByAppendingPathComponent:@"AssumedIdentityMonitorState"];
    stateFilePath = v5->_stateFilePath;
    v5->_stateFilePath = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.tcc.AssumedIdentityMonitor", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = objc_opt_new();
    assumedIdentityIdentifiersToProcesses = v5->_assumedIdentityIdentifiersToProcesses;
    v5->_assumedIdentityIdentifiersToProcesses = v11;

    [(TCCDAssumedIdentityMonitor *)v5 _loadState];
    [(TCCDAssumedIdentityMonitor *)v5 _createOSStateHandler];
  }

  return v5;
}

- (id)_serializeState
{
  dispatch_assert_queue_V2(self->_queue);
  selfCopy = self;
  v22 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_assumedIdentityIdentifiersToProcesses;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v20 = *v30;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * i);
        v7 = objc_opt_new();
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = [(NSMutableDictionary *)selfCopy->_assumedIdentityIdentifiersToProcesses objectForKeyedSubscript:v6];
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v25 + 1) + 8 * j);
              memset(v24, 0, sizeof(v24));
              if (v13)
              {
                [v13 auditToken];
              }

              v14 = [NSData dataWithBytes:v24 length:32];
              [v7 addObject:v14];
            }

            v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v10);
        }

        [v22 setObject:v7 forKeyedSubscript:v6];
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v4);
  }

  v23 = 0;
  v15 = [NSKeyedArchiver archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v23];
  v16 = v23;
  if (v16)
  {
    v17 = tcc_assumed_identity_monitor_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10002A23C();
    }
  }

  return v15;
}

- (void)_loadState
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029118;
  block[3] = &unk_1000A4F58;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_saveState
{
  dispatch_assert_queue_V2(self->_queue);
  _serializeState = [(TCCDAssumedIdentityMonitor *)self _serializeState];
  stateFilePath = self->_stateFilePath;
  v8 = 0;
  v5 = [_serializeState writeToFile:stateFilePath options:1 error:&v8];
  v6 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = tcc_assumed_identity_monitor_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002A4F8();
    }
  }
}

- (id)_osStateDump
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100007500;
  v10 = sub_100007580;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000297BC;
  v5[3] = &unk_1000A5CD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_createOSStateHandler
{
  v2 = dispatch_get_global_queue(0, 0);
  os_state_add_handler();
}

- (void)startMonitoringProcess:(id)process assumingIdentity:(id)identity
{
  processCopy = process;
  identityCopy = identity;
  if ([identityCopy client_type])
  {
    v8 = tcc_assumed_identity_monitor_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002A644();
    }
  }

  else
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100029CC8;
    block[3] = &unk_1000A5098;
    block[4] = self;
    v11 = identityCopy;
    v12 = processCopy;
    dispatch_async(queue, block);
  }
}

- (void)stopMonitoringProcess:(id)process
{
  processCopy = process;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029E60;
  v7[3] = &unk_1000A50C0;
  v7[4] = self;
  v8 = processCopy;
  v6 = processCopy;
  dispatch_async(queue, v7);
}

- (id)monitoredProcessesAssumingIdentityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100007500;
  v16 = sub_100007580;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A184;
  block[3] = &unk_1000A5048;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

@end