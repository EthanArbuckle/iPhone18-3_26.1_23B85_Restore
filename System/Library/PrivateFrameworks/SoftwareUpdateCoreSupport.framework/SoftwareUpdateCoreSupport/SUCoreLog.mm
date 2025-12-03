@interface SUCoreLog
+ (id)sharedLogger;
- (SUCoreLog)initWithCategory:(id)category;
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

- (SUCoreLog)initWithCategory:(id)category
{
  categoryCopy = category;
  v13.receiver = self;
  v13.super_class = SUCoreLog;
  v6 = [(SUCoreLog *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, category);
    v8 = +[SUCore sharedCore];
    commonDomain = [v8 commonDomain];
    v10 = os_log_create([commonDomain UTF8String], objc_msgSend(categoryCopy, "UTF8String"));
    oslog = v7->_oslog;
    v7->_oslog = v10;
  }

  return v7;
}

@end