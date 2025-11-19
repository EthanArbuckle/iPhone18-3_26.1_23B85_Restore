void sub_1170(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock(a1 + 20);
  if (a3 == -536723200)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [[PLBatteryProperties alloc] initWithBatteryEntry:a2];
    [(os_unfair_lock_s *)a1 batteryStatusChanged:v7];

    objc_autoreleasePoolPop(v6);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void sub_1820(uint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_s *a4)
{
  os_unfair_lock_lock(a4 + 20);
  if (dword_13A60 != (a3 != 0))
  {
    v6 = +[NSNotificationCenter defaultCenter];
    if (a3)
    {
      v7 = @"PLDeviceBacklightOnNotification";
    }

    else
    {
      v7 = @"PLDeviceBacklightOffNotification";
    }

    [(NSNotificationCenter *)v6 postNotificationName:v7 object:0];
    dword_13A60 = a3 != 0;
  }

  os_unfair_lock_unlock(a4 + 20);
}

void sub_18B0(void *a1, uint64_t a2, int a3, intptr_t a4)
{
  v7 = objc_autoreleasePoolPush();
  switch(a3)
  {
    case -536870288:
      v8 = +[NSNotificationCenter defaultCenter];
      v9 = @"PLDeviceCanSleepNotification";
      break;
    case -536870144:
      [a1 systemPoweredOn];
      goto LABEL_8;
    case -536870272:
      v8 = +[NSNotificationCenter defaultCenter];
      v9 = @"PLDeviceWillSleepNotification";
      break;
    default:
      goto LABEL_8;
  }

  [(NSNotificationCenter *)v8 postNotificationName:v9 object:a1];
  IOAllowPowerChange([a1 rootDomainConnect], a4);
LABEL_8:

  objc_autoreleasePoolPop(v7);
}

void *logHandle()
{
  if (qword_13B48 != -1)
  {
    sub_93C8();
  }

  return off_13988;
}

void sub_1B74(id a1)
{
  off_13988 = os_log_create("com.apple.powerlog", "energyDebug");
  if (!off_13988)
  {
    off_13988 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_93DC();
    }
  }
}

id sub_2394(void *a1)
{
  v2 = objc_opt_new();
  if (+[PLPowerEventListener hasBaseband])
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  do
  {
    if ([a1 objectForKey:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v3)}])
    {
      v4 = [a1 objectForKeyedSubscript:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v3)}];
      v5 = v2;
    }

    else
    {
      v5 = v2;
      v4 = &off_13A98;
    }

    [v5 addObject:v4];
    v6 = v3 <= 0;
    v3 = (v3 - 1);
  }

  while (!v6);
  v7 = objc_opt_new();
  if (exp2([v2 count]) > 0.0)
  {
    v8 = 0;
    do
    {
      if ([v2 count])
      {
        v9 = 0;
        v10 = -1;
        while (1)
        {
          if ([objc_msgSend(v2 objectAtIndexedSubscript:{v9), "integerValue"}] <= 1)
          {
            v11 = ((v8 >> (v10 + [v2 count])) & 1);
            if ([objc_msgSend(v2 objectAtIndexedSubscript:{v9), "integerValue"}] != v11)
            {
              break;
            }
          }

          ++v9;
          --v10;
          if ([v2 count] <= v9)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        [v7 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v8)}];
      }

      v8 = (v8 + 1);
    }

    while (exp2([v2 count]) > v8);
  }

  return [NSSet setWithArray:v7];
}

