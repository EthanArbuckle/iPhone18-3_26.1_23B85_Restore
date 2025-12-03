@interface TSUNetworkReachability
+ (__SCNetworkReachability)newNetworkReachabilityRefForInternetConnection;
+ (id)internetReachabilityStatusQueue;
+ (id)networkReachabilityForInternetConnection;
+ (id)networkReachabilityWithAddress:(const sockaddr_in *)address;
+ (id)networkReachabilityWithHostName:(id)name;
+ (id)networkReachabilityWithNetworkReachabilityRef:(__SCNetworkReachability *)ref hostNameOrNil:(id)nil;
+ (id)p_stringForNetworkReachabilityFlags:(unsigned int)flags;
+ (id)p_stringForNetworkReachabilityStatus:(int64_t)status;
+ (int64_t)networkStatusForFlags:(unsigned int)flags;
+ (void)internetReachabilityStatusWithQueue:(id)queue completion:(id)completion;
- (TSUNetworkReachability)initWithReachabilityRef:(__SCNetworkReachability *)ref;
- (int64_t)lastKnownStatus;
- (int64_t)statusFromFlags:(unsigned int)flags;
- (sockaddr_in)hostAddress;
- (void)dealloc;
- (void)disableNotifier;
- (void)enableNotifier;
- (void)p_reachabilityFlagsDidChange:(unsigned int)change;
- (void)p_startNotifier;
- (void)p_stopNotifier;
- (void)p_updateCachedStatus:(int64_t)status;
- (void)reachabilityStatusWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)updateCachedStatus:(int64_t)status;
@end

@implementation TSUNetworkReachability

- (TSUNetworkReachability)initWithReachabilityRef:(__SCNetworkReachability *)ref
{
  v14.receiver = self;
  v14.super_class = TSUNetworkReachability;
  v4 = [(TSUNetworkReachability *)&v14 init];
  if (v4)
  {
    v5 = [[TSUSCNetworkReachabilityCore alloc] initWithReachabilityRef:ref];
    core = v4->_core;
    v4->_core = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("TSUNetworkReachability.accessQueue", v7);
    accessQueue = v4->_accessQueue;
    v4->_accessQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("TSUNetworkReachability.notificationQueue", v10);
    notificationQueue = v4->_notificationQueue;
    v4->_notificationQueue = v11;

    v4->_cachedStatus = 3;
  }

  return v4;
}

- (void)dealloc
{
  [(TSUNetworkReachability *)self p_stopNotifier];
  v3.receiver = self;
  v3.super_class = TSUNetworkReachability;
  [(TSUNetworkReachability *)&v3 dealloc];
}

- (sockaddr_in)hostAddress
{
  v2 = 0;
  v3 = 0;
  *result.sin_zero = v3;
  result.sin_len = v2;
  result.sin_family = BYTE1(v2);
  result.sin_port = WORD1(v2);
  result.sin_addr = *(&v2 + 4);
  return result;
}

+ (__SCNetworkReachability)newNetworkReachabilityRefForInternetConnection
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[1] = 0;
  v3[0] = 528;
  return [self newNetworkReachabilityRefWithAddress:v3];
}

+ (id)networkReachabilityWithNetworkReachabilityRef:(__SCNetworkReachability *)ref hostNameOrNil:(id)nil
{
  nilCopy = nil;
  if (!ref)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNetworkReachability networkReachabilityWithNetworkReachabilityRef:hostNameOrNil:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNetworkReachability.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:149 isFatal:0 description:"invalid nil value for '%{public}s'", "reachabilityRef"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v8 = [[TSUNetworkReachability alloc] initWithReachabilityRef:ref];
  v9 = v8;
  if (nilCopy)
  {
    [(TSUNetworkReachability *)v8 setHostName:nilCopy];
  }

  return v9;
}

