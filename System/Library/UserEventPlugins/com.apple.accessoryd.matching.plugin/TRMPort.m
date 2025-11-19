@interface TRMPort
- (BOOL)_startInterestNotifications;
- (BOOL)_updatePropertiesFromService;
- (BOOL)isEqual:(id)a3;
- (TRMPort)initWithService:(unsigned int)a3 andDelegate:(id)a4;
- (TRMPortDelegate)delegate;
- (id)description;
- (void)_handleNotificationForService:(unsigned int)a3 messageType:(unsigned int)a4 messageArgument:(void *)a5;
- (void)_startInterestNotifications;
- (void)_stopInterestNotifications;
- (void)dealloc;
- (void)setUserAuthorizationStatus:(int)a3 completionHandler:(id)a4;
@end

@implementation TRMPort

- (TRMPort)initWithService:(unsigned int)a3 andDelegate:(id)a4
{
  v6 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412546;
    v21 = v8;
    v22 = 1024;
    v23 = a3;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Initializing %@... (service: %u)", buf, 0x12u);
  }

  v19.receiver = self;
  v19.super_class = TRMPort;
  v9 = [(TRMPort *)&v19 init];
  v10 = v9;
  if (v9)
  {
    if (a3)
    {
      v9->_service = a3;
      IOObjectRetain(a3);
      objc_storeWeak(&v10->_delegate, v6);
      RegistryEntryID = IORegistryEntryGetRegistryEntryID(a3, &v10->_registryEntryID);
      if (!RegistryEntryID)
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [NSString stringWithFormat:@"%@.%llu", v14, v10->_registryEntryID];
        v16 = dispatch_queue_create([v15 UTF8String], 0);
        queue = v10->_queue;
        v10->_queue = v16;

        [(TRMPort *)v10 _startInterestNotifications];
        [(TRMPort *)v10 _updatePropertiesFromService];
        goto LABEL_11;
      }

      v12 = RegistryEntryID;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v21) = v12;
        _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IORegistryEntryGetRegistryEntryID failed: %08x", buf, 8u);
      }

      IOObjectRelease(a3);
    }

    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(TRMPort *)self portDescription];
  v6 = [(TRMPort *)self registryEntryID];
  v7 = [(TRMPort *)self authorizationPending];
  v8 = [(TRMPort *)self userAuthorizationPending];
  v9 = [(TRMPort *)self userAuthorizationStatusDescription];
  v10 = [(TRMPort *)self transportsUnauthorized];
  v11 = [NSString stringWithFormat:@"<%@: %p, portDescription: %@, registryEntryID: %llu, authorizationPending: %d, userAuthorizationPending: %d, userAuthorizationStatusDescription: [%@], transportsUnauthorized: %@>", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    *buf = 138412546;
    v8 = v4;
    v9 = 2048;
    v10 = [(TRMPort *)self registryEntryID];
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deallocating %@... (self.registryEntryID: %llu)", buf, 0x16u);
  }

  [(TRMPort *)self _stopInterestNotifications];
  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
  }

  v6.receiver = self;
  v6.super_class = TRMPort;
  [(TRMPort *)&v6 dealloc];
}

- (void)setUserAuthorizationStatus:(int)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v13 = a3;
    v14 = 2112;
    v15 = self;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting user authorization status... (userAuthorizationStatus: %d, self: %@)", buf, 0x12u);
  }

  v7 = [(TRMPort *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __56__TRMPort_setUserAuthorizationStatus_completionHandler___block_invoke;
  block[3] = &unk_59878;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __56__TRMPort_setUserAuthorizationStatus_completionHandler___block_invoke(uint64_t a1)
{
  connect = -1431655766;
  v2 = [*(a1 + 32) service];
  v3 = IOServiceOpen(v2, mach_task_self_, 1u, &connect);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __56__TRMPort_setUserAuthorizationStatus_completionHandler___block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = [NSError errorWithDomain:@"TRMPortErrorDomain" code:-2 userInfo:0];
  }

  else
  {
    v23 = *(a1 + 48);
    v13 = IOConnectCallScalarMethod(connect, 0, &v23, 1u, 0, 0);
    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __56__TRMPort_setUserAuthorizationStatus_completionHandler___block_invoke_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v12 = [NSError errorWithDomain:@"TRMPortErrorDomain" code:-2 userInfo:0];
    }

    else
    {
      v12 = 0;
    }

    IOServiceClose(connect);
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    (*(v22 + 16))(v22, v12);
  }
}