NSDictionary *sub_3754(uint64_t a1)
{
  v3[0] = @"duration";
  v4[0] = [NSNumber numberWithLong:*(a1 + 40)];
  v3[1] = @"energy";
  v4[1] = [NSNumber numberWithLong:*(a1 + 48)];
  v3[2] = @"energyAbsolute";
  v4[2] = [NSNumber numberWithLong:*(a1 + 56)];
  v3[3] = @"energyAbsoluteNet";
  v4[3] = [NSNumber numberWithLong:*(a1 + 64)];
  v3[4] = @"energyPassedChargeNet";
  v4[4] = [NSNumber numberWithLong:*(a1 + 72)];
  v3[5] = @"energyChargeAccumNet";
  v4[5] = [NSNumber numberWithLong:*(a1 + 80)];
  v3[6] = @"energyRaw";
  v4[6] = [NSNumber numberWithLong:*(a1 + 88)];
  v3[7] = @"stateCount";
  v4[7] = [NSNumber numberWithInt:*(a1 + 100)];
  v3[8] = @"pluggedIn";
  v4[8] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) currentState] & 1);
  v3[9] = @"charging";
  v4[9] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", ([*(a1 + 32) currentState] >> 3) & 1);
  v3[10] = @"screenOn";
  v4[10] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", ([*(a1 + 32) currentState] >> 2) & 1);
  v3[11] = @"awake";
  v4[11] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", ([*(a1 + 32) currentState] >> 1) & 1);
  v3[12] = @"lpm";
  v4[12] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", ([*(a1 + 32) currentState] >> 4) & 1);
  v3[13] = @"lpmChanged";
  v4[13] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", ((*(a1 + 96) ^ [*(a1 + 32) currentState]) >> 4) & 1);
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:14];
}

NSDictionary *sub_39A4(uint64_t a1)
{
  v2 = @"value";
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

NSDictionary *sub_3A28(uint64_t a1)
{
  v2[1] = @"duration";
  v3[0] = @"pluggedin_screen";
  v2[0] = @"state";
  v3[1] = [NSNumber numberWithLong:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
}

NSDictionary *sub_3AC0(uint64_t a1)
{
  v2[1] = @"duration";
  v3[0] = @"unpluggedin_screen";
  v2[0] = @"state";
  v3[1] = [NSNumber numberWithLong:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
}

NSDictionary *sub_4278(uint64_t a1)
{
  v4[0] = @"enable";
  v3[0] = @"status";
  v3[1] = @"batteryLevel";
  v1 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 40)];
  v3[2] = @"counter";
  v4[1] = v1;
  v4[2] = &off_13A80;
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_4328(uint64_t a1)
{
  v4[0] = @"disable";
  v3[0] = @"status";
  v3[1] = @"batteryLevel";
  v1 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 40)];
  v3[2] = @"counter";
  v4[1] = v1;
  v4[2] = &off_13A80;
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_4830(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = @"reason";
  v4 = v1;
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

NSDictionary *sub_4B98(uint64_t a1)
{
  v6[0] = @"rawMaxCapacity";
  [*(a1 + 32) rawMaxCapacity];
  v7[0] = [NSNumber numberWithLongLong:v2];
  v6[1] = @"designCapacity";
  v7[1] = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) designCapacity]);
  v6[2] = @"fullAvailableCapacity";
  [*(a1 + 32) fullAvailableCapacity];
  v7[2] = [NSNumber numberWithLongLong:v3];
  v6[3] = @"nominalChargeCapacity";
  [*(a1 + 32) nominalChargeCapacity];
  v7[3] = [NSNumber numberWithLongLong:v4];
  v6[4] = @"cycleCount";
  v7[4] = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) cycleCount]);
  return [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:5];
}

void sub_4F74(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void *PELLog()
{
  if (qword_13B50 != -1)
  {
    sub_96F0();
  }

  return off_13990;
}

void sub_4FC8(id a1)
{
  off_13990 = os_log_create("com.apple.powerlog", "powerEventListenerDebug");
  if (!off_13990)
  {
    off_13990 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_9704();
    }
  }
}

void sub_5164(id a1)
{
  v1 = +[PLPowerEventListener isiPhone];
  if (v1)
  {
    LOBYTE(v1) = MGGetBoolAnswer();
  }

  byte_13B80 = v1;
}

void sub_519C(id a1)
{
  v1 = MGCopyAnswer();
  byte_13B90 = CFBooleanGetValue(v1) != 0;

  CFRelease(v1);
}

void sub_522C(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    byte_13BA0 = [v1 isEqualToString:@"NonUI"];

    CFRelease(v2);
  }

  else
  {
    byte_13BA0 = 1;
  }
}

