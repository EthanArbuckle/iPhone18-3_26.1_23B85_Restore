@interface SSMetricsMutableEvent
- (SSMetricsMutableEvent)initWithBodyDictionary:(id)a3;
- (double)originalTime;
- (id)decorateReportingURL:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)propertyForBodyKey:(id)a3;
- (void)appendPropertiesToBody:(id)a3;
- (void)setCanaryIdentifier:(id)a3;
- (void)setOriginalTime:(double)a3;
- (void)setOriginalTimeUsingDate:(id)a3;
- (void)setProperty:(id)a3 forBodyKey:(id)a4;
@end

@implementation SSMetricsMutableEvent

- (SSMetricsMutableEvent)initWithBodyDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SSMetricsMutableEvent;
  v5 = [(SSMetricsMutableEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    mutableBody = v5->_mutableBody;
    v5->_mutableBody = v6;

    if (initWithBodyDictionary__onceToken != -1)
    {
      [SSMetricsMutableEvent initWithBodyDictionary:];
    }

    [(SSMetricsMutableEvent *)v5 setProperty:initWithBodyDictionary____bundleVersion forBodyKey:@"appVersion"];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    [(SSMetricsMutableEvent *)v5 setProperty:v8 forBodyKey:@"baseVersion"];

    [(SSMetricsMutableEvent *)v5 setProperty:initWithBodyDictionary____osVersion forBodyKey:@"osVersion"];
    v9 = [objc_opt_class() globalEventCanary];
    v10 = [objc_opt_class() globalEventCanary];

    if (v10)
    {
      [(SSMetricsMutableEvent *)v5 setProperty:v9 forBodyKey:@"canary"];
    }

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    [(SSMetricsMutableEvent *)v5 setProperty:v11 forBodyKey:@"eventVersion"];

    v12 = [MEMORY[0x1E695DF00] date];
    [(SSMetricsMutableEvent *)v5 setOriginalTimeUsingDate:v12];
  }

  return v5;
}

void __48__SSMetricsMutableEvent_initWithBodyDictionary___block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
  if (InfoDictionary && (Value = CFDictionaryGetValue(InfoDictionary, *MEMORY[0x1E695E500])) != 0)
  {
    initWithBodyDictionary____bundleVersion = CFRetain(Value);
    if (initWithBodyDictionary____bundleVersion)
    {
      goto LABEL_7;
    }
  }

  else if (initWithBodyDictionary____bundleVersion)
  {
    goto LABEL_7;
  }

  initWithBodyDictionary____bundleVersion = @"1.0";
  CFRetain(@"1.0");
LABEL_7:
  v5 = +[SSDevice currentDevice];
  v3 = [v5 productVersion];
  v4 = initWithBodyDictionary____osVersion;
  initWithBodyDictionary____osVersion = v3;
}

- (double)originalTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"eventTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setOriginalTime:(double)a3
{
  if (a3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:?];
  }

  v5 = v4;
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"eventTime"];
}

- (void)setCanaryIdentifier:(id)a3
{
  v4 = [a3 copy];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"canary"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  mutableBody = self->_mutableBody;

  return [v4 initWithBodyDictionary:mutableBody];
}

- (void)appendPropertiesToBody:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SSMetricsMutableEvent;
  [(SSMetricsEvent *)&v5 appendPropertiesToBody:v4];
  if ([(NSMutableDictionary *)self->_mutableBody count])
  {
    [v4 addEntriesFromDictionary:self->_mutableBody];
  }
}

- (id)propertyForBodyKey:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_mutableBody objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setOriginalTimeUsingDate:(id)a3
{
  v4 = MEMORY[0x1E695DFE8];
  v5 = a3;
  v12 = [v4 localTimeZone];
  v6 = [v12 secondsFromGMTForDate:v5];
  v7 = ((v6 * 0x7777777777777777) >> 64) - v6;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:(v7 >> 5) + (v7 >> 63)];
  [(SSMetricsMutableEvent *)self setProperty:v8 forBodyKey:@"timezoneOffset"];

  [v5 timeIntervalSince1970];
  v10 = v9;

  v11 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:v10];
  [(SSMetricsMutableEvent *)self setProperty:v11 forBodyKey:@"eventTime"];
}

- (void)setProperty:(id)a3 forBodyKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v6 length])
  {
    mutableBody = self->_mutableBody;
    if (v8)
    {
      [(NSMutableDictionary *)mutableBody setObject:v8 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)mutableBody removeObjectForKey:v6];
    }
  }
}

- (id)decorateReportingURL:(id)a3
{
  v4 = a3;
  v5 = [(SSMetricsMutableEvent *)self topic];
  v6 = [v5 length];

  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(SSMetricsMutableEvent *)self topic];
    v9 = [v7 stringWithFormat:@"%@/2/%@", v4, v8];
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

@end