- (BOOL)_updatePropertiesFromService
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = [(TRMPort *)self registryEntryID];
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Updating properties... (self.registryEntryID: %llu)", buf, 0xCu);
  }

  *buf = 0;
  if (_updatePropertiesFromService_onceToken != -1)
  {
    [TRMPort _updatePropertiesFromService];
  }

  if (![(TRMPort *)self service])
  {
    return 0;
  }

  v3 = self;
  objc_sync_enter(v3);
  CFProperties = IORegistryEntryCreateCFProperties([(TRMPort *)v3 service], buf, kCFAllocatorDefault, 0);
  if (!CFProperties)
  {
    v50 = *buf;
    v5 = [*buf dictionaryWithValuesForKeys:_updatePropertiesFromService_propertyFilter];
    v48 = [v5 mutableCopy];

    v6 = +[NSNull null];
    v7 = [v48 allKeysForObject:v6];
    [v48 removeObjectsForKeys:v7];

    v8 = [(TRMPort *)v3 servicePropertiesFiltered];
    v47 = [v48 isEqualToDictionary:v8];

    v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v47)
    {
      if (v9)
      {
        *v52 = 0;
        _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No properties have changed!", v52, 2u);
      }
    }

    else
    {
      if (v9)
      {
        *v52 = 0;
        _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Properties have changed!", v52, 2u);
      }

      v10 = [(TRMPort *)v3 servicePropertiesFiltered];
      printDictionaryDelta(v10, v48);

      [(TRMPort *)v3 setServicePropertiesFiltered:v48];
      v11 = [v50 objectForKeyedSubscript:@"PortDescription"];
      [(TRMPort *)v3 setPortDescription:v11];

      v12 = [v50 objectForKeyedSubscript:@"PortType"];
      -[TRMPort setPortType:](v3, "setPortType:", [v12 intValue]);

      v13 = [v50 objectForKeyedSubscript:@"PortTypeDescription"];
      [(TRMPort *)v3 setPortTypeDescription:v13];

      v14 = [v50 objectForKeyedSubscript:@"PortNumber"];
      -[TRMPort setPortNumber:](v3, "setPortNumber:", [v14 intValue]);

      v15 = [v50 objectForKeyedSubscript:@"BuiltIn"];
      -[TRMPort setBuiltIn:](v3, "setBuiltIn:", [v15 BOOLValue]);

      v16 = [v50 objectForKeyedSubscript:@"ConnectionActive"];
      -[TRMPort setConnectionActive:](v3, "setConnectionActive:", [v16 BOOLValue]);

      v17 = [v50 objectForKeyedSubscript:@"ConnectionUUID"];
      [(TRMPort *)v3 setConnectionUUID:v17];

      v18 = [v50 objectForKeyedSubscript:@"AuthorizationRequired"];
      -[TRMPort setAuthorizationRequired:](v3, "setAuthorizationRequired:", [v18 BOOLValue]);

      v19 = [v50 objectForKeyedSubscript:@"AuthorizationPending"];
      -[TRMPort setAuthorizationPending:](v3, "setAuthorizationPending:", [v19 BOOLValue]);

      v20 = [v50 objectForKeyedSubscript:@"UserAuthorizationPending"];
      -[TRMPort setUserAuthorizationPending:](v3, "setUserAuthorizationPending:", [v20 BOOLValue]);

      v21 = [v50 objectForKeyedSubscript:@"TransportsUnauthorized"];
      [(TRMPort *)v3 setTransportsUnauthorized:v21];

      v22 = [v50 objectForKeyedSubscript:@"UserAuthorizationStatus"];
      -[TRMPort setUserAuthorizationStatus:](v3, "setUserAuthorizationStatus:", [v22 intValue]);

      v23 = [v50 objectForKeyedSubscript:@"UserAuthorizationStatusDescription"];
      [(TRMPort *)v3 setUserAuthorizationStatusDescription:v23];
    }

    *v52 = -1431655766;
    v24 = 0;
    if (IORegistryEntryGetChildIterator([(TRMPort *)v3 service], "IOService", v52))
    {
      v49 = 0;
LABEL_15:
      if (*v52)
      {
        IOObjectRelease(*v52);
      }

      v25 = [(TRMPort *)v3 deviceDescription];
      v26 = v49;
      if (v49 || (v26 = v24) != 0)
      {
        [(TRMPort *)v3 setDeviceDescription:v26];
      }

      else
      {
        [(TRMPort *)v3 setDeviceDescription:?];
      }

      v27 = [(TRMPort *)v3 deviceDescription];
      v28 = [v27 isEqualToString:v25];

      if (v28)
      {
        v29 = v47 ^ 1;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v51 = 0;
          _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device description changed!", v51, 2u);
        }

        v29 = 1;
      }

      goto LABEL_26;
    }

    v49 = 0;
    while (1)
    {
      v31 = IOIteratorNext(*v52);
      v32 = v31;
      if (!v31)
      {
        goto LABEL_15;
      }

      CFProperty = IORegistryEntryCreateCFProperty(v31, @"Active", kCFAllocatorDefault, 0);
      v34 = CFProperty;
      if (CFProperty)
      {
        if ([CFProperty BOOLValue])
        {
          v35 = IORegistryEntryCreateCFProperty(v32, @"TransportType", kCFAllocatorDefault, 0);

          if (!v35)
          {
            goto LABEL_60;
          }

          v36 = [v35 intValue];
          if (v36 != 2)
          {
            if (v36 == 3)
            {
              v37 = IORegistryEntryCreateCFProperty(v32, @"Manufacturer", kCFAllocatorDefault, 0);
              v38 = IORegistryEntryCreateCFProperty(v32, @"Product", kCFAllocatorDefault, 0);
              if (v37 | v38)
              {
                v39 = +[NSMutableString string];

                v24 = v39;
                if (v37)
                {
                  if (v38 && ([v38 hasPrefix:v37] & 1) != 0)
                  {
                    goto LABEL_42;
                  }

                  [v39 appendString:v37];
                  [v39 appendString:@" "];
                }

                if (v38)
                {
                  goto LABEL_42;
                }
              }
            }

            else
            {
              if (v36 != 4)
              {
                goto LABEL_60;
              }

              v37 = IORegistryEntryCreateCFProperty(v32, @"Device Vendor Name", kCFAllocatorDefault, 0);
              v38 = IORegistryEntryCreateCFProperty(v32, @"Device Model Name", kCFAllocatorDefault, 0);
              if (v37 | v38)
              {
                v39 = +[NSMutableString string];

                v49 = v39;
                if (!v37)
                {
                  goto LABEL_41;
                }

                if (v38 && ([v38 hasPrefix:v37] & 1) != 0)
                {
                  goto LABEL_42;
                }

                [v39 appendString:v37];
                [v39 appendString:@" "];
LABEL_41:
                if (v38)
                {
LABEL_42:
                  [v39 appendString:v38];
                }
              }
            }

LABEL_59:

            goto LABEL_60;
          }

          if (v24)
          {
            goto LABEL_60;
          }

          v37 = IORegistryEntryCreateCFProperty(v32, @"Manufacturer", kCFAllocatorDefault, 0);
          v38 = IORegistryEntryCreateCFProperty(v32, @"Product", kCFAllocatorDefault, 0);
          if (!(v37 | v38))
          {
            v24 = 0;
            goto LABEL_59;
          }

          v24 = +[NSMutableString string];
          if (v37)
          {
            if (!v38 || ([v38 hasPrefix:v37] & 1) == 0)
            {
              [v24 appendString:v37];
              [v24 appendString:@" "];
              goto LABEL_56;
            }
          }

          else
          {
LABEL_56:
            if (!v38)
            {
              goto LABEL_59;
            }
          }

          [v24 appendString:v38];
          goto LABEL_59;
        }

        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

LABEL_60:
      IOObjectRelease(v32);
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(TRMPort *)CFProperties _updatePropertiesFromService:v40];
  }

  v50 = 0;
  v29 = 0;
