@interface SSMetricsLoadURLEvent
+ (BOOL)shouldCollectTimingDataWithSessionDelegate:(id)a3;
+ (BOOL)shouldCollectTimingDataWithSessionDuration:(double)a3 samplingPercentage:(double)a4;
+ (BOOL)shouldReportCachedEvent;
+ (BOOL)shouldReportCachedEventWithSamplingPercentage:(double)a3;
+ (double)_randomDouble;
+ (id)_timingMetricsWindowStartTime;
- (BOOL)TLSSessionTickets;
- (BOOL)apsRelayAttempted;
- (BOOL)apsRelayDidFallback;
- (BOOL)apsRelayRequested;
- (BOOL)apsRelaySucceeded;
- (BOOL)cachedResponse;
- (BOOL)connectionReused;
- (BOOL)xpSamplingForced;
- (SSMetricsLoadURLEvent)init;
- (double)connectionEndTime;
- (double)connectionStartTime;
- (double)domainLookupEndTime;
- (double)domainLookupStartTime;
- (double)fetchStartTime;
- (double)redirectEndTime;
- (double)redirectStartTime;
- (double)requestStartTime;
- (double)responseEndTime;
- (double)responseStartTime;
- (double)secureConnectionStartTime;
- (double)xpSamplingPercentageCachedResponses;
- (double)xpSamplingPercentageUsers;
- (double)xpSessionDuration;
- (id)description;
- (int64_t)statusCode;
- (unint64_t)connectionStartNStatRXBytes;
- (unint64_t)connectionStartNStatTXBytes;
- (unint64_t)connectionStopNStatRXBytes;
- (unint64_t)connectionStopNStatTXBytes;
- (unint64_t)redirectCount;
- (unint64_t)requestMessageSize;
- (unint64_t)responseMessageSize;
- (void)setApsRelayAttempted:(BOOL)a3;
- (void)setApsRelayDidFallback:(BOOL)a3;
- (void)setApsRelayRequested:(BOOL)a3;
- (void)setApsRelaySucceeded:(BOOL)a3;
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
- (void)setRedirectCount:(unint64_t)a3;
- (void)setRedirectEndTime:(double)a3;
- (void)setRedirectStartTime:(double)a3;
- (void)setRequestMessageSize:(unint64_t)a3;
- (void)setRequestStartTime:(double)a3;
- (void)setResponseEndTime:(double)a3;
- (void)setResponseMessageSize:(unint64_t)a3;
- (void)setResponseStartTime:(double)a3;
- (void)setSecureConnectionStartTime:(double)a3;
- (void)setStatusCode:(int64_t)a3;
- (void)setTLSSessionTickets:(BOOL)a3;
- (void)setXPSamplingForced:(BOOL)a3;
- (void)setXPSamplingPercentageCachedResponses:(double)a3;
- (void)setXPSamplingPercentageUsers:(double)a3;
- (void)setXPSessionDuration:(double)a3;
@end

@implementation SSMetricsLoadURLEvent

- (SSMetricsLoadURLEvent)init
{
  v6.receiver = self;
  v6.super_class = SSMetricsLoadURLEvent;
  v2 = [(SSMetricsMutableEvent *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    [(SSMetricsLoadURLEvent *)v2 setClientCorrelationKey:v4];

    [(SSMetricsMutableEvent *)v2 setEventType:@"loadUrl"];
    [(SSMetricsMutableEvent *)v2 setTopic:@"xp_amp_clientperf"];
  }

  return v2;
}

- (BOOL)apsRelayAttempted
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"apsRelayAttempted"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)apsRelayDidFallback
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"apsRelayDidFallback"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)apsRelaySucceeded
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"apsRelaySucceeded"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)apsRelayRequested
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"apsRelayRequested"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)cachedResponse
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"cachedResponse"];
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

- (double)connectionStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"connectionStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
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

- (unint64_t)requestMessageSize
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"requestMessageSize"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (double)redirectStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"redirectStartTime"];
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

- (unint64_t)responseMessageSize
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"responseMessageSize"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
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

- (int64_t)statusCode
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"statusCode"];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)TLSSessionTickets
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"tlsSessionTicketsEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setApsRelayAttempted:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"apsRelayAttempted"];
}

- (void)setApsRelayDidFallback:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"apsRelayDidFallback"];
}

