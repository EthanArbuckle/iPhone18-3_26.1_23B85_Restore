uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void asyncNotificationsCallback(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  v9 = [v8 getObject:a1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = v10;
    if (a4 == 1)
    {
      if (*a3 == 1000)
      {
        [v10 _handleRefreshConnection];
      }
    }

    else if (a4 >= 0xD)
    {
      v12 = a3[4] | (*(a3 + 1) << 32);
      v13 = a3[8] | (*(a3 + 3) << 32);
      v14 = a3[12] | (*(a3 + 5) << 32);
      v15 = a3[16] | (*(a3 + 7) << 32);
      v16 = a3[20] | (*(a3 + 9) << 32);
      v17 = a3[24] | (*(a3 + 11) << 32);
      v18 = *a3;
      if ([v10 logNotifyTest] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110656;
        v21 = v18;
        v22 = 2048;
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        v26 = 2048;
        v27 = v14;
        v28 = 2048;
        v29 = v15;
        v30 = 2048;
        v31 = v16;
        v32 = 2048;
        v33 = v17;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDgPTPPort asyncNotificationsCallback notification=%u arg1=%llu arg2=%llu arg3=%llu arg4=%llu arg5=%llu arg6=%llu", buf, 0x44u);
      }

      [v11 _handleNotification:v18 withArg1:v12 arg2:v13 arg3:v14 arg4:v15 arg5:v16 arg6:v17];
    }
  }

  objc_autoreleasePoolPop(v7);
  v19 = *MEMORY[0x277D85DE8];
}

void asyncNotificationsCallback_0(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  v9 = [v8 getObject:a1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = v10;
    if (a4 == 1)
    {
      if (*a3 == 1000)
      {
        [v10 _handleRefreshConnection];
      }
    }

    else if (a4 >= 3)
    {
      [v10 _handleNotification:*a3 withArgs:a3 + 2 ofCount:a4 - 1];
    }
  }

  objc_autoreleasePoolPop(v7);
}

void asyncNotificationsCallback_1(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  v9 = [v8 getObject:a1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = v10;
    if (a4 == 1)
    {
      if (*a3 == 1000)
      {
        [v10 _handleRefreshConnection];
      }
    }

    else if (a4 >= 5)
    {
      [v10 _handleNotification:*a3 withArgs:a3 + 2 ofCount:a4 - 1];
    }
  }

  objc_autoreleasePoolPop(v7);
}

uint64_t TimeSyncClockGetClockTimeAndGrandmasterIdentityLocalPortForHostTime(void *a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v8 = [a1 clock];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [a1 clock];
      v11 = [v10 convertFromMachAbsoluteToDomainTime:a2 grandmasterUsed:a3 portNumber:a4];

      goto LABEL_4;
    }

    TimeSyncClockGetClockTimeAndGrandmasterIdentityLocalPortForHostTime_cold_2();
  }

  else
  {
    TimeSyncClockGetClockTimeAndGrandmasterIdentityLocalPortForHostTime_cold_1();
  }

  v11 = *v17;
LABEL_4:
  if ((TimeSyncLogCSpi_gotBootArg & 1) == 0)
  {
    os_parse_boot_arg_int();
    TimeSyncLogCSpi_gotBootArg = 1;
  }

  if (TimeSyncLogCSpi_log_c_spi == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = &TSNullgPTPClockIdentity;
    if (a3)
    {
      v12 = a3;
    }

    v13 = *v12;
    if (a4)
    {
      v14 = *a4;
    }

    else
    {
      v14 = 0xFFFF;
    }

    *v17 = 134219520;
    *&v17[4] = a1;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = a4;
    v24 = 2048;
    v25 = v13;
    v26 = 1024;
    v27 = v14;
    v28 = 2048;
    v29 = v11;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockGetClockTimeAndGrandmasterIdentityLocalPortForHostTime(%p, %llu, %p, %p) = (0x%016llx, %hu) %llu", v17, 0x44u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t TimeSyncClockValidRef(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TimeSyncClockValidRef_block_invoke;
  v3[3] = &unk_279DBE008;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(_timeSyncClockInterfaceQueue, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

unint64_t __TimeSyncClockValidRef_block_invoke(uint64_t a1)
{
  result = [_timeSyncClockRefs count];
  if (result)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + 40);
      result = [_timeSyncClockRefs pointerAtIndex:v3];
      if (v4 == result)
      {
        break;
      }

      ++v3;
      result = [_timeSyncClockRefs count];
      if (v3 >= result)
      {
        return result;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

unint64_t __C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, unint64_t *a8)
{
  v14 = IOTS_uint64mul(a1, a2);
  v16 = v15;
  v17 = IOTS_uint64mul(a4, a5);
  if (v16 | v18)
  {
    do
    {
      do
      {
        v19 = v16;
        *(&v20 + 1) = v16;
        *&v20 = v14;
        v14 = v20 >> 1;
        v21 = v18;
        v16 >>= 1;
        v18 >>= 1;
        *(&v20 + 1) = v21;
        *&v20 = v17;
        v17 = v20 >> 1;
      }

      while (v19 > 1);
    }

    while (v21 > 1);
  }

  if ((v14 | v17))
  {
    v23 = v17;
    v22 = v14;
  }

  else
  {
    do
    {
      v22 = v14 >> 1;
      v23 = v17 >> 1;
      v24 = v14 | v17;
      v14 >>= 1;
      v17 >>= 1;
    }

    while ((v24 & 2) == 0);
  }

  v25 = IOTS_uint64mul(v22, a3);
  v27 = v26;
  result = IOTS_uint64mul(v23, a6);
  if (v27 | v29)
  {
    do
    {
      do
      {
        v30 = v27;
        *(&v31 + 1) = v27;
        *&v31 = v25;
        v25 = v31 >> 1;
        v32 = v29;
        v27 >>= 1;
        v29 >>= 1;
        *(&v31 + 1) = v32;
        *&v31 = result;
        result = v31 >> 1;
      }

      while (v30 > 1);
    }

    while (v32 > 1);
  }

  if ((v25 | result))
  {
    v34 = result;
    v33 = v25;
    if (a7)
    {
LABEL_14:
      *a7 = v33;
    }
  }

  else
  {
    do
    {
      v33 = v25 >> 1;
      v34 = result >> 1;
      v35 = v25 | result;
      v25 >>= 1;
      result >>= 1;
    }

    while ((v35 & 2) == 0);
    if (a7)
    {
      goto LABEL_14;
    }
  }

  if (a8)
  {
    *a8 = v34;
  }

  return result;
}

uint64_t scaledInterval(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = IOTS_uint64mul(a1, a2);
  *(&v6 + 1) = v4;
  *&v6 = v3;
  v5 = v6 >> 63;
  v7 = v5 >> 41;
  v8 = (v5 << 23) | (v3 >> 40) & 0x7FFFFF;
  v9 = v8 + 1;
  if (v8 == -1)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v7;
  }

  if (v10 >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock scaledInterval  timeYDelta128 is ridiculously big!\n", v13, 2u);
    }
  }

  else
  {
    *(&v11 + 1) = v10;
    *&v11 = v9;
    return v11 >> 1;
  }

  return v2;
}

BOOL TimeSyncAddgPTPServicesSync(unsigned int a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [TSClockManager sharedClockManagerSyncWithTimeout:a1];

  if (v3 && TimeSyncAddgPTPServices())
  {
    v4 = dispatch_semaphore_create(0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __TimeSyncAddgPTPServicesSync_block_invoke;
    v12[3] = &unk_279DBD538;
    v5 = v4;
    v13 = v5;
    [TSgPTPManager notifyWhengPTPManagerIsAvailable:v12];
    v6 = dispatch_time(0, 1000000 * a1);
    v7 = dispatch_semaphore_wait(v5, v6);
    v8 = v7 == 0;
    if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      TimeSyncAddgPTPServicesSync_cold_1();
    }
  }

  else
  {
    v8 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = "false";
    if (v8)
    {
      v9 = "true";
    }

    *buf = 67109378;
    v15 = a1;
    v16 = 2080;
    v17 = v9;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncAddgPTPServicesSync(%u) = %s", buf, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t IOTS_U128::operator/(__int128 *a1, unint64_t *a2)
{
  v10 = *a1;
  v11 = 0uLL;
  v3 = 128;
  do
  {
    operator<<(&v10, 1, &v8);
    v11 = v9;
    result = v8;
    v10 = v8;
    v5 = *a2;
    v6 = a2[1];
    if (*(&v9 + 1) > v6 || (*(&v9 + 1) == v6 ? (v7 = v9 >= v5) : (v7 = 0), v7))
    {
      v11 = v9 - __PAIR128__(v6, v5);
      result = v8 | 1;
      *&v10 = v8 | 1;
    }

    --v3;
  }

  while (v3);
  return result;
}

uint64_t TSIntervalXtoIntervalY(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1 >> 31 || HIDWORD(a3))
  {
    v7 = IOTS_uint64mul(a1, a3);
    *(&v9 + 1) = v8;
    *&v9 = v7;
    v16 = v9 * 2;
    *buf = a2;
    *&buf[8] = 0;
    v10 = IOTS_U128::operator/(&v16, buf);
    if (v10 == -1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11;
    }

    *(&v13 + 1) = v12;
    *&v13 = v10 + 1;
    v6 = v13 >> 1;
    if (v12 >= 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSIntervalXtoIntervalY  timeYDelta128 is ridiculously big!\n", buf, 2u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *&buf[4] = a1;
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "timeXDelta %llu intervalX %llu intervalY %llu\n", buf, 0x20u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v12 >> 1;
        *&buf[12] = 2048;
        *&buf[14] = v6;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "timeYDelta %llx.%016llx\n", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = (2 * a1 * a3 / a2 + 1) >> 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

_OWORD *operator<<@<X0>(_OWORD *result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  *(a3 + 1) = v3;
  if (a2)
  {
    v6 = a2 - 128;
    if (v6)
    {
      if (a2 <= 127)
      {
        v7 = operator>>(a3, 128 - a2);
        v9 = v8;
        a3[2] = operator<<(a3 + 2, a2) | v7;
        a3[3] = v10 | v9;
        result = operator<<(a3, a2);
        *a3 = result;
        a3[1] = v11;
        return result;
      }

      result = operator<<(a3, v6);
      a3[2] = result;
      a3[3] = v12;
    }

    else
    {
      *(a3 + 1) = *a3;
    }

    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t TSTimeXtoTimeY(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  result = -1;
  if (a4 != -1 && a1 != -1 && a2 != -1)
  {
    if (a1 >= a2)
    {
      v11 = a1 - a2;
    }

    else
    {
      v11 = a2 - a1;
    }

    v12 = TSIntervalXtoIntervalY(v11, a3, a5);
    if (a1 >= a2)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    return v13 + a4;
  }

  return result;
}

unint64_t operator>>(void *a1, int a2)
{
  v2 = a1[1];
  v3 = v2 >> a2;
  if (a2 <= 63)
  {
    v3 = ((2 * v2) << ~a2) | (*a1 >> a2);
  }

  if (a2 == 64)
  {
    v3 = a1[1];
  }

  if (a2)
  {
    return v3;
  }

  else
  {
    return *a1;
  }
}

uint64_t operator<<(void *a1, int a2)
{
  v2 = *a1 << a2;
  if (a2 <= 63)
  {
    v3 = (a1[1] << a2) | (*a1 >> 1 >> ~a2);
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 64)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  if (a2 == 64)
  {
    v5 = *a1;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return *a1;
  }
}

void __InitIORegistryPropertyProxy_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Init IOKRegistryEntry get property proxy", buf, 2u);
  }

  v0 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
  v1 = gProxyDaemonServiceClient;
  gProxyDaemonServiceClient = v0;

  gIORegistryProxyEnabled = os_parse_boot_arg_int() ^ 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    if (gIORegistryProxyEnabled)
    {
      v2 = "enabled";
    }

    else
    {
      v2 = "not enabled";
    }

    *buf = 136315138;
    v5 = v2;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "timesync_disable_ioregistry_proxy is %s\n", buf, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x3Au);
}

void sub_26F090060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F098E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F09A020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSDCTranslationClock;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26F09A884(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void TSBBBrowseServiceReply(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = objc_autoreleasePoolPush();
  v16 = a8;
  v17 = v16;
  if (a4)
  {
    v18 = TSBonjourErrorFromErrorCode(a4);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v18 description];
      v21 = 136315138;
      v22 = [v19 UTF8String];
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error browsing services: %s\n", &v21, 0xCu);
    }

    [v17 stopBrowsing];
  }

  else if ((a2 & 2) != 0)
  {
    [v16 addedServiceWithName:a5 regType:a6 domain:a7 onInterface:a3 withFlags:a2];
  }

  else
  {
    [v16 removedServiceWithName:a5 regType:a6 domain:a7 onInterface:a3 withFlags:a2];
  }

  objc_autoreleasePoolPop(v15);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_26F09EC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSDCgPTPClock;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0()
{
  *v1 = 0;
  *v0 = v2;
  v4 = *(v3 - 40);
}

void TSBIResolvedServiceReply(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, void *a10)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = objc_autoreleasePoolPush();
  v14 = a10;
  [v14 stopResolve];
  if (a4)
  {
    v15 = TSBonjourErrorFromErrorCode(a4);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v15 description];
      v18 = 136315138;
      v19 = [v16 UTF8String];
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error resolving service: %s\n", &v18, 0xCu);
    }
  }

  else
  {
    [v14 resolvedWithHostTarget:a6 port:__rev16(a7)];
  }

  objc_autoreleasePoolPop(v13);
  v17 = *MEMORY[0x277D85DE8];
}

