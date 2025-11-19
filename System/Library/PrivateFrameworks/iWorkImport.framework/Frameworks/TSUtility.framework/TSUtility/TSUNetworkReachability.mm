@interface TSUNetworkReachability
+ (__SCNetworkReachability)newNetworkReachabilityRefForInternetConnection;
+ (id)internetReachabilityStatusQueue;
+ (id)networkReachabilityForInternetConnection;
+ (id)networkReachabilityWithAddress:(const sockaddr_in *)a3;
+ (id)networkReachabilityWithHostName:(id)a3;
+ (id)networkReachabilityWithNetworkReachabilityRef:(__SCNetworkReachability *)a3 hostNameOrNil:(id)a4;
+ (id)p_stringForNetworkReachabilityFlags:(unsigned int)a3;
+ (id)p_stringForNetworkReachabilityStatus:(int64_t)a3;
+ (int64_t)networkStatusForFlags:(unsigned int)a3;
+ (void)internetReachabilityStatusWithQueue:(id)a3 completion:(id)a4;
- (TSUNetworkReachability)initWithReachabilityRef:(__SCNetworkReachability *)a3;
- (int64_t)lastKnownStatus;
- (int64_t)statusFromFlags:(unsigned int)a3;
- (sockaddr_in)hostAddress;
- (void)dealloc;
- (void)disableNotifier;
- (void)enableNotifier;
- (void)p_reachabilityFlagsDidChange:(unsigned int)a3;
- (void)p_startNotifier;
- (void)p_stopNotifier;
- (void)p_updateCachedStatus:(int64_t)a3;
- (void)reachabilityStatusWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)updateCachedStatus:(int64_t)a3;
@end

@implementation TSUNetworkReachability

- (TSUNetworkReachability)initWithReachabilityRef:(__SCNetworkReachability *)a3
{
  v14.receiver = self;
  v14.super_class = TSUNetworkReachability;
  v4 = [(TSUNetworkReachability *)&v14 init];
  if (v4)
  {
    v5 = [[TSUSCNetworkReachabilityCore alloc] initWithReachabilityRef:a3];
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
  return [a1 newNetworkReachabilityRefWithAddress:v3];
}

+ (id)networkReachabilityWithNetworkReachabilityRef:(__SCNetworkReachability *)a3 hostNameOrNil:(id)a4
{
  v5 = a4;
  if (!a3)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNetworkReachability networkReachabilityWithNetworkReachabilityRef:hostNameOrNil:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNetworkReachability.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:149 isFatal:0 description:"invalid nil value for '%{public}s'", "reachabilityRef"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v8 = [[TSUNetworkReachability alloc] initWithReachabilityRef:a3];
  v9 = v8;
  if (v5)
  {
    [(TSUNetworkReachability *)v8 setHostName:v5];
  }

  return v9;
}

+ (id)networkReachabilityWithHostName:(id)a3
{
  v4 = a3;
  v5 = [a1 newNetworkReachabilityRefWithHostName:{objc_msgSend(v4, "UTF8String")}];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 networkReachabilityWithNetworkReachabilityRef:v5 hostNameOrNil:v4];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)networkReachabilityWithAddress:(const sockaddr_in *)a3
{
  v4 = [a1 newNetworkReachabilityRefWithAddress:a3];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 networkReachabilityWithNetworkReachabilityRef:v4 hostNameOrNil:0];
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
  v3 = [a1 newNetworkReachabilityRefForInternetConnection];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 networkReachabilityWithNetworkReachabilityRef:v3 hostNameOrNil:0];
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

+ (void)internetReachabilityStatusWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [a1 internetReachabilityStatusQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770E61BC;
    block[3] = &unk_27A702DA8;
    v12 = a1;
    v11 = v7;
    v10 = v6;
    dispatch_async(v8, block);
  }
}

+ (int64_t)networkStatusForFlags:(unsigned int)a3
{
  if (TSUCollaborationNetworkHealthCat_init_token == -1)
  {
    if ((a3 & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_27711506C();
    if ((a3 & 2) == 0)
    {
      return 0;
    }
  }

  LODWORD(v5) = (a3 & 0x28) != 0;
  if ((a3 & 0x10) != 0)
  {
    LODWORD(v5) = 0;
  }

  if ((a3 & 4) != 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = 1;
  }

  if ((a3 & 0x40000) != 0)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

- (int64_t)statusFromFlags:(unsigned int)a3
{
  v3 = *&a3;
  v4 = objc_opt_class();

  return [v4 networkStatusForFlags:v3];
}

- (void)updateCachedStatus:(int64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2770E65EC;
  v4[3] = &unk_27A7025D0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(accessQueue, v4);
}

- (void)p_updateCachedStatus:(int64_t)a3
{
  if (self->_cachedStatus != a3)
  {
    if (TSUCollaborationNetworkHealthCat_init_token != -1)
    {
      sub_277115080();
    }

    self->_cachedStatus = a3;
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

- (void)reachabilityStatusWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  accessQueue = self->_accessQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2770E6908;
  v12[3] = &unk_27A703380;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v10 = v6;
  v11 = v7;
  [v8 internetReachabilityStatusWithQueue:accessQueue completion:v12];
}

- (void)p_reachabilityFlagsDidChange:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [objc_opt_class() networkStatusForFlags:*&a3];
  [(TSUNetworkReachability *)self updateCachedStatus:v5];
  v6 = [(TSUNetworkReachability *)self notificationQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2770E6B00;
  v9[3] = &unk_27A7025D0;
  v9[4] = self;
  v9[5] = v5;
  dispatch_async(v6, v9);

  v7 = [(TSUNetworkReachability *)self reachabilityUpdatedBlock];

  if (v7)
  {
    v8 = [(TSUNetworkReachability *)self reachabilityUpdatedBlock];
    v8[2](v8, v5, v3);
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

+ (id)p_stringForNetworkReachabilityStatus:(int64_t)a3
{
  if (a3 < 4)
  {
    return off_27A7033C8[a3];
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNetworkReachability p_stringForNetworkReachabilityStatus:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNetworkReachability.m"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:442 isFatal:0 description:"Unsupported value!"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

+ (id)p_stringForNetworkReachabilityFlags:(unsigned int)a3
{
  v3 = 45;
  if ((a3 & 0x20000) != 0)
  {
    v4 = 100;
  }

  else
  {
    v4 = 45;
  }

  v5 = 108;
  if ((a3 & 0x10000) == 0)
  {
    v5 = 45;
  }

  v6 = 68;
  if ((a3 & 0x20) == 0)
  {
    v6 = 45;
  }

  v17 = v5;
  v16 = v6;
  v7 = 105;
  if ((a3 & 0x10) == 0)
  {
    v7 = 45;
  }

  v8 = 67;
  if ((a3 & 8) == 0)
  {
    v8 = 45;
  }

  v14 = v8;
  v15 = v7;
  v9 = 99;
  if ((a3 & 4) == 0)
  {
    v9 = 45;
  }

  v10 = 116;
  if ((a3 & 1) == 0)
  {
    v10 = 45;
  }

  v13 = v9;
  v11 = 82;
  if ((a3 & 2) == 0)
  {
    v11 = 45;
  }

  if ((a3 & 0x40000) != 0)
  {
    v3 = 87;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c %c%c%c%c%c%c%c", v3, v11, v10, v13, v14, v15, v16, v17, v4];
}

@end