void sub_52A0(id a1)
{
  v1 = MGCopyAnswer();
  byte_13BB0 = CFBooleanGetValue(v1) != 0;

  CFRelease(v1);
}

void sub_570C(os_unfair_lock_s *a1, io_registry_entry_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3 == -536870608)
  {
    os_unfair_lock_lock(a1 + 20);
    CFProperty = IORegistryEntryCreateCFProperty(a2, @"IODisplayParameters", kCFAllocatorDefault, 0);
    v8 = [objc_msgSend(objc_msgSend(CFProperty objectForKeyedSubscript:{@"brightness", "objectForKeyedSubscript:", @"value", "intValue"}];
    [(os_unfair_lock_s *)a1 bucketize:v8];
    if (dword_13A64 != v8 > 0)
    {
      v9 = +[NSNotificationCenter defaultCenter];
      if (v8 <= 0)
      {
        v10 = @"PLDeviceBacklightOffNotification";
      }

      else
      {
        v10 = @"PLDeviceBacklightOnNotification";
      }

      [(NSNotificationCenter *)v9 postNotificationName:v10 object:0];
      dword_13A64 = v8 > 0;
    }

    os_unfair_lock_unlock(a1 + 20);
  }

  objc_autoreleasePoolPop(v6);
}

dispatch_queue_t sub_5A68(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  result = dispatch_queue_create(0, v2);
  *(*(a1 + 32) + 88) = result;
  return result;
}

uint64_t sub_5AAC(uint64_t a1, int token)
{
  v6 = 0;
  result = notify_get_state(token, &v6);
  if (!result)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7[1] = @"value";
    v8[0] = v4;
    v7[0] = @"mode";
    v8[1] = [NSNumber numberWithUnsignedLongLong:v6];
    return [v5 LPMStatusChanged:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v8, v7, 2)}];
  }

  return result;
}

