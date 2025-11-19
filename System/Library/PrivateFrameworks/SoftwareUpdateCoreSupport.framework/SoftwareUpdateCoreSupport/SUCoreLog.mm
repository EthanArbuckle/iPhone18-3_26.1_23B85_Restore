@interface SUCoreLog
+ (id)sharedLogger;
- (SUCoreLog)initWithCategory:(id)a3;
@end

@implementation SUCoreLog

+ (id)sharedLogger
{
  if (sharedLogger_loggerOnce != -1)
  {
    +[SUCoreLog sharedLogger];
  }

  v3 = sharedLogger_logger;

  return v3;
}

uint64_t __25__SUCoreLog_sharedLogger__block_invoke()
{
  sharedLogger_logger = [[SUCoreLog alloc] initWithCategory:@"SU"];

  return MEMORY[0x1EEE66BB8]();
}

- (SUCoreLog)initWithCategory:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SUCoreLog;
  v6 = [(SUCoreLog *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, a3);
    v8 = +[SUCore sharedCore];
    v9 = [v8 commonDomain];
    v10 = os_log_create([v9 UTF8String], objc_msgSend(v5, "UTF8String"));
    oslog = v7->_oslog;
    v7->_oslog = v10;
  }

  return v7;
}

@end