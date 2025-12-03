@interface RWIProtocolNetworkResourceTiming
- (RWIProtocolNetworkResourceTiming)initWithStartTime:(double)time redirectStart:(double)start redirectEnd:(double)end fetchStart:(double)fetchStart domainLookupStart:(double)lookupStart domainLookupEnd:(double)lookupEnd connectStart:(double)connectStart connectEnd:(double)self0 secureConnectionStart:(double)self1 requestStart:(double)self2 responseStart:(double)self3 responseEnd:(double)self4;
- (double)connectEnd;
- (double)connectStart;
- (double)domainLookupEnd;
- (double)domainLookupStart;
- (double)fetchStart;
- (double)redirectEnd;
- (double)redirectStart;
- (double)requestStart;
- (double)responseEnd;
- (double)responseStart;
- (double)secureConnectionStart;
- (double)startTime;
- (void)setConnectEnd:(double)end;
- (void)setConnectStart:(double)start;
- (void)setDomainLookupEnd:(double)end;
- (void)setDomainLookupStart:(double)start;
- (void)setFetchStart:(double)start;
- (void)setRedirectEnd:(double)end;
- (void)setRedirectStart:(double)start;
- (void)setRequestStart:(double)start;
- (void)setResponseEnd:(double)end;
- (void)setResponseStart:(double)start;
- (void)setSecureConnectionStart:(double)start;
- (void)setStartTime:(double)time;
@end

@implementation RWIProtocolNetworkResourceTiming

- (RWIProtocolNetworkResourceTiming)initWithStartTime:(double)time redirectStart:(double)start redirectEnd:(double)end fetchStart:(double)fetchStart domainLookupStart:(double)lookupStart domainLookupEnd:(double)lookupEnd connectStart:(double)connectStart connectEnd:(double)self0 secureConnectionStart:(double)self1 requestStart:(double)self2 responseStart:(double)self3 responseEnd:(double)self4
{
  v26.receiver = self;
  v26.super_class = RWIProtocolNetworkResourceTiming;
  v22 = [(RWIProtocolJSONObject *)&v26 init];
  v23 = v22;
  if (v22)
  {
    [(RWIProtocolNetworkResourceTiming *)v22 setStartTime:time];
    [(RWIProtocolNetworkResourceTiming *)v23 setRedirectStart:start];
    [(RWIProtocolNetworkResourceTiming *)v23 setRedirectEnd:end];
    [(RWIProtocolNetworkResourceTiming *)v23 setFetchStart:fetchStart];
    [(RWIProtocolNetworkResourceTiming *)v23 setDomainLookupStart:lookupStart];
    [(RWIProtocolNetworkResourceTiming *)v23 setDomainLookupEnd:lookupEnd];
    [(RWIProtocolNetworkResourceTiming *)v23 setConnectStart:connectStart];
    [(RWIProtocolNetworkResourceTiming *)v23 setConnectEnd:connectEnd];
    [(RWIProtocolNetworkResourceTiming *)v23 setSecureConnectionStart:connectionStart];
    [(RWIProtocolNetworkResourceTiming *)v23 setRequestStart:requestStart];
    [(RWIProtocolNetworkResourceTiming *)v23 setResponseStart:responseStart];
    [(RWIProtocolNetworkResourceTiming *)v23 setResponseEnd:responseEnd];
    v24 = v23;
  }

  return v23;
}

- (void)setStartTime:(double)time
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"startTime" forKey:time];
}

- (double)startTime
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"startTime"];
  return result;
}

- (void)setRedirectStart:(double)start
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"redirectStart" forKey:start];
}

- (double)redirectStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"redirectStart"];
  return result;
}

- (void)setRedirectEnd:(double)end
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"redirectEnd" forKey:end];
}

- (double)redirectEnd
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"redirectEnd"];
  return result;
}

- (void)setFetchStart:(double)start
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"fetchStart" forKey:start];
}

- (double)fetchStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"fetchStart"];
  return result;
}

- (void)setDomainLookupStart:(double)start
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"domainLookupStart" forKey:start];
}

- (double)domainLookupStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"domainLookupStart"];
  return result;
}

- (void)setDomainLookupEnd:(double)end
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"domainLookupEnd" forKey:end];
}

- (double)domainLookupEnd
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"domainLookupEnd"];
  return result;
}

- (void)setConnectStart:(double)start
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"connectStart" forKey:start];
}

- (double)connectStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"connectStart"];
  return result;
}

- (void)setConnectEnd:(double)end
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"connectEnd" forKey:end];
}

- (double)connectEnd
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"connectEnd"];
  return result;
}

- (void)setSecureConnectionStart:(double)start
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"secureConnectionStart" forKey:start];
}

- (double)secureConnectionStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"secureConnectionStart"];
  return result;
}

- (void)setRequestStart:(double)start
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"requestStart" forKey:start];
}

- (double)requestStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"requestStart"];
  return result;
}

- (void)setResponseStart:(double)start
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"responseStart" forKey:start];
}

- (double)responseStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"responseStart"];
  return result;
}

- (void)setResponseEnd:(double)end
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"responseEnd" forKey:end];
}

- (double)responseEnd
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"responseEnd"];
  return result;
}

@end