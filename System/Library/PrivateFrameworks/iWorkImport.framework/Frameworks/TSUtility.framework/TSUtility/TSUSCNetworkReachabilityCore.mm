@interface TSUSCNetworkReachabilityCore
- (BOOL)startNotifyingWithQueue:(id)queue block:(id)block;
- (TSUSCNetworkReachabilityCore)initWithReachabilityRef:(__SCNetworkReachability *)ref;
- (void)dealloc;
- (void)stopNotifying;
@end

@implementation TSUSCNetworkReachabilityCore

- (TSUSCNetworkReachabilityCore)initWithReachabilityRef:(__SCNetworkReachability *)ref
{
  v6.receiver = self;
  v6.super_class = TSUSCNetworkReachabilityCore;
  v4 = [(TSUSCNetworkReachabilityCore *)&v6 init];
  if (v4)
  {
    CFRetain(ref);
    v4->_reachabilityRef = ref;
  }

  return v4;
}

- (void)dealloc
{
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
  }

  v4.receiver = self;
  v4.super_class = TSUSCNetworkReachabilityCore;
  [(TSUSCNetworkReachabilityCore *)&v4 dealloc];
}

- (BOOL)startNotifyingWithQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  v7 = [block copy];
  notifyBlock = self->_notifyBlock;
  self->_notifyBlock = v7;

  v12.version = 0;
  memset(&v12.retain, 0, 24);
  v12.info = self;
  if (SCNetworkReachabilitySetCallback(self->_reachabilityRef, sub_2770E73CC, &v12) && SCNetworkReachabilitySetDispatchQueue(self->_reachabilityRef, queueCopy))
  {
    v9 = 1;
  }

  else
  {
    v10 = self->_notifyBlock;
    self->_notifyBlock = 0;

    v9 = 0;
  }

  return v9;
}

- (void)stopNotifying
{
  SCNetworkReachabilitySetDispatchQueue(self->_reachabilityRef, 0);
  notifyBlock = self->_notifyBlock;
  self->_notifyBlock = 0;
}

@end