void TSBIGetAddrReply(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = objc_autoreleasePoolPush();
  v13 = a8;
  if (a4)
  {
    v14 = TSBonjourErrorFromErrorCode(a4);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v14 description];
      v36 = 136315138;
      v37 = [v15 UTF8String];
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error resolving service: %s\n", &v36, 0xCu);
    }

    goto LABEL_24;
  }

  if ((a2 & 2) != 0)
  {
    v16 = *(a6 + 1);
    if (v16 == 30)
    {
      v17 = [[TSBonjourIPv6Address alloc] initWithIPv6Address:a6 + 8];
      [v13 setIpv6Address:v17];
      [v13 pokeIPv6Destination];
      v22 = [v13 ipv6Addresses];

      v23 = MEMORY[0x277CBEB18];
      if (v22)
      {
        v24 = [v13 ipv6Addresses];
        v21 = [v23 arrayWithArray:v24];
      }

      else
      {
        v21 = [MEMORY[0x277CBEB18] array];
      }

      [v21 addObject:v17];
      [v13 setIpv6Addresses:v21];
      v31 = [v13 delegate];
      if (!v31)
      {
        goto LABEL_21;
      }

      v32 = v31;
      v33 = [v13 delegate];
      v34 = objc_opt_respondsToSelector();

      if ((v34 & 1) == 0)
      {
        goto LABEL_21;
      }

      v29 = [v13 delegate];
      v30 = [v13 node];
      [v29 didResolveIPv6Address:v17 forInterface:v13 ofNode:v30];
    }

    else
    {
      if (v16 != 2)
      {
        goto LABEL_22;
      }

      v17 = [[TSBonjourIPv4Address alloc] initWithIPv4Address:bswap32(*(a6 + 4))];
      [v13 setIpv4Address:v17];
      v18 = [v13 ipv4Addresses];

      v19 = MEMORY[0x277CBEB18];
      if (v18)
      {
        v20 = [v13 ipv4Addresses];
        v21 = [v19 arrayWithArray:v20];
      }

      else
      {
        v21 = [MEMORY[0x277CBEB18] array];
      }

      [v21 addObject:v17];
      [v13 setIpv4Addresses:v21];
      v25 = [v13 delegate];
      if (!v25)
      {
        goto LABEL_21;
      }

      v26 = v25;
      v27 = [v13 delegate];
      v28 = objc_opt_respondsToSelector();

      if ((v28 & 1) == 0)
      {
        goto LABEL_21;
      }

      v29 = [v13 delegate];
      v30 = [v13 node];
      [v29 didResolveIPv4Address:v17 forInterface:v13 ofNode:v30];
    }

LABEL_21:
  }

LABEL_22:
  if ((a2 & 1) == 0)
  {
    [v13 stopAddressLookup];
  }

LABEL_24:

  objc_autoreleasePoolPop(v12);
  v35 = *MEMORY[0x277D85DE8];
}

id TSBonjourLocalizedErrorDescription(int a1)
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = v2;
  switch(a1)
  {
    case -65568:
      v4 = @"Timeout";
      break;
    case -65567:
      v4 = @"Polling mode";
      break;
    case -65566:
      v4 = @"No router";
      break;
    case -65565:
      v4 = @"NAT port mapping disabled";
      break;
    case -65564:
      v4 = @"NAT port mapping is unsupported";
      break;
    case -65563:
      v4 = @"Service is not running";
      break;
    case -65562:
      v4 = @"Transient";
      break;
    case -65561:
      v4 = @"Bad Key";
      break;
    case -65560:
      v4 = @"Bad Sig";
      break;
    case -65559:
      v4 = @"Bad Time";
      break;
    case -65558:
      v4 = @"Double NAT";
      break;
    case -65557:
      v4 = @"NAT Traversal";
      break;
    case -65556:
      v4 = @"No such key";
      break;
    case -65555:
      v4 = @"No auth";
      break;
    case -65554:
      v4 = @"No such record";
      break;
    case -65553:
      v4 = @"Refused";
      break;
    case -65552:
      v4 = @"Bad interface index";
      break;
    case -65551:
      v4 = @"Incompatible";
      break;
    case -65550:
      v4 = @"Firewall";
      break;
    case -65549:
      v4 = @"Invalid";
      break;
    case -65548:
      v4 = @"Name conflict";
      break;
    case -65547:
      v4 = @"Already registered";
      break;
    case -65546:
      goto LABEL_5;
    case -65545:
      v4 = @"Not initialized";
      break;
    case -65544:
      v4 = @"Unsupported";
      break;
    case -65543:
      v4 = @"Bad flags";
      break;
    case -65542:
      v4 = @"Bad state";
      break;
    case -65541:
      v4 = @"Bad reference";
      break;
    case -65540:
      v4 = @"Bad parameter";
      break;
    case -65539:
      v4 = @"No memory";
      break;
    case -65538:
      v4 = @"No such name";
      break;
    case -65537:
      v4 = @"Unknown DNSSD Error";
      break;
    default:
      if (a1)
      {
LABEL_5:
        v4 = @"Undefined DNS SD Error";
      }

      else
      {
        v4 = @"No error.";
      }

      break;
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_287F0FAF8 table:0];

  return v5;
}

id TSBonjourLocalizedFailureReason(int a1)
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = v2;
  switch(a1)
  {
    case -65568:
      v4 = @"Timeout";
      break;
    case -65567:
      v4 = @"Polling mode";
      break;
    case -65566:
      v4 = @"No router";
      break;
    case -65565:
      v4 = @"NAT port mapping disabled";
      break;
    case -65564:
      v4 = @"NAT port mapping is unsupported";
      break;
    case -65563:
      v4 = @"Service is not running";
      break;
    case -65562:
      v4 = @"Transient";
      break;
    case -65561:
      v4 = @"Bad Key";
      break;
    case -65560:
      v4 = @"Bad Sig";
      break;
    case -65559:
      v4 = @"Bad Time";
      break;
    case -65558:
      v4 = @"Double NAT";
      break;
    case -65557:
      v4 = @"NAT Traversal";
      break;
    case -65556:
      v4 = @"No such key";
      break;
    case -65555:
      v4 = @"No auth";
      break;
    case -65554:
      v4 = @"No such record";
      break;
    case -65553:
      v4 = @"Refused";
      break;
    case -65552:
      v4 = @"A bad interface index was provided.";
      break;
    case -65551:
      v4 = @"Incompatible";
      break;
    case -65550:
      v4 = @"Firewall";
      break;
    case -65549:
      v4 = @"Invalid";
      break;
    case -65548:
      v4 = @"The name conflicts with an already registered service";
      break;
    case -65547:
      v4 = @"The service is already registered.";
      break;
    case -65546:
      goto LABEL_5;
    case -65545:
      v4 = @"Not initialized";
      break;
    case -65544:
      v4 = @"An unsupported request was made";
      break;
    case -65543:
      v4 = @"Bad flags";
      break;
    case -65542:
      v4 = @"Bad state";
      break;
    case -65541:
      v4 = @"A bad reference was provided.";
      break;
    case -65540:
      v4 = @"A bad parameter was provided.";
      break;
    case -65539:
      v4 = @"Could not allocate memory.";
      break;
    case -65538:
      v4 = @"The requested name does not exist";
      break;
    case -65537:
      v4 = @"Unknown DNSSD Error";
      break;
    default:
      if (a1)
      {
LABEL_5:
        v4 = @"Undefined DNS SD Error";
      }

      else
      {
        v4 = @"No error.";
      }

      break;
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_287F0FAF8 table:0];

  return v5;
}

id TSBonjourErrorFromErrorCode(int a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = TSBonjourLocalizedErrorDescription(a1);
  v3 = TSBonjourLocalizedFailureReason(a1);
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA470];
  v10[0] = *MEMORY[0x277CCA450];
  v10[1] = v5;
  v11[0] = v2;
  v11[1] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v4 errorWithDomain:@"DNSSDError" code:a1 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

__n128 IOTS_U128::operator*@<Q0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = HIDWORD(v4);
  v9 = v4;
  v10 = HIDWORD(v6);
  v11 = v6 * HIDWORD(v4);
  v12 = HIDWORD(v6) * v4;
  v13 = __CFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    v15 = 0x100000000;
  }

  else
  {
    v15 = 0;
  }

  v16 = __PAIR128__(v15, v6 * v4) + __PAIR128__(HIDWORD(v14) + HIDWORD(v6) * HIDWORD(v4), v14 << 32);
  v17 = HIDWORD(v5);
  v18 = v5;
  v19 = HIDWORD(v7);
  v20 = *a2;
  v21 = v7 * HIDWORD(v5);
  v22 = HIDWORD(v7) * v5;
  v13 = __CFADD__(v21, v22);
  v23 = v21 + v22;
  if (v13)
  {
    v24 = 0x100000000;
  }

  else
  {
    v24 = 0;
  }

  v25 = __PAIR128__(v24, v7 * v5) + __PAIR128__(HIDWORD(v23) + HIDWORD(v7) * HIDWORD(v5), v23 << 32);
  v26 = v7 * v4;
  v27 = v7 * v8;
  v28 = v19 * v9;
  v13 = __CFADD__(v27, v28);
  v29 = v27 + v28;
  if (v13)
  {
    v30 = 0x100000000;
  }

  else
  {
    v30 = 0;
  }

  v31 = __PAIR128__(v30, v26) + __PAIR128__(HIDWORD(v29) + v19 * v8, v29 << 32);
  v32 = v6 * v5;
  v33 = a2[1] * v17;
  v34 = v10 * v18;
  v13 = __CFADD__(v33, v34);
  v35 = v33 + v34;
  if (v13)
  {
    v36 = 0x100000000;
  }

  else
  {
    v36 = 0;
  }

  v45 = v31;
  v46 = 0uLL;
  v43 = __PAIR128__(v36, v32) + __PAIR128__(HIDWORD(v35) + v10 * v17, v35 << 32);
  v44 = 0uLL;
  IOTS_U256::operator+(&v45, &v43, v47);
  v46 = v16;
  v45 = 0uLL;
  operator<<(v47, 64, &v41);
  v43 = v41;
  v44 = v42;
  v42 = 0uLL;
  v41 = v25;
  IOTS_U256::operator+(&v45, &v43, &v39);
  v37 = v40;
  *a3 = v39;
  a3[1] = v37;
  IOTS_U256::operator+(a3, &v41, &v39);
  result = v40;
  *a3 = v39;
  a3[1] = result;
  return result;
}

uint64_t IOTS_U256::operator+@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16) + *(result + 16);
  v5 = *result;
  v4 = *(result + 8);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *a2 + *result;
  *a3 = v8;
  *(a3 + 16) = v3;
  if (v6 > *(&v8 + 1) || (v7 > v8 ? (v9 = v6 == *(&v8 + 1)) : (v9 = 0), !v9 ? (v10 = 0) : (v10 = 1), v4 == *(&v8 + 1) ? (v11 = v8 >= v5) : (v11 = 1), v11 ? (v12 = v4 > *(&v8 + 1)) : (v12 = 1), !v12 ? (v13 = v10 == 0) : (v13 = 0), !v13))
  {
    *(a3 + 16) = v3 + 1;
    if (v3 == -1)
    {
      *(a3 + 24) = *(&v3 + 1) + 1;
    }
  }

  return result;
}

double operator*@<D0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4[0] = a2;
  v4[1] = 0;
  *&result = IOTS_U128::operator*(a1, v4, a3).n128_u64[0];
  return result;
}

double operator*@<D0>(unint64_t a1@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v4[0] = a1;
  v4[1] = 0;
  *&result = IOTS_U128::operator*(v4, a2, a3).n128_u64[0];
  return result;
}

unint64_t __C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v10 = IOTS_uint64mul(a1, a2);
  v12 = v11;
  result = IOTS_uint64mul(a3, a4);
  if (v12 | v14)
  {
    do
    {
      do
      {
        v15 = v12;
        *(&v16 + 1) = v12;
        *&v16 = v10;
        v10 = v16 >> 1;
        v17 = v14;
        v12 >>= 1;
        v14 >>= 1;
        *(&v16 + 1) = v17;
        *&v16 = result;
        result = v16 >> 1;
      }

      while (v15 > 1);
    }

    while (v17 > 1);
  }

  if ((v10 | result))
  {
    v19 = result;
    v18 = v10;
    if (a5)
    {
LABEL_7:
      *a5 = v18;
    }
  }

  else
  {
    do
    {
      v18 = v10 >> 1;
      v19 = result >> 1;
      v20 = v10 | result;
      v10 >>= 1;
      result >>= 1;
    }

    while ((v20 & 2) == 0);
    if (a5)
    {
      goto LABEL_7;
    }
  }

  if (a6)
  {
    *a6 = v19;
  }

  return result;
}