NSDictionary *sub_6FB4(uint64_t a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = *(a1 + 40);
  v4[0] = *(a1 + 32);
  v4[1] = @"tcpBadFormat";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*v1 - **(a1 + 48)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7068(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpUnspecv6";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 8) - *(a1[6] + 8)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_711C(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpSynFin";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 16) - *(a1[6] + 16)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_71D0(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpBadFormatIPSec";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 24) - *(a1[6] + 24)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7284(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpNoConnNoList";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 32) - *(a1[6] + 32)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7338(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpNoConnList";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 40) - *(a1[6] + 40)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_73EC(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpListBadSyn";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 48) - *(a1[6] + 48)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_74A0(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpICMP6Unreach";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 56) - *(a1[6] + 56)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7554(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpDeprecate6";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 64) - *(a1[6] + 64)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7608(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpRstInSynRcv";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 72) - *(a1[6] + 72)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_76BC(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpOOOPkt";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 80) - *(a1[6] + 80)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7770(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpDOSPkt";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 88) - *(a1[6] + 88)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7824(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpCleanup";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 96) - *(a1[6] + 96)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_78D8(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tcpSynWindow";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 104) - *(a1[6] + 104)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_798C(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"udpPortUnreach";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 160) - *(a1[6] + 160)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7A40(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"udpFaithPrefix";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 168) - *(a1[6] + 168)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7AF4(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"udpPort0";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 176) - *(a1[6] + 176)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7BA8(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"udpBadLength";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 184) - *(a1[6] + 184)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7C5C(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"tudpBadChksum";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 192) - *(a1[6] + 192)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7D10(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"udpBadMcast";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 200) - *(a1[6] + 200)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7DC4(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"udpCleanup";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 208) - *(a1[6] + 208)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_7E78(void *a1)
{
  v3[0] = @"interface";
  v3[1] = @"packet";
  v1 = a1[5];
  v4[0] = a1[4];
  v4[1] = @"udpBadIPSec";
  v3[2] = @"value";
  v4[2] = [NSNumber numberWithUnsignedLongLong:*(v1 + 216) - *(a1[6] + 216)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

uint64_t checkBucket(uint64_t result)
{
  if (result >= 0xC)
  {
    if (dword_13BC8 > 99)
    {
      return 0;
    }

    else
    {
      NSLog(&cfstr_BucketizeBadBu.isa, result);
      result = 0;
      ++dword_13BC8;
    }
  }

  return result;
}

uint64_t makeBucket(int a1, int a2)
{
  if (a1 == -1)
  {
    LODWORD(v2) = a2;
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (!a1)
  {
    LODWORD(v2) = 0;
  }

  if (a1 < 1 || (v3 = 1717986919 * (100 * (a1 - minBright) / maxBright), v2 = (v3 >> 34) + (v3 >> 63) + 1, v2 < 0xC))
  {
    if (v2 == 11)
    {
      return 10;
    }

    else
    {
      return v2;
    }
  }

  else if (dword_13BC8 > 99)
  {
    return 0;
  }

  else
  {
    NSLog(&cfstr_BucketizeBadBu.isa, v2);
    result = 0;
    ++dword_13BC8;
  }

  return result;
}

id sub_8464(uint64_t a1)
{
  if (qword_13B50 != -1)
  {
    sub_96F0();
  }

  v2 = off_13990;
  if (os_log_type_enabled(off_13990, OS_LOG_TYPE_DEBUG))
  {
    sub_9918(a1, v2);
  }

  v4 = @"value";
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [+[BLSBacklight sharedBacklight](BLSBacklight "sharedBacklight")]);
  return [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"PLAODModeNotification" userInfo:*(a1 + 32), [NSDictionary dictionaryWithObject:[NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1] forKey:@"PLAODModeNotification"]];
}

void sub_8D28(id a1)
{
  v1 = kOSThermalNotificationName;
  global_queue = dispatch_get_global_queue(0, 0);

  notify_register_dispatch(v1, &dword_13C40, global_queue, &stru_10690);
}

void sub_8D84(id a1, int a2)
{
  v2.n128_f64[0] = OSThermalNotificationCurrentLevel();

  _ADClientPushValueForDistributionKey(@"com.apple.springboard.thermalLevels", v2);
}

void sub_8DF0(id a1)
{
  v1 = IOPSCopyPowerSourcesInfo();
  if (v1)
  {
    v2 = v1;
    v3 = IOPSPowerSourceSupported();
    byte_13C44 = CFBooleanGetValue(v3) != 0;

    CFRelease(v2);
  }
}

void PLEventModuleInitializer()
{
  if (!qword_13C50)
  {
    v0 = objc_autoreleasePoolPush();
    v1 = [PLEventListener alloc];
    xpc_event_module_get_queue();
  }
}

void sub_93DC()
{
  v0 = 136315394;
  v1 = "com.apple.powerlog";
  v2 = 2080;
  v3 = "energyDebug";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "err creating log for %s %s", &v0, 0x16u);
}

uint64_t sub_94BC(char a1, char a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a1 & 1;
  *(buf + 4) = 1024;
  *(buf + 10) = a2 & 1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "isCharging:%d, isPlugged:%d", buf, 0xEu);
  if (qword_13B48 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_13B48, &stru_10378);
  return 0;
}

uint64_t sub_954C()
{
  sub_4F5C();
  sub_4F74(&dword_0, v0, v1, "energy:%.2f, unclamped:%.2f", v2, v3, v4, v5, v7);
  if (qword_13B48 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_13B48, &stru_10378);
  return 0;
}

uint64_t sub_95E8()
{
  sub_4F5C();
  sub_4F74(&dword_0, v0, v1, "energyAbsolute:%.2f, unclamped:%.2f", v2, v3, v4, v5, v7);
  if (qword_13B48 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_13B48, &stru_10378);
  return 0;
}

void sub_9704()
{
  v0 = 136315394;
  v1 = "com.apple.powerlog";
  v2 = 2080;
  v3 = "powerEventListenerDebug";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "err creating log for %s %s", &v0, 0x16u);
}

void sub_9840(NSObject *a1)
{
  v2[0] = 67109120;
  v2[1] = +[PLPowerEventListener hasDCP];
  _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "Failed to register for screen on/off notifications. hasDCP: %d", v2, 8u);
}

void sub_9918(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "screen state received by AOD is %ld", &v3, 0xCu);
}

void xpc_event_module_get_queue()
{
    ;
  }
}