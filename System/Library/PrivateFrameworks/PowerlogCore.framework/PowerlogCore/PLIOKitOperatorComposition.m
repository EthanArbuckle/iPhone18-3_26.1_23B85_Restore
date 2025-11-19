@interface PLIOKitOperatorComposition
+ (id)snapshotFromIOEntry:(unsigned int)a3;
+ (id)snapshotFromIOEntry:(unsigned int)a3 forKey:(id)a4;
+ (id)snapshotFromIOEntry:(unsigned int)a3 forKeys:(id)a4;
- (PLIOKitOperatorComposition)initWithOperator:(id)a3 forDynamicServiceClass:(id)a4 forNotificationType:(char)a5[128] withMatchBlock:(id)a6;
- (PLIOKitOperatorComposition)initWithOperator:(id)a3 forService:(id)a4;
- (PLIOKitOperatorComposition)initWithOperator:(id)a3 forService:(id)a4 withBlock:(id)a5;
- (PLIOKitOperatorComposition)initWithOperator:(id)a3 forServiceClass:(id)a4;
- (PLIOKitOperatorComposition)initWithOperator:(id)a3 forServiceClass:(id)a4 withBlock:(id)a5;
- (id)properties;
- (id)propertiesForKey:(id)a3;
- (id)propertiesForKeys:(id)a3;
- (void)dealloc;
@end

@implementation PLIOKitOperatorComposition

- (id)properties
{
  v3 = [(PLIOKitOperatorComposition *)self service];

  return [(PLIOKitOperatorComposition *)self propertiesFromIOEntry:v3];
}

+ (id)snapshotFromIOEntry:(unsigned int)a3 forKey:(id)a4
{
  CFProperty = IORegistryEntryCreateCFProperty(a3, a4, *MEMORY[0x1E695E480], 0);

  return CFProperty;
}

