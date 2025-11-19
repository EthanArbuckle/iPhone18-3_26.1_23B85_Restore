@interface PLPowerEventListener
+ (BOOL)hasAOD;
+ (BOOL)hasBaseband;
+ (BOOL)hasDCP;
+ (BOOL)isiPhone;
+ (BOOL)nonUIBuild;
+ (BOOL)supportsLPM;
+ (id)valueForMobileGestaltCapability:(id)a3;
- (BOOL)registerForIOMFBNotifications;
- (BOOL)setupBacklightService;
- (PLPowerEventListener)initWithQueue:(id)a3;
- (id)getCurrentSupplementalDataForInterface:(char *)a3;
- (id)wakeReason;
- (void)LPMStatusChanged:(id)a3;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)batteryStatusChanged:(id)a3;
- (void)dealloc;
- (void)logAggdNetstatsForInterface:(char *)a3 WithCurrStats:(if_packet_stats *)a4 WithPrevStats:(if_packet_stats *)a5;
- (void)logBrightnessBuckets;
- (void)logCANetstatsForInterface:(char *)a3 WithCurrStats:(if_packet_stats *)a4 WithPrevStats:(if_packet_stats *)a5;
- (void)logNetworkSupplementalStatsForInterface:(char *)a3;
- (void)logSupStats;
- (void)setupBatterySaverModeForNotification:(id)a3;
- (void)systemPoweredOn;
- (void)validateCurrentStatistics:(if_packet_stats *)a3 withPrevious:(if_packet_stats *)a4;
@end

@implementation PLPowerEventListener

+ (BOOL)hasBaseband
{
  if (qword_13B98 != -1)
  {
    sub_97DC();
  }

  return byte_13B90;
}

+ (BOOL)supportsLPM
{
  if (qword_13BB8 != -1)
  {
    sub_9804();
  }

  return byte_13BB0;
}

- (void)systemPoweredOn
{
  v3 = [(PLPowerEventListener *)self wakeReason];
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:v3 forKey:@"PLDeviceDidWakeSystemReason"];
  v5 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v5 postNotificationName:@"PLDeviceDidWakeNotification" object:self userInfo:v4];
}

