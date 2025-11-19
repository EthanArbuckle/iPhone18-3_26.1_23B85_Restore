@interface RCPVirtualHIDService
+ (id)serviceWithIdentifier:(id)a3 properties:(id)a4;
- (BOOL)setProperty:(id)a3 forKey:(id)a4 forService:(id)a5;
- (NSString)description;
- (RCPVirtualHIDService)initWithIdentifier:(id)a3 properties:(id)a4;
- (id)propertyForKey:(id)a3 forService:(id)a4;
- (void)notification:(int64_t)a3 withProperty:(id)a4 forService:(id)a5;
- (void)postHIDEvent:(__IOHIDEvent *)a3;
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

  v11 = [v9 unsignedIntValue];
  v12 = [v10 unsignedIntValue];
  if (v6)
  {
    v13 = v6;
LABEL_24:
    v15 = v13;
    goto LABEL_25;
  }

  v14 = v12 | (v11 << 16);
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
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%.02X/0x%.02X: (%@) %@", v11, v12, v8, v15];

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

+ (id)serviceWithIdentifier:(id)a3 properties:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithIdentifier:v7 properties:v6];

  return v8;
}

- (RCPVirtualHIDService)initWithIdentifier:(id)a3 properties:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = RCPVirtualHIDService;
  v8 = [(RCPVirtualHIDService *)&v33 init];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = *(v8 + 6);
    *(v8 + 6) = v9;

    v11 = [v7 properties];
    v12 = *(v8 + 7);
    *(v8 + 7) = v11;

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

    v19 = [MEMORY[0x277CF0CA8] sharedInstance];
    v20 = [v19 deviceClass];

    if (v20 || _AXSAssistiveTouchEnabled())
    {
      if ([v7 sendsMousePointerEvents])
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
      if (![v7 sendsMousePointerEvents])
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

- (void)postHIDEvent:(__IOHIDEvent *)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_readyForPointerEvents && IOHIDEventGetType() == 17)
  {
    v5 = RCPLogPlayback();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = self;
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

  [(HIDVirtualEventService *)self->_eventService dispatchEvent:a3];
}

- (id)propertyForKey:(id)a3 forService:(id)a4
{
  v5 = a3;
  v6 = _RCPIsAllowlistedProperty(v5);
  v7 = 56;
  if (v6)
  {
    v7 = 64;
  }

  v8 = [*(&self->super.isa + v7) objectForKeyedSubscript:v5];

  return v8;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4 forService:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (_RCPIsAllowlistedProperty(v8))
  {
    [(NSMutableDictionary *)self->_dynamicMetaProperties setObject:v7 forKey:v8];
  }

  if ([v8 isEqual:@"DeviceOpenedByEventSystem"])
  {
    self->_isOpen = [v7 BOOLValue];
    waitForEventSystemGroup = self->_waitForEventSystemGroup;
LABEL_5:
    dispatch_group_leave(waitForEventSystemGroup);
    goto LABEL_13;
  }

  if (![v8 isEqual:@"BKReadyToReceivePointerEvents"])
  {
    [v8 isEqual:@"BatchInterval"];
    goto LABEL_13;
  }

  v10 = [v7 BOOLValue];
  v11 = RCPLogPlayback();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109378;
    v13[1] = v10;
    v14 = 2112;
    v15 = self;
    _os_log_impl(&dword_2619DE000, v11, OS_LOG_TYPE_DEFAULT, "--> pointer ready: (%{BOOL}u): %@", v13, 0x12u);
  }

  if (v10 && !self->_readyForPointerEvents)
  {
    self->_readyForPointerEvents = 1;
    waitForEventSystemGroup = self->_waitForPointerReadyGroup;
    goto LABEL_5;
  }

LABEL_13:

  return 1;
}

- (void)notification:(int64_t)a3 withProperty:(id)a4 forService:(id)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = RCPLogPlayback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"terminated";
    if (a3 == 10)
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