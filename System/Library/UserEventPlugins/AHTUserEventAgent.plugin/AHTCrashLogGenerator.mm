@interface AHTCrashLogGenerator
- (AHTCrashLogGenerator)init;
- (BOOL)clearMemoryDumps:(id)dumps;
- (BOOL)getMemoryDumps:(id)dumps;
- (BOOL)start:(id)start error:(id *)error;
- (BOOL)stop:(id *)stop;
- (void)dealloc;
- (void)registerNotification:(id)notification memoryDumpLevel:(id)level;
@end

@implementation AHTCrashLogGenerator

- (AHTCrashLogGenerator)init
{
  v13.receiver = self;
  v13.super_class = AHTCrashLogGenerator;
  v2 = [(AHTCrashLogGenerator *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sources = v2->_sources;
    v2->_sources = v3;

    v5 = IOServiceMatching("AppleHIDTransportDevice");
    v6 = [[AHTDeviceMatchingNotification alloc] initWithMatchingDictionary:v5 type:"IOServiceFirstPublish"];
    deviceAdded = v2->_deviceAdded;
    v2->_deviceAdded = v6;

    if (v2->_deviceAdded)
    {
      v8 = IOServiceMatching("AppleHIDTransportInterface");

      v9 = [[AHTDeviceMatchingNotification alloc] initWithMatchingDictionary:v8 type:"IOServiceFirstPublish"];
      interfaceAdded = v2->_interfaceAdded;
      v2->_interfaceAdded = v9;

      if (v2->_interfaceAdded)
      {
        v11 = v2;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_60B4();
        }

        v11 = 0;
      }

      v5 = v8;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_60F8();
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)start:(id)start error:(id *)error
{
  startCopy = start;
  objc_initWeak(&location, self);
  objc_storeStrong(&self->_queue, start);
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 persistentDomainForName:@"com.apple.hid.memory-dump"];
  v10 = [v9 objectForKey:@"level"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1E8C;
  v20[3] = &unk_C3A0;
  objc_copyWeak(&v22, &location);
  v11 = v10;
  v21 = v11;
  v12 = objc_retainBlock(v20);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1FE4;
  v17[3] = &unk_C3A0;
  objc_copyWeak(&v19, &location);
  v13 = v11;
  v18 = v13;
  v14 = objc_retainBlock(v17);
  if ([(AHTDeviceMatchingNotification *)self->_deviceAdded startWithDispatchQueue:startCopy error:error action:v12])
  {
    v15 = [(AHTDeviceMatchingNotification *)self->_interfaceAdded startWithDispatchQueue:startCopy error:error action:v14];
  }

  else
  {
    v15 = 0;
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&location);
  return v15;
}

- (BOOL)stop:(id *)stop
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_sources;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dispatch_source_cancel(*(*(&v12 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_sources removeAllObjects];
  v10 = [(AHTDeviceMatchingNotification *)self->_deviceAdded stop:stop];
  return v10 & [(AHTDeviceMatchingNotification *)self->_interfaceAdded stop:stop];
}

- (void)registerNotification:(id)notification memoryDumpLevel:(id)level
{
  notificationCopy = notification;
  levelCopy = level;
  if ([notificationCopy supportsMemoryDump])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_2480;
    v17[3] = &unk_C3C8;
    v17[4] = self;
    v8 = objc_retainBlock(v17);
    queue = self->_queue;
    v16 = 0;
    v10 = [notificationCopy dispatchSourceForNotification:queue action:v8 error:&v16];
    v11 = v16;
    if (v10)
    {
      dispatch_resume(v10);
      [(NSMutableArray *)self->_sources addObject:v10];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_613C();
    }

    (v8[2])(v8, notificationCopy, 1);
    if (levelCopy)
    {
      unsignedIntValue = [levelCopy unsignedIntValue];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v19 = unsignedIntValue;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Set memory dump level to 0x%X", buf, 8u);
      }

      v15 = v11;
      v13 = [notificationCopy setMemoryDumpLevel:unsignedIntValue error:&v15];
      v14 = v15;

      if ((v13 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_61B4();
      }
    }

    else
    {
      v14 = v11;
    }
  }
}

- (BOOL)getMemoryDumps:(id)dumps
{
  dumpsCopy = dumps;
  v30 = 0;
  v31 = 0;
  v5 = [dumpsCopy getMemoryDumps:&v31 error:&v30];
  v6 = v31;
  v7 = v30;
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_622C();
    }

    v20 = 0;
    goto LABEL_23;
  }

  if (!v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No memory dumps available", buf, 2u);
    }

    v20 = 1;
LABEL_23:
    v19 = v7;
    goto LABEL_31;
  }

  selfCopy = self;
  v8 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = +[AHTDevice allDevices];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        reporterResults = [v14 reporterResults];
        if (reporterResults)
        {
          name = [v14 name];
          [v8 setObject:reporterResults forKeyedSubscript:name];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v11);
  }

  v32[0] = @"MemoryDumps";
  v32[1] = @"ReporterResults";
  v33[0] = v6;
  v33[1] = v8;
  v17 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  v24 = 0;
  v18 = [NSPropertyListSerialization dataWithPropertyList:v17 format:100 options:0 error:&v24];
  v19 = v24;

  if (v18)
  {
    v23 = v18;
    v20 = OSAWriteLogForSubmission();
    if (v20)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Crash log generated", buf, 2u);
      }

      [(AHTCrashLogGenerator *)selfCopy clearMemoryDumps:dumpsCopy];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_62A4();
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_62E8();
    }

    v20 = 0;
  }

LABEL_31:
  return v20;
}

- (BOOL)clearMemoryDumps:(id)dumps
{
  v6 = 0;
  v3 = [dumps clearMemoryDumps:&v6];
  v4 = v6;
  if ((v3 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_6360();
  }

  return v3;
}

- (void)dealloc
{
  [(AHTCrashLogGenerator *)self stop:0];
  v3.receiver = self;
  v3.super_class = AHTCrashLogGenerator;
  [(AHTCrashLogGenerator *)&v3 dealloc];
}

@end