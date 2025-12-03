@interface TFLogConfiguration
+ (id)defaultConfiguration;
- (OS_os_log)generatedLogger;
- (TFLogConfiguration)initWithSubsystem:(id)subsystem category:(id)category;
@end

@implementation TFLogConfiguration

- (TFLogConfiguration)initWithSubsystem:(id)subsystem category:(id)category
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  v15.receiver = self;
  v15.super_class = TFLogConfiguration;
  v9 = [(TFLogConfiguration *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subsystem, subsystem);
    objc_storeStrong(&v10->_category, category);
    internalLogger = v10->_internalLogger;
    v10->_internalLogger = 0;

    v12 = dispatch_queue_create("com.apple.TestFlightCore.TFLogConfiguration", MEMORY[0x277D85CD8]);
    internalLoggerAccessQueue = v10->_internalLoggerAccessQueue;
    v10->_internalLoggerAccessQueue = v12;
  }

  return v10;
}

+ (id)defaultConfiguration
{
  if (defaultConfiguration_onceToken != -1)
  {
    +[TFLogConfiguration defaultConfiguration];
  }

  v3 = defaultConfiguration_configuration;

  return v3;
}

uint64_t __42__TFLogConfiguration_defaultConfiguration__block_invoke()
{
  defaultConfiguration_configuration = [[TFLogConfiguration alloc] initWithSubsystem:@"com.apple.TestFlightCore" category:@"default"];

  return MEMORY[0x2821F96F8]();
}

- (OS_os_log)generatedLogger
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  internalLoggerAccessQueue = [(TFLogConfiguration *)self internalLoggerAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TFLogConfiguration_generatedLogger__block_invoke;
  block[3] = &unk_279D98220;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(internalLoggerAccessQueue, block);

  v4 = v11[5];
  if (!v4)
  {
    internalLoggerAccessQueue2 = [(TFLogConfiguration *)self internalLoggerAccessQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__TFLogConfiguration_generatedLogger__block_invoke_2;
    v8[3] = &unk_279D98220;
    v8[4] = self;
    v8[5] = &v10;
    dispatch_barrier_sync(internalLoggerAccessQueue2, v8);

    v4 = v11[5];
  }

  v6 = v4;
  _Block_object_dispose(&v10, 8);

  return v6;
}

uint64_t __37__TFLogConfiguration_generatedLogger__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) internalLogger];

  return MEMORY[0x2821F96F8]();
}

void __37__TFLogConfiguration_generatedLogger__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalLogger];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(a1 + 32) subsystem];
    v6 = [v5 UTF8String];
    v7 = [*(a1 + 32) category];
    v8 = os_log_create(v6, [v7 UTF8String]);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(a1 + 32);
    v12 = *(*(*(a1 + 40) + 8) + 40);

    [v11 setInternalLogger:v12];
  }
}

@end