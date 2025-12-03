@interface SSMetricsPageEvent
- (BOOL)connectionReused;
- (BOOL)isCachedResponse;
- (BOOL)isUbered;
- (BOOL)xpSamplingForced;
- (SSMetricsPageEvent)init;
- (double)connectionEndTime;
- (double)connectionStartTime;
- (double)domainLookupEndTime;
- (double)domainLookupStartTime;
- (double)fetchStartTime;
- (double)pageRenderTime;
- (double)redirectEndTime;
- (double)redirectStartTime;
- (double)requestEndTime;
- (double)requestStartTime;
- (double)responseEndTime;
- (double)responseStartTime;
- (double)secureConnectionStartTime;
- (double)xpSamplingPercentageCachedResponses;
- (double)xpSamplingPercentageUsers;
- (double)xpSessionDuration;
- (id)description;
- (unint64_t)connectionStartNStatRXBytes;
- (unint64_t)connectionStartNStatTXBytes;
- (unint64_t)connectionStopNStatRXBytes;
- (unint64_t)connectionStopNStatTXBytes;
- (unint64_t)redirectCount;
- (void)setCachedResponse:(BOOL)response;
- (void)setConnectionEndTime:(double)time;
- (void)setConnectionReused:(BOOL)reused;
- (void)setConnectionStartNStatRXBytes:(unint64_t)bytes;
- (void)setConnectionStartNStatTXBytes:(unint64_t)bytes;
- (void)setConnectionStartTime:(double)time;
- (void)setConnectionStopNStatRXBytes:(unint64_t)bytes;
- (void)setConnectionStopNStatTXBytes:(unint64_t)bytes;
- (void)setDomainLookupEndTime:(double)time;
- (void)setDomainLookupStartTime:(double)time;
- (void)setFetchStartTime:(double)time;
- (void)setPageHistoryDescriptionWithIdentifiers:(id)identifiers;
- (void)setPageRenderTime:(double)time;
- (void)setRedirectCount:(unint64_t)count;
- (void)setRedirectEndTime:(double)time;
- (void)setRedirectStartTime:(double)time;
- (void)setRequestEndTime:(double)time;
- (void)setRequestStartTime:(double)time;
- (void)setResponseEndTime:(double)time;
- (void)setResponseStartTime:(double)time;
- (void)setSecureConnectionStartTime:(double)time;
- (void)setUbered:(BOOL)ubered;
- (void)setXPSamplingForced:(BOOL)forced;
- (void)setXPSamplingPercentageCachedResponses:(double)responses;
- (void)setXPSamplingPercentageUsers:(double)users;
- (void)setXPSessionDuration:(double)duration;
@end

@implementation SSMetricsPageEvent

- (SSMetricsPageEvent)init
{
  v5.receiver = self;
  v5.super_class = SSMetricsPageEvent;
  v2 = [(SSMetricsBaseEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setEventType:@"page"];
  }

  return v3;
}

- (BOOL)isCachedResponse
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"isCachedResponse"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isUbered
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"isUber"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)connectionEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"connectionEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (BOOL)connectionReused
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"connectionReused"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)connectionStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"connectionStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (unint64_t)connectionStartNStatRXBytes
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"connectionStartNStatRXBytes"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)connectionStartNStatTXBytes
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"connectionStartNStatTXBytes"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)connectionStopNStatRXBytes
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"connectionStopNStatRXBytes"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)connectionStopNStatTXBytes
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"connectionStopNStatTXBytes"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)domainLookupEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"domainLookupEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (double)domainLookupStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"domainLookupStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (double)fetchStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"fetchStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (double)pageRenderTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"pageRenderTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (unint64_t)redirectCount
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"redirectCount"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)redirectEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"redirectEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (double)redirectStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"redirectStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (double)requestEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"requestEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (double)requestStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"requestStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (double)responseEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"responseEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (double)responseStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"responseStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (double)secureConnectionStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"secureConnectionStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setCachedResponse:(BOOL)response
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:response];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"isCachedResponse"];
}

- (void)setConnectionEndTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionEndTime"];
}

- (void)setConnectionReused:(BOOL)reused
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:reused];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionReused"];
}

- (void)setConnectionStartTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionStartTime"];
}

- (void)setConnectionStartNStatRXBytes:(unint64_t)bytes
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bytes];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionStartNStatRXBytes"];
}

- (void)setConnectionStartNStatTXBytes:(unint64_t)bytes
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bytes];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionStartNStatTXBytes"];
}

- (void)setConnectionStopNStatRXBytes:(unint64_t)bytes
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bytes];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionStopNStatRXBytes"];
}

- (void)setConnectionStopNStatTXBytes:(unint64_t)bytes
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bytes];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionStopNStatTXBytes"];
}

- (void)setDomainLookupEndTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"domainLookupEndTime"];
}

- (void)setDomainLookupStartTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"domainLookupStartTime"];
}

- (void)setFetchStartTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"fetchStartTime"];
}

- (void)setPageHistoryDescriptionWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v4 = [identifiersCopy componentsJoinedByString:{@", "}];
    [(SSMetricsPageEvent *)self setPageHistoryDescription:v4];
  }
}

- (void)setPageRenderTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"pageRenderTime"];
}

- (void)setRedirectCount:(unint64_t)count
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"redirectCount"];
}

- (void)setRedirectEndTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"redirectEndTime"];
}

- (void)setRedirectStartTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"redirectStartTime"];
}

- (void)setRequestEndTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"requestEndTime"];
}

- (void)setRequestStartTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"requestStartTime"];
}

- (void)setResponseEndTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"responseEndTime"];
}

- (void)setResponseStartTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"responseStartTime"];
}

- (void)setSecureConnectionStartTime:(double)time
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"secureConnectionStartTime"];
}

- (void)setUbered:(BOOL)ubered
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:ubered];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"isUber"];
}

- (void)setXPSessionDuration:(double)duration
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"xpSessionDuration"];
}

- (void)setXPSamplingForced:(BOOL)forced
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:forced];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"xpSamplingForced"];
}

- (void)setXPSamplingPercentageUsers:(double)users
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:users];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"xpSamplingPercentageUsers"];
}

- (void)setXPSamplingPercentageCachedResponses:(double)responses
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:responses];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"xpSamplingPercentageCachedResponses"];
}

- (double)xpSessionDuration
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"xpSessionDuration"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (BOOL)xpSamplingForced
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"xpSamplingForced"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)xpSamplingPercentageUsers
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"xpSamplingPercentageUsers"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)xpSamplingPercentageCachedResponses
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"xpSamplingPercentageCachedResponses"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SSMetricsPageEvent;
  v4 = [(SSMetricsBaseEvent *)&v8 description];
  serverApplicationInstance = [(SSMetricsPageEvent *)self serverApplicationInstance];
  v6 = [v3 stringWithFormat:@"%@: Instance: %@", v4, serverApplicationInstance];

  return v6;
}

@end