@interface PLIOHIDOperatorComposition
- (PLIOHIDOperatorComposition)initWithOperator:(id)a3 forService:(id)a4;
- (PLIOHIDOperatorComposition)initWithOperator:(id)a3 forService:(id)a4 withBlock:(id)a5;
- (double)doubleForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (void)dealloc;
@end

@implementation PLIOHIDOperatorComposition

- (PLIOHIDOperatorComposition)initWithOperator:(id)a3 forService:(id)a4
{
  v58[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v56.receiver = self;
  v56.super_class = PLIOHIDOperatorComposition;
  v9 = [(PLIOHIDOperatorComposition *)&v56 init];
  if (!v9)
  {
LABEL_13:
    v33 = v9;
    goto LABEL_22;
  }

  if (initWithOperator_forService__onceToken != -1)
  {
    [PLIOHIDOperatorComposition initWithOperator:forService:];
  }

  objc_storeStrong(&v9->_operator, a3);
  objc_storeStrong(&v9->_serviceName, a4);
  v10 = *MEMORY[0x1E695E480];
  v9->_eventSystemClient = IOHIDEventSystemClientCreate();
  v58[0] = &unk_1F5405A18;
  v57[0] = @"PrimaryUsagePage";
  v57[1] = @"PrimaryUsage";
  v11 = [serviceIDs objectForKeyedSubscript:v8];
  v58[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];

  eventSystemClient = v9->_eventSystemClient;
  IOHIDEventSystemClientSetMatching();
  v14 = IOHIDEventSystemClientCopyServices(v9->_eventSystemClient);
  serviceClients = v9->_serviceClients;
  v9->_serviceClients = v14;

  v16 = [(NSArray *)v9->_serviceClients count];
  v17 = +[PLDefaults debugEnabled];
  if (v16)
  {
    if (v17)
    {
      v18 = objc_opt_class();
      block = MEMORY[0x1E69E9820];
      v51 = 3221225472;
      v52 = __58__PLIOHIDOperatorComposition_initWithOperator_forService___block_invoke_36;
      v53 = &__block_descriptor_40_e5_v8__0lu32l8;
      v54 = v18;
      if (initWithOperator_forService__defaultOnce_34 != -1)
      {
        dispatch_once(&initWithOperator_forService__defaultOnce_34, &block);
      }

      if (initWithOperator_forService__classDebugEnabled_35 == 1)
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = [(PLOperator *)v9->_operator className];
        v21 = [(NSArray *)v9->_serviceClients count];
        v22 = [v19 stringWithFormat:@"%@: %luu clients for %@", v20, v21, v8, block, v51, v52, v53, v54];

        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLIOHIDOperatorComposition.m"];
        v24 = [v23 lastPathComponent];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLIOHIDOperatorComposition initWithOperator:forService:]"];
        [PLCoreStorage logMessage:v22 fromFile:v24 fromFunction:v25 fromLineNumber:52];

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [(PLIOHIDOperatorComposition *)v22 initWithOperator:v26 forService:v27, v28, v29, v30, v31, v32];
        }
      }
    }

    goto LABEL_13;
  }

  if (v17)
  {
    v34 = objc_opt_class();
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __58__PLIOHIDOperatorComposition_initWithOperator_forService___block_invoke_27;
    v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v55[4] = v34;
    if (initWithOperator_forService__defaultOnce != -1)
    {
      dispatch_once(&initWithOperator_forService__defaultOnce, v55);
    }

    if (initWithOperator_forService__classDebugEnabled == 1)
    {
      v35 = MEMORY[0x1E696AEC0];
      v36 = [(PLOperator *)v9->_operator className];
      v37 = [v35 stringWithFormat:@"%@: no clients for %@", v36, v8];

      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLIOHIDOperatorComposition.m"];
      v39 = [v38 lastPathComponent];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLIOHIDOperatorComposition initWithOperator:forService:]"];
      [PLCoreStorage logMessage:v37 fromFile:v39 fromFunction:v40 fromLineNumber:49];

      v41 = PLLogCommon();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [(PLIOHIDOperatorComposition *)v37 initWithOperator:v41 forService:v42, v43, v44, v45, v46, v47];
      }
    }
  }

  v33 = 0;