LABEL_26:
  objc_sync_exit(v3);

  return v29;
}

void __39__TRMPort__updatePropertiesFromService__block_invoke(id a1)
{
  v1 = _updatePropertiesFromService_propertyFilter;
  _updatePropertiesFromService_propertyFilter = &off_63600;
}

- (BOOL)_startInterestNotifications
{
  notification = [(TRMPort *)self ioNotification];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = [(TRMPort *)self registryEntryID];
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Registering for interest notifications... (self.registryEntryID: %llu)", buf, 0xCu);
  }

  if ([(TRMPort *)self interestNotificationsStarted])
  {
    [(TRMPort *)self _stopInterestNotifications];
  }

  [(TRMPort *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
  v3 = [(TRMPort *)self ioNotificationPort];
  v4 = [(TRMPort *)self queue];
  IONotificationPortSetDispatchQueue(v3, v4);

  v5 = IOServiceAddInterestNotification([(TRMPort *)self ioNotificationPort], [(TRMPort *)self service], "IOGeneralInterest", _serviceNotification, self, &notification);
  v6 = v5;
  if (v5)
  {
    [(TRMPort *)v5 _startInterestNotifications];
  }

  else
  {
    [(TRMPort *)self setInterestNotificationsStarted:1];
  }

  return v6 == 0;
}

- (void)_stopInterestNotifications
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = [(TRMPort *)self registryEntryID];
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Disabling interest notifications... (self.registryEntryID: %llu)", &v3, 0xCu);
  }

  if ([(TRMPort *)self ioNotification])
  {
    IOObjectRelease([(TRMPort *)self ioNotification]);
  }

  if ([(TRMPort *)self ioNotificationPort])
  {
    IONotificationPortDestroy([(TRMPort *)self ioNotificationPort]);
  }

  [(TRMPort *)self setInterestNotificationsStarted:0];
}

