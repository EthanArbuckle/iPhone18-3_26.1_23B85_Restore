@interface SSMetricsLogEvent
+ (id)_stringFromLogLevel:(unint64_t)level;
+ (unint64_t)_logLevelFromString:(id)string;
- (SSMetricsLogEvent)init;
- (id)description;
- (unint64_t)logLevel;
- (void)setLogLevel:(unint64_t)level;
@end

@implementation SSMetricsLogEvent

- (SSMetricsLogEvent)init
{
  v5.receiver = self;
  v5.super_class = SSMetricsLogEvent;
  v2 = [(SSMetricsMutableEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setEventType:@"log"];
    [(SSMetricsLogEvent *)v3 setLogLevel:2];
    [(SSMetricsMutableEvent *)v3 setTopic:@"xp_amp_appstore_log"];
  }

  return v3;
}

- (unint64_t)logLevel
{
  v3 = objc_opt_class();
  v4 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"level"];
  v5 = [v3 _logLevelFromString:v4];

  return v5;
}

- (void)setLogLevel:(unint64_t)level
{
  v4 = [objc_opt_class() _stringFromLogLevel:level];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"level"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = SSMetricsLogEvent;
  v4 = [(SSMetricsLogEvent *)&v9 description];
  [v3 appendString:v4];

  v5 = [objc_opt_class() _stringFromLogLevel:{-[SSMetricsLogEvent logLevel](self, "logLevel")}];
  [v3 appendFormat:@"\nlogLevel = %@", v5];

  logSubsystem = [(SSMetricsLogEvent *)self logSubsystem];
  [v3 appendFormat:@"\nlogSubsystem = %@", logSubsystem];

  message = [(SSMetricsLogEvent *)self message];
  [v3 appendFormat:@"\nmessage = %@", message];

  return v3;
}

+ (unint64_t)_logLevelFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"debug"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"error"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"warn"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

+ (id)_stringFromLogLevel:(unint64_t)level
{
  if (level > 3)
  {
    return @"info";
  }

  else
  {
    return off_1E84B3AA8[level];
  }
}

@end