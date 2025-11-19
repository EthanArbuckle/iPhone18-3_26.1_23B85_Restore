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
- (void)setCachedResponse:(BOOL)a3;
- (void)setConnectionEndTime:(double)a3;
- (void)setConnectionReused:(BOOL)a3;
- (void)setConnectionStartNStatRXBytes:(unint64_t)a3;
- (void)setConnectionStartNStatTXBytes:(unint64_t)a3;
- (void)setConnectionStartTime:(double)a3;
- (void)setConnectionStopNStatRXBytes:(unint64_t)a3;
- (void)setConnectionStopNStatTXBytes:(unint64_t)a3;
- (void)setDomainLookupEndTime:(double)a3;
- (void)setDomainLookupStartTime:(double)a3;
- (void)setFetchStartTime:(double)a3;
- (void)setPageHistoryDescriptionWithIdentifiers:(id)a3;
- (void)setPageRenderTime:(double)a3;
- (void)setRedirectCount:(unint64_t)a3;
- (void)setRedirectEndTime:(double)a3;
- (void)setRedirectStartTime:(double)a3;
- (void)setRequestEndTime:(double)a3;
- (void)setRequestStartTime:(double)a3;
- (void)setResponseEndTime:(double)a3;
- (void)setResponseStartTime:(double)a3;
- (void)setSecureConnectionStartTime:(double)a3;
- (void)setUbered:(BOOL)a3;
- (void)setXPSamplingForced:(BOOL)a3;
- (void)setXPSamplingPercentageCachedResponses:(double)a3;
- (void)setXPSamplingPercentageUsers:(double)a3;
- (void)setXPSessionDuration:(double)a3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isUbered
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"isUber"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)connectionStartNStatTXBytes
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"connectionStartNStatTXBytes"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)connectionStopNStatRXBytes
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"connectionStopNStatRXBytes"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)connectionStopNStatTXBytes
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"connectionStopNStatTXBytes"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
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
  v3 = [v2 unsignedIntegerValue];

  return v3;
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

- (void)setCachedResponse:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"isCachedResponse"];
}

- (void)setConnectionEndTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionEndTime"];
}

- (void)setConnectionReused:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionReused"];
}

- (void)setConnectionStartTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionStartTime"];
}

- (void)setConnectionStartNStatRXBytes:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionStartNStatRXBytes"];
}

- (void)setConnectionStartNStatTXBytes:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionStartNStatTXBytes"];
}

- (void)setConnectionStopNStatRXBytes:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionStopNStatRXBytes"];
}

- (void)setConnectionStopNStatTXBytes:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"connectionStopNStatTXBytes"];
}

- (void)setDomainLookupEndTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"domainLookupEndTime"];
}

- (void)setDomainLookupStartTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"domainLookupStartTime"];
}

- (void)setFetchStartTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"fetchStartTime"];
}

- (void)setPageHistoryDescriptionWithIdentifiers:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [v5 componentsJoinedByString:{@", "}];
    [(SSMetricsPageEvent *)self setPageHistoryDescription:v4];
  }
}

- (void)setPageRenderTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"pageRenderTime"];
}

- (void)setRedirectCount:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"redirectCount"];
}

- (void)setRedirectEndTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"redirectEndTime"];
}

- (void)setRedirectStartTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"redirectStartTime"];
}

- (void)setRequestEndTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"requestEndTime"];
}

- (void)setRequestStartTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"requestStartTime"];
}

- (void)setResponseEndTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"responseEndTime"];
}

- (void)setResponseStartTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"responseStartTime"];
}

- (void)setSecureConnectionStartTime:(double)a3
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
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"secureConnectionStartTime"];
}

- (void)setUbered:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"isUber"];
}

- (void)setXPSessionDuration:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"xpSessionDuration"];
}

- (void)setXPSamplingForced:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"xpSamplingForced"];
}

- (void)setXPSamplingPercentageUsers:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"xpSamplingPercentageUsers"];
}

- (void)setXPSamplingPercentageCachedResponses:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
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
  v3 = [v2 BOOLValue];

  return v3;
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
  v5 = [(SSMetricsPageEvent *)self serverApplicationInstance];
  v6 = [v3 stringWithFormat:@"%@: Instance: %@", v4, v5];

  return v6;
}

@end