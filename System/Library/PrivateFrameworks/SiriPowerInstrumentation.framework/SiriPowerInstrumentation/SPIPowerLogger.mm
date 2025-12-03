@interface SPIPowerLogger
+ (id)_staticWrappedInitWithCurrentProcess;
- (SPIPowerLogger)initWithCurrentProcess;
- (id)captureSnapshot;
@end

@implementation SPIPowerLogger

- (SPIPowerLogger)initWithCurrentProcess
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processIdentifier = [processInfo processIdentifier];

  return [(SPIPowerLogger *)self initWithProcessIdentifier:processIdentifier];
}

+ (id)_staticWrappedInitWithCurrentProcess
{
  initWithCurrentProcess = [[SPIPowerLogger alloc] initWithCurrentProcess];

  return initWithCurrentProcess;
}

- (id)captureSnapshot
{
  v10 = 0uLL;
  v11 = 0;
  v3 = mach_absolute_time();
  v4 = [SPIProcessUtils getUsageForPid:[(SPIPowerLogger *)self pid] withOutput:&v10];
  v5 = 0;
  if (!v4)
  {
    v6 = [SPIPowerLoggerSnapshot alloc];
    v8 = v10;
    v9 = v11;
    v5 = [(SPIPowerLoggerSnapshot *)v6 initWithPowerLogger:self usage:&v8 captureTimestamp:v3];
  }

  return v5;
}

@end