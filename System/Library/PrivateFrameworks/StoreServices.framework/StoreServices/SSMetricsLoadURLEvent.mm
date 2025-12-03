@interface SSMetricsLoadURLEvent
+ (BOOL)shouldCollectTimingDataWithSessionDelegate:(id)delegate;
+ (BOOL)shouldCollectTimingDataWithSessionDuration:(double)duration samplingPercentage:(double)percentage;
+ (BOOL)shouldReportCachedEvent;
+ (BOOL)shouldReportCachedEventWithSamplingPercentage:(double)percentage;
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
- (void)setApsRelayAttempted:(BOOL)attempted;
- (void)setApsRelayDidFallback:(BOOL)fallback;
- (void)setApsRelayRequested:(BOOL)requested;
- (void)setApsRelaySucceeded:(BOOL)succeeded;
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
- (void)setRedirectCount:(unint64_t)count;
- (void)setRedirectEndTime:(double)time;
- (void)setRedirectStartTime:(double)time;
- (void)setRequestMessageSize:(unint64_t)size;
- (void)setRequestStartTime:(double)time;
- (void)setResponseEndTime:(double)time;
- (void)setResponseMessageSize:(unint64_t)size;
- (void)setResponseStartTime:(double)time;
- (void)setSecureConnectionStartTime:(double)time;
- (void)setStatusCode:(int64_t)code;
- (void)setTLSSessionTickets:(BOOL)tickets;
- (void)setXPSamplingForced:(BOOL)forced;
- (void)setXPSamplingPercentageCachedResponses:(double)responses;
- (void)setXPSamplingPercentageUsers:(double)users;
- (void)setXPSessionDuration:(double)duration;
@end

@implementation SSMetricsLoadURLEvent

- (SSMetricsLoadURLEvent)init
{
  v6.receiver = self;
  v6.super_class = SSMetricsLoadURLEvent;
  v2 = [(SSMetricsMutableEvent *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [(SSMetricsLoadURLEvent *)v2 setClientCorrelationKey:uUIDString];

    [(SSMetricsMutableEvent *)v2 setEventType:@"loadUrl"];
    [(SSMetricsMutableEvent *)v2 setTopic:@"xp_amp_clientperf"];
  }

  return v2;
}

- (BOOL)apsRelayAttempted
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"apsRelayAttempted"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)apsRelayDidFallback
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"apsRelayDidFallback"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)apsRelaySucceeded
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"apsRelaySucceeded"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)apsRelayRequested
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"apsRelayRequested"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)cachedResponse
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"cachedResponse"];
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

- (unint64_t)requestMessageSize
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"requestMessageSize"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
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
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
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
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)TLSSessionTickets
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"tlsSessionTicketsEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setApsRelayAttempted:(BOOL)attempted
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:attempted];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"apsRelayAttempted"];
}

- (void)setApsRelayDidFallback:(BOOL)fallback
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:fallback];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"apsRelayDidFallback"];
}

- (void)setApsRelayRequested:(BOOL)requested
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:requested];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"apsRelayRequested"];
}

- (void)setApsRelaySucceeded:(BOOL)succeeded
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:succeeded];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"apsRelaySucceeded"];
}

- (void)setCachedResponse:(BOOL)response
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:response];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"cachedResponse"];
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

- (void)setRequestMessageSize:(unint64_t)size
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"requestMessageSize"];
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

- (void)setResponseMessageSize:(unint64_t)size
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"responseMessageSize"];
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

- (void)setStatusCode:(int64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"statusCode"];
}

- (void)setTLSSessionTickets:(BOOL)tickets
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:tickets];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"tlsSessionTicketsEnabled"];
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

+ (BOOL)shouldCollectTimingDataWithSessionDelegate:(id)delegate
{
  v4 = [SSMetricsTimingDefaults sharedInstanceWithSessionDelegate:delegate];
  [v4 sessionDurationLoadURL];
  v6 = v5 * 1000.0;
  [v4 samplingPercentageUsersLoadURL];
  LOBYTE(self) = [self shouldCollectTimingDataWithSessionDuration:v6 samplingPercentage:v7];
  [v4 update];

  return self;
}

+ (BOOL)shouldCollectTimingDataWithSessionDuration:(double)duration samplingPercentage:(double)percentage
{
  if (([self shouldLogTimingMetrics] & 1) == 0)
  {
    date = [MEMORY[0x1E695DF00] date];
    _timingMetricsWindowStartTime = [self _timingMetricsWindowStartTime];
    v10 = [_timingMetricsWindowStartTime dateByAddingTimeInterval:duration / 1000.0];

    if ([date compare:v10] != -1)
    {
      [self _randomDouble];
      v7 = 0;
      if (v11 == 0.0 || v11 > percentage)
      {
        goto LABEL_8;
      }

      [self _setTimingMetricsWindowStartTime:date];
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
  LOBYTE(self) = [self shouldReportCachedEventWithSamplingPercentage:?];
  [v3 update];

  return self;
}

+ (BOOL)shouldReportCachedEventWithSamplingPercentage:(double)percentage
{
  if (percentage == 0.0)
  {
    return 0;
  }

  [self _randomDouble];
  return v5 <= percentage;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v34.receiver = self;
  v34.super_class = SSMetricsLoadURLEvent;
  v4 = [(SSMetricsLoadURLEvent *)&v34 description];
  [v3 appendString:v4];

  appleTimingApp = [(SSMetricsLoadURLEvent *)self appleTimingApp];
  [v3 appendFormat:@"\nappleTimingApp = %@", appleTimingApp];

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
  clientCorrelationKey = [(SSMetricsLoadURLEvent *)self clientCorrelationKey];
  [v3 appendFormat:@"\nclientCorrelationKey = %@", clientCorrelationKey];

  requestURL = [(SSMetricsLoadURLEvent *)self requestURL];
  [v3 appendFormat:@"\nrequestUrl = %@", requestURL];

  connectionType = [(SSMetricsLoadURLEvent *)self connectionType];
  [v3 appendFormat:@"\nconnectionType = %@", connectionType];

  dNSServers = [(SSMetricsLoadURLEvent *)self DNSServers];
  [v3 appendFormat:@"\ndnsServers = %@", dNSServers];

  resolvedIPAddress = [(SSMetricsLoadURLEvent *)self resolvedIPAddress];
  [v3 appendFormat:@"\nresolvedIPAddress = %@", resolvedIPAddress];

  [v3 appendFormat:@"\nstatusCode = %ld", -[SSMetricsLoadURLEvent statusCode](self, "statusCode")];
  tIDState = [(SSMetricsLoadURLEvent *)self TIDState];
  [v3 appendFormat:@"\ntidState = %@", tIDState];

  clientError = [(SSMetricsLoadURLEvent *)self clientError];
  [v3 appendFormat:@"\nclientError = %@", clientError];

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
  responseDate = [(SSMetricsLoadURLEvent *)self responseDate];
  [v3 appendFormat:@"\nresponseDate = %@", responseDate];

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