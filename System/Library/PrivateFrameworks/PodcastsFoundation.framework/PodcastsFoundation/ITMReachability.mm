@interface ITMReachability
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityWithAddress:(const sockaddr *)a3;
+ (id)reachabilityWithHostName:(id)a3;
- (BOOL)startNotifier;
- (int64_t)currentReachabilityStatus;
- (int64_t)networkStatusForFlags:(unsigned int)a3;
- (void)dealloc;
- (void)stopNotifier;
@end

@implementation ITMReachability

- (int64_t)currentReachabilityStatus
{
  flags = 0;
  if (SCNetworkReachabilityGetFlags(self->_reachabilityRef, &flags))
  {
    return [(ITMReachability *)self networkStatusForFlags:flags];
  }

  else
  {
    return 0;
  }
}

- (BOOL)startNotifier
{
  v7.version = 0;
  memset(&v7.retain, 0, 24);
  v7.info = self;
  v3 = SCNetworkReachabilitySetCallback(self->_reachabilityRef, ReachabilityCallback, &v7);
  if (v3)
  {
    reachabilityRef = self->_reachabilityRef;
    Current = CFRunLoopGetCurrent();
    LOBYTE(v3) = SCNetworkReachabilityScheduleWithRunLoop(reachabilityRef, Current, *MEMORY[0x1E695E8E0]) != 0;
  }

  return v3;
}

+ (id)reachabilityForInternetConnection
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[1] = 0;
  v5[0] = 528;
  v2 = [a1 reachabilityWithAddress:v5];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)reachabilityWithHostName:(id)a3
{
  v5 = a3;
  v6 = SCNetworkReachabilityCreateWithName(0, [a3 UTF8String]);
  if (v6)
  {
    v7 = v6;
    v6 = objc_alloc_init(a1);
    if (v6)
    {
      *(v6 + 1) = v7;
    }

    else
    {
      CFRelease(v7);
      v6 = 0;
    }
  }

  return v6;
}

+ (id)reachabilityWithAddress:(const sockaddr *)a3
{
  v4 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x1E695E480], a3);
  if (v4)
  {
    v5 = v4;
    v4 = objc_alloc_init(a1);
    if (v4)
    {
      *(v4 + 1) = v5;
    }

    else
    {
      CFRelease(v5);
      v4 = 0;
    }
  }

  return v4;
}

- (void)stopNotifier
{
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    Current = CFRunLoopGetCurrent();
    v4 = *MEMORY[0x1E695E8E0];

    SCNetworkReachabilityUnscheduleFromRunLoop(reachabilityRef, Current, v4);
  }
}

- (void)dealloc
{
  [(ITMReachability *)self stopNotifier];
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
  }

  v4.receiver = self;
  v4.super_class = ITMReachability;
  [(ITMReachability *)&v4 dealloc];
}

- (int64_t)networkStatusForFlags:(unsigned int)a3
{
  if ((a3 & 2) == 0)
  {
    return 0;
  }

  LODWORD(v4) = (a3 & 0x28) != 0;
  if ((a3 & 0x10) != 0)
  {
    LODWORD(v4) = 0;
  }

  if ((a3 & 4) != 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = 1;
  }

  if ((a3 & 0x40000) != 0)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

@end