+ (id)networkReachabilityWithHostName:(id)name
{
  nameCopy = name;
  v5 = [self newNetworkReachabilityRefWithHostName:{objc_msgSend(nameCopy, "UTF8String")}];
  if (v5)
  {
    v6 = v5;
    v7 = [self networkReachabilityWithNetworkReachabilityRef:v5 hostNameOrNil:nameCopy];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)networkReachabilityWithAddress:(const sockaddr_in *)address
{
  v4 = [self newNetworkReachabilityRefWithAddress:address];
  if (v4)
  {
    v5 = v4;
    v6 = [self networkReachabilityWithNetworkReachabilityRef:v4 hostNameOrNil:0];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)networkReachabilityForInternetConnection
{
  newNetworkReachabilityRefForInternetConnection = [self newNetworkReachabilityRefForInternetConnection];
  if (newNetworkReachabilityRefForInternetConnection)
  {
    v4 = newNetworkReachabilityRefForInternetConnection;
    v5 = [self networkReachabilityWithNetworkReachabilityRef:newNetworkReachabilityRefForInternetConnection hostNameOrNil:0];
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)internetReachabilityStatusQueue
{
  if (qword_280A63DF0 != -1)
  {
    sub_277115058();
  }

  v3 = qword_280A63DE8;

  return v3;
}

+ (void)internetReachabilityStatusWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (completionCopy)
  {
    internetReachabilityStatusQueue = [self internetReachabilityStatusQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770E61BC;
    block[3] = &unk_27A702DA8;
    selfCopy = self;
    v11 = completionCopy;
    v10 = queueCopy;
    dispatch_async(internetReachabilityStatusQueue, block);
  }
}

+ (int64_t)networkStatusForFlags:(unsigned int)flags
{
  if (TSUCollaborationNetworkHealthCat_init_token == -1)
  {
    if ((flags & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_27711506C();
    if ((flags & 2) == 0)
    {
      return 0;
    }
  }

  LODWORD(v5) = (flags & 0x28) != 0;
  if ((flags & 0x10) != 0)
  {
    LODWORD(v5) = 0;
  }

  if ((flags & 4) != 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = 1;
  }

  if ((flags & 0x40000) != 0)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

- (int64_t)statusFromFlags:(unsigned int)flags
{
  v3 = *&flags;
  v4 = objc_opt_class();

  return [v4 networkStatusForFlags:v3];
}

- (void)updateCachedStatus:(int64_t)status
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2770E65EC;
  v4[3] = &unk_27A7025D0;
  v4[4] = self;
  v4[5] = status;
  dispatch_async(accessQueue, v4);
}

- (void)p_updateCachedStatus:(int64_t)status
{
  if (self->_cachedStatus != status)
  {
    if (TSUCollaborationNetworkHealthCat_init_token != -1)
    {
      sub_277115080();
    }

    self->_cachedStatus = status;
  }
}

- (int64_t)lastKnownStatus
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 3;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770E67D0;
  block[3] = &unk_27A702428;
  block[4] = self;
  block[5] = &v9;
  dispatch_sync(accessQueue, block);
  if (v10[3] == 3)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      if (TSUCollaborationNetworkHealthCat_init_token != -1)
      {
        sub_277115094();
      }
    }

    else
    {
      v7 = 0;
      if ([(TSUNetworkReachabilityCore *)self->_core getReachabilityFlags:&v7])
      {
        v4 = [(TSUNetworkReachability *)self statusFromFlags:v7];
        v10[3] = v4;
        [(TSUNetworkReachability *)self updateCachedStatus:v4];
      }
    }
  }

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (void)reachabilityStatusWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = objc_opt_class();
  accessQueue = self->_accessQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2770E6908;
  v12[3] = &unk_27A703380;
  v13 = queueCopy;
  v14 = handlerCopy;
  v12[4] = self;
  v10 = queueCopy;
  v11 = handlerCopy;
  [v8 internetReachabilityStatusWithQueue:accessQueue completion:v12];
}

- (void)p_reachabilityFlagsDidChange:(unsigned int)change
{
  v3 = *&change;
  v5 = [objc_opt_class() networkStatusForFlags:*&change];
  [(TSUNetworkReachability *)self updateCachedStatus:v5];
  notificationQueue = [(TSUNetworkReachability *)self notificationQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2770E6B00;
  v9[3] = &unk_27A7025D0;
  v9[4] = self;
  v9[5] = v5;
  dispatch_async(notificationQueue, v9);

  reachabilityUpdatedBlock = [(TSUNetworkReachability *)self reachabilityUpdatedBlock];

  if (reachabilityUpdatedBlock)
  {
    reachabilityUpdatedBlock2 = [(TSUNetworkReachability *)self reachabilityUpdatedBlock];
    reachabilityUpdatedBlock2[2](reachabilityUpdatedBlock2, v5, v3);
  }
}

- (void)p_startNotifier
{
  if (![(TSUNetworkReachability *)self notifierActive])
  {
    if (TSUCollaborationNetworkHealthCat_init_token != -1)
    {
      sub_2771150BC();
    }

    v9 = 0;
    if ([(TSUNetworkReachabilityCore *)self->_core getReachabilityFlags:&v9])
    {
      v3 = [objc_opt_class() networkStatusForFlags:v9];
    }

    else
    {
      v3 = 3;
    }

    [(TSUNetworkReachability *)self p_updateCachedStatus:v3];
    objc_initWeak(&location, self);
    accessQueue = self->_accessQueue;
    core = self->_core;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2770E6D58;
    v6[3] = &unk_27A7033A8;
    objc_copyWeak(&v7, &location);
    if ([(TSUNetworkReachabilityCore *)core startNotifyingWithQueue:accessQueue block:v6])
    {
      [(TSUNetworkReachability *)self setNotifierActive:1];
    }

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)p_stopNotifier
{
  if (TSUCollaborationNetworkHealthCat_init_token != -1)
  {
    sub_2771150D0();
  }

  [(TSUNetworkReachabilityCore *)self->_core stopNotifying];
  [(TSUNetworkReachability *)self setNotifierActive:0];

  [(TSUNetworkReachability *)self p_updateCachedStatus:3];
}

- (void)disableNotifier
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770E6ECC;
  block[3] = &unk_27A7023D8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)enableNotifier
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770E7024;
  block[3] = &unk_27A7023D8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

+ (id)p_stringForNetworkReachabilityStatus:(int64_t)status
{
  if (status < 4)
  {
    return off_27A7033C8[status];
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNetworkReachability p_stringForNetworkReachabilityStatus:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNetworkReachability.m"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:442 isFatal:0 description:"Unsupported value!"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

+ (id)p_stringForNetworkReachabilityFlags:(unsigned int)flags
{
  v3 = 45;
  if ((flags & 0x20000) != 0)
  {
    v4 = 100;
  }

  else
  {
    v4 = 45;
  }

  v5 = 108;
  if ((flags & 0x10000) == 0)
  {
    v5 = 45;
  }

  v6 = 68;
  if ((flags & 0x20) == 0)
  {
    v6 = 45;
  }

  v17 = v5;
  v16 = v6;
  v7 = 105;
  if ((flags & 0x10) == 0)
  {
    v7 = 45;
  }

  v8 = 67;
  if ((flags & 8) == 0)
  {
    v8 = 45;
  }

  v14 = v8;
  v15 = v7;
  v9 = 99;
  if ((flags & 4) == 0)
  {
    v9 = 45;
  }

  v10 = 116;
  if ((flags & 1) == 0)
  {
    v10 = 45;
  }

  v13 = v9;
  v11 = 82;
  if ((flags & 2) == 0)
  {
    v11 = 45;
  }

  if ((flags & 0x40000) != 0)
  {
    v3 = 87;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c %c%c%c%c%c%c%c", v3, v11, v10, v13, v14, v15, v16, v17, v4];
}

@end