void sub_26F0AD708(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_26F0AD8D4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_26F0AEC90(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

unint64_t IIR(IOTS_U128 *a1, IOTS_U128 a2, unsigned int a3)
{
  hi = a2.hi;
  lo = a2.lo;
  v7 = a3;
  result = operator>>(a1, a3);
  v10 = hi >> v7;
  if (a3 > 0x3F)
  {
    v11 = 0;
  }

  else
  {
    v10 = (hi << -a3) | (lo >> a3);
    v11 = hi >> a3;
  }

  if (a3 == 64)
  {
    v10 = hi;
    v11 = 0;
  }

  if (!a3)
  {
    v10 = lo;
    v11 = hi;
  }

  if (a1->lo >= result)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  *a1 = (__PAIR128__(v11 - v9 + a1->hi, a1->lo - result) + __PAIR128__(v12, v10));
  return result;
}

void sub_26F0B2244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void TSBARegisterServiceReply(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = objc_autoreleasePoolPush();
  if (a3)
  {
    v14 = TSBonjourErrorFromErrorCode(a3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v14 description];
      v17 = 136315138;
      v18 = [v15 UTF8String];
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error registering service: %s\n", &v17, 0xCu);
    }
  }

  else
  {
    [a7 registeredServiceWithName:a4 regType:a5 domain:a6 withFlags:a2];
  }

  objc_autoreleasePoolPop(v13);
  v16 = *MEMORY[0x277D85DE8];
}

TSClockInterface *TimeSyncClockCreateWithClockIdentifier(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [[TSClockInterface alloc] initWithClockIdentifier:a1];
  if (v2)
  {
    if (TimeSyncClockCreateWithClockIdentifier_onceToken != -1)
    {
      TimeSyncClockCreateWithClockIdentifier_cold_1();
    }

    v3 = v2;
    *v6 = MEMORY[0x277D85DD0];
    *&v6[8] = 3221225472;
    *&v6[16] = __TimeSyncClockAddRef_block_invoke;
    v7 = &__block_descriptor_40_e5_v8__0l;
    v8 = v3;
    dispatch_sync(_timeSyncClockInterfaceQueue, v6);
  }

  else
  {
    TimeSyncClockCreateWithClockIdentifier_cold_2();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 134218240;
    *&v6[4] = a1;
    *&v6[12] = 2048;
    *&v6[14] = v2;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockCreateWithClockIdentifier(0x%016llx) = %p", v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __TimeSyncClockCreateWithClockIdentifier_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:258];
  v1 = _timeSyncClockRefs;
  _timeSyncClockRefs = v0;

  _timeSyncClockInterfaceQueue = dispatch_queue_create("com.apple.timesync.timesyncclockinterface", 0);

  return MEMORY[0x2821F96F8]();
}

void TimeSyncClockDispose(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10) = 134217984;
    *(&v10 + 4) = a1;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockDispose(%p)", &v10, 0xCu);
  }

  if (TimeSyncClockValidRef(a1))
  {
    v2 = [a1 clock];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v4 = +[TSClockManager sharedClockManager];
      v5 = [a1 clock];
      [v4 removeUserFilteredClockWithIdentifier:objc_msgSend(v5 error:{"clockIdentifier"), 0}];
    }

    *&v10 = MEMORY[0x277D85DD0];
    *(&v10 + 1) = 3221225472;
    v11 = __TimeSyncClockRemoveRef_block_invoke;
    v12 = &__block_descriptor_40_e5_v8__0l;
    v13 = a1;
    dispatch_sync(_timeSyncClockInterfaceQueue, &v10);
    if ((TimeSyncClockValidRef(a1) & 1) == 0)
    {
      v6 = [a1 clock];
      [v6 removeClient:a1];

      v7 = +[TSClockManager sharedClockManager];
      v8 = [v7 translationClock];
      [v8 removeClient:a1];
    }
  }

  else
  {
    TimeSyncClockDispose_cold_1();
    a1 = v10;
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t TimeSyncClockGetHostTimeForClockTime(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v4 = [a1 clock];
    v5 = [v4 convertFromDomainToMachAbsoluteTime:a2];
  }

  else
  {
    TimeSyncClockGetHostTimeForClockTime_cold_1();
    v5 = *v8;
  }

  if ((TimeSyncLogCSpi_gotBootArg & 1) == 0)
  {
    os_parse_boot_arg_int();
    TimeSyncLogCSpi_gotBootArg = 1;
  }

  if (TimeSyncLogCSpi_log_c_spi == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 134218496;
    *&v8[4] = a1;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockGetHostTimeForClockTime(%p, %llu) = %llu", v8, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t TimeSyncClockGetClockTimeForHostTime(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v4 = [a1 clock];
    v5 = [v4 convertFromMachAbsoluteToDomainTime:a2];
  }

  else
  {
    TimeSyncClockGetClockTimeForHostTime_cold_1();
    v5 = *v8;
  }

  if ((TimeSyncLogCSpi_gotBootArg & 1) == 0)
  {
    os_parse_boot_arg_int();
    TimeSyncLogCSpi_gotBootArg = 1;
  }

  if (TimeSyncLogCSpi_log_c_spi == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 134218496;
    *&v8[4] = a1;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockGetClockTimeForHostTime(%p, %llu) = %llu", v8, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

double TimeSyncClockGetClockRate(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v2 = [a1 clock];
    [v2 hostRateRatio];
    v4 = v3;
  }

  else
  {
    TimeSyncClockGetClockRate_cold_1();
    v4 = *v7;
  }

  if ((TimeSyncLogCSpi_gotBootArg & 1) == 0)
  {
    os_parse_boot_arg_int();
    TimeSyncLogCSpi_gotBootArg = 1;
  }

  if (TimeSyncLogCSpi_log_c_spi == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 134218240;
    *&v7[4] = a1;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockGetClockRate(%p) = %f", v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t TimeSyncClockGetClockRateAndAnchors(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v10 = [a1 clock];
    v24 = 0;
    v11 = [v10 getMachAbsoluteRateRatioNumerator:a2 denominator:a3 machAnchor:a4 andDomainAnchor:a5 withError:&v24];
    v12 = v24;

    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = [v12 code];
    }
  }

  else
  {
    TimeSyncClockGetClockRateAndAnchors_cold_1();
    v12 = *buf;
    v13 = v25;
  }

  if ((TimeSyncLogCSpi_gotBootArg & 1) == 0)
  {
    os_parse_boot_arg_int();
    TimeSyncLogCSpi_gotBootArg = 1;
  }

  if (TimeSyncLogCSpi_log_c_spi == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = &TSInvalidTime;
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = &TSInvalidTime;
    }

    v16 = *v15;
    if (a3)
    {
      v17 = a3;
    }

    else
    {
      v17 = &TSInvalidTime;
    }

    v18 = *v17;
    if (a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = &TSInvalidTime;
    }

    v20 = *v19;
    if (a5)
    {
      v14 = a5;
    }

    v21 = *v14;
    *buf = 134220288;
    *&buf[4] = a1;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = a3;
    v31 = 2048;
    v32 = a4;
    v33 = 2048;
    v34 = a5;
    v35 = 2048;
    v36 = v16;
    v37 = 2048;
    v38 = v18;
    v39 = 2048;
    v40 = v20;
    v41 = 2048;
    v42 = v21;
    v43 = 1024;
    v44 = v13;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockGetClockRateAndAnchors(%p, %p, %p, %p, %p) = (%llu, %llu, %llu, %llu) 0x%08x", buf, 0x62u);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t TimeSyncClockGetClockIdentifier(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v2 = [a1 clock];
    v3 = [v2 clockIdentifier];
  }

  else
  {
    TimeSyncClockGetClockIdentifier_cold_1();
    v3 = *v6;
  }

  if ((TimeSyncLogCSpi_gotBootArg & 1) == 0)
  {
    os_parse_boot_arg_int();
    TimeSyncLogCSpi_gotBootArg = 1;
  }

  if (TimeSyncLogCSpi_log_c_spi == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 134218240;
    *&v6[4] = a1;
    v7 = 2048;
    v8 = v3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockGetClockIdentifier(%p) = 0x%016llx", v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t TimeSyncClockGetLockState(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v2 = [a1 clock];
    v3 = [v2 lockState];
  }

  else
  {
    TimeSyncClockGetLockState_cold_1(&v6);
    v3 = v6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    v7 = a1;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockGetLockState(%p) = %u", &v6, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void TimeSyncClockSetLockStateChangeCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    [a1 setLockStateNotificationCallback:a2 refcon:a3];
  }

  else
  {
    TimeSyncClockSetLockStateChangeCallback_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218496;
    v8 = a1;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockSetLockStateChangeCallback(%p, %p, %p)", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetMasterChangeCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    [a1 setMasterChangeNotificationCallback:a2 refcon:a3];
  }

  else
  {
    TimeSyncClockSetMasterChangeCallback_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218496;
    v8 = a1;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockSetMasterChangeCallback(%p, %p, %p)", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetTimeSyncTimeChangeCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    [a1 setTimeSyncTimeChangeNotificationCallback:a2 refcon:a3];
  }

  else
  {
    TimeSyncClockSetTimeSyncTimeChangeCallback_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218496;
    v8 = a1;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockSetTimeSyncTimeChangeCallback(%p, %p, %p)", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetConnectionInterruptedCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v6 = [a1 clock];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (a2)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __TimeSyncClockSetConnectionInterruptedCallback_block_invoke;
        v12[3] = &__block_descriptor_56_e23_v16__0__TSKernelClock_8l;
        v12[4] = a2;
        v12[5] = a1;
        v12[6] = a3;
        v8 = [a1 clock];
        v9 = v8;
        v10 = v12;
      }

      else
      {
        v8 = [a1 clock];
        v9 = v8;
        v10 = 0;
      }

      [v8 setInterruptionHandler:v10];
    }
  }

  else
  {
    TimeSyncClockSetConnectionInterruptedCallback_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v14 = a1;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockSetConnectionInterruptedCallback(%p, %p, %p)", buf, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __TimeSyncClockSetConnectionInterruptedCallback_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48));
  objc_autoreleasePoolPop(v3);
}

id TimeSyncClockCreateAudioClockDeviceUID(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v2 = [a1 clock];
    v3 = +[TSClockManager timeSyncAudioClockDeviceUIDForClockIdentifier:](TSClockManager, "timeSyncAudioClockDeviceUIDForClockIdentifier:", [v2 clockIdentifier]);

    if (v3)
    {
      CFRetain(v3);
      goto LABEL_4;
    }

    TimeSyncClockCreateAudioClockDeviceUID_cold_2();
  }

  else
  {
    TimeSyncClockCreateAudioClockDeviceUID_cold_1();
  }

  v3 = *v6;
LABEL_4:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 134218242;
    *&v6[4] = a1;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockCreateAudioClockDeviceUID(%p) = %@", v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t TimeSyncClockGetHostTimeAndGrandmasterIdentityLocalPortForClockTime(void *a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v8 = [a1 clock];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [a1 clock];
      v11 = [v10 convertFromDomainToMachAbsoluteTime:a2 grandmasterUsed:a3 portNumber:a4];

      goto LABEL_4;
    }

    TimeSyncClockGetHostTimeAndGrandmasterIdentityLocalPortForClockTime_cold_2();
  }

  else
  {
    TimeSyncClockGetHostTimeAndGrandmasterIdentityLocalPortForClockTime_cold_1();
  }

  v11 = *v17;
LABEL_4:
  if ((TimeSyncLogCSpi_gotBootArg & 1) == 0)
  {
    os_parse_boot_arg_int();
    TimeSyncLogCSpi_gotBootArg = 1;
  }

  if (TimeSyncLogCSpi_log_c_spi == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = &TSNullgPTPClockIdentity;
    if (a3)
    {
      v12 = a3;
    }

    v13 = *v12;
    if (a4)
    {
      v14 = *a4;
    }

    else
    {
      v14 = 0xFFFF;
    }

    *v17 = 134219520;
    *&v17[4] = a1;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = a4;
    v24 = 2048;
    v25 = v13;
    v26 = 1024;
    v27 = v14;
    v28 = 2048;
    v29 = v11;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockGetHostTimeAndGrandmasterIdentityLocalPortForClockTime(%p, %llu, %p, %p) = (0x%016llx, %hu) %llu", v17, 0x44u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t TimeSyncClockGetClockRateAnchorsAndGrandmasterIdentity(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v56 = *MEMORY[0x277D85DE8];
  v31 = 0;
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    TimeSyncClockGetClockRateAnchorsAndGrandmasterIdentity_cold_1();
LABEL_27:
    v16 = *buf;
    v17 = v32;
    goto LABEL_6;
  }

  v12 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    TimeSyncClockGetClockRateAnchorsAndGrandmasterIdentity_cold_2();
    goto LABEL_27;
  }

  v14 = [a1 clock];
  v30 = 0;
  v15 = [v14 getMachAbsoluteRateRatioNumerator:a2 denominator:a3 machAnchor:a4 andDomainAnchor:a5 forGrandmasterIdentity:a6 portNumber:&v31 withError:&v30];
  v16 = v30;

  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = [v16 code];
  }

