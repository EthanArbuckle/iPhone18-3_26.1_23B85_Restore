@interface SPIPowerLogger
+ (id)_staticWrappedInitWithCurrentProcess;
- (SPIPowerLogger)initWithCurrentProcess;
- (id)captureSnapshot;
@end

@implementation SPIPowerLogger

- (SPIPowerLogger)initWithCurrentProcess
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 processIdentifier];

  return [(SPIPowerLogger *)self initWithProcessIdentifier:v4];
}

+ (id)_staticWrappedInitWithCurrentProcess
{
  v2 = [[SPIPowerLogger alloc] initWithCurrentProcess];

  return v2;
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