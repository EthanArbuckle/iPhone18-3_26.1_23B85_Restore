@interface RCPVirtualHIDService
+ (id)serviceWithIdentifier:(id)identifier properties:(id)properties;
- (BOOL)setProperty:(id)property forKey:(id)key forService:(id)service;
- (NSString)description;
- (RCPVirtualHIDService)initWithIdentifier:(id)identifier properties:(id)properties;
- (id)propertyForKey:(id)key forService:(id)service;
- (void)notification:(int64_t)notification withProperty:(id)property forService:(id)service;
- (void)postHIDEvent:(__IOHIDEvent *)event;
- (void)stop;
@end

@implementation RCPVirtualHIDService

- (NSString)description
{
  v19.receiver = self;
  v19.super_class = RCPVirtualHIDService;
  v3 = [(RCPVirtualHIDService *)&v19 description];
  identifier = self->_identifier;
  v5 = self->_propertyDictionary;
  v6 = [(NSDictionary *)v5 objectForKeyedSubscript:@"Product"];
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:@"Product"];
  v8 = [(NSDictionary *)v5 objectForKeyedSubscript:@"Transport"];
  v9 = [(NSDictionary *)v5 objectForKeyedSubscript:@"PrimaryUsagePage"];
  v10 = [(NSDictionary *)v5 objectForKeyedSubscript:@"PrimaryUsage"];

  unsignedIntValue = [v9 unsignedIntValue];
  unsignedIntValue2 = [v10 unsignedIntValue];
  if (v6)
  {
    v13 = v6;
LABEL_24:
    v15 = v13;
    goto LABEL_25;
  }

  v14 = unsignedIntValue2 | (unsignedIntValue << 16);
  if (v14 > 851971)
  {
    if (v14 > 851979)
    {
      if (v14 == 851980)
      {
        v15 = @"trackpad";
        goto LABEL_22;
      }

      if (v14 == 852000)
      {
        v15 = @"pencil digitizer";
        goto LABEL_22;
      }
    }

    else
    {
      if (v14 == 851972)
      {
        v15 = @"touchscreen digitizer";
        goto LABEL_22;
      }

      if (v14 == 851973)
      {
        v15 = @"touchpad digitizer";
        goto LABEL_22;
      }
    }
  }

  else if (v14 > 720896)
  {
    if (v14 == 720897)
    {
      v15 = @"built-in buttons";
      goto LABEL_22;
    }

    if (v14 == 851969)
    {
      v15 = @"digitizer";
      goto LABEL_22;
    }
  }

  else
  {
    if (v14 == 65538)
    {
      v15 = @"mouse";
      goto LABEL_22;
    }

    if (v14 == 65542)
    {
      v15 = @"keyboard";
LABEL_22:
      if (!v7)
      {
        goto LABEL_25;
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v15, v7];
      goto LABEL_24;
    }
  }

  if (v7)
  {
    v13 = v7;
    goto LABEL_24;
  }

  v15 = 0;
LABEL_25:
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%.02X/0x%.02X: (%@) %@", unsignedIntValue, unsignedIntValue2, v8, v15];

  v17 = [v3 stringByAppendingFormat:@" (%@) %@", identifier, v16];

  return v17;
}

- (void)stop
{
  v3 = dispatch_time(0, 100000000);
  v4 = _RCPVirtualHIDServiceQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__RCPVirtualHIDService_stop__block_invoke;
  block[3] = &unk_279AF0D10;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

+ (id)serviceWithIdentifier:(id)identifier properties:(id)properties
{
  propertiesCopy = properties;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithIdentifier:identifierCopy properties:propertiesCopy];

  return v8;
}