LABEL_6:
  if ((TimeSyncLogCSpi_gotBootArg & 1) == 0)
  {
    os_parse_boot_arg_int();
    TimeSyncLogCSpi_gotBootArg = 1;
  }

  if (TimeSyncLogCSpi_log_c_spi == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = &TSInvalidTime;
    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = &TSInvalidTime;
    }

    v20 = *v19;
    if (a3)
    {
      v21 = a3;
    }

    else
    {
      v21 = &TSInvalidTime;
    }

    v22 = *v21;
    if (a4)
    {
      v23 = a4;
    }

    else
    {
      v23 = &TSInvalidTime;
    }

    v24 = *v23;
    if (a5)
    {
      v18 = a5;
    }

    v25 = *v18;
    v26 = &TSNullgPTPClockIdentity;
    if (a6)
    {
      v26 = a6;
    }

    v27 = *v26;
    *buf = 134220800;
    *&buf[4] = a1;
    v34 = 2048;
    v35 = a2;
    v36 = 2048;
    v37 = a3;
    v38 = 2048;
    v39 = a4;
    v40 = 2048;
    v41 = a5;
    v42 = 2048;
    v43 = a6;
    v44 = 2048;
    v45 = v20;
    v46 = 2048;
    v47 = v22;
    v48 = 2048;
    v49 = v24;
    v50 = 2048;
    v51 = v25;
    v52 = 2048;
    v53 = v27;
    v54 = 1024;
    v55 = v17;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockGetClockRateAnchorsAndGrandmasterIdentity(%p, %p, %p, %p, %p, %p) = (%llu, %llu, %llu, %llu, 0x%016llx) 0x%08x", buf, 0x76u);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t TimeSyncClockGetgPTPGrandmasterIdentity(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v2 = [a1 clock];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v4 = [a1 clock];
      v5 = [v4 grandmasterIdentity];

      goto LABEL_4;
    }

    TimeSyncClockGetgPTPGrandmasterIdentity_cold_2();
  }

  else
  {
    TimeSyncClockGetgPTPGrandmasterIdentity_cold_1();
  }

  v5 = *v8;
LABEL_4:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 134218240;
    *&v8[4] = a1;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockGetgPTPGrandmasterIdentity(%p) = 0x%016llx", v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void TimeSyncClockSetgPTPGrandmasterChangeCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    [a1 setgPTPGrandmasterNotificationCallback:a2 refcon:a3];
  }

  else
  {
    TimeSyncClockSetgPTPGrandmasterChangeCallback_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218496;
    v8 = a1;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockSetgPTPGrandmasterChangeCallback(%p, %p, %p)", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetgPTPGrandmasterAndPortChangeCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    [a1 setgPTPGrandmasterIDAndPortNotificationCallback:a2 refcon:a3];
  }

  else
  {
    TimeSyncClockSetgPTPGrandmasterAndPortChangeCallback_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218496;
    v8 = a1;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockSetgPTPGrandmasterAndPortChangeCallback(%p, %p, %p)", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetgPTPLocalPortChangeCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    [a1 setgPTPLocalPortNotificationCallback:a2 refcon:a3];
  }

  else
  {
    TimeSyncClockSetgPTPLocalPortChangeCallback_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218496;
    v8 = a1;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockSetgPTPLocalPortChangeCallback(%p, %p, %p)", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t TimeSyncClockAddUDPv4EndToEndPort(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v4 = 0;
  return TimeSyncClockAddUDPv4EndToEndPortAndGetIdentity(a1, a2, a3, &v5, &v4);
}

uint64_t TimeSyncClockAddUDPv4EndToEndPortAndGetIdentity(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, _WORD *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    TimeSyncClockAddUDPv4EndToEndPortAndGetIdentity_cold_1();
LABEL_20:
    v15 = v22[1];
    v12 = *buf;
    v16 = v23;
    goto LABEL_8;
  }

  if (!a4)
  {
    TimeSyncClockAddUDPv4EndToEndPortAndGetIdentity_cold_4();
    goto LABEL_20;
  }

  if (!a5)
  {
    TimeSyncClockAddUDPv4EndToEndPortAndGetIdentity_cold_3();
    goto LABEL_20;
  }

  v10 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    TimeSyncClockAddUDPv4EndToEndPortAndGetIdentity_cold_2();
    goto LABEL_20;
  }

  v12 = [a1 clock];
  v22[0] = 0;
  v13 = [v12 addUnicastUDPv4EtEPortOnInterfaceNamed:a2 withDestinationAddress:a3 allocatedPortNumber:a5 error:v22];
  v14 = v22[0];
  v15 = v14;
  if (v13)
  {
    v16 = 0;
    *a4 = [v12 clockIdentity];
  }

  else
  {
    *a4 = -1;
    *a5 = -1;
    v16 = [v14 code];
  }

LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = &TSNullClockIdentifier;
    if (a4)
    {
      v17 = a4;
    }

    v18 = *v17;
    if (a5)
    {
      v19 = *a5;
    }

    else
    {
      v19 = 0xFFFF;
    }

    *buf = 134220546;
    *&buf[4] = a1;
    v25 = 2112;
    v26 = a2;
    v27 = 1024;
    v28 = a3 >> 24;
    v29 = 1024;
    v30 = (a3 << 8) >> 24;
    v31 = 1024;
    v32 = a3 >> 8;
    v33 = 1024;
    v34 = a3;
    v35 = 2048;
    v36 = a4;
    v37 = 2048;
    v38 = a5;
    v39 = 2048;
    v40 = v18;
    v41 = 1024;
    v42 = v19;
    v43 = 1024;
    v44 = v16;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockAddUDPv4EndToEndPortAndGetIdentity(%p, %@, %hhu.%hhu.%hhu.%hhu, %p, %p) = (0x%016llx, %hu) 0x%08x", buf, 0x58u);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t TimeSyncClockRemoveUDPv4EndToEndPort(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    TimeSyncClockRemoveUDPv4EndToEndPort_cold_1();
LABEL_11:
    v11 = v15[1];
    v8 = *buf;
    v12 = v16;
    goto LABEL_6;
  }

  v6 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    TimeSyncClockRemoveUDPv4EndToEndPort_cold_2();
    goto LABEL_11;
  }

  v8 = [a1 clock];
  v15[0] = 0;
  v9 = [v8 removeUnicastUDPv4EtEPortFromInterfaceNamed:a2 withDestinationAddress:a3 error:v15];
  v10 = v15[0];
  v11 = v10;
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v10 code];
  }

LABEL_6:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219522;
    *&buf[4] = a1;
    v18 = 2112;
    v19 = a2;
    v20 = 1024;
    v21 = a3 >> 24;
    v22 = 1024;
    v23 = (a3 << 8) >> 24;
    v24 = 1024;
    v25 = a3 >> 8;
    v26 = 1024;
    v27 = a3;
    v28 = 1024;
    v29 = v12;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockRemoveUDPv4EndToEndPort(%p, %@, %hhu.%hhu.%hhu.%hhu) = 0x%08x", buf, 0x34u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t TimeSyncClockAddUDPv6EndToEndPort(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = 0;
  v4 = 0;
  return TimeSyncClockAddUDPv6EndToEndPortAndGetIdentity(a1, a2, a3, &v5, &v4);
}

uint64_t TimeSyncClockAddUDPv6EndToEndPortAndGetIdentity(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4, _WORD *a5)
{
  v85 = *MEMORY[0x277D85DE8];
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    TimeSyncClockAddUDPv6EndToEndPortAndGetIdentity_cold_1();
LABEL_20:
    v15 = v38[1];
    v12 = *buf;
    v16 = v39;
    goto LABEL_8;
  }

  if (!a4)
  {
    TimeSyncClockAddUDPv6EndToEndPortAndGetIdentity_cold_4();
    goto LABEL_20;
  }

  if (!a5)
  {
    TimeSyncClockAddUDPv6EndToEndPortAndGetIdentity_cold_3();
    goto LABEL_20;
  }

  v10 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    TimeSyncClockAddUDPv6EndToEndPortAndGetIdentity_cold_2();
    goto LABEL_20;
  }

  v12 = [a1 clock];
  v38[0] = 0;
  v13 = [v12 addUnicastUDPv6EtEPortOnInterfaceNamed:a2 withDestinationAddress:a3 allocatedPortNumber:a5 error:v38];
  v14 = v38[0];
  v15 = v14;
  if (v13)
  {
    v16 = 0;
    *a4 = [v12 clockIdentity];
  }

  else
  {
    *a4 = -1;
    *a5 = -1;
    v16 = [v14 code];
  }

LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = *a3;
    v18 = a3[1];
    v19 = a3[2];
    v20 = a3[3];
    v21 = a3[4];
    v22 = a3[5];
    v23 = a3[6];
    v24 = a3[7];
    v25 = a3[8];
    v26 = a3[9];
    v27 = a3[10];
    v28 = a3[11];
    v29 = a3[12];
    v30 = a3[13];
    v31 = a3[14];
    v32 = a3[15];
    v33 = &TSNullClockIdentifier;
    if (a4)
    {
      v33 = a4;
    }

    v34 = *v33;
    if (a5)
    {
      v35 = *a5;
    }

    else
    {
      v35 = 0xFFFF;
    }

    *buf = 134223618;
    *&buf[4] = a1;
    v41 = 2112;
    v42 = a2;
    v43 = 1024;
    v44 = v17;
    v45 = 1024;
    v46 = v18;
    v47 = 1024;
    v48 = v19;
    v49 = 1024;
    v50 = v20;
    v51 = 1024;
    v52 = v21;
    v53 = 1024;
    v54 = v22;
    v55 = 1024;
    v56 = v23;
    v57 = 1024;
    v58 = v24;
    v59 = 1024;
    v60 = v25;
    v61 = 1024;
    v62 = v26;
    v63 = 1024;
    v64 = v27;
    v65 = 1024;
    v66 = v28;
    v67 = 1024;
    v68 = v29;
    v69 = 1024;
    v70 = v30;
    v71 = 1024;
    v72 = v31;
    v73 = 1024;
    v74 = v32;
    v75 = 2048;
    v76 = a4;
    v77 = 2048;
    v78 = a5;
    v79 = 2048;
    v80 = v34;
    v81 = 1024;
    v82 = v35;
    v83 = 1024;
    v84 = v16;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockAddUDPv6EndToEndPortAndGetIdentity(%p, %@, %02hhx%02hhx:%02hhx%02hhx:%02hhx%02hhx:%02hhx%02hhx:%02hhx%02hhx:%02hhx%02hhx:%02hhx%02hhx:%02hhx%02hhx, %p, %p) = (0x%016llx, %hu) 0x%08x", buf, 0xA0u);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t TimeSyncClockRemoveUDPv6EndToEndPort(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    TimeSyncClockRemoveUDPv6EndToEndPort_cold_1();
LABEL_11:
    v11 = v31[1];
    v8 = *buf;
    v12 = v32;
    goto LABEL_6;
  }

  v6 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    TimeSyncClockRemoveUDPv6EndToEndPort_cold_2();
    goto LABEL_11;
  }

  v8 = [a1 clock];
  v31[0] = 0;
  v9 = [v8 removeUnicastUDPv6EtEPortFromInterfaceNamed:a2 withDestinationAddress:a3 error:v31];
  v10 = v31[0];
  v11 = v10;
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v10 code];
  }

LABEL_6:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *a3;
    v14 = a3[1];
    v15 = a3[2];
    v16 = a3[3];
    v17 = a3[4];
    v18 = a3[5];
    v19 = a3[6];
    v20 = a3[7];
    v21 = a3[8];
    v22 = a3[9];
    v23 = a3[10];
    v24 = a3[11];
    v25 = a3[12];
    v26 = a3[13];
    v27 = a3[14];
    v28 = a3[15];
    *buf = 134222594;
    *&buf[4] = a1;
    v34 = 2112;
    v35 = a2;
    v36 = 1024;
    v37 = v13;
    v38 = 1024;
    v39 = v14;
    v40 = 1024;
    v41 = v15;
    v42 = 1024;
    v43 = v16;
    v44 = 1024;
    v45 = v17;
    v46 = 1024;
    v47 = v18;
    v48 = 1024;
    v49 = v19;
    v50 = 1024;
    v51 = v20;
    v52 = 1024;
    v53 = v21;
    v54 = 1024;
    v55 = v22;
    v56 = 1024;
    v57 = v23;
    v58 = 1024;
    v59 = v24;
    v60 = 1024;
    v61 = v25;
    v62 = 1024;
    v63 = v26;
    v64 = 1024;
    v65 = v27;
    v66 = 1024;
    v67 = v28;
    v68 = 1024;
    v69 = v12;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockRemoveUDPv6EndToEndPort(%p, %@, %02hhx%02hhx:%02hhx%02hhx:%02hhx%02hhx:%02hhx%02hhx:%02hhx%02hhx:%02hhx%02hhx:%02hhx%02hhx:%02hhx%02hhx) = 0x%08x", buf, 0x7Cu);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t TimeSyncClockAddAWDLPort(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = 0;
  v4 = 0;
  return TimeSyncClockAddAWDLPortAndGetIdentity(a1, a2, a3, &v5, &v4);
}

