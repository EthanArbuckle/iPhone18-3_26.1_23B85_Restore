@interface PLIOKitOperatorComposition
+ (id)snapshotFromIOEntry:(unsigned int)entry;
+ (id)snapshotFromIOEntry:(unsigned int)entry forKey:(id)key;
+ (id)snapshotFromIOEntry:(unsigned int)entry forKeys:(id)keys;
- (PLIOKitOperatorComposition)initWithOperator:(id)operator forDynamicServiceClass:(id)class forNotificationType:(char)type[128] withMatchBlock:(id)block;
- (PLIOKitOperatorComposition)initWithOperator:(id)operator forService:(id)service;
- (PLIOKitOperatorComposition)initWithOperator:(id)operator forService:(id)service withBlock:(id)block;
- (PLIOKitOperatorComposition)initWithOperator:(id)operator forServiceClass:(id)class;
- (PLIOKitOperatorComposition)initWithOperator:(id)operator forServiceClass:(id)class withBlock:(id)block;
- (id)properties;
- (id)propertiesForKey:(id)key;
- (id)propertiesForKeys:(id)keys;
- (void)dealloc;
@end

@implementation PLIOKitOperatorComposition

- (id)properties
{
  service = [(PLIOKitOperatorComposition *)self service];

  return [(PLIOKitOperatorComposition *)self propertiesFromIOEntry:service];
}

+ (id)snapshotFromIOEntry:(unsigned int)entry forKey:(id)key
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, key, *MEMORY[0x1E695E480], 0);

  return CFProperty;
}