- (RCPVirtualHIDService)initWithIdentifier:(id)identifier properties:(id)properties
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  propertiesCopy = properties;
  v33.receiver = self;
  v33.super_class = RCPVirtualHIDService;
  v8 = [(RCPVirtualHIDService *)&v33 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    v10 = *(v8 + 6);
    *(v8 + 6) = v9;

    properties = [propertiesCopy properties];
    v12 = *(v8 + 7);
    *(v8 + 7) = properties;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = *(v8 + 8);
    *(v8 + 8) = v13;

    v15 = dispatch_group_create();
    v16 = *(v8 + 2);
    *(v8 + 2) = v15;

    dispatch_group_enter(*(v8 + 2));
    v17 = dispatch_group_create();
    v18 = *(v8 + 3);
    *(v8 + 3) = v17;

    mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
    deviceClass = [mEMORY[0x277CF0CA8] deviceClass];

    if (deviceClass || _AXSAssistiveTouchEnabled())
    {
      if ([propertiesCopy sendsMousePointerEvents])
      {
        objc_opt_class();
        if (objc_opt_respondsToSelector())
        {
          v21 = RCPLogPlayback();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v35 = v8;
            _os_log_impl(&dword_2619DE000, v21, OS_LOG_TYPE_DEFAULT, "service waiting for ready: (%{public}@)", buf, 0xCu);
          }

          *(v8 + 33) = 0;
          dispatch_group_enter(*(v8 + 3));
          goto LABEL_14;
        }
      }

      v22 = RCPLogPlayback();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 138543362;
      v35 = v8;
      v23 = "service doesn't wait for pointer ready: (%{public}@)";
    }

    else
    {
      if (![propertiesCopy sendsMousePointerEvents])
      {
        goto LABEL_13;
      }

      v22 = RCPLogPlayback();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

LABEL_13:
        *(v8 + 33) = 1;
LABEL_14:
        v24 = objc_opt_new();
        v25 = *(v8 + 5);
        *(v8 + 5) = v24;
        v26 = v24;

        v27 = _RCPVirtualHIDServiceQueue();
        [v26 setDelegate:v8];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __54__RCPVirtualHIDService_initWithIdentifier_properties___block_invoke;
        v31[3] = &unk_279AF0D10;
        v32 = v8;
        [v26 setCancelHandler:v31];
        [v26 setDispatchQueue:v27];
        [v26 activate];
        v28 = *(v8 + 2);
        v29 = dispatch_time(0, 10000000000);
        dispatch_group_wait(v28, v29);

        goto LABEL_15;
      }

      *buf = 138543362;
      v35 = v8;
      v23 = "service doesn't support pointer input: (%{public}@)";
    }

    _os_log_impl(&dword_2619DE000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
    goto LABEL_12;
  }

LABEL_15:

  return v8;
}

void __54__RCPVirtualHIDService_initWithIdentifier_properties___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = RCPLogPlayback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_2619DE000, v2, OS_LOG_TYPE_DEFAULT, "service canceled: (%{public}@)", &v4, 0xCu);
  }
}

- (void)postHIDEvent:(__IOHIDEvent *)event
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_readyForPointerEvents && IOHIDEventGetType() == 17)
  {
    v5 = RCPLogPlayback();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_2619DE000, v5, OS_LOG_TYPE_DEFAULT, "waiting for ready: (%{public}@)", &v9, 0xCu);
    }

    waitForPointerReadyGroup = self->_waitForPointerReadyGroup;
    v7 = dispatch_time(0, 5000000000);
    dispatch_group_wait(waitForPointerReadyGroup, v7);
    if (!self->_readyForPointerEvents)
    {
      v8 = RCPLogPlayback();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(RCPVirtualHIDService *)self postHIDEvent:v8];
      }
    }
  }

  [(HIDVirtualEventService *)self->_eventService dispatchEvent:event];
}

- (id)propertyForKey:(id)key forService:(id)service
{
  keyCopy = key;
  v6 = _RCPIsAllowlistedProperty(keyCopy);
  v7 = 56;
  if (v6)
  {
    v7 = 64;
  }

  v8 = [*(&self->super.isa + v7) objectForKeyedSubscript:keyCopy];

  return v8;
}

- (BOOL)setProperty:(id)property forKey:(id)key forService:(id)service
{
  v16 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  keyCopy = key;
  if (_RCPIsAllowlistedProperty(keyCopy))
  {
    [(NSMutableDictionary *)self->_dynamicMetaProperties setObject:propertyCopy forKey:keyCopy];
  }

  if ([keyCopy isEqual:@"DeviceOpenedByEventSystem"])
  {
    self->_isOpen = [propertyCopy BOOLValue];
    waitForEventSystemGroup = self->_waitForEventSystemGroup;
LABEL_5:
    dispatch_group_leave(waitForEventSystemGroup);
    goto LABEL_13;
  }

  if (![keyCopy isEqual:@"BKReadyToReceivePointerEvents"])
  {
    [keyCopy isEqual:@"BatchInterval"];
    goto LABEL_13;
  }

  bOOLValue = [propertyCopy BOOLValue];
  v11 = RCPLogPlayback();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109378;
    v13[1] = bOOLValue;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2619DE000, v11, OS_LOG_TYPE_DEFAULT, "--> pointer ready: (%{BOOL}u): %@", v13, 0x12u);
  }

  if (bOOLValue && !self->_readyForPointerEvents)
  {
    self->_readyForPointerEvents = 1;
    waitForEventSystemGroup = self->_waitForPointerReadyGroup;
    goto LABEL_5;
  }

LABEL_13:

  return 1;
}

- (void)notification:(int64_t)notification withProperty:(id)property forService:(id)service
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = RCPLogPlayback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"terminated";
    if (notification == 10)
    {
      v7 = @"enumerated";
    }

    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_2619DE000, v6, OS_LOG_TYPE_INFO, "notification:%{public}@", &v8, 0xCu);
  }
}

- (void)postHIDEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_2619DE000, a2, OS_LOG_TYPE_ERROR, "*** did not get ready notification: (%{public}@)", &v2, 0xCu);
}

@end