LABEL_22:

  v48 = *MEMORY[0x1E69E9840];
  return v33;
}

void __58__PLIOHIDOperatorComposition_initWithOperator_forService___block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"AmbientLightSensor";
  v3[1] = @"AmbientLightSensorLevel";
  v4[0] = &unk_1F54059E8;
  v4[1] = &unk_1F5405A00;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = serviceIDs;
  serviceIDs = v0;

  v2 = *MEMORY[0x1E69E9840];
}

BOOL __58__PLIOHIDOperatorComposition_initWithOperator_forService___block_invoke_27(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  initWithOperator_forService__classDebugEnabled = result;
  return result;
}

BOOL __58__PLIOHIDOperatorComposition_initWithOperator_forService___block_invoke_36(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  initWithOperator_forService__classDebugEnabled_35 = result;
  return result;
}

- (PLIOHIDOperatorComposition)initWithOperator:(id)a3 forService:(id)a4 withBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = PLIOHIDOperatorComposition;
  v12 = [(PLIOHIDOperatorComposition *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operator, a3);
    objc_storeStrong(&v13->_serviceName, a4);
    v14 = MEMORY[0x1DA71B0D0](v11);
    operatorBlock = v13->_operatorBlock;
    v13->_operatorBlock = v14;

    v16 = *MEMORY[0x1E695E480];
    v17 = IOHIDEventSystemClientCreate();
    v13->_eventSystemClient = v17;
    if (v17)
    {
      v18 = [v9 workQueue];
      IOHIDEventSystemClientScheduleWithDispatchQueue();

      eventSystemClient = v13->_eventSystemClient;
      IOHIDEventSystemClientRegisterPropertyChangedCallback();
    }
  }

  return v13;
}

- (double)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = [(PLIOHIDOperatorComposition *)self serviceName];
  [v5 caseInsensitiveCompare:@"AmbientLightSensor"];

  v6 = [(PLIOHIDOperatorComposition *)self serviceClients];
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = IOHIDServiceClientCopyEvent();

  if (v8)
  {
    v9 = [serviceIDs objectForKeyedSubscript:v4];
    [v9 intValue];
    IOHIDEventGetFloatValue();
    v11 = v10;

    CFRelease(v8);
  }

  else
  {
    v11 = -1.0;
    if (+[PLDefaults debugEnabled])
    {
      v12 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43__PLIOHIDOperatorComposition_doubleForKey___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v12;
      if (doubleForKey__defaultOnce != -1)
      {
        dispatch_once(&doubleForKey__defaultOnce, block);
      }

      if (doubleForKey__classDebugEnabled == 1)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we have no event"];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLIOHIDOperatorComposition.m"];
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLIOHIDOperatorComposition doubleForKey:]"];
        [PLCoreStorage logMessage:v13 fromFile:v15 fromFunction:v16 fromLineNumber:88];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [(PLIOHIDOperatorComposition *)v13 initWithOperator:v17 forService:v18, v19, v20, v21, v22, v23];
        }
      }
    }
  }

  return v11;
}

BOOL __43__PLIOHIDOperatorComposition_doubleForKey___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  doubleForKey__classDebugEnabled = result;
  return result;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = IOHIDEventSystemClientCopyProperty([(PLIOHIDOperatorComposition *)self eventSystemClient], v4);

  if (v5)
  {
    v6 = CFGetTypeID(v5);
    if (v6 != CFDictionaryGetTypeID())
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  eventSystemClient = self->_eventSystemClient;
  if (eventSystemClient)
  {
    CFRelease(eventSystemClient);
  }

  v4.receiver = self;
  v4.super_class = PLIOHIDOperatorComposition;
  [(PLIOHIDOperatorComposition *)&v4 dealloc];
}

- (void)initWithOperator:(uint64_t)a3 forService:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1D8611000, a2, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end