- (id)wakeReason
{
  v4 = 256;
  memset(v5, 0, sizeof(v5));
  if ((sysctlbyname("kern.wakereason", v5, &v4, 0, 0) & 0x80000000) == 0)
  {
    return [+[NSString stringWithUTF8String:](NSString stringByTrimmingCharactersInSet:v5), "stringByTrimmingCharactersInSet:", +[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  }

  v3 = __error();
  NSLog(&cfstr_CouldNotGetWak.isa, *v3);
  return @"<unknown>";
}

+ (BOOL)hasDCP
{
  if (qword_13B60 != -1)
  {
    sub_97A0();
  }

  return byte_13B58;
}

+ (id)valueForMobileGestaltCapability:(id)a3
{
  result = MGCopyAnswerWithError();
  qword_13B68 = result;
  return result;
}

+ (BOOL)isiPhone
{
  if (qword_13B78 != -1)
  {
    sub_97B4();
  }

  return byte_13B70;
}

+ (BOOL)hasAOD
{
  if (qword_13B88 != -1)
  {
    sub_97C8();
  }

  return byte_13B80;
}

+ (BOOL)nonUIBuild
{
  if (qword_13BA8 != -1)
  {
    sub_97F0();
  }

  return byte_13BA0;
}

- (PLPowerEventListener)initWithQueue:(id)a3
{
  v12.receiver = self;
  v12.super_class = PLPowerEventListener;
  v4 = [(PLPowerEventListener *)&v12 init];
  if (!v4)
  {
    goto LABEL_16;
  }

  v4->prev_ifmsupp_pstats = objc_alloc_init(NSMutableDictionary);
  v4->_loggingLock._os_unfair_lock_opaque = 0;
  v5 = IONotificationPortCreate(kIOMasterPortDefault);
  v4->ioNotifyPort = v5;
  IONotificationPortSetDispatchQueue(v5, a3);
  v6 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
  v4->batteryEntry = MatchingService;
  v8 = IOServiceAddInterestNotification(v4->ioNotifyPort, MatchingService, "IOGeneralInterest", sub_1170, v4, &v4->notificationRef);
  if (!v8)
  {
    v4->systemPowerPortRef = 0;
    v4->rootDomainConnect = IORegisterForSystemPower(v4, &v4->systemPowerPortRef, sub_18B0, &v4->pmNotifier);
    IONotificationPortSetDispatchQueue(v4->systemPowerPortRef, a3);
    if (+[PLPowerEventListener hasAOD])
    {
      v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v4->_AODNotificationQueue = dispatch_queue_create(0, v9);
      [+[BLSBacklight sharedBacklight](BLSBacklight "sharedBacklight")];
    }

    if (+[PLPowerEventListener hasDCP])
    {
      if (![(PLPowerEventListener *)v4 registerForIOMFBNotifications])
      {
LABEL_8:
        if (qword_13B50 != -1)
        {
          sub_9818();
        }

        v10 = off_13990;
        if (os_log_type_enabled(off_13990, OS_LOG_TYPE_ERROR))
        {
          sub_9840(v10);
        }

        return 0;
      }
    }

    else if (![(PLPowerEventListener *)v4 setupBacklightService])
    {
      goto LABEL_8;
    }

    if (+[PLPowerEventListener supportsLPM])
    {
      [(PLPowerEventListener *)v4 setupBatterySaverModeForNotification:@"com.apple.system.lowpowermode"];
    }

LABEL_16:
    [(PLPowerEventListener *)v4 logSupStats];
    [NSTimer scheduledTimerWithTimeInterval:v4 target:"logSupStats" selector:0 userInfo:1 repeats:86400.0];
    [NSTimer scheduledTimerWithTimeInterval:v4 target:"logBrightnessBuckets" selector:0 userInfo:1 repeats:86400.0];
    return v4;
  }

  NSLog(&cfstr_ErrorCallingIo.isa, v8);

  return 0;
}

- (BOOL)setupBacklightService
{
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, [NSDictionary dictionaryWithObject:[NSDictionary dictionaryWithObject:[NSNumber numberWithBool:1] forKey:@"backlight-control"] forKey:@"IOPropertyMatch"]);
  self->backlightService = MatchingService;
  self->notificationRef = 0;
  v4 = IOServiceAddInterestNotification(self->ioNotifyPort, MatchingService, "IOGeneralInterest", sub_570C, self, &self->notificationRef);
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_ErrorCallingIo_0.isa, v4);
  }

  else
  {
    os_unfair_lock_lock(&self->_loggingLock);
    maxBright = -1;
    minBright = -1;
    CFProperty = IORegistryEntryCreateCFProperty(self->backlightService, @"IODisplayParameters", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      Value = CFDictionaryGetValue(CFProperty, @"brightness");
      if (Value)
      {
        v9 = Value;
        v10 = CFDictionaryGetValue(Value, @"min");
        if (v10)
        {
          CFNumberGetValue(v10, kCFNumberSInt32Type, &minBright);
          v11 = CFDictionaryGetValue(v9, @"max");
          if (v11)
          {
            CFNumberGetValue(v11, kCFNumberSInt32Type, &maxBright);
            v12 = CFDictionaryGetValue(v9, @"value");
            if (v12)
            {
              valuePtr = 0;
              CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
              [(PLPowerEventListener *)self bucketize:valuePtr];
            }
          }
        }
      }

      CFRelease(v7);
    }

    os_unfair_lock_unlock(&self->_loggingLock);
  }

  return v5 == 0;
}

- (BOOL)registerForIOMFBNotifications
{
  v11 = 0;
  if (IOMobileFramebufferGetMainDisplay())
  {
    v3 = 1;
  }

  else
  {
    v3 = v11 == 0;
  }

  v4 = !v3;
  if (v3)
  {
    if (qword_13B50 != -1)
    {
      sub_9818();
    }

    v8 = off_13990;
    if (os_log_type_enabled(off_13990, OS_LOG_TYPE_ERROR))
    {
      sub_98D4(v8);
    }
  }

  else
  {
    if (qword_13B50 != -1)
    {
      sub_9818();
    }

    v5 = off_13990;
    if (os_log_type_enabled(off_13990, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "IOMFB initializing", v10, 2u);
    }

    RunLoopSource = IOMobileFramebufferGetRunLoopSource();
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
    IOMobileFramebufferEnablePowerNotifications();
    [(PLPowerEventListener *)self setFrameBuffer:v11];
  }

  return v4;
}

