@interface STNetworkDetector
+ (id)sharedInstance;
- (id)_init;
- (void)_startOfflineDetection;
- (void)_stopOfflineDetection;
- (void)debouncer:(id)a3 didDebounce:(id)a4;
@end

@implementation STNetworkDetector

+ (id)sharedInstance
{
  if (qword_1001E38E8 != -1)
  {
    sub_1001126C0();
  }

  v3 = qword_1001E38E0;

  return v3;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = STNetworkDetector;
  v2 = [(STNetworkDetector *)&v6 init];
  if (v2)
  {
    v3 = [[STDebouncer alloc] initWithMinCoalescenceInterval:60.0 maxCoalescenceInterval:3600.0];
    debouncer = v2->_debouncer;
    v2->_debouncer = v3;

    [(STDebouncer *)v2->_debouncer setDelegate:v2];
    [(STNetworkDetector *)v2 _startOfflineDetection];
  }

  return v2;
}

- (void)_startOfflineDetection
{
  if (!self->_reachabilityRef)
  {
    context.version = 0;
    context.info = self;
    memset(&context.retain, 0, 24);
    address = xmmword_10013F1F0;
    v3 = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, &address);
    self->_reachabilityRef = v3;
    SCNetworkReachabilitySetCallback(v3, sub_100014634, &context);
    SCNetworkReachabilitySetDispatchQueue(self->_reachabilityRef, &_dispatch_main_q);
    flags = 0;
    SCNetworkReachabilityGetFlags(self->_reachabilityRef, &flags);
    [(STNetworkDetector *)self setIsOnline:[(STNetworkDetector *)self _isOnlineWithFlags:flags]];
  }
}

- (void)_stopOfflineDetection
{
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    SCNetworkReachabilitySetDispatchQueue(reachabilityRef, 0);
    self->_reachabilityRef = 0;
  }
}

- (void)debouncer:(id)a3 didDebounce:(id)a4
{
  v5 = [NSNotificationCenter defaultCenter:a3];
  [v5 postNotificationName:@"STNetworkDetectorChangedNotificationName" object:self];
}

@end