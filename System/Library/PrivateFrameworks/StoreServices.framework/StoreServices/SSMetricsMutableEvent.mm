@interface SSMetricsMutableEvent
- (SSMetricsMutableEvent)initWithBodyDictionary:(id)dictionary;
- (double)originalTime;
- (id)decorateReportingURL:(id)l;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)propertyForBodyKey:(id)key;
- (void)appendPropertiesToBody:(id)body;
- (void)setCanaryIdentifier:(id)identifier;
- (void)setOriginalTime:(double)time;
- (void)setOriginalTimeUsingDate:(id)date;
- (void)setProperty:(id)property forBodyKey:(id)key;
@end

@implementation SSMetricsMutableEvent

- (SSMetricsMutableEvent)initWithBodyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SSMetricsMutableEvent;
  v5 = [(SSMetricsMutableEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
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
    globalEventCanary = [objc_opt_class() globalEventCanary];
    globalEventCanary2 = [objc_opt_class() globalEventCanary];

    if (globalEventCanary2)
    {
      [(SSMetricsMutableEvent *)v5 setProperty:globalEventCanary forBodyKey:@"canary"];
    }

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    [(SSMetricsMutableEvent *)v5 setProperty:v11 forBodyKey:@"eventVersion"];

    date = [MEMORY[0x1E695DF00] date];
    [(SSMetricsMutableEvent *)v5 setOriginalTimeUsingDate:date];
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

- (void)setOriginalTime:(double)time
{
  if (time == 0.0)
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

- (void)setCanaryIdentifier:(id)identifier
{
  v4 = [identifier copy];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"canary"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  mutableBody = self->_mutableBody;

  return [v4 initWithBodyDictionary:mutableBody];
}

- (void)appendPropertiesToBody:(id)body
{
  bodyCopy = body;
  v5.receiver = self;
  v5.super_class = SSMetricsMutableEvent;
  [(SSMetricsEvent *)&v5 appendPropertiesToBody:bodyCopy];
  if ([(NSMutableDictionary *)self->_mutableBody count])
  {
    [bodyCopy addEntriesFromDictionary:self->_mutableBody];
  }
}

- (id)propertyForBodyKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_mutableBody objectForKey:keyCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setOriginalTimeUsingDate:(id)date
{
  v4 = MEMORY[0x1E695DFE8];
  dateCopy = date;
  localTimeZone = [v4 localTimeZone];
  v6 = [localTimeZone secondsFromGMTForDate:dateCopy];
  v7 = ((v6 * 0x7777777777777777) >> 64) - v6;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:(v7 >> 5) + (v7 >> 63)];
  [(SSMetricsMutableEvent *)self setProperty:v8 forBodyKey:@"timezoneOffset"];

  [dateCopy timeIntervalSince1970];
  v10 = v9;

  v11 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:v10];
  [(SSMetricsMutableEvent *)self setProperty:v11 forBodyKey:@"eventTime"];
}

- (void)setProperty:(id)property forBodyKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  if ([keyCopy length])
  {
    mutableBody = self->_mutableBody;
    if (propertyCopy)
    {
      [(NSMutableDictionary *)mutableBody setObject:propertyCopy forKey:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)mutableBody removeObjectForKey:keyCopy];
    }
  }
}

- (id)decorateReportingURL:(id)l
{
  lCopy = l;
  topic = [(SSMetricsMutableEvent *)self topic];
  v6 = [topic length];

  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    topic2 = [(SSMetricsMutableEvent *)self topic];
    v9 = [v7 stringWithFormat:@"%@/2/%@", lCopy, topic2];
  }

  else
  {
    v9 = lCopy;
  }

  return v9;
}

@end