- (void)setupBatterySaverModeForNotification:(id)a3
{
  out_token = -1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5A68;
  block[3] = &unk_10478;
  block[4] = self;
  if (qword_13BC0 != -1)
  {
    dispatch_once(&qword_13BC0, block);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5AAC;
  v5[3] = &unk_105E0;
  v5[4] = self;
  v5[5] = a3;
  notify_register_dispatch([a3 UTF8String], &out_token, -[PLPowerEventListener LPMNotificationQueue](self, "LPMNotificationQueue"), v5);
}

- (void)dealloc
{
  ioNotifyPort = self->ioNotifyPort;
  if (ioNotifyPort)
  {
    IONotificationPortDestroy(ioNotifyPort);
    self->ioNotifyPort = 0;
  }

  notificationRef = self->notificationRef;
  if (notificationRef)
  {
    IOObjectRelease(notificationRef);
    self->notificationRef = 0;
  }

  batteryEntry = self->batteryEntry;
  if (batteryEntry)
  {
    IOObjectRelease(batteryEntry);
    self->batteryEntry = 0;
  }

  IODeregisterForSystemPower(&self->pmNotifier);
  systemPowerPortRef = self->systemPowerPortRef;
  if (systemPowerPortRef)
  {
    IONotificationPortDestroy(systemPowerPortRef);
  }

  rootDomainConnect = self->rootDomainConnect;
  if (rootDomainConnect)
  {
    IOServiceClose(rootDomainConnect);
    self->rootDomainConnect = 0;
  }

  if (+[PLPowerEventListener hasDCP]&& self->_frameBuffer)
  {
    IOMobileFramebufferDisablePowerNotifications();
    CFRelease(self->_frameBuffer);
  }

  if (+[PLPowerEventListener hasAOD])
  {
    [+[BLSBacklight sharedBacklight](BLSBacklight "sharedBacklight")];
  }

  backlightService = self->backlightService;
  if (backlightService)
  {
    IOObjectRelease(backlightService);
    self->backlightService = 0;
  }

  wranglerMatchPortRef = self->wranglerMatchPortRef;
  if (wranglerMatchPortRef)
  {
    IONotificationPortDestroy(wranglerMatchPortRef);
  }

  wranglerIterator = self->wranglerIterator;
  if (wranglerIterator)
  {
    IOObjectRelease(wranglerIterator);
  }

  v11.receiver = self;
  v11.super_class = PLPowerEventListener;
  [(PLPowerEventListener *)&v11 dealloc];
}

- (void)logSupStats
{
  v5 = 0;
  if (!getifaddrs(&v5))
  {
    v3 = v5;
    if (v5)
    {
      do
      {
        ifa_addr = v3->ifa_addr;
        if (ifa_addr && v3->ifa_data && (v3->ifa_flags & 8) == 0 && ifa_addr->sa_family == 18)
        {
          [(PLPowerEventListener *)self logNetworkSupplementalStatsForInterface:v3->ifa_name];
        }

        v3 = v3->ifa_next;
      }

      while (v3);
      if (v5)
      {
        freeifaddrs(v5);
      }
    }
  }
}

- (id)getCurrentSupplementalDataForInterface:(char *)a3
{
  memset(v22, 0, 224);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v23 = 712;
  *v24 = xmmword_BAE0;
  v26 = 5;
  v25 = if_nametoindex(a3);
  if (sysctl(v24, 6u, &v4, &v23, 0, 0) == -1)
  {
    return 0;
  }

  else
  {
    return [NSData dataWithBytes:v22 length:256, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21];
  }
}

- (void)validateCurrentStatistics:(if_packet_stats *)a3 withPrevious:(if_packet_stats *)a4
{
  if (a4->var0 > a3->var0 || a4->var1 > a3->var1 || a4->var2 > a3->var2 || a4->var3 > a3->var3 || a4->var4 > a3->var4 || a4->var5 > a3->var5 || a4->var6 > a3->var6 || a4->var7 > a3->var7 || a4->var8 > a3->var8 || a4->var9 > a3->var9 || a4->var10 > a3->var10 || a4->var11 > a3->var11 || a4->var12 > a3->var12 || a4->var13 > a3->var13 || a4->var15 > a3->var15 || a4->var16 > a3->var16 || a4->var17 > a3->var17 || a4->var18 > a3->var18 || a4->var19 > a3->var19 || a4->var20 > a3->var20 || a4->var21 > a3->var21 || a4->var22 > a3->var22)
  {
    NSLog(&cfstr_NetworkSupplem.isa, a2);
    *a4->var23 = 0u;
    *&a4->var23[2] = 0u;
    *&a4->var19 = 0u;
    *&a4->var21 = 0u;
    *&a4->var15 = 0u;
    *&a4->var17 = 0u;
    *&a4->var14[2] = 0u;
    *&a4->var14[4] = 0u;
    *&a4->var12 = 0u;
    *a4->var14 = 0u;
    *&a4->var8 = 0u;
    *&a4->var10 = 0u;
    *&a4->var4 = 0u;
    *&a4->var6 = 0u;
    *&a4->var0 = 0u;
    *&a4->var2 = 0u;
  }
}

- (void)logNetworkSupplementalStatsForInterface:(char *)a3
{
  v5 = [(PLPowerEventListener *)self getCurrentSupplementalDataForInterface:?];
  if (v5)
  {
    v6 = v5;
    v7 = [NSString stringWithCString:a3 encoding:4];
    v8 = [(NSMutableDictionary *)self->prev_ifmsupp_pstats objectForKey:v7];
    if (v8)
    {
      v9 = v8;
      v10 = [v6 bytes];
      v11 = [v9 bytes];
      [(PLPowerEventListener *)self validateCurrentStatistics:v10 withPrevious:v11];
      [(PLPowerEventListener *)self logAggdNetstatsForInterface:a3 WithCurrStats:v10 WithPrevStats:v11];
    }

    prev_ifmsupp_pstats = self->prev_ifmsupp_pstats;

    [(NSMutableDictionary *)prev_ifmsupp_pstats setObject:v6 forKey:v7];
  }

  else
  {
    NSLog(&cfstr_NetworkSupplem_0.isa, a3);
  }
}

- (void)logAggdNetstatsForInterface:(char *)a3 WithCurrStats:(if_packet_stats *)a4 WithPrevStats:(if_packet_stats *)a5
{
  v8 = +[NSMutableDictionary dictionary];
  if (a4->var0 != a5->var0)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", a4->var0 - a5->var0), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpBadFormat", a3)}];
  }

  var1 = a4->var1;
  v10 = a5->var1;
  if (var1 != v10)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var1 - v10), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpUnspecv6", a3)}];
  }

  var2 = a4->var2;
  v12 = a5->var2;
  if (var2 != v12)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var2 - v12), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpSynFin", a3)}];
  }

  var3 = a4->var3;
  v14 = a5->var3;
  if (var3 != v14)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var3 - v14), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpBadFormatIPSec", a3)}];
  }

  var4 = a4->var4;
  v16 = a5->var4;
  if (var4 != v16)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var4 - v16), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpNoConnNoList", a3)}];
  }

  var5 = a4->var5;
  v18 = a5->var5;
  if (var5 != v18)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var5 - v18), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpNoConnList", a3)}];
  }

  var6 = a4->var6;
  v20 = a5->var6;
  if (var6 != v20)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var6 - v20), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpListBadSyn", a3)}];
  }

  var7 = a4->var7;
  v22 = a5->var7;
  if (var7 != v22)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var7 - v22), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpICMP6Unreach", a3)}];
  }

  var8 = a4->var8;
  v24 = a5->var8;
  if (var8 != v24)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var8 - v24), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpDeprecate6", a3)}];
  }

  var9 = a4->var9;
  v26 = a5->var9;
  if (var9 != v26)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var9 - v26), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpRstInSynRcv", a3)}];
  }

  var10 = a4->var10;
  v28 = a5->var10;
  if (var10 != v28)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var10 - v28), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpOOOPkt", a3)}];
  }

  var11 = a4->var11;
  v30 = a5->var11;
  if (var11 != v30)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var11 - v30), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpDOSPkt", a3)}];
  }

  var12 = a4->var12;
  v32 = a5->var12;
  if (var12 != v32)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var12 - v32), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpCleanup", a3)}];
  }

  var13 = a4->var13;
  v34 = a5->var13;
  if (var13 != v34)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var13 - v34), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.tcpSynWindow", a3)}];
  }

  var15 = a4->var15;
  v36 = a5->var15;
  if (var15 != v36)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var15 - v36), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.udpPortUnreach", a3)}];
  }

  var16 = a4->var16;
  v38 = a5->var16;
  if (var16 != v38)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var16 - v38), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.udpFaithPrefix", a3)}];
  }

  var17 = a4->var17;
  v40 = a5->var17;
  if (var17 != v40)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var17 - v40), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.udpPort0", a3)}];
  }

  var18 = a4->var18;
  v42 = a5->var18;
  if (var18 != v42)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var18 - v42), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.udpBadLength", a3)}];
  }

  var19 = a4->var19;
  v44 = a5->var19;
  if (var19 != v44)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var19 - v44), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.udpBadChksum", a3)}];
  }

  var20 = a4->var20;
  v46 = a5->var20;
  if (var20 != v46)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var20 - v46), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.udpBadMcast", a3)}];
  }

  var21 = a4->var21;
  v48 = a5->var21;
  if (var21 != v48)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", var21 - v48), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.udpCleanup", a3)}];
  }

  var22 = a4->var22;
  v50 = a5->var22;
  v51 = var22 - v50;
  if (var22 != v50)
  {
    [v8 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", v51), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.netstats.%s.udpBadIPSec", a3)}];
  }

  if ([v8 count])
  {

    ADClientBatchKeys();
  }
}