- (void)_handleNotificationForService:(unsigned int)a3 messageType:(unsigned int)a4 messageArgument:(void *)a5
{
  switch(a4)
  {
    case 0xE0000010:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "messageType: kIOMessageServiceIsTerminated", v17, 2u);
      }

      [(TRMPort *)self setIsInactive:1];
      [(TRMPort *)self _stopInterestNotifications];
      if ([(TRMPort *)self service])
      {
        IOObjectRelease([(TRMPort *)self service]);
      }

      v14 = [(TRMPort *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v8 = [(TRMPort *)self delegate];
        [v8 portDidTerminate:self];
        goto LABEL_22;
      }

      break;
    case 0xE3FF80CB:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "messageType: kIOPort_Message_AuthorizationStateChange", v16, 2u);
      }

      if ([(TRMPort *)self _updatePropertiesFromService])
      {
        v9 = [(TRMPort *)self delegate];
        v10 = objc_opt_respondsToSelector();

        if (v10)
        {
          v11 = [(TRMPort *)self delegate];
          [v11 portDidUpdate:self];
        }
      }

      v12 = [(TRMPort *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v8 = [(TRMPort *)self delegate];
        [v8 portDidUpdateAuthorizationState:self];
        goto LABEL_22;
      }

      break;
    case 0xE0000130:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "messageType: kIOMessageServicePropertyChange", buf, 2u);
      }

      if ([(TRMPort *)self _updatePropertiesFromService])
      {
        v6 = [(TRMPort *)self delegate];
        v7 = objc_opt_respondsToSelector();

        if (v7)
        {
          v8 = [(TRMPort *)self delegate];
          [v8 portDidUpdate:self];
LABEL_22:
        }
      }

      break;
  }
}

- (TRMPortDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 registryEntryID];
    v6 = v5 == [(TRMPort *)self registryEntryID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_startInterestNotifications
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = a1;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOServiceAddInterestNotification failed: %08x", v2, 8u);
  }
}

@end