uint64_t TimeSyncClockAddAWDLPortAndGetIdentity(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4, _WORD *a5)
{
  v55 = *MEMORY[0x277D85DE8];
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    TimeSyncClockAddAWDLPortAndGetIdentity_cold_1();
LABEL_20:
    v15 = v28[1];
    v12 = *buf;
    v16 = v29;
    goto LABEL_8;
  }

  if (!a4)
  {
    TimeSyncClockAddAWDLPortAndGetIdentity_cold_4();
    goto LABEL_20;
  }

  if (!a5)
  {
    TimeSyncClockAddAWDLPortAndGetIdentity_cold_3();
    goto LABEL_20;
  }

  v10 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    TimeSyncClockAddAWDLPortAndGetIdentity_cold_2();
    goto LABEL_20;
  }

  v12 = [a1 clock];
  v28[0] = 0;
  v13 = [v12 addUnicastLinkLayerEtEPortOnInterfaceNamed:a2 withDestinationAddress:a3 allocatedPortNumber:a5 error:v28];
  v14 = v28[0];
  v15 = v14;
  if (v13)
  {
    v16 = 0;
    *a4 = [v12 clockIdentity];
  }

  else
  {
    *a4 = -1;
    *a5 = -1;
    v16 = [v14 code];
  }

LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = *a3;
    v18 = a3[1];
    v19 = a3[2];
    v20 = a3[3];
    v21 = a3[4];
    v22 = a3[5];
    v23 = &TSNullClockIdentifier;
    if (a4)
    {
      v23 = a4;
    }

    v24 = *v23;
    if (a5)
    {
      v25 = *a5;
    }

    else
    {
      v25 = 0xFFFF;
    }

    *buf = 134221058;
    *&buf[4] = a1;
    v31 = 2112;
    v32 = a2;
    v33 = 1024;
    v34 = v17;
    v35 = 1024;
    v36 = v18;
    v37 = 1024;
    v38 = v19;
    v39 = 1024;
    v40 = v20;
    v41 = 1024;
    v42 = v21;
    v43 = 1024;
    v44 = v22;
    v45 = 2048;
    v46 = a4;
    v47 = 2048;
    v48 = a5;
    v49 = 2048;
    v50 = v24;
    v51 = 1024;
    v52 = v25;
    v53 = 1024;
    v54 = v16;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockAddAWDLPortAndGetIdentity(%p, %@, %02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx, %p, %p) = (0x%016llx, %hu) 0x%08x", buf, 0x64u);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t TimeSyncClockRemoveAWDLPort(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    TimeSyncClockRemoveAWDLPort_cold_1();
LABEL_11:
    v11 = v21[1];
    v8 = *buf;
    v12 = v22;
    goto LABEL_6;
  }

  v6 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    TimeSyncClockRemoveAWDLPort_cold_2();
    goto LABEL_11;
  }

  v8 = [a1 clock];
  v21[0] = 0;
  v9 = [v8 removeUnicastLinkLayerEtEPortFromInterfaceNamed:a2 withDestinationAddress:a3 error:v21];
  v10 = v21[0];
  v11 = v10;
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v10 code];
  }

LABEL_6:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *a3;
    v14 = a3[1];
    v15 = a3[2];
    v16 = a3[3];
    v17 = a3[4];
    v18 = a3[5];
    *buf = 134220034;
    *&buf[4] = a1;
    v24 = 2112;
    v25 = a2;
    v26 = 1024;
    v27 = v13;
    v28 = 1024;
    v29 = v14;
    v30 = 1024;
    v31 = v15;
    v32 = 1024;
    v33 = v16;
    v34 = 1024;
    v35 = v17;
    v36 = 1024;
    v37 = v18;
    v38 = 1024;
    v39 = v12;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockRemoveAWDLPort(%p, %@, %02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx) = 0x%08x", buf, 0x40u);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t TimeSyncClockSetAllPortRemoteSyncMessageIntervals(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    TimeSyncClockSetAllPortRemoteSyncMessageIntervals_cold_1();
LABEL_20:
    v9 = v25;
    v15 = *buf;
    v10 = v26;
    goto LABEL_15;
  }

  v4 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    TimeSyncClockSetAllPortRemoteSyncMessageIntervals_cold_2();
    goto LABEL_20;
  }

  [a1 clock];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v24 = 0u;
  v6 = [v19 ports];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v9;
          [v13 requestRemoteMessageIntervalsWithPDelayMessageInterval:TSMessageIntervalIgnore syncMessageInterval:a2 announceMessageInterval:TSMessageIntervalIgnore error:&v20];
          v14 = v20;

          v10 = 3758097095;
          v9 = v14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v32 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v15 = v19;
LABEL_15:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = a1;
    v28 = 1024;
    v29 = a2;
    v30 = 1024;
    v31 = v10;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockSetAllPortRemoteSyncMessageIntervals(%p, %hhd) = 0x%08x", buf, 0x18u);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t TimeSyncClockOverridePortReceiveMatching(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    v16 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v22 = "TimeSyncClockValidRef(clockRef)";
      v23 = 2048;
      *v24 = 0;
      *&v24[8] = 2048;
      *&v24[10] = 0;
      *&v24[18] = 2080;
      v25 = "";
      v26 = 2080;
      v27 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSInterface.m";
      v28 = 1024;
      v29 = 1339;
      v19 = MEMORY[0x277D86220];
LABEL_15:
      _os_log_impl(&dword_26F080000, v19, OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
    }

LABEL_16:
    v15 = 0;
    v12 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  v8 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v16 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v22 = "[((__bridge TSClockInterface *)clockRef).clock isKindOfClass:[TSgPTPClock class]]";
      v23 = 2048;
      *v24 = 0;
      *&v24[8] = 2048;
      *&v24[10] = 0;
      *&v24[18] = 2080;
      v25 = "";
      v26 = 2080;
      v27 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSInterface.m";
      v28 = 1024;
      v29 = 1341;
      v19 = MEMORY[0x277D86220];
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v10 = [a1 clock];
  v11 = [v10 portWithPortNumber:a2];
  if (v11)
  {
    v12 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0;
      v13 = [v12 overrideReceiveMatchingWithRemoteClockIdentity:a3 remotePortNumber:a4 error:&v20];
      v14 = v20;
      v15 = v14;
      if (v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = [v14 code];
      }
    }

    else
    {
      v16 = 3758097136;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v22 = "[port isKindOfClass:[TSgPTPNetworkPort class]]";
        v23 = 2048;
        *v24 = 0;
        *&v24[8] = 2048;
        *&v24[10] = 0;
        *&v24[18] = 2080;
        v25 = "";
        v26 = 2080;
        v27 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSInterface.m";
        v28 = 1024;
        v29 = 1349;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
      }

      v15 = 0;
    }
  }

  else
  {
    v16 = 3758097136;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v22 = "port != nil";
      v23 = 2048;
      *v24 = 0;
      *&v24[8] = 2048;
      *&v24[10] = 0;
      *&v24[18] = 2080;
      v25 = "";
      v26 = 2080;
      v27 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSInterface.m";
      v28 = 1024;
      v29 = 1348;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
    }

    v15 = 0;
    v12 = 0;
  }

LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v22 = a1;
    v23 = 1024;
    *v24 = a2;
    *&v24[4] = 2048;
    *&v24[6] = a3;
    *&v24[14] = 1024;
    *&v24[16] = a4;
    LOWORD(v25) = 1024;
    *(&v25 + 2) = v16;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockOverridePortReceiveMatching(%p, %hu, 0x%016llx, %hu) = 0x%08x", buf, 0x28u);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t TimeSyncClockRestorePortReceiveMatching(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    v12 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v18 = "TimeSyncClockValidRef(clockRef)";
      v19 = 2048;
      *v20 = 0;
      *&v20[8] = 2048;
      v21 = 0;
      v22 = 2080;
      v23 = "";
      v24 = 2080;
      v25 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSInterface.m";
      v26 = 1024;
      v27 = 1378;
      v15 = MEMORY[0x277D86220];
LABEL_15:
      _os_log_impl(&dword_26F080000, v15, OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
    }

LABEL_16:
    v11 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v4 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v12 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v18 = "[((__bridge TSClockInterface *)clockRef).clock isKindOfClass:[TSgPTPClock class]]";
      v19 = 2048;
      *v20 = 0;
      *&v20[8] = 2048;
      v21 = 0;
      v22 = 2080;
      v23 = "";
      v24 = 2080;
      v25 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSInterface.m";
      v26 = 1024;
      v27 = 1380;
      v15 = MEMORY[0x277D86220];
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v6 = [a1 clock];
  v7 = [v6 portWithPortNumber:a2];
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0;
      v9 = [v8 restoreReceiveMatchingError:&v16];
      v10 = v16;
      v11 = v10;
      if (v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = [v10 code];
      }
    }

    else
    {
      v12 = 3758097136;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v18 = "[port isKindOfClass:[TSgPTPNetworkPort class]]";
        v19 = 2048;
        *v20 = 0;
        *&v20[8] = 2048;
        v21 = 0;
        v22 = 2080;
        v23 = "";
        v24 = 2080;
        v25 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSInterface.m";
        v26 = 1024;
        v27 = 1388;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
      }

      v11 = 0;
    }
  }

  else
  {
    v12 = 3758097136;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v18 = "port != nil";
      v19 = 2048;
      *v20 = 0;
      *&v20[8] = 2048;
      v21 = 0;
      v22 = 2080;
      v23 = "";
      v24 = 2080;
      v25 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSInterface.m";
      v26 = 1024;
      v27 = 1387;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
    }

    v11 = 0;
    v8 = 0;
  }

LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v18 = a1;
    v19 = 1024;
    *v20 = a2;
    *&v20[4] = 1024;
    *&v20[6] = v12;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockRestorePortReceiveMatching(%p, %hu) = 0x%08x", buf, 0x18u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t TimeSyncClockGetCurrentPortInfo(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    v14 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v20 = "TimeSyncClockValidRef(clockRef)";
      v21 = 2048;
      *v22 = 0;
      *&v22[8] = 2048;
      *&v22[10] = 0;
      *&v22[18] = 2080;
      v23 = "";
      v24 = 2080;
      v25 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSInterface.m";
      v26 = 1024;
      v27 = 1419;
      v17 = MEMORY[0x277D86220];
LABEL_15:
      _os_log_impl(&dword_26F080000, v17, OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
    }

LABEL_16:
    v13 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_8;
  }

  v6 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v14 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v20 = "[((__bridge TSClockInterface *)clockRef).clock isKindOfClass:[TSgPTPClock class]]";
      v21 = 2048;
      *v22 = 0;
      *&v22[8] = 2048;
      *&v22[10] = 0;
      *&v22[18] = 2080;
      v23 = "";
      v24 = 2080;
      v25 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSInterface.m";
      v26 = 1024;
      v27 = 1421;
      v17 = MEMORY[0x277D86220];
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v8 = [a1 clock];
  v9 = [v8 portWithPortNumber:a2];
  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0;
      v11 = [v10 getCurrentPortInfo:a3 error:&v18];
      v12 = v18;
      v13 = v12;
      if (v11)
      {
        v14 = 0;
      }

      else
      {
        v14 = [v12 code];
      }
    }

    else
    {
      v14 = 3758097136;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v20 = "[port isKindOfClass:[TSgPTPNetworkPort class]]";
        v21 = 2048;
        *v22 = 0;
        *&v22[8] = 2048;
        *&v22[10] = 0;
        *&v22[18] = 2080;
        v23 = "";
        v24 = 2080;
        v25 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSInterface.m";
        v26 = 1024;
        v27 = 1429;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
      }

      v13 = 0;
    }
  }

  else
  {
    v14 = 3758097136;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v20 = "port != nil";
      v21 = 2048;
      *v22 = 0;
      *&v22[8] = 2048;
      *&v22[10] = 0;
      *&v22[18] = 2080;
      v23 = "";
      v24 = 2080;
      v25 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSInterface.m";
      v26 = 1024;
      v27 = 1428;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
    }

    v13 = 0;
    v10 = 0;
  }

LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v20 = a1;
    v21 = 1024;
    *v22 = a2;
    *&v22[4] = 2048;
    *&v22[6] = a3;
    *&v22[14] = 1024;
    *&v22[16] = v14;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockGetCurrentPortInfo(%p, %hu, %p) = 0x%08x", buf, 0x22u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t TimeSyncClockAddTimestamps(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v6 = [a1 clock];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [a1 clock];
      v15 = 0;
      v9 = [v8 addTimestampWithMachAbsolute:a2 andDomainTime:a3 error:&v15];
      v10 = v15;
      v11 = v10;
      if (v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = [v10 code];
      }
    }

    else
    {
      v12 = 3758097090;
    }
  }

  else
  {
    TimeSyncClockAddTimestamps_cold_1();
    v12 = *buf;
  }

  if ((TimeSyncLogCSpi_gotBootArg & 1) == 0)
  {
    os_parse_boot_arg_int();
    TimeSyncLogCSpi_gotBootArg = 1;
  }

  if (TimeSyncLogCSpi_log_c_spi == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v17 = a1;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = a3;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockAddTimestamps(%p, %llu, %llu) = 0x%08x", buf, 0x26u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t TimeSyncClockResetFilter(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v4 = [a1 clock];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [a1 clock];
      v14 = 0;
      v7 = [v6 resetFilterToNominal:a2 error:&v14];
      v8 = v14;
      v9 = v8;
      if (v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = [v8 code];
      }
    }

    else
    {
      v10 = 3758097090;
    }
  }

  else
  {
    TimeSyncClockResetFilter_cold_1();
    v10 = *buf;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = "false";
    *buf = 134218498;
    v16 = a1;
    if (a2)
    {
      v11 = "true";
    }

    v17 = 2082;
    v18 = v11;
    v19 = 1024;
    v20 = v10;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockResetFilter(%p, %{public}s) = 0x%08x", buf, 0x1Cu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t TimeSyncClockResetClock(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v2 = [a1 clock];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v4 = [a1 clock];
      v11 = 0;
      v5 = [v4 resetSyncServiceWithError:&v11];
      v6 = v11;
      v7 = v6;
      if (v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = [v6 code];
      }
    }

    else
    {
      v8 = 3758097090;
    }
  }

  else
  {
    TimeSyncClockResetClock_cold_1();
    v8 = *buf;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v13 = a1;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockResetClock(%p) = 0x%08x", buf, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

TSPortInterface *TimeSyncPortCreateFromClock(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    TimeSyncPortCreateFromClock_cold_1();
LABEL_15:
    v8 = v14;
    v6 = v15;
    v11 = *block;
    goto LABEL_8;
  }

  v4 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    TimeSyncPortCreateFromClock_cold_2();
    goto LABEL_15;
  }

  v6 = [a1 clock];
  v7 = [v6 portWithPortNumber:a2];
  if (!v7)
  {
    TimeSyncPortCreateFromClock_cold_5();
    goto LABEL_15;
  }

  v8 = v7;
  v9 = -[TSPortInterface initWithgPTPPort:onClockIdentifier:]([TSPortInterface alloc], "initWithgPTPPort:onClockIdentifier:", v7, [v6 clockIdentifier]);
  if (!v9)
  {
    TimeSyncPortCreateFromClock_cold_4();
    goto LABEL_15;
  }

  v10 = v9;
  if (TimeSyncPortCreateFromClock_onceToken != -1)
  {
    TimeSyncPortCreateFromClock_cold_3();
  }

  v11 = v10;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __TimeSyncPortAddRef_block_invoke;
  *&block[24] = &__block_descriptor_40_e5_v8__0l;
  v17 = v11;
  dispatch_sync(_timeSyncPortInterfaceQueue, block);
LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *block = 134218496;
    *&block[4] = a1;
    *&block[12] = 1024;
    *&block[14] = a2;
    *&block[18] = 2048;
    *&block[20] = v11;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncPortCreateFromClock(%p, %hu) = %p", block, 0x1Cu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __TimeSyncPortCreateFromClock_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:258];
  v1 = _timeSyncPortRefs;
  _timeSyncPortRefs = v0;

  _timeSyncPortInterfaceQueue = dispatch_queue_create("com.apple.timesync.timesyncportinterface", 0);

  return MEMORY[0x2821F96F8]();
}

void TimeSyncPortDispose(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (TimeSyncPortValidRef(a1))
  {
    *&v5 = MEMORY[0x277D85DD0];
    *(&v5 + 1) = 3221225472;
    v6 = __TimeSyncPortRemoveRef_block_invoke;
    v7 = &__block_descriptor_40_e5_v8__0l;
    v8 = a1;
    dispatch_sync(_timeSyncPortInterfaceQueue, &v5);
    v2 = objc_opt_self();
    v3 = a1;
  }

  else
  {
    TimeSyncPortDispose_cold_1();
    v3 = v5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 134217984;
    *(&v5 + 4) = a1;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncPortDispose(%p)", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t TimeSyncPortValidRef(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TimeSyncPortValidRef_block_invoke;
  v3[3] = &unk_279DBE008;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(_timeSyncPortInterfaceQueue, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t TimeSyncPortSetRemoteSyncMessageIntervals(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (TimeSyncPortValidRef(a1))
  {
    v4 = 3758097095;
    v5 = [a1 port];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [a1 port];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = 0;
        v8 = [v7 requestRemoteMessageIntervalsWithPDelayMessageInterval:TSMessageIntervalIgnore syncMessageInterval:a2 announceMessageInterval:TSMessageIntervalIgnore error:&v13];
        v9 = v13;
        v10 = v9;
        if (v8)
        {
          v4 = 0;
        }

        else
        {
          v4 = [v9 code];
        }
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    TimeSyncPortSetRemoteSyncMessageIntervals_cold_1();
    v4 = *buf;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v15 = a1;
    v16 = 1024;
    v17 = a2;
    v18 = 1024;
    v19 = v4;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncPortSetRemoteSyncMessageIntervals(%p, %hhd) = 0x%08x", buf, 0x18u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t TimeSyncPortOverridePortReceiveMatching(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((TimeSyncPortValidRef(a1) & 1) == 0)
  {
    TimeSyncPortOverridePortReceiveMatching_cold_1();
LABEL_13:
    v10 = v14[1];
    v7 = *buf;
    v11 = v15;
    goto LABEL_7;
  }

  v6 = [a1 port];
  if (!v6)
  {
    TimeSyncPortOverridePortReceiveMatching_cold_3();
    goto LABEL_13;
  }

  v7 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    TimeSyncPortOverridePortReceiveMatching_cold_2();
    goto LABEL_13;
  }

  v14[0] = 0;
  v8 = [v7 overrideReceiveMatchingWithRemoteClockIdentity:a2 remotePortNumber:a3 error:v14];
  v9 = v14[0];
  v10 = v9;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v9 code];
  }

LABEL_7:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = a1;
    v17 = 2048;
    v18 = a2;
    v19 = 1024;
    v20 = a3;
    v21 = 1024;
    v22 = v11;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncPortOverridePortReceiveMatching(%p, 0x%016llx, %hu) = 0x%08x", buf, 0x22u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t TimeSyncPortRestorePortReceiveMatching(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((TimeSyncPortValidRef(a1) & 1) == 0)
  {
    TimeSyncPortRestorePortReceiveMatching_cold_1();
LABEL_13:
    v6 = v10[1];
    v3 = *buf;
    v7 = v11;
    goto LABEL_7;
  }

  v2 = [a1 port];
  if (!v2)
  {
    TimeSyncPortRestorePortReceiveMatching_cold_3();
    goto LABEL_13;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    TimeSyncPortRestorePortReceiveMatching_cold_2();
    goto LABEL_13;
  }

  v10[0] = 0;
  v4 = [v3 restoreReceiveMatchingError:v10];
  v5 = v10[0];
  v6 = v5;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 code];
  }

LABEL_7:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncPortRestorePortReceiveMatching(%p) = 0x%08x", buf, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t TimeSyncPortGetCurrentPortInfo(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((TimeSyncPortValidRef(a1) & 1) == 0)
  {
    TimeSyncPortGetCurrentPortInfo_cold_1();
LABEL_13:
    v8 = v12[1];
    v5 = *buf;
    v9 = v13;
    goto LABEL_7;
  }

  v4 = [a1 port];
  if (!v4)
  {
    TimeSyncPortGetCurrentPortInfo_cold_3();
    goto LABEL_13;
  }

  v5 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    TimeSyncPortGetCurrentPortInfo_cold_2();
    goto LABEL_13;
  }

  v12[0] = 0;
  v6 = [v5 getCurrentPortInfo:a2 error:v12];
  v7 = v12[0];
  v8 = v7;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v7 code];
  }

LABEL_7:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = a1;
    v15 = 2048;
    v16 = a2;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncPortGetCurrentPortInfo(%p, %p) = 0x%08x", buf, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t TimeSyncPortEnable(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((TimeSyncPortValidRef(a1) & 1) == 0)
  {
    TimeSyncPortEnable_cold_1();
LABEL_13:
    v6 = v10[1];
    v3 = *buf;
    v7 = v11;
    goto LABEL_7;
  }

  v2 = [a1 port];
  if (!v2)
  {
    TimeSyncPortEnable_cold_3();
    goto LABEL_13;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    TimeSyncPortEnable_cold_2();
    goto LABEL_13;
  }

  v10[0] = 0;
  v4 = [v3 enablePortError:v10];
  v5 = v10[0];
  v6 = v5;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 code];
  }

LABEL_7:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncPortEnable(%p) = 0x%08x", buf, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t TimeSyncPortDisable(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((TimeSyncPortValidRef(a1) & 1) == 0)
  {
    TimeSyncPortDisable_cold_1();
LABEL_13:
    v6 = v10[1];
    v3 = *buf;
    v7 = v11;
    goto LABEL_7;
  }

  v2 = [a1 port];
  if (!v2)
  {
    TimeSyncPortDisable_cold_3();
    goto LABEL_13;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    TimeSyncPortDisable_cold_2();
    goto LABEL_13;
  }

  v10[0] = 0;
  v4 = [v3 disablePortError:v10];
  v5 = v10[0];
  v6 = v5;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 code];
  }

LABEL_7:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncPortDisable(%p) = 0x%08x", buf, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void TimeSyncPortSetMACLookupTimeoutCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (TimeSyncPortValidRef(a1))
  {
    [a1 setMACLookupTimeoutCallback:a2 refcon:a3];
  }

  else
  {
    TimeSyncPortSetMACLookupTimeoutCallback_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218496;
    v8 = a1;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncPortSetMACLookupTimeoutCallback(%p, %p, %p)", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t TimeSyncClockManagerNotifyWhenAvailable(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __TimeSyncClockManagerNotifyWhenAvailable_block_invoke;
    v2[3] = &__block_descriptor_48_e5_v8__0l;
    v2[4] = result;
    v2[5] = a2;
    return [TSClockManager notifyWhenClockManagerIsAvailable:v2];
  }

  return result;
}