- (void)setApsRelayRequested:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"apsRelayRequested"];
}

- (void)setApsRelaySucceeded:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"apsRelaySucceeded"];
}

- (void)setCachedResponse:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"cachedResponse"];
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

- (void)setRequestMessageSize:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"requestMessageSize"];
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

- (void)setResponseMessageSize:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"responseMessageSize"];
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

- (void)setStatusCode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"statusCode"];
}

- (void)setTLSSessionTickets:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"tlsSessionTicketsEnabled"];
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

+ (BOOL)shouldCollectTimingDataWithSessionDelegate:(id)a3
{
  v4 = [SSMetricsTimingDefaults sharedInstanceWithSessionDelegate:a3];
  [v4 sessionDurationLoadURL];
  v6 = v5 * 1000.0;
  [v4 samplingPercentageUsersLoadURL];
  LOBYTE(a1) = [a1 shouldCollectTimingDataWithSessionDuration:v6 samplingPercentage:v7];
  [v4 update];

  return a1;
}

+ (BOOL)shouldCollectTimingDataWithSessionDuration:(double)a3 samplingPercentage:(double)a4
{
  if (([a1 shouldLogTimingMetrics] & 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [a1 _timingMetricsWindowStartTime];
    v10 = [v9 dateByAddingTimeInterval:a3 / 1000.0];

    if ([v8 compare:v10] != -1)
    {
      [a1 _randomDouble];
      v7 = 0;
      if (v11 == 0.0 || v11 > a4)
      {
        goto LABEL_8;
      }

      [a1 _setTimingMetricsWindowStartTime:v8];
    }

    v7 = 1;
LABEL_8:

    return v7;
  }

  return 1;
}

+ (BOOL)shouldReportCachedEvent
{
  v3 = +[SSMetricsTimingDefaults sharedInstance];
  [v3 samplingPercentageCachedResponsesLoadURL];
  LOBYTE(a1) = [a1 shouldReportCachedEventWithSamplingPercentage:?];
  [v3 update];

  return a1;
}

+ (BOOL)shouldReportCachedEventWithSamplingPercentage:(double)a3
{
  if (a3 == 0.0)
  {
    return 0;
  }

  [a1 _randomDouble];
  return v5 <= a3;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v34.receiver = self;
  v34.super_class = SSMetricsLoadURLEvent;
  v4 = [(SSMetricsLoadURLEvent *)&v34 description];
  [v3 appendString:v4];

  v5 = [(SSMetricsLoadURLEvent *)self appleTimingApp];
  [v3 appendFormat:@"\nappleTimingApp = %@", v5];

  if ([(SSMetricsLoadURLEvent *)self apsRelayAttempted])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"\napsRelayAttempted = %@", v6];
  if ([(SSMetricsLoadURLEvent *)self apsRelayDidFallback])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"\napsRelayDidFallback = %@", v7];
  if ([(SSMetricsLoadURLEvent *)self apsRelaySucceeded])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"\napsRelaySucceeded = %@", v8];
  v9 = [(SSMetricsLoadURLEvent *)self clientCorrelationKey];
  [v3 appendFormat:@"\nclientCorrelationKey = %@", v9];

  v10 = [(SSMetricsLoadURLEvent *)self requestURL];
  [v3 appendFormat:@"\nrequestUrl = %@", v10];

  v11 = [(SSMetricsLoadURLEvent *)self connectionType];
  [v3 appendFormat:@"\nconnectionType = %@", v11];

  v12 = [(SSMetricsLoadURLEvent *)self DNSServers];
  [v3 appendFormat:@"\ndnsServers = %@", v12];

  v13 = [(SSMetricsLoadURLEvent *)self resolvedIPAddress];
  [v3 appendFormat:@"\nresolvedIPAddress = %@", v13];

  [v3 appendFormat:@"\nstatusCode = %ld", -[SSMetricsLoadURLEvent statusCode](self, "statusCode")];
  v14 = [(SSMetricsLoadURLEvent *)self TIDState];
  [v3 appendFormat:@"\ntidState = %@", v14];

  v15 = [(SSMetricsLoadURLEvent *)self clientError];
  [v3 appendFormat:@"\nclientError = %@", v15];

  [(SSMetricsLoadURLEvent *)self fetchStartTime];
  [v3 appendFormat:@"\nfetchStartTime = %f", v16];
  [(SSMetricsLoadURLEvent *)self domainLookupStartTime];
  [v3 appendFormat:@"\ndomainLookupStartTime = %f", v17];
  [(SSMetricsLoadURLEvent *)self domainLookupEndTime];
  [v3 appendFormat:@"\ndomainLookupEndTime = %f", v18];
  [(SSMetricsLoadURLEvent *)self connectionStartTime];
  [v3 appendFormat:@"\nconnectionStartTime = %f", v19];
  [v3 appendFormat:@"\nconnectionStartNStatRXBytes = %ld", -[SSMetricsLoadURLEvent connectionStartNStatRXBytes](self, "connectionStartNStatRXBytes")];
  [v3 appendFormat:@"\nconnectionStartNStatTXBytes = %ld", -[SSMetricsLoadURLEvent connectionStartNStatTXBytes](self, "connectionStartNStatTXBytes")];
  [(SSMetricsLoadURLEvent *)self secureConnectionStartTime];
  [v3 appendFormat:@"\nsecureConnectionStartTime = %f", v20];
  [(SSMetricsLoadURLEvent *)self connectionEndTime];
  [v3 appendFormat:@"\nconnectionEndTime = %f", v21];
  [v3 appendFormat:@"\nconnectionStopNStatRXBytes = %ld", -[SSMetricsLoadURLEvent connectionStopNStatRXBytes](self, "connectionStopNStatRXBytes")];
  [v3 appendFormat:@"\nconnectionStopNStatTXBytes = %ld", -[SSMetricsLoadURLEvent connectionStopNStatTXBytes](self, "connectionStopNStatTXBytes")];
  if ([(SSMetricsLoadURLEvent *)self connectionReused])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v3 appendFormat:@"\nconnectionReused = %@", v22];
  [(SSMetricsLoadURLEvent *)self requestStartTime];
  [v3 appendFormat:@"\nrequestStartTime = %f", v23];
  v24 = [(SSMetricsLoadURLEvent *)self responseDate];
  [v3 appendFormat:@"\nresponseDate = %@", v24];

  [(SSMetricsLoadURLEvent *)self responseStartTime];
  [v3 appendFormat:@"\nresponseStartTime = %f", v25];
  [(SSMetricsLoadURLEvent *)self responseEndTime];
  [v3 appendFormat:@"\nresponseEndTime = %f", v26];
  [(SSMetricsLoadURLEvent *)self redirectStartTime];
  [v3 appendFormat:@"\nredirectStartTime = %f", v27];
  [(SSMetricsLoadURLEvent *)self redirectEndTime];
  [v3 appendFormat:@"\nredirectEndTime = %f", v28];
  [v3 appendFormat:@"\nredirectCount = %ld", -[SSMetricsLoadURLEvent redirectCount](self, "redirectCount")];
  if ([(SSMetricsLoadURLEvent *)self xpSamplingForced])
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  [v3 appendFormat:@"\nxpSamplingForced = %@", v29];
  [(SSMetricsLoadURLEvent *)self xpSamplingPercentageCachedResponses];
  [v3 appendFormat:@"\nxpSamplingPercentageCachedResponses = %f", v30];
  [(SSMetricsLoadURLEvent *)self xpSamplingPercentageUsers];
  [v3 appendFormat:@"\nxpSamplingPercentageUsers = %f", v31];
  [(SSMetricsLoadURLEvent *)self xpSessionDuration];
  [v3 appendFormat:@"\nxpSessionDuration = %f", v32];
  [v3 appendFormat:@"\nrequestMessageSize = %lu", -[SSMetricsLoadURLEvent requestMessageSize](self, "requestMessageSize")];
  [v3 appendFormat:@"\responseMessageSize = %lu", -[SSMetricsLoadURLEvent responseMessageSize](self, "responseMessageSize")];

  return v3;
}

+ (double)_randomDouble
{
  if (_randomDouble_onceToken_0 == -1)
  {
  }

  else
  {
    +[SSMetricsLoadURLEvent _randomDouble];
  }

  return drand48();
}

void __38__SSMetricsLoadURLEvent__randomDouble__block_invoke()
{
  v0 = arc4random();

  srand48(v0);
}

+ (id)_timingMetricsWindowStartTime
{
  v2 = CFPreferencesCopyAppValue(@"TimingMetricsWindowStartTime", @"com.apple.itunesstored");

  return v2;
}

@end