+ (id)snapshotFromIOEntry:(unsigned int)entry forKeys:(id)keys
{
  v22 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = keysCopy;
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
        CFProperty = IORegistryEntryCreateCFProperty(entry, v13, v11, 0);
        if (CFProperty)
        {
          [dictionary setObject:CFProperty forKeyedSubscript:{v13, v17}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (id)snapshotFromIOEntry:(unsigned int)entry
{
  properties = 0;
  IORegistryEntryCreateCFProperties(entry, &properties, 0, 0);
  v3 = properties;

  return v3;
}

- (PLIOKitOperatorComposition)initWithOperator:(id)operator forService:(id)service
{
  v27[1] = *MEMORY[0x1E69E9840];
  operatorCopy = operator;
  serviceCopy = service;
  v23.receiver = self;
  v23.super_class = PLIOKitOperatorComposition;
  v9 = [(PLIOKitOperatorComposition *)&v23 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v9->_operator, operator);
  objc_storeStrong(&v10->_serviceName, service);
  v11 = *MEMORY[0x1E696CD68];
  v10->_ioNotifyPort = IONotificationPortCreate(*MEMORY[0x1E696CD68]);
  ioNotifyPort = [(PLIOKitOperatorComposition *)v10 ioNotifyPort];
  workQueue = [operatorCopy workQueue];
  IONotificationPortSetDispatchQueue(ioNotifyPort, workQueue);

  if (![serviceCopy caseInsensitiveCompare:@"MainDisplay"])
  {
    IOMobileFramebufferGetMainDisplay();
    goto LABEL_10;
  }

  if (!strcmp([serviceCopy UTF8String], "backlight-control"))
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

  serviceName = [(PLIOKitOperatorComposition *)v10 serviceName];
  v15 = IOServiceMatching([serviceName UTF8String]);

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

- (PLIOKitOperatorComposition)initWithOperator:(id)operator forServiceClass:(id)class
{
  operatorCopy = operator;
  classCopy = class;
  v14.receiver = self;
  v14.super_class = PLIOKitOperatorComposition;
  v9 = [(PLIOKitOperatorComposition *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_operator, operator);
    objc_storeStrong(&v10->_serviceClassName, class);
    v10->_service = 0;
    v10->_ioNotifyPort = IONotificationPortCreate(*MEMORY[0x1E696CD68]);
    ioNotifyPort = [(PLIOKitOperatorComposition *)v10 ioNotifyPort];
    workQueue = [operatorCopy workQueue];
    IONotificationPortSetDispatchQueue(ioNotifyPort, workQueue);
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

- (PLIOKitOperatorComposition)initWithOperator:(id)operator forService:(id)service withBlock:(id)block
{
  blockCopy = block;
  v9 = [(PLIOKitOperatorComposition *)self initWithOperator:operator forService:service];
  if (!v9)
  {
LABEL_18:
    v23 = v9;
    goto LABEL_19;
  }

  v10 = MEMORY[0x1DA71B0D0](blockCopy);
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
        operator = [(PLIOKitOperatorComposition *)v9 operator];
        className = [operator className];
        v28 = [v25 stringWithFormat:@"%@: %@ is setup", className, v9->_serviceName];

        v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLIOKitOperatorComposition.m"];
        lastPathComponent = [v29 lastPathComponent];
        v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLIOKitOperatorComposition initWithOperator:forService:withBlock:]"];
        [PLCoreStorage logMessage:v28 fromFile:lastPathComponent fromFunction:v31 fromLineNumber:148];

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
      operator2 = [(PLIOKitOperatorComposition *)v9 operator];
      className2 = [operator2 className];
      v18 = [v15 stringWithFormat:@"%@: Error calling IOServiceAddInterestNotification (0x%08x) for service %@", className2, v12, v9->_serviceName];

      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLIOKitOperatorComposition.m"];
      lastPathComponent2 = [v19 lastPathComponent];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLIOKitOperatorComposition initWithOperator:forService:withBlock:]"];
      [PLCoreStorage logMessage:v18 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:145];

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

- (PLIOKitOperatorComposition)initWithOperator:(id)operator forServiceClass:(id)class withBlock:(id)block
{
  classCopy = class;
  blockCopy = block;
  v10 = [(PLIOKitOperatorComposition *)self initWithOperator:operator forServiceClass:classCopy];
  if (!v10)
  {
LABEL_9:
    v20 = v10;
    goto LABEL_10;
  }

  v11 = MEMORY[0x1DA71B0D0](blockCopy);
  operatorBlock = v10->_operatorBlock;
  v10->_operatorBlock = v11;

  v10->_notificationRef = 0;
  notification = 0;
  ioNotifyPort = v10->_ioNotifyPort;
  v14 = IOServiceMatching([classCopy UTF8String]);
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

- (PLIOKitOperatorComposition)initWithOperator:(id)operator forDynamicServiceClass:(id)class forNotificationType:(char)type[128] withMatchBlock:(id)block
{
  blockCopy = block;
  classCopy = class;
  v12 = [(PLIOKitOperatorComposition *)self initWithOperator:operator forServiceClass:classCopy];
  v13 = MEMORY[0x1DA71B0D0](blockCopy);

  matchBlock = v12->_matchBlock;
  v12->_matchBlock = v13;

  v12->_notificationRef = 0;
  v15 = IOServiceMatching([classCopy UTF8String]);
  LODWORD(self) = [classCopy isEqualToString:@"AFKEndpointInterface"];

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

  if (IOServiceAddMatchingNotification(v12->_ioNotifyPort, type, v15, applyIOIterator, v12, &v12->_iterator))
  {
    _os_assumes_log();
  }

  else
  {
    operator = [(PLIOKitOperatorComposition *)v12 operator];
    workQueue = [operator workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __105__PLIOKitOperatorComposition_initWithOperator_forDynamicServiceClass_forNotificationType_withMatchBlock___block_invoke;
    block[3] = &unk_1E85190B8;
    v21 = v12;
    dispatch_async(workQueue, block);
  }

  return v12;
}

void __105__PLIOKitOperatorComposition_initWithOperator_forDynamicServiceClass_forNotificationType_withMatchBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 iterator];

  applyIOIterator(v1, v2);
}

- (id)propertiesForKeys:(id)keys
{
  keysCopy = keys;
  v5 = [PLIOKitOperatorComposition snapshotFromIOEntry:[(PLIOKitOperatorComposition *)self service] forKeys:keysCopy];

  return v5;
}

- (id)propertiesForKey:(id)key
{
  keyCopy = key;
  v5 = [(PLIOKitOperatorComposition *)self propertiesFromIOEntry:[(PLIOKitOperatorComposition *)self service] forKey:keyCopy];

  return v5;
}

@end