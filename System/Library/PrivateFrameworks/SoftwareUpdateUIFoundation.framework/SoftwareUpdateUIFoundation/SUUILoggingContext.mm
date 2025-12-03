@interface SUUILoggingContext
+ (id)analyticsLogger;
+ (id)betaUpdatesOperationLogger;
+ (id)mobileLogger;
+ (id)nerdOperationLogger;
+ (id)reactiveUILogger;
+ (id)scanOperationLogger;
+ (id)softwareUpdateUILogger;
+ (id)statefulUILogger;
+ (id)uiKitLogger;
+ (id)updateOperationLogger;
- (SUUILoggingContext)initWithCategory:(id)category;
@end

@implementation SUUILoggingContext

+ (id)analyticsLogger
{
  v5 = &analyticsLogger_loggerOnce;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_1);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = analyticsLogger_logger;

  return v2;
}

uint64_t __37__SUUILoggingContext_analyticsLogger__block_invoke()
{
  v0 = [[SUUILoggingContext alloc] initWithCategory:@"Analytics"];
  v1 = analyticsLogger_logger;
  analyticsLogger_logger = v0;
  return MEMORY[0x277D82BD8](v1);
}

+ (id)softwareUpdateUILogger
{
  v5 = &softwareUpdateUILogger_loggerOnce;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_33);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = softwareUpdateUILogger_logger;

  return v2;
}

uint64_t __44__SUUILoggingContext_softwareUpdateUILogger__block_invoke()
{
  v0 = [[SUUILoggingContext alloc] initWithCategory:@"General"];
  v1 = softwareUpdateUILogger_logger;
  softwareUpdateUILogger_logger = v0;
  return MEMORY[0x277D82BD8](v1);
}

+ (id)statefulUILogger
{
  v5 = &statefulUILogger_loggerOnce;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_35);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = statefulUILogger_logger;

  return v2;
}

uint64_t __38__SUUILoggingContext_statefulUILogger__block_invoke()
{
  v0 = [[SUUILoggingContext alloc] initWithCategory:@"StatefulUI"];
  v1 = statefulUILogger_logger;
  statefulUILogger_logger = v0;
  return MEMORY[0x277D82BD8](v1);
}

+ (id)scanOperationLogger
{
  v5 = &scanOperationLogger_loggerOnce;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_37);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = scanOperationLogger_logger;

  return v2;
}

uint64_t __41__SUUILoggingContext_scanOperationLogger__block_invoke()
{
  v0 = [[SUUILoggingContext alloc] initWithCategory:@"ScanOperation"];
  v1 = scanOperationLogger_logger;
  scanOperationLogger_logger = v0;
  return MEMORY[0x277D82BD8](v1);
}

+ (id)updateOperationLogger
{
  v5 = &updateOperationLogger_loggerOnce;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_39);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = updateOperationLogger_logger;

  return v2;
}

uint64_t __43__SUUILoggingContext_updateOperationLogger__block_invoke()
{
  v0 = [[SUUILoggingContext alloc] initWithCategory:@"UpdateOperation"];
  v1 = updateOperationLogger_logger;
  updateOperationLogger_logger = v0;
  return MEMORY[0x277D82BD8](v1);
}

+ (id)nerdOperationLogger
{
  v5 = &nerdOperationLogger_loggerOnce;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_41);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = nerdOperationLogger_logger;

  return v2;
}

uint64_t __41__SUUILoggingContext_nerdOperationLogger__block_invoke()
{
  v0 = [[SUUILoggingContext alloc] initWithCategory:@"NeRDOperation"];
  v1 = nerdOperationLogger_logger;
  nerdOperationLogger_logger = v0;
  return MEMORY[0x277D82BD8](v1);
}

+ (id)betaUpdatesOperationLogger
{
  v5 = &betaUpdatesOperationLogger_loggerOnce;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_43);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = betaUpdatesOperationLogger_logger;

  return v2;
}

uint64_t __48__SUUILoggingContext_betaUpdatesOperationLogger__block_invoke()
{
  v0 = [[SUUILoggingContext alloc] initWithCategory:@"BetaUpdatesOperation"];
  v1 = betaUpdatesOperationLogger_logger;
  betaUpdatesOperationLogger_logger = v0;
  return MEMORY[0x277D82BD8](v1);
}

+ (id)mobileLogger
{
  v5 = &mobileLogger_loggerOnce;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_45);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = mobileLogger_logger;

  return v2;
}

uint64_t __34__SUUILoggingContext_mobileLogger__block_invoke()
{
  v0 = [[SUUILoggingContext alloc] initWithCategory:@"Mobile"];
  v1 = mobileLogger_logger;
  mobileLogger_logger = v0;
  return MEMORY[0x277D82BD8](v1);
}

+ (id)reactiveUILogger
{
  v5 = &reactiveUILogger_loggerOnce;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_47);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = reactiveUILogger_logger;

  return v2;
}

uint64_t __38__SUUILoggingContext_reactiveUILogger__block_invoke()
{
  v0 = [[SUUILoggingContext alloc] initWithCategory:@"ReactiveUI"];
  v1 = reactiveUILogger_logger;
  reactiveUILogger_logger = v0;
  return MEMORY[0x277D82BD8](v1);
}

+ (id)uiKitLogger
{
  v5 = &uiKitLogger_loggerOnce;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_49);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = uiKitLogger_logger;

  return v2;
}

uint64_t __33__SUUILoggingContext_uiKitLogger__block_invoke()
{
  v0 = [[SUUILoggingContext alloc] initWithCategory:@"UIKit"];
  v1 = uiKitLogger_logger;
  uiKitLogger_logger = v0;
  return MEMORY[0x277D82BD8](v1);
}

- (SUUILoggingContext)initWithCategory:(id)category
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, category);
  v3 = selfCopy;
  selfCopy = 0;
  v12.receiver = v3;
  v12.super_class = SUUILoggingContext;
  v11 = [(SUUILoggingContext *)&v12 init];
  selfCopy = v11;
  objc_storeStrong(&selfCopy, v11);
  if (v11)
  {
    objc_storeStrong(&selfCopy->_category, location[0]);
    subsystem = [@"com.apple.SoftwareUpdateUI" UTF8String];
    v9 = location[0];
    v4 = location[0];
    v5 = os_log_create(subsystem, [v9 UTF8String]);
    oslog = selfCopy->_oslog;
    selfCopy->_oslog = v5;
    MEMORY[0x277D82BD8](oslog);
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

@end