+ (id)snapshotFromIOEntry:(unsigned int)a3 forKeys:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = *MEMORY[0x1E695E480];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        CFProperty = IORegistryEntryCreateCFProperty(a3, v13, v11, 0);
        if (CFProperty)
        {
          [v6 setObject:CFProperty forKeyedSubscript:{v13, v17}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)snapshotFromIOEntry:(unsigned int)a3
{
  properties = 0;
  IORegistryEntryCreateCFProperties(a3, &properties, 0, 0);
  v3 = properties;

  return v3;
}

- (PLIOKitOperatorComposition)initWithOperator:(id)a3 forService:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = PLIOKitOperatorComposition;
  v9 = [(PLIOKitOperatorComposition *)&v23 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v9->_operator, a3);
  objc_storeStrong(&v10->_serviceName, a4);
  v11 = *MEMORY[0x1E696CD68];
  v10->_ioNotifyPort = IONotificationPortCreate(*MEMORY[0x1E696CD68]);
  v12 = [(PLIOKitOperatorComposition *)v10 ioNotifyPort];
  v13 = [v7 workQueue];
  IONotificationPortSetDispatchQueue(v12, v13);

  if (![v8 caseInsensitiveCompare:@"MainDisplay"])
  {
    IOMobileFramebufferGetMainDisplay();
    goto LABEL_10;
  }

  if (!strcmp([v8 UTF8String], "backlight-control"))
  {
    v26 = @"IOPropertyMatch";
    v24 = @"backlight-control";
    v25 = *MEMORY[0x1E695E4D0];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v27[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

    v16 = v11;
    v17 = v19;
    goto LABEL_8;
  }

  v14 = [(PLIOKitOperatorComposition *)v10 serviceName];
  v15 = IOServiceMatching([v14 UTF8String]);

  if (!v15)
  {
LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v15;
LABEL_8:
  v10->_service = IOServiceGetMatchingService(v16, v17);
LABEL_9:
  v20 = v10;
LABEL_11:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (PLIOKitOperatorComposition)initWithOperator:(id)a3 forServiceClass:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PLIOKitOperatorComposition;
  v9 = [(PLIOKitOperatorComposition *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_operator, a3);
    objc_storeStrong(&v10->_serviceClassName, a4);
    v10->_service = 0;
    v10->_ioNotifyPort = IONotificationPortCreate(*MEMORY[0x1E696CD68]);
    v11 = [(PLIOKitOperatorComposition *)v10 ioNotifyPort];
    v12 = [v7 workQueue];
    IONotificationPortSetDispatchQueue(v11, v12);
  }

  return v10;
}

- (void)dealloc
{
  ioNotifyPort = self->_ioNotifyPort;
  if (ioNotifyPort)
  {
    IONotificationPortDestroy(ioNotifyPort);
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
  }

  v5.receiver = self;
  v5.super_class = PLIOKitOperatorComposition;
  [(PLIOKitOperatorComposition *)&v5 dealloc];
}

- (PLIOKitOperatorComposition)initWithOperator:(id)a3 forService:(id)a4 withBlock:(id)a5
{
  v8 = a5;
  v9 = [(PLIOKitOperatorComposition *)self initWithOperator:a3 forService:a4];
  if (!v9)
  {
LABEL_18:
    v23 = v9;
    goto LABEL_19;
  }

  v10 = MEMORY[0x1DA71B0D0](v8);
  operatorBlock = v9->_operatorBlock;
  v9->_operatorBlock = v10;

  v9->_notificationRef = 0;
  v12 = IOServiceAddInterestNotification([(PLIOKitOperatorComposition *)v9 ioNotifyPort], [(PLIOKitOperatorComposition *)v9 service], "IOGeneralInterest", ioCallBack, v9, &v9->_notificationRef);
  v13 = +[PLDefaults debugEnabled];
  if (!v12)
  {
    if (v13)
    {
      v24 = objc_opt_class();
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __68__PLIOKitOperatorComposition_initWithOperator_forService_withBlock___block_invoke_34;
      v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v34[4] = v24;
      if (initWithOperator_forService_withBlock__defaultOnce_32 != -1)
      {
        dispatch_once(&initWithOperator_forService_withBlock__defaultOnce_32, v34);
      }

      if (initWithOperator_forService_withBlock__classDebugEnabled_33 == 1)
      {
        v25 = MEMORY[0x1E696AEC0];
        v26 = [(PLIOKitOperatorComposition *)v9 operator];
        v27 = [v26 className];
        v28 = [v25 stringWithFormat:@"%@: %@ is setup", v27, v9->_serviceName];

        v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLIOKitOperatorComposition.m"];
        v30 = [v29 lastPathComponent];
        v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLIOKitOperatorComposition initWithOperator:forService:withBlock:]"];
        [PLCoreStorage logMessage:v28 fromFile:v30 fromFunction:v31 fromLineNumber:148];

        v32 = PLLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          [(PLSubmissionFileSP *)v28 copyAndPrepareLog];
        }
      }
    }

    goto LABEL_18;
  }

  if (v13)
  {
    v14 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PLIOKitOperatorComposition_initWithOperator_forService_withBlock___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v14;
    if (initWithOperator_forService_withBlock__defaultOnce != -1)
    {
      dispatch_once(&initWithOperator_forService_withBlock__defaultOnce, block);
    }

    if (initWithOperator_forService_withBlock__classDebugEnabled == 1)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = [(PLIOKitOperatorComposition *)v9 operator];
      v17 = [v16 className];
      v18 = [v15 stringWithFormat:@"%@: Error calling IOServiceAddInterestNotification (0x%08x) for service %@", v17, v12, v9->_serviceName];

      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLIOKitOperatorComposition.m"];
      v20 = [v19 lastPathComponent];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLIOKitOperatorComposition initWithOperator:forService:withBlock:]"];
      [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:145];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [(PLSubmissionFileSP *)v18 copyAndPrepareLog];
      }
    }
  }

  v23 = 0;
LABEL_19:

  return v23;
}

BOOL __68__PLIOKitOperatorComposition_initWithOperator_forService_withBlock___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  initWithOperator_forService_withBlock__classDebugEnabled = result;
  return result;
}

BOOL __68__PLIOKitOperatorComposition_initWithOperator_forService_withBlock___block_invoke_34(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  initWithOperator_forService_withBlock__classDebugEnabled_33 = result;
  return result;
}

