@interface SPIPowerLogger(SiriTTSService_Bridge)
+ (id)loggerForCurrentProcess;
@end

@implementation SPIPowerLogger(SiriTTSService_Bridge)

+ (id)loggerForCurrentProcess
{
  v0 = [objc_alloc(MEMORY[0x1E69D2760]) initWithCurrentProcess];

  return v0;
}

@end