TSClockManagerInterface *TimeSyncCreateTimeSyncClockManagerConnectionCallbackWithInterruptedHandler(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(TSClockManagerInterface);
  if (v4)
  {
    v5 = +[TSClockManager sharedClockManager];
    [(TSClockManagerInterface *)v4 setClockManager:v5];

    [(TSClockManagerInterface *)v4 setInterruptionCallback:a1 andRefcon:a2];
    [(TSClockManagerInterface *)v4 addToClockManager];
  }

  else
  {
    TimeSyncCreateTimeSyncClockManagerConnectionCallbackWithInterruptedHandler_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218496;
    v9 = a1;
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncCreateTimeSyncClockManagerConnectionCallbackWithInterruptedHandler(%p, %p) = %p", &v8, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

void TimeSyncClockManagerConnectionCallbackDispose(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&_clockManagerInterfacesLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = _clockManagerInterfaces;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (v7 == a1)
        {
          [*(*(&v9 + 1) + 8 * i) removeFromClockManager];
          [_clockManagerInterfaces removeObject:v7];
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&_clockManagerInterfacesLock);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = a1;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockManagerConnectionCallbackDispose(%p)", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t TimeSyncgPTPManagerNotifyWhenAvailable(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __TimeSyncgPTPManagerNotifyWhenAvailable_block_invoke;
    v2[3] = &__block_descriptor_48_e5_v8__0l;
    v2[4] = result;
    v2[5] = a2;
    return [TSgPTPManager notifyWhengPTPManagerIsAvailable:v2];
  }

  return result;
}

uint64_t TimeSyncAddgPTPServices()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = +[TSClockManager sharedClockManager];
  v6 = 0;
  v1 = [v0 addgPTPServicesWithError:&v6];
  v2 = v6;
  if ((v1 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    TimeSyncAddgPTPServices_cold_1(v2);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = "false";
    if (v1)
    {
      v3 = "true";
    }

    *buf = 136446210;
    v8 = v3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncAddgPTPServices() = %{public}s", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t TimeSyncRemovegPTPServices()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = +[TSClockManager sharedClockManager];
  v1 = [v0 removegPTPServicesWithError:0];
  if ((v1 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    TimeSyncRemovegPTPServices_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = "false";
    if (v1)
    {
      v2 = "true";
    }

    v5 = 136446210;
    v6 = v2;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncRemovegPTPServices() = %{public}s", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t TimeSyncSystemDomainClockIdentifier()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = +[TSgPTPManager sharedgPTPManager];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 systemDomainClockIdentifier];
  }

  else
  {
    v2 = -1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncSystemDomainClockIdentifier() = 0x%016llx", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t TimeSyncAirPlayPTPInstanceClockIdentifier()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = +[TSgPTPManager sharedgPTPManager];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 airPlayPTPInstanceClockIdentifier];
  }

  else
  {
    v2 = -1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncAirPlayPTPInstanceClockIdentifier() = 0x%016llx", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t TimeSyncAddAirPlayPTPInstance()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = -1;
  v1 = +[TSgPTPManager sharedgPTPManager];
  v2 = v1;
  if (v1)
  {
    v7 = 0;
    *buf = -1;
    v3 = [v1 addAirPlayPTPInstance:buf error:&v7];
    v4 = v7;
    if (v3)
    {
      v0 = *buf;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      TimeSyncAddAirPlayPTPInstance_cold_1(v4);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v0;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncAddAirPlayPTPInstance() = 0x%016llx", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t TimeSyncRemoveAirPlayPTPInstance()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = +[TSgPTPManager sharedgPTPManager];
  v1 = v0;
  if (v0)
  {
    v7 = 0;
    v2 = [v0 removeAirPlayPTPInstanceWithError:&v7];
    v3 = v7;
    if ((v2 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      TimeSyncRemoveAirPlayPTPInstance_cold_1(v3);
    }
  }

  else
  {
    v2 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = "false";
    if (v2)
    {
      v4 = "true";
    }

    *buf = 136446210;
    v9 = v4;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncRemoveAirPlayPTPInstance() = %{public}s", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t TimeSyncCopresencePTPInstanceClockIdentifier()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = +[TSgPTPManager sharedgPTPManager];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 copresencePTPInstanceClockIdentifier];
  }

  else
  {
    v2 = -1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncCopresencePTPInstanceClockIdentifier() = 0x%016llx", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t TimeSyncAddCopresencePTPInstance(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = -1;
  v5 = +[TSgPTPManager sharedgPTPManager];
  v6 = v5;
  if (v5)
  {
    v11 = 0;
    *buf = -1;
    v7 = [v5 addCopresencePTPInstance:buf ntpAndUpTimeOffsetNsec:a1 isLocalClockSourceFromNTP:a2 error:&v11];
    v8 = v11;
    if (v7)
    {
      v4 = *buf;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      TimeSyncAddCopresencePTPInstance_cold_1(v8);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v4;
    v13 = 2048;
    v14 = a1;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncAddCopresencePTPInstance() = 0x%016llx ntpAndUpTimeOffsetNsec:%lld", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t TimeSyncRemoveCopresencePTPInstance()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = +[TSgPTPManager sharedgPTPManager];
  v1 = v0;
  if (v0)
  {
    v7 = 0;
    v2 = [v0 removeCopresencePTPInstanceWithError:&v7];
    v3 = v7;
    if ((v2 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      TimeSyncRemoveCopresencePTPInstance_cold_1(v3);
    }
  }

  else
  {
    v2 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = "false";
    if (v2)
    {
      v4 = "true";
    }

    *buf = 136446210;
    v9 = v4;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncRemoveCopresencePTPInstance() = %{public}s", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

TSClockInterface *TimeSyncClockCreateUserFilteredClock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = +[TSClockManager sharedClockManager];
  v9 = v8;
  if (v8 && (v16 = 0, v10 = [v8 addUserFilteredClockWithMachInterval:a1 domainInterval:a2 usingFilterShift:a3 isAdaptive:a4 error:&v16], v10 != -1))
  {
    v12 = v10;
    usleep(0x186A0u);
    v11 = TimeSyncClockCreateWithClockIdentifier(v12);
  }

  else
  {
    v11 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = "false";
    *buf = 134219010;
    v18 = a1;
    v19 = 2048;
    if (a4)
    {
      v13 = "true";
    }

    v20 = a2;
    v21 = 1024;
    v22 = a3;
    v23 = 2082;
    v24 = v13;
    v25 = 2048;
    v26 = v11;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockCreateUserFilteredClock(%llu, %llu, %hu, %{public}s) = %p", buf, 0x30u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t TimeSyncGetClockMetricsWithSize(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3 == 40)
  {
    if (a2)
    {
      if (TimeSyncClockValidRef(a1))
      {
        v8 = [a1 clock];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          if (a4)
          {
            v10 = [[TSClockMetrics alloc] initWithInterfaceMetrics:a2];
            v11 = [a1 clock];
            v12 = [v11 getMetricsWithDelta:v10];
          }

          else
          {
            v10 = [a1 clock];
            v12 = [(TSClockMetrics *)v10 getMetrics];
          }

          if (v12)
          {
            *(a2 + 32) = 0;
            *a2 = 0u;
            *(a2 + 16) = 0u;
            *(a2 + 8) = [v12 gmChangesCount];
            *(a2 + 16) = [v12 timeToChangeGm];
            *(a2 + 24) = [v12 timeToLock];
            *(a2 + 32) = [v12 coreAudioReanchors];

            v13 = 0;
            goto LABEL_10;
          }

          TimeSyncGetClockMetricsWithSize_cold_4();
        }

        else
        {
          TimeSyncGetClockMetricsWithSize_cold_3();
        }
      }

      else
      {
        TimeSyncGetClockMetricsWithSize_cold_2();
      }
    }

    else
    {
      TimeSyncGetClockMetricsWithSize_cold_5();
    }
  }

  else
  {
    TimeSyncGetClockMetricsWithSize_cold_1();
  }

  v13 = v16;
LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134219008;
    v17 = a1;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = a3;
    v22 = 1024;
    v23 = a4;
    v24 = 1024;
    v25 = v13;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncClockGetMetrics(%p, %p, %llu, %u) = %#x", &v16, 0x2Cu);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t TimeSyncGetPortMetricsWithSize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a4 == 138)
  {
    if (TimeSyncClockValidRef(a1))
    {
      if (a3)
      {
        v10 = [a1 clock];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = [a1 clock];
          v13 = [v12 portWithPortNumber:a2];
          if (v13)
          {
            v14 = v13;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (a5)
              {
                v15 = [[TSPortMetrics alloc] initWithInterfaceMetrics:a3];
                v16 = [v14 getMetricsWithDelta:v15];
              }

              else
              {
                v16 = [v14 getMetrics];
              }

              if (v16)
              {
                *(a3 + 122) = 0u;
                *(a3 + 96) = 0u;
                *(a3 + 112) = 0u;
                *(a3 + 64) = 0u;
                *(a3 + 80) = 0u;
                *(a3 + 32) = 0u;
                *(a3 + 48) = 0u;
                *a3 = 0u;
                *(a3 + 16) = 0u;
                *a3 = [v16 portNumber];
                *(a3 + 2) = [v16 syncTimeouts];
                *(a3 + 10) = [v16 filterResetsDroppedLimit];
                *(a3 + 18) = [v16 filterResetsOutOfBounds];
                *(a3 + 26) = [v16 meanDelayTime];
                *(a3 + 34) = [v16 droppedMeasurements];
                *(a3 + 42) = [v16 discardedPpmLimitMeasurements];
                *(a3 + 50) = [v16 discardedDelayLimitExceededMeasurements];
                *(a3 + 58) = [v16 discardedOutOfBoundsMeasurements];
                *(a3 + 66) = [v16 discardedTimestampsOutOfOrderMeasurements];
                *(a3 + 74) = [v16 successfulMeasurements];
                *(a3 + 82) = [v16 totalMeasurements];
                *(a3 + 90) = [v16 droppedPercentage];
                *(a3 + 98) = [v16 discardedPpmLimitPercentage];
                *(a3 + 106) = [v16 discardedDelayLimitExceededPercentage];
                *(a3 + 114) = [v16 discardedOutOfBoundsPercentage];
                *(a3 + 122) = [v16 discardedTimestampsOutOfOrderPercentage];
                *(a3 + 130) = [v16 successfulPercentage];

                v17 = 0;
              }

              else
              {
                v17 = 3758097136;
                TimeSyncGetPortMetricsWithSize_cold_5();
              }
            }

            else
            {
              v17 = 3758097136;
              TimeSyncGetPortMetricsWithSize_cold_4();
            }
          }

          else
          {
            v17 = 3758097136;
            TimeSyncGetPortMetricsWithSize_cold_6(v12);
          }

          goto LABEL_12;
        }

        TimeSyncGetPortMetricsWithSize_cold_3();
      }

      else
      {
        TimeSyncGetPortMetricsWithSize_cold_7();
      }
    }

    else
    {
      TimeSyncGetPortMetricsWithSize_cold_2();
    }
  }

  else
  {
    TimeSyncGetPortMetricsWithSize_cold_1();
  }

  v17 = v20;
LABEL_12:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134219264;
    v21 = a1;
    v22 = 1024;
    v23 = a2;
    v24 = 2048;
    v25 = a3;
    v26 = 2048;
    v27 = a4;
    v28 = 1024;
    v29 = a5;
    v30 = 1024;
    v31 = v17;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncPortGetMetrics(%p, %u, %p, %llu, %u) = %#x", &v20, 0x32u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t TimeSyncSetPreferredGM(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v4 = [a1 clock];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [a1 clock];
      v11 = 0;
      [v6 setPreferredGM:a2 error:&v11];
      v7 = v11;
      v8 = [v7 code];

      goto LABEL_4;
    }

    TimeSyncSetPreferredGM_cold_2();
  }

  else
  {
    TimeSyncSetPreferredGM_cold_1();
  }

  v8 = v12;
  v7 = *buf;
LABEL_4:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = a1;
    v14 = 1024;
    v15 = a2;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncSetPreferredGM(%p, %u) = %#x", buf, 0x18u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t TimeSyncMSGStartExternalSync(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[TSMSGService sharedMSGService];
  v3 = v2;
  if (v2)
  {
    v10 = 0;
    v4 = [v2 startExternalSync:a1 error:&v10];
    v5 = v10;
    v6 = v5;
    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 code];
    }
  }

  else
  {
    TimeSyncMSGStartExternalSync_cold_1();
    v7 = v11;
    v6 = *buf;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncStartMSGExternalSync() = %#x", buf, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t TimeSyncMSGStopExternalSync(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[TSMSGService sharedMSGService];
  v3 = v2;
  if (v2)
  {
    v10 = 0;
    v4 = [v2 stopExternalSync:a1 error:&v10];
    v5 = v10;
    v6 = v5;
    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 code];
    }
  }

  else
  {
    TimeSyncMSGStopExternalSync_cold_1();
    v7 = v11;
    v6 = *buf;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncStopMSGExternalSync() = %#x", buf, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t TimeSyncMSGClockInstanceIdentifier(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = -1;
  v3 = +[TSMSGService sharedMSGService];
  v4 = v3;
  if (v3)
  {
    v11[0] = 0;
    v5 = [v3 getMSGClock:a1 error:v11];
    v6 = v11[0];
    v7 = v6;
    if (v5 == -1)
    {
      v8 = [v6 code];
    }

    else
    {
      v8 = 0;
      v2 = v5;
    }
  }

  else
  {
    TimeSyncMSGClockInstanceIdentifier_cold_1();
    v2 = v11[1];
    v8 = v12;
    v7 = *buf;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = a1;
    v14 = 2048;
    v15 = v2;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncMSGClockInstanceIdentifier(%u) = 0x%016llx, err: 0x%x", buf, 0x18u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t TimeSyncMSGAddClockInstance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = -1;
  v7 = +[TSMSGService sharedMSGService];
  v8 = v7;
  if (v7)
  {
    v15[0] = 0;
    v9 = [v7 addMSGClock:a1 withNominalSyncDuration:a2 error:{a3, v15}];
    v10 = v15[0];
    v11 = v10;
    if (v9 == -1)
    {
      v12 = [v10 code];
    }

    else
    {
      v12 = 0;
      v6 = v9;
    }
  }

  else
  {
    TimeSyncMSGAddClockInstance_cold_1();
    v6 = v15[1];
    v12 = v16;
    v11 = *buf;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *&buf[4] = a1;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = v6;
    v24 = 1024;
    v25 = v12;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncMSGAddClockInstance(%u, (%llu/%llu)) = 0x%016llx, err: 0x%x", buf, 0x2Cu);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t TimeSyncMSGAddClockInstanceRef(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = -1;
  v3 = +[TSMSGService sharedMSGService];
  v4 = v3;
  if (v3)
  {
    v11[0] = 0;
    v5 = [v3 addMSGClockRef:a1 error:v11];
    v6 = v11[0];
    v7 = v6;
    if (v5 == -1)
    {
      v8 = [v6 code];
    }

    else
    {
      v8 = 0;
      v2 = v5;
    }
  }

  else
  {
    TimeSyncMSGAddClockInstanceRef_cold_1();
    v2 = v11[1];
    v8 = v12;
    v7 = *buf;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = a1;
    v14 = 2048;
    v15 = v2;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncMSGAddClockInstanceRef(%u) = 0x%016llx, err: 0x%x", buf, 0x18u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t TimeSyncMSGRemoveClockInstance(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = +[TSMSGService sharedMSGService];
  v3 = v2;
  if (v2)
  {
    v12 = 0;
    v4 = [v2 removeMSGClock:a1 error:&v12];
    v5 = v12;
    v6 = v5;
    if (v4)
    {
      v7 = 0;
      v8 = 1;
    }

    else
    {
      v7 = [v5 code];
      v8 = 0;
    }
  }

  else
  {
    TimeSyncMSGRemoveClockInstance_cold_1();
    v7 = v13;
    v8 = v14;
    v6 = *buf;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = "false";
    *buf = 67109634;
    *&buf[4] = a1;
    if (v8)
    {
      v9 = "true";
    }

    v16 = 2080;
    v17 = v9;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncMSGRemoveClockInstance(%u) = %s, err: 0x%x", buf, 0x18u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t TimeSyncUpdateNtpAnchorOffset(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (TimeSyncClockValidRef(a1))
  {
    v6 = [a1 clock];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [a1 clock];
      v13 = 0;
      [v8 updateNtpAnchorOffset:a2 isLocalClockSourceFromNTP:a3 error:&v13];
      v9 = v13;
      v10 = [v9 code];

      goto LABEL_4;
    }

    TimeSyncUpdateNtpAnchorOffset_cold_2();
  }

  else
  {
    TimeSyncUpdateNtpAnchorOffset_cold_1();
  }

  v10 = v14;
  v9 = *buf;
LABEL_4:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = a1;
    v16 = 2048;
    v17 = a2;
    v18 = 1024;
    v19 = a3;
    v20 = 1024;
    v21 = v10;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncUpdateNtpAnchorOffset(%p, %lld %d) = %#x", buf, 0x22u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t TimeSyncGetCopresencePTPInstanceConfiguration(void *a1, uint64_t *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((TimeSyncClockValidRef(a1) & 1) == 0)
  {
    TimeSyncGetCopresencePTPInstanceConfiguration_cold_1();
LABEL_23:
    v10 = v16;
    v8 = *buf;
    v11 = v17;
    goto LABEL_10;
  }

  if (!a2 || !a3)
  {
    TimeSyncGetCopresencePTPInstanceConfiguration_cold_5();
    goto LABEL_23;
  }

  v6 = [a1 clock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    TimeSyncGetCopresencePTPInstanceConfiguration_cold_2();
    goto LABEL_23;
  }

  v8 = [a1 clock];
  v9 = [v8 portWithPortNumber:0];
  if (!v9)
  {
    TimeSyncGetCopresencePTPInstanceConfiguration_cold_4();
    goto LABEL_23;
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    TimeSyncGetCopresencePTPInstanceConfiguration_cold_3();
    goto LABEL_23;
  }

  v11 = 3758097095;
  if ([v10 hasNtpAnchorOffsetNsec] && objc_msgSend(v10, "hasLocalClockSourceFromNTP"))
  {
    *a2 = [v10 ntpAnchorOffsetNsec];
    v11 = 0;
    *a3 = [v10 localClockSourceFromNTP];
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v12 = *a2;
      if (a3)
      {
LABEL_13:
        v13 = *a3;
LABEL_16:
        *buf = 134218752;
        *&buf[4] = a1;
        v19 = 2048;
        v20 = v12;
        v21 = 1024;
        v22 = v13;
        v23 = 1024;
        v24 = v11;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncGetCopresencePTPInstanceConfiguration(%p, %lld %d) = %#x", buf, 0x22u);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      if (a3)
      {
        goto LABEL_13;
      }
    }

    v13 = 0;
    goto LABEL_16;
  }

LABEL_17:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t TimeSyncAddCopresencePTPInstanceRef()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = +[TSgPTPManager sharedgPTPManager];
  v1 = v0;
  if (v0)
  {
    v7 = 0;
    v2 = [v0 addCopresencePTPInstanceRefWithError:&v7];
    v3 = v7;
    if ((v2 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      TimeSyncAddCopresencePTPInstanceRef_cold_1(v3);
    }
  }

  else
  {
    v2 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = "false";
    if (v2)
    {
      v4 = "true";
    }

    *buf = 136446210;
    v9 = v4;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TimeSyncAddCopresencePTPInstanceRef() = %{public}s", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t __TimeSyncClockRemoveRef_block_invoke(uint64_t a1)
{
  result = [_timeSyncClockRefs count];
  if (result)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + 32);
      if (v4 == [_timeSyncClockRefs pointerAtIndex:v3])
      {
        break;
      }

      ++v3;
      result = [_timeSyncClockRefs count];
      if (v3 >= result)
      {
        return result;
      }
    }

    v5 = _timeSyncClockRefs;

    return [v5 removePointerAtIndex:v3];
  }

  return result;
}

unint64_t __TimeSyncPortValidRef_block_invoke(uint64_t a1)
{
  result = [_timeSyncPortRefs count];
  if (result)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + 40);
      result = [_timeSyncPortRefs pointerAtIndex:v3];
      if (v4 == result)
      {
        break;
      }

      ++v3;
      result = [_timeSyncPortRefs count];
      if (v3 >= result)
      {
        return result;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

unint64_t __TimeSyncPortRemoveRef_block_invoke(uint64_t a1)
{
  result = [_timeSyncPortRefs count];
  if (result)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + 32);
      if (v4 == [_timeSyncPortRefs pointerAtIndex:v3])
      {
        break;
      }

      ++v3;
      result = [_timeSyncPortRefs count];
      if (v3 >= result)
      {
        return result;
      }
    }

    v5 = _timeSyncPortRefs;

    return [v5 removePointerAtIndex:v3];
  }

  return result;
}

void OUTLINED_FUNCTION_1_0()
{
  *v2 = -536870206;
  *v1 = 0;
  *v0 = 0;
  v4 = *(v3 - 40);
}

void OUTLINED_FUNCTION_2_1(unsigned __int16 a1@<W8>)
{
  *v3 = a1 | 0xE0000000;
  *v2 = 0;
  *v1 = 0;
  v5 = *(v4 - 40);
}

void OUTLINED_FUNCTION_6(unsigned __int16 a1@<W8>)
{
  *v3 = a1 | 0xE0000000;
  *v2 = v4;
  *v1 = 0;
  v6 = *(v5 - 40);
}

void OUTLINED_FUNCTION_11()
{
  *v3 = 0;
  *v1 = -536870199;
  *v0 = v2;
  v5 = *(v4 - 40);
}

void OUTLINED_FUNCTION_13(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_18()
{
  *v1 = 0;
  *v0 = -536870201;
  v3 = *(v2 - 24);
}

void OUTLINED_FUNCTION_20()
{
  *v2 = 0;
  *v1 = 0;
  *v0 = 0;
  v4 = *(v3 - 40);
}

void sub_26F0C4B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F0C5F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F0C6564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_26F0C68A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_26F0C6C78(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_26F0C6F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F0C7178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F0C7428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F0C75D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F0C7780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F0C79F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_26F0C7D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_26F0C8020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_26F0C8320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_26F0C864C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void TimeSyncClockCreateWithClockIdentifier_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockDispose_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3_1();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetHostTimeForClockTime_cold_1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetClockTimeForHostTime_cold_1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetClockRate_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3_1();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetClockRateAndAnchors_cold_1()
{
  OUTLINED_FUNCTION_10();
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v1, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
  }

  OUTLINED_FUNCTION_9();
  *v0 = v6;
  OUTLINED_FUNCTION_3_1();
  v7 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetClockIdentifier_cold_1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetLockState_cold_1(_DWORD *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
  v7 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetLockStateChangeCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetMasterChangeCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetTimeSyncTimeChangeCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetConnectionInterruptedCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockCreateAudioClockDeviceUID_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3_1();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockCreateAudioClockDeviceUID_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3_1();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetHostTimeAndGrandmasterIdentityLocalPortForClockTime_cold_1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetHostTimeAndGrandmasterIdentityLocalPortForClockTime_cold_2()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetClockTimeAndGrandmasterIdentityLocalPortForHostTime_cold_1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetClockTimeAndGrandmasterIdentityLocalPortForHostTime_cold_2()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetClockRateAnchorsAndGrandmasterIdentity_cold_1()
{
  OUTLINED_FUNCTION_10();
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v1, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
  }

  OUTLINED_FUNCTION_9();
  *v0 = v6;
  OUTLINED_FUNCTION_3_1();
  v7 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetClockRateAnchorsAndGrandmasterIdentity_cold_2()
{
  OUTLINED_FUNCTION_10();
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v1, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
  }

  OUTLINED_FUNCTION_9();
  *v0 = v6;
  OUTLINED_FUNCTION_3_1();
  v7 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetgPTPGrandmasterIdentity_cold_1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockGetgPTPGrandmasterIdentity_cold_2()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetgPTPGrandmasterChangeCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetgPTPGrandmasterAndPortChangeCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetgPTPLocalPortChangeCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddUDPv4EndToEndPortAndGetIdentity_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddUDPv4EndToEndPortAndGetIdentity_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddUDPv4EndToEndPortAndGetIdentity_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddUDPv4EndToEndPortAndGetIdentity_cold_4()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockRemoveUDPv4EndToEndPort_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockRemoveUDPv4EndToEndPort_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddUDPv6EndToEndPortAndGetIdentity_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddUDPv6EndToEndPortAndGetIdentity_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddUDPv6EndToEndPortAndGetIdentity_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddUDPv6EndToEndPortAndGetIdentity_cold_4()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockRemoveUDPv6EndToEndPort_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockRemoveUDPv6EndToEndPort_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddAWDLPortAndGetIdentity_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddAWDLPortAndGetIdentity_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddAWDLPortAndGetIdentity_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddAWDLPortAndGetIdentity_cold_4()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockRemoveAWDLPort_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockRemoveAWDLPort_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetAllPortRemoteSyncMessageIntervals_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockSetAllPortRemoteSyncMessageIntervals_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockAddTimestamps_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockResetFilter_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncClockResetClock_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortCreateFromClock_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_20();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortCreateFromClock_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_20();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortCreateFromClock_cold_4()
{
  OUTLINED_FUNCTION_19();
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v5, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v6, v7, v8, v9, 2u);
  }

  *v2 = 0;
  *v1 = v4;
  *v0 = v3;
  v10 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortCreateFromClock_cold_5()
{
  OUTLINED_FUNCTION_7();
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v4, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v5, v6, v7, v8, 2u);
  }

  *v2 = 0;
  *v1 = v3;
  *v0 = 0;
  v9 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortDispose_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3_1();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortSetRemoteSyncMessageIntervals_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortOverridePortReceiveMatching_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortOverridePortReceiveMatching_cold_2()
{
  OUTLINED_FUNCTION_7();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_6(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortOverridePortReceiveMatching_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_2_1(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortRestorePortReceiveMatching_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortRestorePortReceiveMatching_cold_2()
{
  OUTLINED_FUNCTION_7();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_6(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortRestorePortReceiveMatching_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_2_1(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortGetCurrentPortInfo_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortGetCurrentPortInfo_cold_2()
{
  OUTLINED_FUNCTION_7();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_6(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortGetCurrentPortInfo_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_2_1(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortEnable_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortEnable_cold_2()
{
  OUTLINED_FUNCTION_7();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_6(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortEnable_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_2_1(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortDisable_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortDisable_cold_2()
{
  OUTLINED_FUNCTION_7();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_6(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortDisable_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_2_1(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncPortSetMACLookupTimeoutCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncCreateTimeSyncClockManagerConnectionCallbackWithInterruptedHandler_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncAddgPTPServices_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_13(&dword_26F080000, MEMORY[0x277D86220], v1, "Failed to add gPTP services with error 0x%08x\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncRemovegPTPServices_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  [0 code];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_13(&dword_26F080000, MEMORY[0x277D86220], v0, "Failed to remove gPTP services with error 0x%08x\n", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncAddAirPlayPTPInstance_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_13(&dword_26F080000, MEMORY[0x277D86220], v1, "Failed to add AirPlay PTP Instance with error 0x%08x\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncRemoveAirPlayPTPInstance_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_13(&dword_26F080000, MEMORY[0x277D86220], v1, "Failed to remove AirPlay PTP Instance with error 0x%08x\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncAddCopresencePTPInstance_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_13(&dword_26F080000, MEMORY[0x277D86220], v1, "Failed to add Copresence PTP Instance with error 0x%08x\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncRemoveCopresencePTPInstance_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_13(&dword_26F080000, MEMORY[0x277D86220], v1, "Failed to remove Copresence PTP Instance with error 0x%08x\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetClockMetricsWithSize_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetClockMetricsWithSize_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetClockMetricsWithSize_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetClockMetricsWithSize_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetClockMetricsWithSize_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetPortMetricsWithSize_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetPortMetricsWithSize_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetPortMetricsWithSize_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetPortMetricsWithSize_cold_4()
{
  OUTLINED_FUNCTION_5();
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetPortMetricsWithSize_cold_5()
{
  OUTLINED_FUNCTION_5();
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetPortMetricsWithSize_cold_6(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetPortMetricsWithSize_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncSetPreferredGM_cold_1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v1, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_4_0();
  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncSetPreferredGM_cold_2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v1, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_4_0();
  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncMSGStartExternalSync_cold_1()
{
  OUTLINED_FUNCTION_10();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_18();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncMSGStopExternalSync_cold_1()
{
  OUTLINED_FUNCTION_10();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_18();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncMSGClockInstanceIdentifier_cold_1()
{
  OUTLINED_FUNCTION_14();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncMSGAddClockInstance_cold_1()
{
  OUTLINED_FUNCTION_14();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncMSGAddClockInstanceRef_cold_1()
{
  OUTLINED_FUNCTION_14();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncMSGRemoveClockInstance_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v3, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v4, v5, v6, v7, 2u);
  }

  *v2 = 0;
  *v1 = 0;
  *v0 = -536870199;
  v8 = *MEMORY[0x277D85DE8];
}

void TimeSyncUpdateNtpAnchorOffset_cold_1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v1, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_4_0();
  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncUpdateNtpAnchorOffset_cold_2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v1, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, v3, v4, v5, 2u);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_4_0();
  v6 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetCopresencePTPInstanceConfiguration_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetCopresencePTPInstanceConfiguration_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetCopresencePTPInstanceConfiguration_cold_3()
{
  OUTLINED_FUNCTION_19();
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v5, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v6, v7, v8, v9, 2u);
  }

  OUTLINED_FUNCTION_9();
  *v2 = v10;
  *v1 = v4;
  *v0 = v3;
  v11 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetCopresencePTPInstanceConfiguration_cold_4()
{
  OUTLINED_FUNCTION_7();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_6(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncGetCopresencePTPInstanceConfiguration_cold_5()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_0();
  v5 = *MEMORY[0x277D85DE8];
}

void TimeSyncAddCopresencePTPInstanceRef_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_13(&dword_26F080000, MEMORY[0x277D86220], v1, "Failed to add Copresence PTP Instance reference count with error 0x%08x\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}