- (PLIOKitOperatorComposition)initWithOperator:(id)a3 forServiceClass:(id)a4 withBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(PLIOKitOperatorComposition *)self initWithOperator:a3 forServiceClass:v8];
  if (!v10)
  {
LABEL_9:
    v20 = v10;
    goto LABEL_10;
  }

  v11 = MEMORY[0x1DA71B0D0](v9);
  operatorBlock = v10->_operatorBlock;
  v10->_operatorBlock = v11;

  v10->_notificationRef = 0;
  notification = 0;
  ioNotifyPort = v10->_ioNotifyPort;
  v14 = IOServiceMatching([v8 UTF8String]);
  v15 = IOServiceAddMatchingNotification(ioNotifyPort, "IOServiceFirstPublish", v14, eventManagerMatching, v10->_ioNotifyPort, &notification);
  if (!v15)
  {
    v16 = "could not register for IOAccessoryManager interest: %s\n";
    while (1)
    {
      v17 = IOIteratorNext(notification);
      v10->_service = v17;
      if (!v17)
      {
        break;
      }

      v15 = IOServiceAddInterestNotification([(PLIOKitOperatorComposition *)v10 ioNotifyPort], [(PLIOKitOperatorComposition *)v10 service], "IOGeneralInterest", ioCallBack, v10, &v10->_notificationRef);
      if (v15)
      {
        goto LABEL_7;
      }
    }

    IOObjectRelease(notification);
    goto LABEL_9;
  }

  v16 = "could not register for IOAccessoryManager matching: %s\n";
LABEL_7:
  v18 = *MEMORY[0x1E69E9848];
  v19 = mach_error_string(v15);
  fprintf(v18, v16, v19);
  v20 = 0;
LABEL_10:

  return v20;
}

- (PLIOKitOperatorComposition)initWithOperator:(id)a3 forDynamicServiceClass:(id)a4 forNotificationType:(char)a5[128] withMatchBlock:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [(PLIOKitOperatorComposition *)self initWithOperator:a3 forServiceClass:v11];
  v13 = MEMORY[0x1DA71B0D0](v10);

  matchBlock = v12->_matchBlock;
  v12->_matchBlock = v13;

  v12->_notificationRef = 0;
  v15 = IOServiceMatching([v11 UTF8String]);
  LODWORD(self) = [v11 isEqualToString:@"AFKEndpointInterface"];

  if (self)
  {
    if ([PLPlatform kPLDeviceClassIsOneOf:302025, 302028, 302026, 302029, 0])
    {
      v16 = &unk_1F540CC48;
    }

    else
    {
      v16 = &unk_1F540CC70;
    }

    [(__CFDictionary *)v15 setObject:v16 forKeyedSubscript:@"IOPropertyMatch"];
    [(__CFDictionary *)v15 setObject:@"powerlog-service" forKeyedSubscript:@"IONameMatch"];
  }

  if (IOServiceAddMatchingNotification(v12->_ioNotifyPort, a5, v15, applyIOIterator, v12, &v12->_iterator))
  {
    _os_assumes_log();
  }

  else
  {
    v17 = [(PLIOKitOperatorComposition *)v12 operator];
    v18 = [v17 workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __105__PLIOKitOperatorComposition_initWithOperator_forDynamicServiceClass_forNotificationType_withMatchBlock___block_invoke;
    block[3] = &unk_1E85190B8;
    v21 = v12;
    dispatch_async(v18, block);
  }

  return v12;
}

void __105__PLIOKitOperatorComposition_initWithOperator_forDynamicServiceClass_forNotificationType_withMatchBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 iterator];

  applyIOIterator(v1, v2);
}

- (id)propertiesForKeys:(id)a3
{
  v4 = a3;
  v5 = [PLIOKitOperatorComposition snapshotFromIOEntry:[(PLIOKitOperatorComposition *)self service] forKeys:v4];

  return v5;
}

- (id)propertiesForKey:(id)a3
{
  v4 = a3;
  v5 = [(PLIOKitOperatorComposition *)self propertiesFromIOEntry:[(PLIOKitOperatorComposition *)self service] forKey:v4];

  return v5;
}

@end