- (void)logCANetstatsForInterface:(char *)a3 WithCurrStats:(if_packet_stats *)a4 WithPrevStats:(if_packet_stats *)a5
{
  [NSString stringWithFormat:@"%s", a3];
  if (a4->var0 != a5->var0)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var1 != a5->var1)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var2 != a5->var2)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var3 != a5->var3)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var4 != a5->var4)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var5 != a5->var5)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var6 != a5->var6)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var7 != a5->var7)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var8 != a5->var8)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var9 != a5->var9)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var10 != a5->var10)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var11 != a5->var11)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var12 != a5->var12)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var13 != a5->var13)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var15 != a5->var15)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var16 != a5->var16)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var17 != a5->var17)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var18 != a5->var18)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var19 != a5->var19)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var20 != a5->var20)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var21 != a5->var21)
  {
    AnalyticsSendEventLazy();
  }

  if (a4->var22 != a5->var22)
  {
    AnalyticsSendEventLazy();
  }
}

- (void)batteryStatusChanged:(id)a3
{
  v4 = [NSDictionary dictionaryWithObject:a3 forKey:@"PLBatteryStatusPropertiesKey"];
  v5 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v5 postNotificationName:@"PLBatteryStatusDidChangeNotification" object:self userInfo:v4];
}

- (void)LPMStatusChanged:(id)a3
{
  v4 = [NSDictionary dictionaryWithObject:a3 forKey:@"PLLPMStatusDidChangeNotification"];
  v5 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v5 postNotificationName:@"PLLPMStatusDidChangeNotification" object:self userInfo:v4];
}

- (void)logBrightnessBuckets
{
  os_unfair_lock_lock(&self->_loggingLock);
  [(PLPowerEventListener *)self bucketize:0xFFFFFFFFLL];
  v3 = +[NSMutableDictionary dictionary];
  v4 = 0;
  v5 = &qword_13C68;
  do
  {
    v6 = v4 + 10;
    v7 = [NSString stringWithFormat:@"com.apple.power.backlight.values.%03d_%03d", v4, v4 + 10];
    v8 = *v5++;
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v8), v7}];
    v4 = v6;
  }

  while (v6 != 100);
  ADClientBatchKeys();
  qword_13CC0 = 0;
  xmmword_13CA0 = 0u;
  unk_13CB0 = 0u;
  xmmword_13C80 = 0u;
  unk_13C90 = 0u;
  bucketSeconds = 0u;
  *algn_13C70 = 0u;

  os_unfair_lock_unlock(&self->_loggingLock);
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  if ([PLPowerEventListener hasAOD:a3])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_8464;
    v7[3] = &unk_10630;
    v7[4] = self;
    v7[5] = a4;
    dispatch_async_and_wait([(PLPowerEventListener *)self AODNotificationQueue], v7);
  }
}

@end