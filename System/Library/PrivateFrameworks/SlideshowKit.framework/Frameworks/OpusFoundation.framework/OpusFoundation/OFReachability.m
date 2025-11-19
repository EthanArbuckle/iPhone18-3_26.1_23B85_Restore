@interface OFReachability
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityForLocalWiFi;
+ (id)reachabilityWithAddress:(const sockaddr_in *)a3;
+ (id)reachabilityWithHostName:(id)a3;
- (BOOL)startNotifier;
- (OFReachability)init;
- (int64_t)_networkStatusForFlags:(unsigned int)a3;
- (int64_t)currentNetworkStatus;
- (void)dealloc;
- (void)stopNotifier;
@end

@implementation OFReachability

- (OFReachability)init
{
  v3.receiver = self;
  v3.super_class = OFReachability;
  result = [(OFReachability *)&v3 init];
  if (result)
  {
    result->_reachabilityRef = 0;
    result->_localWiFiRef = 0;
  }

  return result;
}

- (void)dealloc
{
  [(OFReachability *)self stopNotifier];
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
    self->_reachabilityRef = 0;
  }

  v4.receiver = self;
  v4.super_class = OFReachability;
  [(OFReachability *)&v4 dealloc];
}

+ (id)reachabilityWithHostName:(id)a3
{
  v3 = SCNetworkReachabilityCreateWithName(0, [a3 UTF8String]);
  if (v3)
  {
    v4 = v3;
    v3 = objc_alloc_init(OFReachability);
    if (v3)
    {
      v3->_reachabilityRef = v4;
      v3->_localWiFiRef = 0;
    }
  }

  return v3;
}

+ (id)reachabilityWithAddress:(const sockaddr_in *)a3
{
  v3 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], a3);
  if (v3)
  {
    v4 = v3;
    v5 = objc_alloc_init(OFReachability);
    v6 = v5;
    if (v5)
    {
      v5->_reachabilityRef = v4;
      v5->_localWiFiRef = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)reachabilityForInternetConnection
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[1] = 0;
  v3[0] = 528;
  return [OFReachability reachabilityWithAddress:v3];
}

+ (id)reachabilityForLocalWiFi
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[1] = 0;
  v3[0] = 0xFEA900000210;
  result = [OFReachability reachabilityWithAddress:v3];
  if (result)
  {
    *(result + 16) = 1;
  }

  return result;
}

- (BOOL)startNotifier
{
  v7.version = 0;
  memset(&v7.retain, 0, 24);
  v7.info = self;
  v3 = SCNetworkReachabilitySetCallback(self->_reachabilityRef, _OFReachabilityCallback, &v7);
  if (v3)
  {
    reachabilityRef = self->_reachabilityRef;
    Current = CFRunLoopGetCurrent();
    LOBYTE(v3) = SCNetworkReachabilityScheduleWithRunLoop(reachabilityRef, Current, *MEMORY[0x277CBF058]) != 0;
  }

  return v3;
}

- (void)stopNotifier
{
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    Current = CFRunLoopGetCurrent();
    v4 = *MEMORY[0x277CBF058];

    SCNetworkReachabilityUnscheduleFromRunLoop(reachabilityRef, Current, v4);
  }
}

- (int64_t)_networkStatusForFlags:(unsigned int)a3
{
  LODWORD(v3) = (a3 & 0x28) != 0;
  if ((a3 & 0x10) != 0)
  {
    LODWORD(v3) = 0;
  }

  if ((a3 & 0x40004) == 4)
  {
    v3 = v3;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 & 2) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)currentNetworkStatus
{
  flags = 0;
  if (!SCNetworkReachabilityGetFlags(self->_reachabilityRef, &flags))
  {
    return 0;
  }

  if (self->_localWiFiRef)
  {
    return [(OFReachability *)self _localWiFiStatusForFlags:flags];
  }

  return [(OFReachability *)self _networkStatusForFlags:flags];
}

@end