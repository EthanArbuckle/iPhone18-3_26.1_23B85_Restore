@interface RWIProtocolNetworkResourceTiming
- (RWIProtocolNetworkResourceTiming)initWithStartTime:(double)a3 redirectStart:(double)a4 redirectEnd:(double)a5 fetchStart:(double)a6 domainLookupStart:(double)a7 domainLookupEnd:(double)a8 connectStart:(double)a9 connectEnd:(double)a10 secureConnectionStart:(double)a11 requestStart:(double)a12 responseStart:(double)a13 responseEnd:(double)a14;
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
- (void)setConnectEnd:(double)a3;
- (void)setConnectStart:(double)a3;
- (void)setDomainLookupEnd:(double)a3;
- (void)setDomainLookupStart:(double)a3;
- (void)setFetchStart:(double)a3;
- (void)setRedirectEnd:(double)a3;
- (void)setRedirectStart:(double)a3;
- (void)setRequestStart:(double)a3;
- (void)setResponseEnd:(double)a3;
- (void)setResponseStart:(double)a3;
- (void)setSecureConnectionStart:(double)a3;
- (void)setStartTime:(double)a3;
@end

@implementation RWIProtocolNetworkResourceTiming

- (RWIProtocolNetworkResourceTiming)initWithStartTime:(double)a3 redirectStart:(double)a4 redirectEnd:(double)a5 fetchStart:(double)a6 domainLookupStart:(double)a7 domainLookupEnd:(double)a8 connectStart:(double)a9 connectEnd:(double)a10 secureConnectionStart:(double)a11 requestStart:(double)a12 responseStart:(double)a13 responseEnd:(double)a14
{
  v26.receiver = self;
  v26.super_class = RWIProtocolNetworkResourceTiming;
  v22 = [(RWIProtocolJSONObject *)&v26 init];
  v23 = v22;
  if (v22)
  {
    [(RWIProtocolNetworkResourceTiming *)v22 setStartTime:a3];
    [(RWIProtocolNetworkResourceTiming *)v23 setRedirectStart:a4];
    [(RWIProtocolNetworkResourceTiming *)v23 setRedirectEnd:a5];
    [(RWIProtocolNetworkResourceTiming *)v23 setFetchStart:a6];
    [(RWIProtocolNetworkResourceTiming *)v23 setDomainLookupStart:a7];
    [(RWIProtocolNetworkResourceTiming *)v23 setDomainLookupEnd:a8];
    [(RWIProtocolNetworkResourceTiming *)v23 setConnectStart:a9];
    [(RWIProtocolNetworkResourceTiming *)v23 setConnectEnd:a10];
    [(RWIProtocolNetworkResourceTiming *)v23 setSecureConnectionStart:a11];
    [(RWIProtocolNetworkResourceTiming *)v23 setRequestStart:a12];
    [(RWIProtocolNetworkResourceTiming *)v23 setResponseStart:a13];
    [(RWIProtocolNetworkResourceTiming *)v23 setResponseEnd:a14];
    v24 = v23;
  }

  return v23;
}

- (void)setStartTime:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"startTime" forKey:a3];
}

- (double)startTime
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"startTime"];
  return result;
}

- (void)setRedirectStart:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"redirectStart" forKey:a3];
}

- (double)redirectStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"redirectStart"];
  return result;
}

- (void)setRedirectEnd:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"redirectEnd" forKey:a3];
}

- (double)redirectEnd
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"redirectEnd"];
  return result;
}

- (void)setFetchStart:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"fetchStart" forKey:a3];
}

- (double)fetchStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"fetchStart"];
  return result;
}

- (void)setDomainLookupStart:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"domainLookupStart" forKey:a3];
}

- (double)domainLookupStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"domainLookupStart"];
  return result;
}

- (void)setDomainLookupEnd:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"domainLookupEnd" forKey:a3];
}

- (double)domainLookupEnd
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"domainLookupEnd"];
  return result;
}

- (void)setConnectStart:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"connectStart" forKey:a3];
}

- (double)connectStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"connectStart"];
  return result;
}

- (void)setConnectEnd:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"connectEnd" forKey:a3];
}

- (double)connectEnd
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"connectEnd"];
  return result;
}

- (void)setSecureConnectionStart:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"secureConnectionStart" forKey:a3];
}

- (double)secureConnectionStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"secureConnectionStart"];
  return result;
}

- (void)setRequestStart:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"requestStart" forKey:a3];
}

- (double)requestStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"requestStart"];
  return result;
}

- (void)setResponseStart:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"responseStart" forKey:a3];
}

- (double)responseStart
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"responseStart"];
  return result;
}

- (void)setResponseEnd:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"responseEnd" forKey:a3];
}

- (double)responseEnd
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResourceTiming;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"responseEnd"];
  return result;
}

@end