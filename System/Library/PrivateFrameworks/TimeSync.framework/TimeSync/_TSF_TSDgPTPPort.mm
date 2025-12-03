@interface _TSF_TSDgPTPPort
+ (id)diagnosticInfoForService:(id)service;
+ (id)gPTPPortWithService:(id)service;
- (BOOL)startAutomaticPropertyUpdates;
- (BOOL)stopAutomaticPropertyUpdates;
- (_TSF_TSDgPTPPort)init;
- (_TSF_TSDgPTPPort)initWithService:(id)service pid:(int)pid;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)delta;
- (id)propertiesForXPC;
- (int)_portRole;
- (unint64_t)_clockIdentifier;
- (unsigned)_portNumber;
- (void)finalizeNotifications;
- (void)setPropertyUpdateQueue:(id)queue;
- (void)updateProperties;
@end

@implementation _TSF_TSDgPTPPort

- (_TSF_TSDgPTPPort)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_TSF_TSDgPTPPort init]"];
  [v3 raise:v4 format:{@"Do not call %@", v5}];

  return 0;
}

+ (id)gPTPPortWithService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncEthernetPort"])
  {
    v4 = off_279DBD3A0;
LABEL_21:
    v5 = [objc_alloc(*v4) initWithService:serviceCopy];
    goto LABEL_22;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncUnicastLinkLayerPtPPort"])
  {
    v4 = off_279DBD3E8;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncUnicastUDPv4PtPPort"])
  {
    v4 = off_279DBD3F8;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncUnicastUDPv6PtPPort"])
  {
    v4 = &off_279DBD408;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncUnicastLinkLayerEtEPort"])
  {
    v4 = off_279DBD3E0;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncUnicastUDPv4EtEPort"])
  {
    v4 = off_279DBD3F0;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncUnicastUDPv6EtEPort"])
  {
    v4 = off_279DBD400;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncLocalClockPort"])
  {
    v4 = off_279DBD3B8;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncNetworkPort"])
  {
    v4 = off_279DBD3C8;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:@"IOTimeSyncPort"])
  {
    v4 = off_279DBD3D0;
    goto LABEL_21;
  }

  v5 = 0;
LABEL_22:

  return v5;
}

- (_TSF_TSDgPTPPort)initWithService:(id)service pid:(int)pid
{
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = _TSF_TSDgPTPPort;
  v7 = [(_TSF_TSDgPTPPort *)&v20 init];
  if (v7)
  {
    objc_initWeak(&location, v7);
    objc_storeStrong(&v7->_service, service);
    if (v7->_service)
    {
      v7->_portNumber = [(_TSF_TSDgPTPPort *)v7 _portNumber];
      v7->_clockIdentifier = [(_TSF_TSDgPTPPort *)v7 _clockIdentifier];
      if (initWithService_pid__onceToken != -1)
      {
        [_TSF_TSDgPTPPort initWithService:pid:];
      }

      if (_sharedNotificationsQueue)
      {
        objc_storeStrong(&v7->_propertyUpdateQueue, _sharedNotificationsQueue);
        v7->_portRole = [(_TSF_TSDgPTPPort *)v7 _portRole];
        v8 = objc_alloc(MEMORY[0x277D1AE18]);
        v9 = [v8 initOnDispatchQueue:_sharedNotificationsQueue];
        notificationPort = v7->_notificationPort;
        v7->_notificationPort = v9;

        v11 = v7->_notificationPort;
        if (v11)
        {
          service = v7->_service;
          v13 = *MEMORY[0x277D1AE08];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __40___TSF_TSDgPTPPort_initWithService_pid___block_invoke_65;
          v17[3] = &unk_279DBD820;
          objc_copyWeak(&v18, &location);
          v14 = [(IOKService *)service addInterestNotifcationOfType:v13 usingNotificationPort:v11 error:0 withHandler:v17];
          generalInterestNotification = v7->_generalInterestNotification;
          v7->_generalInterestNotification = v14;

          objc_destroyWeak(&v18);
          if (v7->_generalInterestNotification)
          {
LABEL_8:
            objc_destroyWeak(&location);
            goto LABEL_9;
          }

          [_TSF_TSDgPTPPort initWithService:pid:];
        }

        else
        {
          [_TSF_TSDgPTPPort initWithService:pid:];
        }
      }

      else
      {
        [_TSF_TSDgPTPPort initWithService:pid:];
      }
    }

    else
    {
      [_TSF_TSDgPTPPort initWithService:pid:];
    }

    v7 = 0;
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (void)updateProperties
{
  propertyUpdateQueue = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue];
  _portRole = [(_TSF_TSDgPTPPort *)self _portRole];
  _clockIdentifier = [(_TSF_TSDgPTPPort *)self _clockIdentifier];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36___TSF_TSDgPTPPort_updateProperties__block_invoke;
  block[3] = &unk_279DBD848;
  v7 = _portRole;
  block[4] = self;
  block[5] = _clockIdentifier;
  dispatch_async(propertyUpdateQueue, block);
}

- (BOOL)startAutomaticPropertyUpdates
{
  v2 = self->_generalInterestNotification != 0;
  self->_updatePropertiesOnPropertyChange = 1;
  return v2;
}

- (BOOL)stopAutomaticPropertyUpdates
{
  self->_updatePropertiesOnPropertyChange = 0;
  dispatch_sync(_sharedNotificationsQueue, &__block_literal_global_69);
  return 1;
}

- (unsigned)_portNumber
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"PortNumber"];

  if (v3)
  {
    unsignedShortValue = [v3 unsignedShortValue];
  }

  else
  {
    unsignedShortValue = 0;
  }

  return unsignedShortValue;
}

- (int)_portRole
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"PortRole"];

  if (v3)
  {
    intValue = [v3 intValue];
    if (intValue < 4)
    {
      v5 = intValue + 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_clockIdentifier
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"ClockIdentifier"];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (void)setPropertyUpdateQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    queueCopy = _sharedNotificationsQueue;
  }

  propertyUpdateQueue = self->_propertyUpdateQueue;
  self->_propertyUpdateQueue = queueCopy;

  MEMORY[0x2821F96F8]();
}

- (void)finalizeNotifications
{
  self->_updatePropertiesOnPropertyChange = 0;
  generalInterestNotification = self->_generalInterestNotification;
  self->_generalInterestNotification = 0;

  notificationPort = self->_notificationPort;
  self->_notificationPort = 0;
}

- (id)propertiesForXPC
{
  v3 = objc_opt_class();
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [v3 diagnosticInfoForService:service];

  v6 = [v5 objectForKeyedSubscript:@"PortRole"];
  if (!v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
    goto LABEL_13;
  }

  v7 = v6;
  intValue = [v6 intValue];
  if (intValue > 1)
  {
    if (intValue == 2)
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = 3;
    }

    else
    {
      if (intValue != 3)
      {
        goto LABEL_13;
      }

      v9 = MEMORY[0x277CCABB0];
      v10 = 4;
    }
  }

  else if (intValue)
  {
    if (intValue != 1)
    {
      goto LABEL_13;
    }

    v9 = MEMORY[0x277CCABB0];
    v10 = 2;
  }

  else
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = 1;
  }

  v11 = [v9 numberWithInt:v10];

  v7 = v11;
LABEL_13:
  [v5 setObject:v7 forKeyedSubscript:@"PortRole"];

  return v5;
}

+ (id)diagnosticInfoForService:(id)service
{
  v3 = MEMORY[0x277CBEB38];
  serviceCopy = service;
  dictionary = [v3 dictionary];
  ioClassName = [serviceCopy ioClassName];
  [dictionary setObject:ioClassName forKeyedSubscript:@"ClassName"];

  iodProperties = [serviceCopy iodProperties];

  [dictionary addEntriesFromDictionary:iodProperties];
  [dictionary removeObjectForKey:@"IOUserClientClass"];
  [dictionary removeObjectForKey:@"IOGeneralInterest"];
  [dictionary removeObjectForKey:@"SourceMACAddress"];
  [dictionary removeObjectForKey:@"DestinationMACAddress"];
  [dictionary removeObjectForKey:@"SourceIPAddress"];
  [dictionary removeObjectForKey:@"SourceIPMask"];
  [dictionary removeObjectForKey:@"DestinationIPAddress"];

  return dictionary;
}

- (id)getMetrics
{
  v2 = [[_TSF_TSDPortMetrics alloc] initWithPort:self];

  return v2;
}

- (id)getMetricsWithDelta:(id)delta
{
  deltaCopy = delta;
  getMetrics = [(_TSF_TSDgPTPPort *)self getMetrics];
  v6 = [getMetrics getDelta:deltaCopy];

  return v6;
}

- (void)initWithService:pid:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:pid:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:pid:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:pid:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)diagnosticInfoForClockIdentifier:(void *)a1 andPortNumber:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
  v7 = *MEMORY[0x277D85DE8];
}

@end