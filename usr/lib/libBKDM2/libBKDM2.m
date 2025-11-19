void __serviceStatus(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v8 = os_transaction_create();
  v9 = objc_autoreleasePoolPush();
  v10 = a1;
  if (__osLog)
  {
    v11 = __osLog;
  }

  else
  {
    v11 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218242;
    v14 = v10;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEBUG, "__serviceStatus %p(%@) --> serviceStatus:type:inValue:\n", &v13, 0x16u);
  }

  [v10 serviceStatus:a2 type:a3 inValue:a4];

  objc_autoreleasePoolPop(v9);
  v12 = *MEMORY[0x29EDCA608];
}

double crop_packed_raw10(uint64_t a1, int a2, unint64_t a3, unint64_t a4, char *__dst, double a6, double a7, double a8, double a9, uint64_t a10)
{
  v11 = a6 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = v11;
  v13 = ((((a8 + a6) + 3) & 0xFFFFFFFFFFFFFFFCLL) - v11);
  v14 = a7;
  v15 = (a9 + a7);
  v16 = (v12 + v13) - v12;
  if (v16)
  {
    v17 = v14 == v15;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v19 = 5 * (v12 >> 2);
    if (v19 >= a4)
    {
      crop_packed_raw10_cold_1();
    }

    v20 = 5 * (v16 >> 2);
    if (v20 + v19 > a4)
    {
      crop_packed_raw10_cold_4();
    }

    if (v14 >= a3)
    {
      crop_packed_raw10_cold_2();
    }

    if (v15 > a3)
    {
      crop_packed_raw10_cold_3();
    }

    if (a9 > 0.0)
    {
      v23 = (a1 + v19 + v14 * a4);
      v24 = 1;
      do
      {
        memcpy(__dst, v23, v20);
        __dst += a10;
        v25 = v24++;
        v23 += a4;
      }

      while (a9 > v25);
    }
  }

  return v12;
}

void sub_296CA89D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __LoggingStateNotificationCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134219010;
    v15 = a1;
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = a3;
    v20 = 2048;
    v21 = a4;
    v22 = 2112;
    v23 = a5;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "__LoggingStateNotificationCallback %p %p %@ %p %@\n", &v14, 0x34u);
  }

  v11 = [MEMORY[0x29EDBFD50] sharedInstance];
  [v11 synchronize];

  result = [a2 updateLoggingState];
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __AutoRetryModeNotificationCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134219010;
    v15 = a1;
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = a3;
    v20 = 2048;
    v21 = a4;
    v22 = 2112;
    v23 = a5;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "__AutoRetryModeNotificationCallback %p %p %@ %p %@\n", &v14, 0x34u);
  }

  v11 = [MEMORY[0x29EDBFD50] sharedInstance];
  [v11 synchronize];

  result = [a2 updateAutoRetryMode];
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __CombinedSequenceModeNotificationCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134219010;
    v15 = a1;
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = a3;
    v20 = 2048;
    v21 = a4;
    v22 = 2112;
    v23 = a5;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "__CombinedSequenceModeNotificationCallback %p %p %@ %p %@\n", &v14, 0x34u);
  }

  v11 = [MEMORY[0x29EDBFD50] sharedInstance];
  [v11 synchronize];

  result = [a2 updateCombinedSequenceMode];
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __CoachingHintsEnabledNotificationCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134219010;
    v15 = a1;
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = a3;
    v20 = 2048;
    v21 = a4;
    v22 = 2112;
    v23 = a5;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "__CoachingHintsEnabledNotificationCallback %p %p %@ %p %@\n", &v14, 0x34u);
  }

  v11 = [MEMORY[0x29EDBFD50] sharedInstance];
  [v11 synchronize];

  result = [a2 updateCoachingHintsEnabled];
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __EntitlementOverrideFlagsNotificationCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134219010;
    v15 = a1;
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = a3;
    v20 = 2048;
    v21 = a4;
    v22 = 2112;
    v23 = a5;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "__EntitlementOverrideFlagsNotificationCallback %p %p %@ %p %@\n", &v14, 0x34u);
  }

  v11 = [MEMORY[0x29EDBFD50] sharedInstance];
  [v11 synchronize];

  result = [a2 updateEntitlementOverrideFlags];
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void __serviceMatch(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = a1;
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "__serviceMatch %p(%@) --> serviceMatch:\n", &v6, 0x16u);
  }

  [v3 serviceMatch:a2];

  v5 = *MEMORY[0x29EDCA608];
}

void sub_296CA9C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __firstUnlockCallback(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = a2;
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134218242;
    v6 = v2;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "__firstUnlockCallback %p(%@) --> handleFirstUnlock\n", &v5, 0x16u);
  }

  if ([v2 handleFirstUnlock])
  {
    __firstUnlockCallback_cold_1();
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_296CAF884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, id a11)
{
  objc_sync_exit(obj);
  objc_sync_exit(a11);
  _Unwind_Resume(a1);
}

void sub_296CAFDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj, id a10)
{
  objc_sync_exit(obj);
  objc_sync_exit(a10);
  _Unwind_Resume(a1);
}

uint64_t getSensorSerialNumStringUT(char *a1, size_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x29EDCA608];
  strcpy(__s, "0123456789ABCDEFGHJKLMNPQRSTUVWXYZ");
  if (!a3)
  {
    getSensorSerialNumStringUT_cold_4();
LABEL_22:
    result = v39;
    goto LABEL_20;
  }

  if (a2 <= 0x11)
  {
    getSensorSerialNumStringUT_cold_3();
    goto LABEL_22;
  }

  v4 = bswap32(*a3);
  v5 = *(a3 + 4);
  v6 = *(a3 + 5) << 8;
  v7 = *(a3 + 6);
  v8 = *(a3 + 7);
  v9 = *(a3 + 8) << 16;
  v10 = *(a3 + 9) << 8;
  v11 = *(a3 + 10);
  bzero(a1, a2);
  v12 = 0;
  v13 = &dword_296D29F9C;
  do
  {
    v14 = *v13--;
    v15 = __s[v4 / v14];
    v4 %= v14;
    a1[v12++] = v15;
  }

  while (v12 != 6);
  v16 = v6 | (v5 << 16) | v7;
  v17 = &dword_296D29F98;
  for (i = 6; i != 11; ++i)
  {
    v19 = *v17--;
    v20 = __s[v16 / v19];
    v16 %= v19;
    a1[i] = v20;
  }

  v21 = v9 | (v8 << 24) | v10 | v11;
  v22 = 11;
  v23 = &dword_296D29F9C;
  do
  {
    v24 = *v23--;
    v25 = __s[v21 / v24];
    v21 %= v24;
    a1[v22++] = v25;
  }

  while (v22 != 17);
  v26 = strlen(a1);
  v27 = v26;
  v28 = v26 - 1;
  if (v26 < 2)
  {
LABEL_17:
    v36 = 48;
  }

  else
  {
    v29 = 0;
    v30 = v26 & 0x7FFFFFFF;
    v31 = &a1[v28 - 1];
    v32 = 1;
    do
    {
      v33 = *v31--;
      v34 = strchr(__s, v33);
      if (!v34)
      {
        getSensorSerialNumStringUT_cold_2();
        goto LABEL_22;
      }

      v35 = v34 - __s;
      if (v32)
      {
        v35 *= 3;
      }

      v29 += v35;
      ++v32;
    }

    while (v30 != v32);
    if (v29 % 34 < 1)
    {
      goto LABEL_17;
    }

    v36 = __s[-(v29 % 34) + 34];
  }

  if (v36 != a1[v28])
  {
    getSensorSerialNumStringUT_cold_1();
    goto LABEL_22;
  }

  result = 0;
  a1[v27] = 0;
LABEL_20:
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296CBB3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_296CBD344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_296CBD7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id obj, id a16)
{
  objc_sync_exit(obj);
  objc_sync_exit(a16);
  _Unwind_Resume(a1);
}

void sub_296CBDB60(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void BKDMTerminate()
{
  v0 = __xpcListenerQueue;
  if (__xpcListenerQueue)
  {
    __xpcListenerQueue = 0;
  }

  v1 = __xpcServer;
  if (__xpcServer)
  {
    __xpcServer = 0;
  }

  v2 = __listener;
  if (__listener)
  {
    __listener = 0;
  }

  v3 = __osLog;
  if (__osLog)
  {
    if (os_log_type_enabled(__osLog, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEFAULT, "--- biometrickitd (Pearl) ends ---\n", v4, 2u);
    }
  }
}

uint64_t BKDMInitialize()
{
  v0 = os_log_create("com.apple.BiometricKit", "Daemon-Pearl");
  v1 = __osLog;
  __osLog = v0;

  v2 = __osLog;
  if (!__osLog)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      BKDMInitialize_cold_1();
    }

    v2 = __osLog;
  }

  objc_storeStrong(&__osLogTrace, v2);
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEFAULT, "--- biometrickitd (Pearl) starts ---\n", v11, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x29EDBA180]) initWithMachServiceName:@"com.apple.pearld"];
  v5 = __listener;
  __listener = v4;

  if (__listener)
  {
    v6 = objc_opt_new();
    v7 = __xpcServer;
    __xpcServer = v6;

    if (__xpcServer)
    {
      v8 = dispatch_queue_create("com.apple.biometrickitd.xpcListenerQueue", 0);
      v9 = __xpcListenerQueue;
      __xpcListenerQueue = v8;

      if (__xpcListenerQueue)
      {
        [__listener setDelegate:__xpcServer];
        [__listener _setQueue:__xpcListenerQueue];
        [__listener resume];
        return 0;
      }

      BKDMInitialize_cold_2();
    }

    else
    {
      BKDMInitialize_cold_3();
    }
  }

  else
  {
    BKDMInitialize_cold_4();
  }

  BKDMTerminate();
  return 22;
}

void OUTLINED_FUNCTION_11()
{
  *v1 = 0;
  *v0 = 0;
  v3 = *(v2 - 40);
}

BOOL OUTLINED_FUNCTION_12@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

BOOL OUTLINED_FUNCTION_14@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_15(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

BOOL OUTLINED_FUNCTION_16@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_18@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_20(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

BOOL OUTLINED_FUNCTION_21@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_27(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

BOOL OUTLINED_FUNCTION_28@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_34(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x30u);
}

BOOL OUTLINED_FUNCTION_36@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_40@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

BOOL OUTLINED_FUNCTION_43@<W0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_46()
{
  *v1 = 257;
  *v0 = 0;
  v3 = *(v2 - 40);
}

void OUTLINED_FUNCTION_49(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_impl(a1, v17, OS_LOG_TYPE_DEBUG, a4, &buf, 2u);
}

BOOL OUTLINED_FUNCTION_50@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

uint64_t AWDBiometricKitBioLockoutEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 16) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_0@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

void OUTLINED_FUNCTION_17_0()
{
  *v2 = v5;
  *v1 = v4;
  *v0 = v3;
}

BOOL OUTLINED_FUNCTION_8_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

id OUTLINED_FUNCTION_9_0@<X0>(void *a1@<X8>)
{
  if (!a1)
  {
    a1 = v1;
  }

  return a1;
}

uint64_t AWDBiometricKitPassCodeChallengeAttemptReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v105 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v105 & 0x7F) << v5;
        if ((v105 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            v107 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v107 & 0x7F) << v13;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_173:
              v103 = 16;
              goto LABEL_178;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_173;
        case 2u:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            v106 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v106 & 0x7F) << v64;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_177;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v66;
          }

LABEL_177:
          v103 = 8;
LABEL_178:
          *(a1 + v103) = v19;
          goto LABEL_199;
        case 3u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 64) |= 0x1000u;
          while (1)
          {
            v110 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v110 & 0x7F) << v45;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              LOBYTE(v51) = 0;
              goto LABEL_163;
            }
          }

          v51 = (v47 != 0) & ~[a2 hasError];
LABEL_163:
          v102 = 61;
          goto LABEL_198;
        case 4u:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 64) |= 0x2000u;
          while (1)
          {
            v109 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v109 & 0x7F) << v52;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              LOBYTE(v51) = 0;
              goto LABEL_165;
            }
          }

          v51 = (v54 != 0) & ~[a2 hasError];
LABEL_165:
          v102 = 62;
          goto LABEL_198;
        case 5u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v112 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v112 & 0x7F) << v27;
            if ((v112 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_153;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v29;
          }

LABEL_153:
          v101 = 24;
          goto LABEL_195;
        case 6u:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 64) |= 0x400u;
          while (1)
          {
            v111 = 0;
            v73 = [a2 position] + 1;
            if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
            {
              v75 = [a2 data];
              [v75 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v72 |= (v111 & 0x7F) << v70;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v11 = v71++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_182;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v72;
          }

LABEL_182:
          v101 = 56;
          goto LABEL_195;
        case 7u:
          v82 = 0;
          v83 = 0;
          v84 = 0;
          *(a1 + 64) |= 0x20u;
          while (1)
          {
            v119 = 0;
            v85 = [a2 position] + 1;
            if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
            {
              v87 = [a2 data];
              [v87 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v84 |= (v119 & 0x7F) << v82;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v11 = v83++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_190;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v84;
          }

LABEL_190:
          v101 = 36;
          goto LABEL_195;
        case 8u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            v118 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v118 & 0x7F) << v58;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v11 = v59++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_169;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v60;
          }

LABEL_169:
          v101 = 28;
          goto LABEL_195;
        case 9u:
          v94 = 0;
          v95 = 0;
          v96 = 0;
          *(a1 + 64) |= 0x800u;
          while (1)
          {
            v108 = 0;
            v97 = [a2 position] + 1;
            if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
            {
              v99 = [a2 data];
              [v99 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v96 |= (v108 & 0x7F) << v94;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v11 = v95++ >= 9;
            if (v11)
            {
              LOBYTE(v51) = 0;
              goto LABEL_197;
            }
          }

          v51 = (v96 != 0) & ~[a2 hasError];
LABEL_197:
          v102 = 60;
LABEL_198:
          *(a1 + v102) = v51;
          goto LABEL_199;
        case 0xAu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 64) |= 0x200u;
          while (1)
          {
            v117 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v117 & 0x7F) << v39;
            if ((v117 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v41;
          }

LABEL_161:
          v101 = 52;
          goto LABEL_195;
        case 0xBu:
          v88 = 0;
          v89 = 0;
          v90 = 0;
          *(a1 + 64) |= 0x100u;
          while (1)
          {
            v116 = 0;
            v91 = [a2 position] + 1;
            if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
            {
              v93 = [a2 data];
              [v93 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v90 |= (v116 & 0x7F) << v88;
            if ((v116 & 0x80) == 0)
            {
              break;
            }

            v88 += 7;
            v11 = v89++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_194;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v90;
          }

LABEL_194:
          v101 = 48;
          goto LABEL_195;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v115 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v115 & 0x7F) << v20;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_149;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_149:
          v101 = 32;
          goto LABEL_195;
        case 0xDu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 64) |= 0x40u;
          while (1)
          {
            v114 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v114 & 0x7F) << v33;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_157;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v35;
          }

LABEL_157:
          v101 = 40;
          goto LABEL_195;
        case 0xEu:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 64) |= 0x80u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_199;
      }

      while (1)
      {
        v113 = 0;
        v79 = [a2 position] + 1;
        if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
        {
          v81 = [a2 data];
          [v81 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v78 |= (v113 & 0x7F) << v76;
        if ((v113 & 0x80) == 0)
        {
          break;
        }

        v76 += 7;
        v11 = v77++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_186;
        }
      }

      v26 = [a2 hasError] ? 0 : v78;
LABEL_186:
      v101 = 44;
LABEL_195:
      *(a1 + v101) = v26;
LABEL_199:
      v104 = [a2 position];
    }

    while (v104 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDBiometricKitEnrollAttemptReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v345 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v345 & 0x7F) << v6;
      if ((v345 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 232) |= 8uLL;
        while (1)
        {
          v345 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v345 & 0x7F) << v14;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_614:
            v343 = 32;
            goto LABEL_629;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_614;
      case 2u:
        v178 = 0;
        v179 = 0;
        v180 = 0;
        *(a1 + 232) |= 0x20000000000000uLL;
        while (1)
        {
          v345 = 0;
          v181 = [a2 position] + 1;
          if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
          {
            v183 = [a2 data];
            [v183 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v180 |= (v345 & 0x7F) << v178;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v178 += 7;
          v12 = v179++ >= 9;
          if (v12)
          {
            LOBYTE(v184) = 0;
            goto LABEL_616;
          }
        }

        v184 = (v180 != 0) & ~[a2 hasError];
LABEL_616:
        v344 = 230;
        goto LABEL_686;
      case 3u:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        *(a1 + 232) |= 1uLL;
        while (1)
        {
          v345 = 0;
          v157 = [a2 position] + 1;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
          {
            v159 = [a2 data];
            [v159 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v156 |= (v345 & 0x7F) << v154;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v12 = v155++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_598;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v156;
        }

LABEL_598:
        v343 = 8;
        goto LABEL_629;
      case 4u:
        v166 = 0;
        v167 = 0;
        v168 = 0;
        *(a1 + 232) |= 0x10000uLL;
        while (1)
        {
          v345 = 0;
          v169 = [a2 position] + 1;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
          {
            v171 = [a2 data];
            [v171 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v168 |= (v345 & 0x7F) << v166;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v166 += 7;
          v12 = v167++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_606;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v168;
        }

LABEL_606:
        v342 = 88;
        goto LABEL_719;
      case 5u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 232) |= 0x2000uLL;
        while (1)
        {
          v345 = 0;
          v121 = [a2 position] + 1;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
          {
            v123 = [a2 data];
            [v123 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v120 |= (v345 & 0x7F) << v118;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v12 = v119++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_574;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v120;
        }

LABEL_574:
        v342 = 76;
        goto LABEL_719;
      case 6u:
        v209 = 0;
        v210 = 0;
        v211 = 0;
        *(a1 + 232) |= 0x8000uLL;
        while (1)
        {
          v345 = 0;
          v212 = [a2 position] + 1;
          if (v212 >= [a2 position] && (v213 = objc_msgSend(a2, "position") + 1, v213 <= objc_msgSend(a2, "length")))
          {
            v214 = [a2 data];
            [v214 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v211 |= (v345 & 0x7F) << v209;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v209 += 7;
          v12 = v210++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_637;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v211;
        }

LABEL_637:
        v342 = 84;
        goto LABEL_719;
      case 7u:
        v227 = 0;
        v228 = 0;
        v229 = 0;
        *(a1 + 232) |= 0x200uLL;
        while (1)
        {
          v345 = 0;
          v230 = [a2 position] + 1;
          if (v230 >= [a2 position] && (v231 = objc_msgSend(a2, "position") + 1, v231 <= objc_msgSend(a2, "length")))
          {
            v232 = [a2 data];
            [v232 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v229 |= (v345 & 0x7F) << v227;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v227 += 7;
          v12 = v228++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_649;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v229;
        }

LABEL_649:
        v342 = 60;
        goto LABEL_719;
      case 8u:
        v172 = 0;
        v173 = 0;
        v174 = 0;
        *(a1 + 232) |= 0x4000uLL;
        while (1)
        {
          v345 = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            v177 = [a2 data];
            [v177 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v174 |= (v345 & 0x7F) << v172;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v12 = v173++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_610;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v174;
        }

LABEL_610:
        v342 = 80;
        goto LABEL_719;
      case 9u:
        v245 = 0;
        v246 = 0;
        v247 = 0;
        *(a1 + 232) |= 0x400uLL;
        while (1)
        {
          v345 = 0;
          v248 = [a2 position] + 1;
          if (v248 >= [a2 position] && (v249 = objc_msgSend(a2, "position") + 1, v249 <= objc_msgSend(a2, "length")))
          {
            v250 = [a2 data];
            [v250 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v247 |= (v345 & 0x7F) << v245;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v245 += 7;
          v12 = v246++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_661;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v247;
        }

LABEL_661:
        v342 = 64;
        goto LABEL_719;
      case 0xAu:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 232) |= 0x800uLL;
        while (1)
        {
          v345 = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v345 & 0x7F) << v136;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_586;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v138;
        }

LABEL_586:
        v342 = 68;
        goto LABEL_719;
      case 0xBu:
        v239 = 0;
        v240 = 0;
        v241 = 0;
        *(a1 + 232) |= 0x40000uLL;
        while (1)
        {
          v345 = 0;
          v242 = [a2 position] + 1;
          if (v242 >= [a2 position] && (v243 = objc_msgSend(a2, "position") + 1, v243 <= objc_msgSend(a2, "length")))
          {
            v244 = [a2 data];
            [v244 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v241 |= (v345 & 0x7F) << v239;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v239 += 7;
          v12 = v240++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_657;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v241;
        }

LABEL_657:
        v342 = 96;
        goto LABEL_719;
      case 0xCu:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(a1 + 232) |= 0x100uLL;
        while (1)
        {
          v345 = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            v111 = [a2 data];
            [v111 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (v345 & 0x7F) << v106;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v12 = v107++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_566;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v108;
        }

LABEL_566:
        v342 = 56;
        goto LABEL_719;
      case 0xDu:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 232) |= 0x20000uLL;
        while (1)
        {
          v345 = 0;
          v133 = [a2 position] + 1;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
          {
            v135 = [a2 data];
            [v135 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v132 |= (v345 & 0x7F) << v130;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v12 = v131++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_582;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v132;
        }

LABEL_582:
        v342 = 92;
        goto LABEL_719;
      case 0xEu:
        v221 = 0;
        v222 = 0;
        v223 = 0;
        *(a1 + 232) |= 0x400000000000uLL;
        while (1)
        {
          v345 = 0;
          v224 = [a2 position] + 1;
          if (v224 >= [a2 position] && (v225 = objc_msgSend(a2, "position") + 1, v225 <= objc_msgSend(a2, "length")))
          {
            v226 = [a2 data];
            [v226 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v223 |= (v345 & 0x7F) << v221;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v221 += 7;
          v12 = v222++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_645;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v223;
        }

LABEL_645:
        v342 = 208;
        goto LABEL_719;
      case 0xFu:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 232) |= 0x80000000000uLL;
        while (1)
        {
          v345 = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v345 & 0x7F) << v88;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_554;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v90;
        }

LABEL_554:
        v342 = 196;
        goto LABEL_719;
      case 0x10u:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 232) |= 0x200000000000uLL;
        while (1)
        {
          v345 = 0;
          v163 = [a2 position] + 1;
          if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
          {
            v165 = [a2 data];
            [v165 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v162 |= (v345 & 0x7F) << v160;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v12 = v161++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_602;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v162;
        }

LABEL_602:
        v342 = 204;
        goto LABEL_719;
      case 0x11u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 232) |= 0x8000000000uLL;
        while (1)
        {
          v345 = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v345 & 0x7F) << v76;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v12 = v77++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_546;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v78;
        }

LABEL_546:
        v342 = 180;
        goto LABEL_719;
      case 0x12u:
        v191 = 0;
        v192 = 0;
        v193 = 0;
        *(a1 + 232) |= 0x100000000000uLL;
        while (1)
        {
          v345 = 0;
          v194 = [a2 position] + 1;
          if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 1, v195 <= objc_msgSend(a2, "length")))
          {
            v196 = [a2 data];
            [v196 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v193 |= (v345 & 0x7F) << v191;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v191 += 7;
          v12 = v192++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_624;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v193;
        }

LABEL_624:
        v342 = 200;
        goto LABEL_719;
      case 0x13u:
        v233 = 0;
        v234 = 0;
        v235 = 0;
        *(a1 + 232) |= 0x10000000000uLL;
        while (1)
        {
          v345 = 0;
          v236 = [a2 position] + 1;
          if (v236 >= [a2 position] && (v237 = objc_msgSend(a2, "position") + 1, v237 <= objc_msgSend(a2, "length")))
          {
            v238 = [a2 data];
            [v238 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v235 |= (v345 & 0x7F) << v233;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v233 += 7;
          v12 = v234++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_653;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v235;
        }

LABEL_653:
        v342 = 184;
        goto LABEL_719;
      case 0x14u:
        v281 = 0;
        v282 = 0;
        v283 = 0;
        *(a1 + 232) |= 0x20000000000uLL;
        while (1)
        {
          v345 = 0;
          v284 = [a2 position] + 1;
          if (v284 >= [a2 position] && (v285 = objc_msgSend(a2, "position") + 1, v285 <= objc_msgSend(a2, "length")))
          {
            v286 = [a2 data];
            [v286 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v283 |= (v345 & 0x7F) << v281;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v281 += 7;
          v12 = v282++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_683;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v283;
        }

LABEL_683:
        v342 = 188;
        goto LABEL_719;
      case 0x15u:
        v203 = 0;
        v204 = 0;
        v205 = 0;
        *(a1 + 232) |= 0x1000000000000uLL;
        while (1)
        {
          v345 = 0;
          v206 = [a2 position] + 1;
          if (v206 >= [a2 position] && (v207 = objc_msgSend(a2, "position") + 1, v207 <= objc_msgSend(a2, "length")))
          {
            v208 = [a2 data];
            [v208 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v205 |= (v345 & 0x7F) << v203;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v203 += 7;
          v12 = v204++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_633;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v205;
        }

LABEL_633:
        v342 = 216;
        goto LABEL_719;
      case 0x16u:
        v215 = 0;
        v216 = 0;
        v217 = 0;
        *(a1 + 232) |= 0x4000000000uLL;
        while (1)
        {
          v345 = 0;
          v218 = [a2 position] + 1;
          if (v218 >= [a2 position] && (v219 = objc_msgSend(a2, "position") + 1, v219 <= objc_msgSend(a2, "length")))
          {
            v220 = [a2 data];
            [v220 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v217 |= (v345 & 0x7F) << v215;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v215 += 7;
          v12 = v216++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_641;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v217;
        }

LABEL_641:
        v342 = 176;
        goto LABEL_719;
      case 0x17u:
        v269 = 0;
        v270 = 0;
        v271 = 0;
        *(a1 + 232) |= 0x800000000000uLL;
        while (1)
        {
          v345 = 0;
          v272 = [a2 position] + 1;
          if (v272 >= [a2 position] && (v273 = objc_msgSend(a2, "position") + 1, v273 <= objc_msgSend(a2, "length")))
          {
            v274 = [a2 data];
            [v274 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v271 |= (v345 & 0x7F) << v269;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v269 += 7;
          v12 = v270++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_675;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v271;
        }

LABEL_675:
        v342 = 212;
        goto LABEL_719;
      case 0x18u:
        v293 = 0;
        v294 = 0;
        v295 = 0;
        *(a1 + 232) |= 0x20000000uLL;
        while (1)
        {
          v345 = 0;
          v296 = [a2 position] + 1;
          if (v296 >= [a2 position] && (v297 = objc_msgSend(a2, "position") + 1, v297 <= objc_msgSend(a2, "length")))
          {
            v298 = [a2 data];
            [v298 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v295 |= (v345 & 0x7F) << v293;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v293 += 7;
          v12 = v294++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_690;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v295;
        }

LABEL_690:
        v342 = 140;
        goto LABEL_719;
      case 0x19u:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 232) |= 0x40000000uLL;
        while (1)
        {
          v345 = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v345 & 0x7F) << v148;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_594;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v150;
        }

LABEL_594:
        v342 = 144;
        goto LABEL_719;
      case 0x1Au:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 232) |= 0x80000000uLL;
        while (1)
        {
          v345 = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v345 & 0x7F) << v142;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_590;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v144;
        }

LABEL_590:
        v342 = 148;
        goto LABEL_719;
      case 0x1Bu:
        v317 = 0;
        v318 = 0;
        v319 = 0;
        *(a1 + 232) |= 0x100000000uLL;
        while (1)
        {
          v345 = 0;
          v320 = [a2 position] + 1;
          if (v320 >= [a2 position] && (v321 = objc_msgSend(a2, "position") + 1, v321 <= objc_msgSend(a2, "length")))
          {
            v322 = [a2 data];
            [v322 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v319 |= (v345 & 0x7F) << v317;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v317 += 7;
          v12 = v318++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_706;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v319;
        }

LABEL_706:
        v342 = 152;
        goto LABEL_719;
      case 0x1Cu:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 232) |= 0x200000000uLL;
        while (1)
        {
          v345 = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v345 & 0x7F) << v64;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_538;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v66;
        }

LABEL_538:
        v342 = 156;
        goto LABEL_719;
      case 0x1Du:
        v299 = 0;
        v300 = 0;
        v301 = 0;
        *(a1 + 232) |= 0x400000000uLL;
        while (1)
        {
          v345 = 0;
          v302 = [a2 position] + 1;
          if (v302 >= [a2 position] && (v303 = objc_msgSend(a2, "position") + 1, v303 <= objc_msgSend(a2, "length")))
          {
            v304 = [a2 data];
            [v304 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v301 |= (v345 & 0x7F) << v299;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v299 += 7;
          v12 = v300++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_694;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v301;
        }

LABEL_694:
        v342 = 160;
        goto LABEL_719;
      case 0x1Eu:
        v305 = 0;
        v306 = 0;
        v307 = 0;
        *(a1 + 232) |= 0x800000000uLL;
        while (1)
        {
          v345 = 0;
          v308 = [a2 position] + 1;
          if (v308 >= [a2 position] && (v309 = objc_msgSend(a2, "position") + 1, v309 <= objc_msgSend(a2, "length")))
          {
            v310 = [a2 data];
            [v310 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v307 |= (v345 & 0x7F) << v305;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v305 += 7;
          v12 = v306++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_698;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v307;
        }

LABEL_698:
        v342 = 164;
        goto LABEL_719;
      case 0x1Fu:
        v251 = 0;
        v252 = 0;
        v253 = 0;
        *(a1 + 232) |= 0x1000000000uLL;
        while (1)
        {
          v345 = 0;
          v254 = [a2 position] + 1;
          if (v254 >= [a2 position] && (v255 = objc_msgSend(a2, "position") + 1, v255 <= objc_msgSend(a2, "length")))
          {
            v256 = [a2 data];
            [v256 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v253 |= (v345 & 0x7F) << v251;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v251 += 7;
          v12 = v252++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_665;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v253;
        }

LABEL_665:
        v342 = 168;
        goto LABEL_719;
      case 0x20u:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        *(a1 + 232) |= 0x2000000000uLL;
        while (1)
        {
          v345 = 0;
          v188 = [a2 position] + 1;
          if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 1, v189 <= objc_msgSend(a2, "length")))
          {
            v190 = [a2 data];
            [v190 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v187 |= (v345 & 0x7F) << v185;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v12 = v186++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_620;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v187;
        }

LABEL_620:
        v342 = 172;
        goto LABEL_719;
      case 0x21u:
        v257 = 0;
        v258 = 0;
        v259 = 0;
        *(a1 + 232) |= 0x20uLL;
        while (1)
        {
          v345 = 0;
          v260 = [a2 position] + 1;
          if (v260 >= [a2 position] && (v261 = objc_msgSend(a2, "position") + 1, v261 <= objc_msgSend(a2, "length")))
          {
            v262 = [a2 data];
            [v262 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v259 |= (v345 & 0x7F) << v257;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v257 += 7;
          v12 = v258++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_669;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v259;
        }

LABEL_669:
        v342 = 44;
        goto LABEL_719;
      case 0x22u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 232) |= 0x10uLL;
        while (1)
        {
          v345 = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v345 & 0x7F) << v94;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_558;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v96;
        }

LABEL_558:
        v342 = 40;
        goto LABEL_719;
      case 0x23u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 232) |= 0x10000000uLL;
        while (1)
        {
          v345 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v345 & 0x7F) << v70;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_542;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v72;
        }

LABEL_542:
        v342 = 136;
        goto LABEL_719;
      case 0x24u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 232) |= 0x100000uLL;
        while (1)
        {
          v345 = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v345 & 0x7F) << v52;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_530;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v54;
        }

LABEL_530:
        v342 = 104;
        goto LABEL_719;
      case 0x25u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 232) |= 0x40uLL;
        while (1)
        {
          v345 = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v345 & 0x7F) << v58;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_534;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v60;
        }

LABEL_534:
        v342 = 48;
        goto LABEL_719;
      case 0x26u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 232) |= 0x200000uLL;
        while (1)
        {
          v345 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v345 & 0x7F) << v34;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_518;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

LABEL_518:
        v342 = 108;
        goto LABEL_719;
      case 0x27u:
        v311 = 0;
        v312 = 0;
        v313 = 0;
        *(a1 + 232) |= 0x8000000uLL;
        while (1)
        {
          v345 = 0;
          v314 = [a2 position] + 1;
          if (v314 >= [a2 position] && (v315 = objc_msgSend(a2, "position") + 1, v315 <= objc_msgSend(a2, "length")))
          {
            v316 = [a2 data];
            [v316 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v313 |= (v345 & 0x7F) << v311;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v311 += 7;
          v12 = v312++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_702;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v313;
        }

LABEL_702:
        v342 = 132;
        goto LABEL_719;
      case 0x28u:
        v275 = 0;
        v276 = 0;
        v277 = 0;
        *(a1 + 232) |= 0x4000000000000uLL;
        while (1)
        {
          v345 = 0;
          v278 = [a2 position] + 1;
          if (v278 >= [a2 position] && (v279 = objc_msgSend(a2, "position") + 1, v279 <= objc_msgSend(a2, "length")))
          {
            v280 = [a2 data];
            [v280 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v277 |= (v345 & 0x7F) << v275;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v275 += 7;
          v12 = v276++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_679;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v277;
        }

LABEL_679:
        v342 = 224;
        goto LABEL_719;
      case 0x29u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 232) |= 4uLL;
        while (1)
        {
          v345 = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            v129 = [a2 data];
            [v129 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v126 |= (v345 & 0x7F) << v124;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v12 = v125++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_578;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v126;
        }

LABEL_578:
        v343 = 24;
        goto LABEL_629;
      case 0x2Au:
        v197 = 0;
        v198 = 0;
        v199 = 0;
        *(a1 + 232) |= 2uLL;
        while (1)
        {
          v345 = 0;
          v200 = [a2 position] + 1;
          if (v200 >= [a2 position] && (v201 = objc_msgSend(a2, "position") + 1, v201 <= objc_msgSend(a2, "length")))
          {
            v202 = [a2 data];
            [v202 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v199 |= (v345 & 0x7F) << v197;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v197 += 7;
          v12 = v198++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_628;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v199;
        }

LABEL_628:
        v343 = 16;
LABEL_629:
        *(a1 + v343) = v20;
        continue;
      case 0x2Bu:
        v287 = 0;
        v288 = 0;
        v289 = 0;
        *(a1 + 232) |= 0x8000000000000uLL;
        while (1)
        {
          v345 = 0;
          v290 = [a2 position] + 1;
          if (v290 >= [a2 position] && (v291 = objc_msgSend(a2, "position") + 1, v291 <= objc_msgSend(a2, "length")))
          {
            v292 = [a2 data];
            [v292 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v289 |= (v345 & 0x7F) << v287;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v287 += 7;
          v12 = v288++ >= 9;
          if (v12)
          {
            LOBYTE(v184) = 0;
            goto LABEL_685;
          }
        }

        v184 = (v289 != 0) & ~[a2 hasError];
LABEL_685:
        v344 = 228;
        goto LABEL_686;
      case 0x2Cu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 232) |= 0x80uLL;
        while (1)
        {
          v345 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v345 & 0x7F) << v28;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_514;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_514:
        v342 = 52;
        goto LABEL_719;
      case 0x2Du:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 232) |= 0x800000uLL;
        while (1)
        {
          v345 = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v345 & 0x7F) << v82;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_550;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v84;
        }

LABEL_550:
        v342 = 116;
        goto LABEL_719;
      case 0x2Eu:
        v263 = 0;
        v264 = 0;
        v265 = 0;
        *(a1 + 232) |= 0x10000000000000uLL;
        while (1)
        {
          v345 = 0;
          v266 = [a2 position] + 1;
          if (v266 >= [a2 position] && (v267 = objc_msgSend(a2, "position") + 1, v267 <= objc_msgSend(a2, "length")))
          {
            v268 = [a2 data];
            [v268 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v265 |= (v345 & 0x7F) << v263;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v263 += 7;
          v12 = v264++ >= 9;
          if (v12)
          {
            LOBYTE(v184) = 0;
            goto LABEL_671;
          }
        }

        v184 = (v265 != 0) & ~[a2 hasError];
LABEL_671:
        v344 = 229;
LABEL_686:
        *(a1 + v344) = v184;
        continue;
      case 0x2Fu:
        v330 = 0;
        v331 = 0;
        v332 = 0;
        *(a1 + 232) |= 0x80000uLL;
        while (1)
        {
          v345 = 0;
          v333 = [a2 position] + 1;
          if (v333 >= [a2 position] && (v334 = objc_msgSend(a2, "position") + 1, v334 <= objc_msgSend(a2, "length")))
          {
            v335 = [a2 data];
            [v335 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v332 |= (v345 & 0x7F) << v330;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v330 += 7;
          v12 = v331++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_714;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v332;
        }

LABEL_714:
        v342 = 100;
        goto LABEL_719;
      case 0x30u:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 232) |= 0x1000uLL;
        while (1)
        {
          v345 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v345 & 0x7F) << v46;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v12 = v47++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_526;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v48;
        }

LABEL_526:
        v342 = 72;
        goto LABEL_719;
      case 0x31u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 232) |= 0x2000000000000uLL;
        while (1)
        {
          v345 = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            v105 = [a2 data];
            [v105 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v345 & 0x7F) << v100;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v12 = v101++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_562;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v102;
        }

LABEL_562:
        v342 = 220;
        goto LABEL_719;
      case 0x32u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 232) |= 0x40000000000uLL;
        while (1)
        {
          v345 = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v345 & 0x7F) << v112;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_570;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v114;
        }

LABEL_570:
        v342 = 192;
        goto LABEL_719;
      case 0x33u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 232) |= 0x400000uLL;
        while (1)
        {
          v345 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v345 & 0x7F) << v21;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_510;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_510:
        v342 = 112;
        goto LABEL_719;
      case 0x34u:
        v336 = 0;
        v337 = 0;
        v338 = 0;
        *(a1 + 232) |= 0x2000000uLL;
        while (1)
        {
          v345 = 0;
          v339 = [a2 position] + 1;
          if (v339 >= [a2 position] && (v340 = objc_msgSend(a2, "position") + 1, v340 <= objc_msgSend(a2, "length")))
          {
            v341 = [a2 data];
            [v341 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v338 |= (v345 & 0x7F) << v336;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v336 += 7;
          v12 = v337++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_718;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v338;
        }

LABEL_718:
        v342 = 124;
        goto LABEL_719;
      case 0x35u:
        v324 = 0;
        v325 = 0;
        v326 = 0;
        *(a1 + 232) |= 0x4000000uLL;
        while (1)
        {
          v345 = 0;
          v327 = [a2 position] + 1;
          if (v327 >= [a2 position] && (v328 = objc_msgSend(a2, "position") + 1, v328 <= objc_msgSend(a2, "length")))
          {
            v329 = [a2 data];
            [v329 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v326 |= (v345 & 0x7F) << v324;
          if ((v345 & 0x80) == 0)
          {
            break;
          }

          v324 += 7;
          v12 = v325++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_710;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v326;
        }

LABEL_710:
        v342 = 128;
        goto LABEL_719;
      case 0x36u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 232) |= 0x1000000uLL;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v345 = 0;
      v43 = [a2 position] + 1;
      if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
      {
        v45 = [a2 data];
        [v45 getBytes:&v345 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v42 |= (v345 & 0x7F) << v40;
      if ((v345 & 0x80) == 0)
      {
        break;
      }

      v40 += 7;
      v12 = v41++ >= 9;
      if (v12)
      {
        v27 = 0;
        goto LABEL_522;
      }
    }

    if ([a2 hasError])
    {
      v27 = 0;
    }

    else
    {
      v27 = v42;
    }

LABEL_522:
    v342 = 120;
LABEL_719:
    *(a1 + v342) = v27;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDBiometricKitMatchAttemptReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (2)
    {
      if (([a2 hasError] & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v612[0]) = 0;
          v8 = [a2 position] + 1;
          if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
          {
            v10 = [a2 data];
            [v10 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v7 |= (v612[0] & 0x7F) << v5;
          if ((v612[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v12 = 0;
            goto LABEL_15;
          }
        }

        v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
        if (([a2 hasError] & 1) == 0 && (v12 & 7) != 4)
        {
          switch((v12 >> 3))
          {
            case 1u:
              v13 = 0;
              v14 = 0;
              v15 = 0;
              *(a1 + 380) |= 0x100uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v16 = [a2 position] + 1;
                if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
                {
                  v18 = [a2 data];
                  [v18 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v612[0] & 0x7F) << v13;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v13 += 7;
                v11 = v14++ >= 9;
                if (v11)
                {
                  v19 = 0;
LABEL_1057:
                  v604 = 96;
                  goto LABEL_1220;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v15;
              }

              goto LABEL_1057;
            case 2u:
              v308 = 0;
              v309 = 0;
              v310 = 0;
              *(a1 + 388) |= 0x20000000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v311 = [a2 position] + 1;
                if (v311 >= [a2 position] && (v312 = objc_msgSend(a2, "position") + 1, v312 <= objc_msgSend(a2, "length")))
                {
                  v313 = [a2 data];
                  [v313 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v310 |= (v612[0] & 0x7F) << v308;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v308 += 7;
                v11 = v309++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1059;
                }
              }

              v26 = (v310 != 0) & ~[a2 hasError];
LABEL_1059:
              v602 = 377;
              goto LABEL_1225;
            case 3u:
              v278 = 0;
              v279 = 0;
              v280 = 0;
              *(a1 + 380) |= 4uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v281 = [a2 position] + 1;
                if (v281 >= [a2 position] && (v282 = objc_msgSend(a2, "position") + 1, v282 <= objc_msgSend(a2, "length")))
                {
                  v283 = [a2 data];
                  [v283 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v280 |= (v612[0] & 0x7F) << v278;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v278 += 7;
                v11 = v279++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_1037;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v280;
              }

LABEL_1037:
              v604 = 48;
              goto LABEL_1220;
            case 4u:
              v296 = 0;
              v297 = 0;
              v298 = 0;
              *(a1 + 380) |= 2uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v299 = [a2 position] + 1;
                if (v299 >= [a2 position] && (v300 = objc_msgSend(a2, "position") + 1, v300 <= objc_msgSend(a2, "length")))
                {
                  v301 = [a2 data];
                  [v301 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v298 |= (v612[0] & 0x7F) << v296;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v296 += 7;
                v11 = v297++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_1049;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v298;
              }

LABEL_1049:
              v604 = 40;
              goto LABEL_1220;
            case 5u:
              v230 = 0;
              v231 = 0;
              v232 = 0;
              *(a1 + 380) |= 0x20000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v233 = [a2 position] + 1;
                if (v233 >= [a2 position] && (v234 = objc_msgSend(a2, "position") + 1, v234 <= objc_msgSend(a2, "length")))
                {
                  v235 = [a2 data];
                  [v235 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v232 |= (v612[0] & 0x7F) << v230;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v230 += 7;
                v11 = v231++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1009;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v232;
              }

LABEL_1009:
              v603 = 244;
              goto LABEL_1230;
            case 6u:
              v362 = 0;
              v363 = 0;
              v364 = 0;
              *(a1 + 380) |= 0x800000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v365 = [a2 position] + 1;
                if (v365 >= [a2 position] && (v366 = objc_msgSend(a2, "position") + 1, v366 <= objc_msgSend(a2, "length")))
                {
                  v367 = [a2 data];
                  [v367 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v364 |= (v612[0] & 0x7F) << v362;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v362 += 7;
                v11 = v363++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1095;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v364;
              }

LABEL_1095:
              v603 = 220;
              goto LABEL_1230;
            case 7u:
              v392 = 0;
              v393 = 0;
              v394 = 0;
              *(a1 + 380) |= 0x2000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v395 = [a2 position] + 1;
                if (v395 >= [a2 position] && (v396 = objc_msgSend(a2, "position") + 1, v396 <= objc_msgSend(a2, "length")))
                {
                  v397 = [a2 data];
                  [v397 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v394 |= (v612[0] & 0x7F) << v392;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v392 += 7;
                v11 = v393++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1115;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v394;
              }

LABEL_1115:
              v603 = 228;
              goto LABEL_1230;
            case 8u:
              v302 = 0;
              v303 = 0;
              v304 = 0;
              *(a1 + 380) |= 0x4000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v305 = [a2 position] + 1;
                if (v305 >= [a2 position] && (v306 = objc_msgSend(a2, "position") + 1, v306 <= objc_msgSend(a2, "length")))
                {
                  v307 = [a2 data];
                  [v307 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v304 |= (v612[0] & 0x7F) << v302;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v302 += 7;
                v11 = v303++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1053;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v304;
              }

LABEL_1053:
              v603 = 232;
              goto LABEL_1230;
            case 9u:
              v410 = 0;
              v411 = 0;
              v412 = 0;
              *(a1 + 380) |= 0x1000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v413 = [a2 position] + 1;
                if (v413 >= [a2 position] && (v414 = objc_msgSend(a2, "position") + 1, v414 <= objc_msgSend(a2, "length")))
                {
                  v415 = [a2 data];
                  [v415 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v412 |= (v612[0] & 0x7F) << v410;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v410 += 7;
                v11 = v411++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1127;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v412;
              }

LABEL_1127:
              v603 = 224;
              goto LABEL_1230;
            case 0xAu:
              v260 = 0;
              v261 = 0;
              v262 = 0;
              *(a1 + 380) |= 1uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v263 = [a2 position] + 1;
                if (v263 >= [a2 position] && (v264 = objc_msgSend(a2, "position") + 1, v264 <= objc_msgSend(a2, "length")))
                {
                  v265 = [a2 data];
                  [v265 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v262 |= (v612[0] & 0x7F) << v260;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v260 += 7;
                v11 = v261++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_1029;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v262;
              }

LABEL_1029:
              v604 = 32;
              goto LABEL_1220;
            case 0xBu:
              v404 = 0;
              v405 = 0;
              v406 = 0;
              *(a1 + 380) |= 0x200000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v407 = [a2 position] + 1;
                if (v407 >= [a2 position] && (v408 = objc_msgSend(a2, "position") + 1, v408 <= objc_msgSend(a2, "length")))
                {
                  v409 = [a2 data];
                  [v409 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v406 |= (v612[0] & 0x7F) << v404;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v404 += 7;
                v11 = v405++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1123;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v406;
              }

LABEL_1123:
              v603 = 152;
              goto LABEL_1230;
            case 0xCu:
              v212 = 0;
              v213 = 0;
              v214 = 0;
              *(a1 + 380) |= 0x8000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v215 = [a2 position] + 1;
                if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
                {
                  v217 = [a2 data];
                  [v217 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v214 |= (v612[0] & 0x7F) << v212;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v212 += 7;
                v11 = v213++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_999;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v214;
              }

LABEL_999:
              v603 = 128;
              goto LABEL_1230;
            case 0xDu:
              v254 = 0;
              v255 = 0;
              v256 = 0;
              *(a1 + 380) |= 0x20000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v257 = [a2 position] + 1;
                if (v257 >= [a2 position] && (v258 = objc_msgSend(a2, "position") + 1, v258 <= objc_msgSend(a2, "length")))
                {
                  v259 = [a2 data];
                  [v259 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v256 |= (v612[0] & 0x7F) << v254;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v254 += 7;
                v11 = v255++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1025;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v256;
              }

LABEL_1025:
              v603 = 136;
              goto LABEL_1230;
            case 0xEu:
              v386 = 0;
              v387 = 0;
              v388 = 0;
              *(a1 + 380) |= 0x40000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v389 = [a2 position] + 1;
                if (v389 >= [a2 position] && (v390 = objc_msgSend(a2, "position") + 1, v390 <= objc_msgSend(a2, "length")))
                {
                  v391 = [a2 data];
                  [v391 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v388 |= (v612[0] & 0x7F) << v386;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v386 += 7;
                v11 = v387++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1111;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v388;
              }

LABEL_1111:
              v603 = 140;
              goto LABEL_1230;
            case 0xFu:
              v182 = 0;
              v183 = 0;
              v184 = 0;
              *(a1 + 380) |= 0x10000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v185 = [a2 position] + 1;
                if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
                {
                  v187 = [a2 data];
                  [v187 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v184 |= (v612[0] & 0x7F) << v182;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v182 += 7;
                v11 = v183++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_983;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v184;
              }

LABEL_983:
              v603 = 132;
              goto LABEL_1230;
            case 0x10u:
              v284 = 0;
              v285 = 0;
              v286 = 0;
              *(a1 + 380) |= 0x10uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v287 = [a2 position] + 1;
                if (v287 >= [a2 position] && (v288 = objc_msgSend(a2, "position") + 1, v288 <= objc_msgSend(a2, "length")))
                {
                  v289 = [a2 data];
                  [v289 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v286 |= (v612[0] & 0x7F) << v284;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v284 += 7;
                v11 = v285++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_1041;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v286;
              }

LABEL_1041:
              v604 = 64;
              goto LABEL_1220;
            case 0x11u:
              v164 = 0;
              v165 = 0;
              v166 = 0;
              *(a1 + 388) |= 2u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v167 = [a2 position] + 1;
                if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
                {
                  v169 = [a2 data];
                  [v169 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v166 |= (v612[0] & 0x7F) << v164;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v164 += 7;
                v11 = v165++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_973;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v166;
              }

LABEL_973:
              v603 = 340;
              goto LABEL_1230;
            case 0x12u:
              v326 = 0;
              v327 = 0;
              v328 = 0;
              *(a1 + 380) |= 0x2000000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v329 = [a2 position] + 1;
                if (v329 >= [a2 position] && (v330 = objc_msgSend(a2, "position") + 1, v330 <= objc_msgSend(a2, "length")))
                {
                  v331 = [a2 data];
                  [v331 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v328 |= (v612[0] & 0x7F) << v326;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v326 += 7;
                v11 = v327++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1071;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v328;
              }

LABEL_1071:
              v603 = 324;
              goto LABEL_1230;
            case 0x13u:
              v398 = 0;
              v399 = 0;
              v400 = 0;
              *(a1 + 380) |= 0x8000000000000000;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v401 = [a2 position] + 1;
                if (v401 >= [a2 position] && (v402 = objc_msgSend(a2, "position") + 1, v402 <= objc_msgSend(a2, "length")))
                {
                  v403 = [a2 data];
                  [v403 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v400 |= (v612[0] & 0x7F) << v398;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v398 += 7;
                v11 = v399++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1119;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v400;
              }

LABEL_1119:
              v603 = 332;
              goto LABEL_1230;
            case 0x14u:
              v458 = 0;
              v459 = 0;
              v460 = 0;
              *(a1 + 388) |= 1u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v461 = [a2 position] + 1;
                if (v461 >= [a2 position] && (v462 = objc_msgSend(a2, "position") + 1, v462 <= objc_msgSend(a2, "length")))
                {
                  v463 = [a2 data];
                  [v463 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v460 |= (v612[0] & 0x7F) << v458;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v458 += 7;
                v11 = v459++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1155;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v460;
              }

LABEL_1155:
              v603 = 336;
              goto LABEL_1230;
            case 0x15u:
              v350 = 0;
              v351 = 0;
              v352 = 0;
              *(a1 + 380) |= 0x4000000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v353 = [a2 position] + 1;
                if (v353 >= [a2 position] && (v354 = objc_msgSend(a2, "position") + 1, v354 <= objc_msgSend(a2, "length")))
                {
                  v355 = [a2 data];
                  [v355 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v352 |= (v612[0] & 0x7F) << v350;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v350 += 7;
                v11 = v351++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1087;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v352;
              }

LABEL_1087:
              v603 = 328;
              goto LABEL_1230;
            case 0x16u:
              v380 = 0;
              v381 = 0;
              v382 = 0;
              *(a1 + 380) |= 0x200uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v383 = [a2 position] + 1;
                if (v383 >= [a2 position] && (v384 = objc_msgSend(a2, "position") + 1, v384 <= objc_msgSend(a2, "length")))
                {
                  v385 = [a2 data];
                  [v385 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v382 |= (v612[0] & 0x7F) << v380;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v380 += 7;
                v11 = v381++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1107;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v382;
              }

LABEL_1107:
              v603 = 104;
              goto LABEL_1230;
            case 0x17u:
              v440 = 0;
              v441 = 0;
              v442 = 0;
              *(a1 + 388) |= 0x80000000;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v443 = [a2 position] + 1;
                if (v443 >= [a2 position] && (v444 = objc_msgSend(a2, "position") + 1, v444 <= objc_msgSend(a2, "length")))
                {
                  v445 = [a2 data];
                  [v445 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v442 |= (v612[0] & 0x7F) << v440;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v440 += 7;
                v11 = v441++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1143;
                }
              }

              v26 = (v442 != 0) & ~[a2 hasError];
LABEL_1143:
              v602 = 379;
              goto LABEL_1225;
            case 0x18u:
              v482 = 0;
              v483 = 0;
              v484 = 0;
              *(a1 + 388) |= 0x8000000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v485 = [a2 position] + 1;
                if (v485 >= [a2 position] && (v486 = objc_msgSend(a2, "position") + 1, v486 <= objc_msgSend(a2, "length")))
                {
                  v487 = [a2 data];
                  [v487 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v484 |= (v612[0] & 0x7F) << v482;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v482 += 7;
                v11 = v483++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1169;
                }
              }

              v26 = (v484 != 0) & ~[a2 hasError];
LABEL_1169:
              v602 = 375;
              goto LABEL_1225;
            case 0x19u:
              v272 = 0;
              v273 = 0;
              v274 = 0;
              *(a1 + 388) |= 0x1000000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v275 = [a2 position] + 1;
                if (v275 >= [a2 position] && (v276 = objc_msgSend(a2, "position") + 1, v276 <= objc_msgSend(a2, "length")))
                {
                  v277 = [a2 data];
                  [v277 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v274 |= (v612[0] & 0x7F) << v272;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v272 += 7;
                v11 = v273++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1033;
                }
              }

              v26 = (v274 != 0) & ~[a2 hasError];
LABEL_1033:
              v602 = 372;
              goto LABEL_1225;
            case 0x1Au:
              v266 = 0;
              v267 = 0;
              v268 = 0;
              *(a1 + 388) |= 0x2000000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v269 = [a2 position] + 1;
                if (v269 >= [a2 position] && (v270 = objc_msgSend(a2, "position") + 1, v270 <= objc_msgSend(a2, "length")))
                {
                  v271 = [a2 data];
                  [v271 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v268 |= (v612[0] & 0x7F) << v266;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v266 += 7;
                v11 = v267++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1031;
                }
              }

              v26 = (v268 != 0) & ~[a2 hasError];
LABEL_1031:
              v602 = 373;
              goto LABEL_1225;
            case 0x1Bu:
              v506 = 0;
              v507 = 0;
              v508 = 0;
              *(a1 + 388) |= 0x40u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v509 = [a2 position] + 1;
                if (v509 >= [a2 position] && (v510 = objc_msgSend(a2, "position") + 1, v510 <= objc_msgSend(a2, "length")))
                {
                  v511 = [a2 data];
                  [v511 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v508 |= (v612[0] & 0x7F) << v506;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v506 += 7;
                v11 = v507++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1179;
                }
              }

              v26 = (v508 != 0) & ~[a2 hasError];
LABEL_1179:
              v602 = 354;
              goto LABEL_1225;
            case 0x1Cu:
              v152 = 0;
              v153 = 0;
              v154 = 0;
              *(a1 + 388) |= 0x10u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v155 = [a2 position] + 1;
                if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
                {
                  v157 = [a2 data];
                  [v157 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v154 |= (v612[0] & 0x7F) << v152;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v152 += 7;
                v11 = v153++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_965;
                }
              }

              v26 = (v154 != 0) & ~[a2 hasError];
LABEL_965:
              v602 = 352;
              goto LABEL_1225;
            case 0x1Du:
              v488 = 0;
              v489 = 0;
              v490 = 0;
              *(a1 + 388) |= 0x10000000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v491 = [a2 position] + 1;
                if (v491 >= [a2 position] && (v492 = objc_msgSend(a2, "position") + 1, v492 <= objc_msgSend(a2, "length")))
                {
                  v493 = [a2 data];
                  [v493 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v490 |= (v612[0] & 0x7F) << v488;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v488 += 7;
                v11 = v489++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1171;
                }
              }

              v26 = (v490 != 0) & ~[a2 hasError];
LABEL_1171:
              v602 = 376;
              goto LABEL_1225;
            case 0x1Eu:
              v494 = 0;
              v495 = 0;
              v496 = 0;
              *(a1 + 388) |= 0x40000000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v497 = [a2 position] + 1;
                if (v497 >= [a2 position] && (v498 = objc_msgSend(a2, "position") + 1, v498 <= objc_msgSend(a2, "length")))
                {
                  v499 = [a2 data];
                  [v499 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v496 |= (v612[0] & 0x7F) << v494;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v494 += 7;
                v11 = v495++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1173;
                }
              }

              v26 = (v496 != 0) & ~[a2 hasError];
LABEL_1173:
              v602 = 378;
              goto LABEL_1225;
            case 0x1Fu:
              v416 = 0;
              v417 = 0;
              v418 = 0;
              *(a1 + 380) |= 0x8000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v419 = [a2 position] + 1;
                if (v419 >= [a2 position] && (v420 = objc_msgSend(a2, "position") + 1, v420 <= objc_msgSend(a2, "length")))
                {
                  v421 = [a2 data];
                  [v421 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v418 |= (v612[0] & 0x7F) << v416;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v416 += 7;
                v11 = v417++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1131;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v418;
              }

LABEL_1131:
              v603 = 284;
              goto LABEL_1230;
            case 0x20u:
              v320 = 0;
              v321 = 0;
              v322 = 0;
              *(a1 + 388) |= 4u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v323 = [a2 position] + 1;
                if (v323 >= [a2 position] && (v324 = objc_msgSend(a2, "position") + 1, v324 <= objc_msgSend(a2, "length")))
                {
                  v325 = [a2 data];
                  [v325 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v322 |= (v612[0] & 0x7F) << v320;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v320 += 7;
                v11 = v321++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1067;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v322;
              }

LABEL_1067:
              v603 = 344;
              goto LABEL_1230;
            case 0x21u:
              v422 = 0;
              v423 = 0;
              v424 = 0;
              *(a1 + 380) |= 0x40000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v425 = [a2 position] + 1;
                if (v425 >= [a2 position] && (v426 = objc_msgSend(a2, "position") + 1, v426 <= objc_msgSend(a2, "length")))
                {
                  v427 = [a2 data];
                  [v427 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v424 |= (v612[0] & 0x7F) << v422;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v422 += 7;
                v11 = v423++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1135;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v424;
              }

LABEL_1135:
              v603 = 248;
              goto LABEL_1230;
            case 0x22u:
              v188 = 0;
              v189 = 0;
              v190 = 0;
              *(a1 + 388) |= 0x400000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v191 = [a2 position] + 1;
                if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
                {
                  v193 = [a2 data];
                  [v193 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v190 |= (v612[0] & 0x7F) << v188;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v188 += 7;
                v11 = v189++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_985;
                }
              }

              v26 = (v190 != 0) & ~[a2 hasError];
LABEL_985:
              v602 = 370;
              goto LABEL_1225;
            case 0x23u:
              v158 = 0;
              v159 = 0;
              v160 = 0;
              *(a1 + 380) |= 0x2000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v161 = [a2 position] + 1;
                if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
                {
                  v163 = [a2 data];
                  [v163 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v160 |= (v612[0] & 0x7F) << v158;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v158 += 7;
                v11 = v159++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_969;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v160;
              }

LABEL_969:
              v603 = 168;
              goto LABEL_1230;
            case 0x24u:
              v134 = 0;
              v135 = 0;
              v136 = 0;
              *(a1 + 380) |= 0x4000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v137 = [a2 position] + 1;
                if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
                {
                  v139 = [a2 data];
                  [v139 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v136 |= (v612[0] & 0x7F) << v134;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v134 += 7;
                v11 = v135++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_955;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v136;
              }

LABEL_955:
              v603 = 172;
              goto LABEL_1230;
            case 0x25u:
              v140 = 0;
              v141 = 0;
              v142 = 0;
              *(a1 + 380) |= 0x1000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v143 = [a2 position] + 1;
                if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
                {
                  v145 = [a2 data];
                  [v145 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v142 |= (v612[0] & 0x7F) << v140;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v140 += 7;
                v11 = v141++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_959;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v142;
              }

LABEL_959:
              v603 = 164;
              goto LABEL_1230;
            case 0x26u:
              v108 = 0;
              v109 = 0;
              v110 = 0;
              *(a1 + 380) |= 0x800000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v111 = [a2 position] + 1;
                if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
                {
                  v113 = [a2 data];
                  [v113 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v110 |= (v612[0] & 0x7F) << v108;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v108 += 7;
                v11 = v109++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_939;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v110;
              }

LABEL_939:
              v603 = 160;
              goto LABEL_1230;
            case 0x27u:
              v500 = 0;
              v501 = 0;
              v502 = 0;
              *(a1 + 380) |= 0x10000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v503 = [a2 position] + 1;
                if (v503 >= [a2 position] && (v504 = objc_msgSend(a2, "position") + 1, v504 <= objc_msgSend(a2, "length")))
                {
                  v505 = [a2 data];
                  [v505 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v502 |= (v612[0] & 0x7F) << v500;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v500 += 7;
                v11 = v501++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1177;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v502;
              }

LABEL_1177:
              v603 = 240;
              goto LABEL_1230;
            case 0x28u:
              v452 = 0;
              v453 = 0;
              v454 = 0;
              *(a1 + 380) |= 0x8000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v455 = [a2 position] + 1;
                if (v455 >= [a2 position] && (v456 = objc_msgSend(a2, "position") + 1, v456 <= objc_msgSend(a2, "length")))
                {
                  v457 = [a2 data];
                  [v457 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v454 |= (v612[0] & 0x7F) << v452;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v452 += 7;
                v11 = v453++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1151;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v454;
              }

LABEL_1151:
              v603 = 236;
              goto LABEL_1230;
            case 0x29u:
              v236 = 0;
              v237 = 0;
              v238 = 0;
              *(a1 + 380) |= 0x100000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v239 = [a2 position] + 1;
                if (v239 >= [a2 position] && (v240 = objc_msgSend(a2, "position") + 1, v240 <= objc_msgSend(a2, "length")))
                {
                  v241 = [a2 data];
                  [v241 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v238 |= (v612[0] & 0x7F) << v236;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v236 += 7;
                v11 = v237++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1013;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v238;
              }

LABEL_1013:
              v603 = 148;
              goto LABEL_1230;
            case 0x2Au:
              v338 = 0;
              v339 = 0;
              v340 = 0;
              *(a1 + 380) |= 0x80000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v341 = [a2 position] + 1;
                if (v341 >= [a2 position] && (v342 = objc_msgSend(a2, "position") + 1, v342 <= objc_msgSend(a2, "length")))
                {
                  v343 = [a2 data];
                  [v343 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v340 |= (v612[0] & 0x7F) << v338;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v338 += 7;
                v11 = v339++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1079;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v340;
              }

LABEL_1079:
              v603 = 144;
              goto LABEL_1230;
            case 0x2Bu:
              v470 = 0;
              v471 = 0;
              v472 = 0;
              *(a1 + 380) |= 0x40uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v473 = [a2 position] + 1;
                if (v473 >= [a2 position] && (v474 = objc_msgSend(a2, "position") + 1, v474 <= objc_msgSend(a2, "length")))
                {
                  v475 = [a2 data];
                  [v475 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v472 |= (v612[0] & 0x7F) << v470;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v470 += 7;
                v11 = v471++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_1163;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v472;
              }

LABEL_1163:
              v604 = 80;
              goto LABEL_1220;
            case 0x2Cu:
              v84 = 0;
              v85 = 0;
              v86 = 0;
              *(a1 + 380) |= 0x20uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v87 = [a2 position] + 1;
                if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
                {
                  v89 = [a2 data];
                  [v89 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v86 |= (v612[0] & 0x7F) << v84;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v84 += 7;
                v11 = v85++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_927;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v86;
              }

LABEL_927:
              v604 = 72;
              goto LABEL_1220;
            case 0x2Du:
              v176 = 0;
              v177 = 0;
              v178 = 0;
              *(a1 + 388) |= 0x400u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v179 = [a2 position] + 1;
                if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
                {
                  v181 = [a2 data];
                  [v181 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v178 |= (v612[0] & 0x7F) << v176;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v176 += 7;
                v11 = v177++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_979;
                }
              }

              v26 = (v178 != 0) & ~[a2 hasError];
LABEL_979:
              v602 = 358;
              goto LABEL_1225;
            case 0x2Eu:
              v428 = 0;
              v429 = 0;
              v430 = 0;
              *(a1 + 380) |= 0x8000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v431 = [a2 position] + 1;
                if (v431 >= [a2 position] && (v432 = objc_msgSend(a2, "position") + 1, v432 <= objc_msgSend(a2, "length")))
                {
                  v433 = [a2 data];
                  [v433 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v430 |= (v612[0] & 0x7F) << v428;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v428 += 7;
                v11 = v429++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1139;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v430;
              }

LABEL_1139:
              v603 = 176;
              goto LABEL_1230;
            case 0x2Fu:
              v536 = 0;
              v537 = 0;
              v538 = 0;
              *(a1 + 388) |= 0x4000000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v539 = [a2 position] + 1;
                if (v539 >= [a2 position] && (v540 = objc_msgSend(a2, "position") + 1, v540 <= objc_msgSend(a2, "length")))
                {
                  v541 = [a2 data];
                  [v541 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v538 |= (v612[0] & 0x7F) << v536;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v536 += 7;
                v11 = v537++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1195;
                }
              }

              v26 = (v538 != 0) & ~[a2 hasError];
LABEL_1195:
              v602 = 374;
              goto LABEL_1225;
            case 0x30u:
              v120 = 0;
              v121 = 0;
              v122 = 0;
              *(a1 + 380) |= 0x4000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v123 = [a2 position] + 1;
                if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
                {
                  v125 = [a2 data];
                  [v125 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v122 |= (v612[0] & 0x7F) << v120;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v120 += 7;
                v11 = v121++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_947;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v122;
              }

LABEL_947:
              v603 = 280;
              goto LABEL_1230;
            case 0x31u:
              v194 = 0;
              v195 = 0;
              v196 = 0;
              *(a1 + 380) |= 0x2000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v197 = [a2 position] + 1;
                if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
                {
                  v199 = [a2 data];
                  [v199 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v196 |= (v612[0] & 0x7F) << v194;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v194 += 7;
                v11 = v195++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_989;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v196;
              }

LABEL_989:
              v603 = 276;
              goto LABEL_1230;
            case 0x32u:
              v224 = 0;
              v225 = 0;
              v226 = 0;
              *(a1 + 380) |= 0x1000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v227 = [a2 position] + 1;
                if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
                {
                  v229 = [a2 data];
                  [v229 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v226 |= (v612[0] & 0x7F) << v224;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v224 += 7;
                v11 = v225++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1005;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v226;
              }

LABEL_1005:
              v603 = 272;
              goto LABEL_1230;
            case 0x33u:
              v70 = 0;
              v71 = 0;
              v72 = 0;
              *(a1 + 380) |= 0x800000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v73 = [a2 position] + 1;
                if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
                {
                  v75 = [a2 data];
                  [v75 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v72 |= (v612[0] & 0x7F) << v70;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                v11 = v71++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_923;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v72;
              }

LABEL_923:
              v603 = 268;
              goto LABEL_1230;
            case 0x34u:
              v560 = 0;
              v561 = 0;
              v562 = 0;
              *(a1 + 380) |= 0x400000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v563 = [a2 position] + 1;
                if (v563 >= [a2 position] && (v564 = objc_msgSend(a2, "position") + 1, v564 <= objc_msgSend(a2, "length")))
                {
                  v565 = [a2 data];
                  [v565 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v562 |= (v612[0] & 0x7F) << v560;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v560 += 7;
                v11 = v561++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1209;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v562;
              }

LABEL_1209:
              v603 = 156;
              goto LABEL_1230;
            case 0x35u:
              v530 = 0;
              v531 = 0;
              v532 = 0;
              *(a1 + 380) |= 0x10000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v533 = [a2 position] + 1;
                if (v533 >= [a2 position] && (v534 = objc_msgSend(a2, "position") + 1, v534 <= objc_msgSend(a2, "length")))
                {
                  v535 = [a2 data];
                  [v535 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v532 |= (v612[0] & 0x7F) << v530;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v530 += 7;
                v11 = v531++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1193;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v532;
              }

LABEL_1193:
              v603 = 288;
              goto LABEL_1230;
            case 0x36u:
              v114 = 0;
              v115 = 0;
              v116 = 0;
              *(a1 + 380) |= 0x80000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v117 = [a2 position] + 1;
                if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
                {
                  v119 = [a2 data];
                  [v119 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v116 |= (v612[0] & 0x7F) << v114;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v114 += 7;
                v11 = v115++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_943;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v116;
              }

LABEL_943:
              v603 = 300;
              goto LABEL_1230;
            case 0x37u:
              v512 = 0;
              v513 = 0;
              v514 = 0;
              *(a1 + 388) |= 8u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v515 = [a2 position] + 1;
                if (v515 >= [a2 position] && (v516 = objc_msgSend(a2, "position") + 1, v516 <= objc_msgSend(a2, "length")))
                {
                  v517 = [a2 data];
                  [v517 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v514 |= (v612[0] & 0x7F) << v512;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v512 += 7;
                v11 = v513++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1183;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v514;
              }

LABEL_1183:
              v603 = 348;
              goto LABEL_1230;
            case 0x38u:
              v524 = 0;
              v525 = 0;
              v526 = 0;
              *(a1 + 380) |= 0x400000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v527 = [a2 position] + 1;
                if (v527 >= [a2 position] && (v528 = objc_msgSend(a2, "position") + 1, v528 <= objc_msgSend(a2, "length")))
                {
                  v529 = [a2 data];
                  [v529 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v526 |= (v612[0] & 0x7F) << v524;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v524 += 7;
                v11 = v525++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1189;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v526;
              }

LABEL_1189:
              v603 = 216;
              goto LABEL_1230;
            case 0x39u:
              v126 = 0;
              v127 = 0;
              v128 = 0;
              *(a1 + 380) |= 0x100000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v129 = [a2 position] + 1;
                if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
                {
                  v131 = [a2 data];
                  [v131 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v128 |= (v612[0] & 0x7F) << v126;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v126 += 7;
                v11 = v127++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_951;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v128;
              }

LABEL_951:
              v603 = 208;
              goto LABEL_1230;
            case 0x3Au:
              v464 = 0;
              v465 = 0;
              v466 = 0;
              *(a1 + 380) |= 0x200000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v467 = [a2 position] + 1;
                if (v467 >= [a2 position] && (v468 = objc_msgSend(a2, "position") + 1, v468 <= objc_msgSend(a2, "length")))
                {
                  v469 = [a2 data];
                  [v469 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v466 |= (v612[0] & 0x7F) << v464;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v464 += 7;
                v11 = v465++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1159;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v466;
              }

LABEL_1159:
              v603 = 212;
              goto LABEL_1230;
            case 0x3Bu:
              v200 = 0;
              v201 = 0;
              v202 = 0;
              *(a1 + 380) |= 0x80000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v203 = [a2 position] + 1;
                if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
                {
                  v205 = [a2 data];
                  [v205 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v202 |= (v612[0] & 0x7F) << v200;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v200 += 7;
                v11 = v201++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_993;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v202;
              }

LABEL_993:
              v603 = 204;
              goto LABEL_1230;
            case 0x3Cu:
              v476 = 0;
              v477 = 0;
              v478 = 0;
              *(a1 + 380) |= 0x40000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v479 = [a2 position] + 1;
                if (v479 >= [a2 position] && (v480 = objc_msgSend(a2, "position") + 1, v480 <= objc_msgSend(a2, "length")))
                {
                  v481 = [a2 data];
                  [v481 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v478 |= (v612[0] & 0x7F) << v476;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v476 += 7;
                v11 = v477++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1167;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v478;
              }

LABEL_1167:
              v603 = 200;
              goto LABEL_1230;
            case 0x3Du:
              v242 = 0;
              v243 = 0;
              v244 = 0;
              *(a1 + 380) |= 0x4000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v245 = [a2 position] + 1;
                if (v245 >= [a2 position] && (v246 = objc_msgSend(a2, "position") + 1, v246 <= objc_msgSend(a2, "length")))
                {
                  v247 = [a2 data];
                  [v247 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v244 |= (v612[0] & 0x7F) << v242;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v242 += 7;
                v11 = v243++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1017;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v244;
              }

LABEL_1017:
              v603 = 124;
              goto LABEL_1230;
            case 0x3Eu:
              v356 = 0;
              v357 = 0;
              v358 = 0;
              *(a1 + 380) |= 0x1000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v359 = [a2 position] + 1;
                if (v359 >= [a2 position] && (v360 = objc_msgSend(a2, "position") + 1, v360 <= objc_msgSend(a2, "length")))
                {
                  v361 = [a2 data];
                  [v361 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v358 |= (v612[0] & 0x7F) << v356;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v356 += 7;
                v11 = v357++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1091;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v358;
              }

LABEL_1091:
              v603 = 116;
              goto LABEL_1230;
            case 0x3Fu:
              v374 = 0;
              v375 = 0;
              v376 = 0;
              *(a1 + 380) |= 0x2000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v377 = [a2 position] + 1;
                if (v377 >= [a2 position] && (v378 = objc_msgSend(a2, "position") + 1, v378 <= objc_msgSend(a2, "length")))
                {
                  v379 = [a2 data];
                  [v379 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v376 |= (v612[0] & 0x7F) << v374;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v374 += 7;
                v11 = v375++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1103;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v376;
              }

LABEL_1103:
              v603 = 120;
              goto LABEL_1230;
            case 0x40u:
              v290 = 0;
              v291 = 0;
              v292 = 0;
              *(a1 + 380) |= 0x800uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v293 = [a2 position] + 1;
                if (v293 >= [a2 position] && (v294 = objc_msgSend(a2, "position") + 1, v294 <= objc_msgSend(a2, "length")))
                {
                  v295 = [a2 data];
                  [v295 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v292 |= (v612[0] & 0x7F) << v290;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v290 += 7;
                v11 = v291++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1045;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v292;
              }

LABEL_1045:
              v603 = 112;
              goto LABEL_1230;
            case 0x41u:
              v248 = 0;
              v249 = 0;
              v250 = 0;
              *(a1 + 380) |= 0x400uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v251 = [a2 position] + 1;
                if (v251 >= [a2 position] && (v252 = objc_msgSend(a2, "position") + 1, v252 <= objc_msgSend(a2, "length")))
                {
                  v253 = [a2 data];
                  [v253 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v250 |= (v612[0] & 0x7F) << v248;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v248 += 7;
                v11 = v249++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1021;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v250;
              }

LABEL_1021:
              v603 = 108;
              goto LABEL_1230;
            case 0x42u:
              v368 = 0;
              v369 = 0;
              v370 = 0;
              *(a1 + 380) |= 0x1000000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v371 = [a2 position] + 1;
                if (v371 >= [a2 position] && (v372 = objc_msgSend(a2, "position") + 1, v372 <= objc_msgSend(a2, "length")))
                {
                  v373 = [a2 data];
                  [v373 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v370 |= (v612[0] & 0x7F) << v368;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v368 += 7;
                v11 = v369++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1099;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v370;
              }

LABEL_1099:
              v603 = 320;
              goto LABEL_1230;
            case 0x43u:
              v90 = 0;
              v91 = 0;
              v92 = 0;
              *(a1 + 380) |= 0x400000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v93 = [a2 position] + 1;
                if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
                {
                  v95 = [a2 data];
                  [v95 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v92 |= (v612[0] & 0x7F) << v90;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v90 += 7;
                v11 = v91++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_931;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v92;
              }

LABEL_931:
              v603 = 312;
              goto LABEL_1230;
            case 0x44u:
              v170 = 0;
              v171 = 0;
              v172 = 0;
              *(a1 + 380) |= 0x800000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v173 = [a2 position] + 1;
                if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
                {
                  v175 = [a2 data];
                  [v175 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v172 |= (v612[0] & 0x7F) << v170;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v170 += 7;
                v11 = v171++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_977;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v172;
              }

LABEL_977:
              v603 = 316;
              goto LABEL_1230;
            case 0x45u:
              v572 = 0;
              v573 = 0;
              v574 = 0;
              *(a1 + 380) |= 0x200000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v575 = [a2 position] + 1;
                if (v575 >= [a2 position] && (v576 = objc_msgSend(a2, "position") + 1, v576 <= objc_msgSend(a2, "length")))
                {
                  v577 = [a2 data];
                  [v577 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v574 |= (v612[0] & 0x7F) << v572;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v572 += 7;
                v11 = v573++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1215;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v574;
              }

LABEL_1215:
              v603 = 308;
              goto LABEL_1230;
            case 0x46u:
              v146 = 0;
              v147 = 0;
              v148 = 0;
              *(a1 + 380) |= 0x100000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v149 = [a2 position] + 1;
                if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
                {
                  v151 = [a2 data];
                  [v151 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v148 |= (v612[0] & 0x7F) << v146;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v146 += 7;
                v11 = v147++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_963;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v148;
              }

LABEL_963:
              v603 = 304;
              goto LABEL_1230;
            case 0x47u:
              v52 = 0;
              v53 = 0;
              v54 = 0;
              *(a1 + 388) |= 0x20u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v54 |= (v612[0] & 0x7F) << v52;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                v11 = v53++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_913;
                }
              }

              v26 = (v54 != 0) & ~[a2 hasError];
LABEL_913:
              v602 = 353;
              goto LABEL_1225;
            case 0x48u:
              v102 = 0;
              v103 = 0;
              v104 = 0;
              *(a1 + 388) |= 0x80u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v105 = [a2 position] + 1;
                if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
                {
                  v107 = [a2 data];
                  [v107 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v104 |= (v612[0] & 0x7F) << v102;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v102 += 7;
                v11 = v103++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_935;
                }
              }

              v26 = (v104 != 0) & ~[a2 hasError];
LABEL_935:
              v602 = 355;
              goto LABEL_1225;
            case 0x49u:
              v518 = 0;
              v519 = 0;
              v520 = 0;
              *(a1 + 388) |= 0x100u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v521 = [a2 position] + 1;
                if (v521 >= [a2 position] && (v522 = objc_msgSend(a2, "position") + 1, v522 <= objc_msgSend(a2, "length")))
                {
                  v523 = [a2 data];
                  [v523 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v520 |= (v612[0] & 0x7F) << v518;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v518 += 7;
                v11 = v519++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1185;
                }
              }

              v26 = (v520 != 0) & ~[a2 hasError];
LABEL_1185:
              v602 = 356;
              goto LABEL_1225;
            case 0x4Au:
              v542 = 0;
              v543 = 0;
              v544 = 0;
              *(a1 + 380) |= 0x20000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v545 = [a2 position] + 1;
                if (v545 >= [a2 position] && (v546 = objc_msgSend(a2, "position") + 1, v546 <= objc_msgSend(a2, "length")))
                {
                  v547 = [a2 data];
                  [v547 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v544 |= (v612[0] & 0x7F) << v542;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v542 += 7;
                v11 = v543++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1199;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v544;
              }

LABEL_1199:
              v603 = 196;
              goto LABEL_1230;
            case 0x4Bu:
              v554 = 0;
              v555 = 0;
              v556 = 0;
              *(a1 + 380) |= 0x20000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v557 = [a2 position] + 1;
                if (v557 >= [a2 position] && (v558 = objc_msgSend(a2, "position") + 1, v558 <= objc_msgSend(a2, "length")))
                {
                  v559 = [a2 data];
                  [v559 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v556 |= (v612[0] & 0x7F) << v554;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v554 += 7;
                v11 = v555++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1205;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v556;
              }

LABEL_1205:
              v603 = 292;
              goto LABEL_1230;
            case 0x4Cu:
              v132 = PBReaderReadString();
              v133 = *(a1 + 184);
              *(a1 + 184) = v132;

              goto LABEL_1231;
            case 0x4Du:
              v344 = 0;
              v345 = 0;
              v346 = 0;
              *(a1 + 380) |= 0x10000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v347 = [a2 position] + 1;
                if (v347 >= [a2 position] && (v348 = objc_msgSend(a2, "position") + 1, v348 <= objc_msgSend(a2, "length")))
                {
                  v349 = [a2 data];
                  [v349 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v346 |= (v612[0] & 0x7F) << v344;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v344 += 7;
                v11 = v345++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1083;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v346;
              }

LABEL_1083:
              v603 = 192;
              goto LABEL_1230;
            case 0x4Eu:
              v58 = 0;
              v59 = 0;
              v60 = 0;
              *(a1 + 388) |= 0x20000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v61 = [a2 position] + 1;
                if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
                {
                  v63 = [a2 data];
                  [v63 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v60 |= (v612[0] & 0x7F) << v58;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v11 = v59++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_915;
                }
              }

              v26 = (v60 != 0) & ~[a2 hasError];
LABEL_915:
              v602 = 365;
              goto LABEL_1225;
            case 0x4Fu:
              v566 = 0;
              v567 = 0;
              v568 = 0;
              *(a1 + 388) |= 0x4000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v569 = [a2 position] + 1;
                if (v569 >= [a2 position] && (v570 = objc_msgSend(a2, "position") + 1, v570 <= objc_msgSend(a2, "length")))
                {
                  v571 = [a2 data];
                  [v571 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v568 |= (v612[0] & 0x7F) << v566;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v566 += 7;
                v11 = v567++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1211;
                }
              }

              v26 = (v568 != 0) & ~[a2 hasError];
LABEL_1211:
              v602 = 362;
              goto LABEL_1225;
            case 0x50u:
              v40 = 0;
              v41 = 0;
              v42 = 0;
              *(a1 + 388) |= 0x8000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v43 = [a2 position] + 1;
                if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
                {
                  v45 = [a2 data];
                  [v45 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v42 |= (v612[0] & 0x7F) << v40;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v40 += 7;
                v11 = v41++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_909;
                }
              }

              v26 = (v42 != 0) & ~[a2 hasError];
LABEL_909:
              v602 = 363;
              goto LABEL_1225;
            case 0x51u:
              v96 = 0;
              v97 = 0;
              v98 = 0;
              *(a1 + 388) |= 0x200000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v99 = [a2 position] + 1;
                if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
                {
                  v101 = [a2 data];
                  [v101 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v98 |= (v612[0] & 0x7F) << v96;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v96 += 7;
                v11 = v97++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_933;
                }
              }

              v26 = (v98 != 0) & ~[a2 hasError];
LABEL_933:
              v602 = 369;
              goto LABEL_1225;
            case 0x52u:
              v218 = 0;
              v219 = 0;
              v220 = 0;
              *(a1 + 388) |= 0x10000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v221 = [a2 position] + 1;
                if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
                {
                  v223 = [a2 data];
                  [v223 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v220 |= (v612[0] & 0x7F) << v218;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v218 += 7;
                v11 = v219++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1001;
                }
              }

              v26 = (v220 != 0) & ~[a2 hasError];
LABEL_1001:
              v602 = 364;
              goto LABEL_1225;
            case 0x53u:
              v206 = 0;
              v207 = 0;
              v208 = 0;
              *(a1 + 388) |= 0x2000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v209 = [a2 position] + 1;
                if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
                {
                  v211 = [a2 data];
                  [v211 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v208 |= (v612[0] & 0x7F) << v206;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v206 += 7;
                v11 = v207++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_995;
                }
              }

              v26 = (v208 != 0) & ~[a2 hasError];
LABEL_995:
              v602 = 361;
              goto LABEL_1225;
            case 0x54u:
              v27 = 0;
              v28 = 0;
              v29 = 0;
              *(a1 + 388) |= 0x1000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v30 = [a2 position] + 1;
                if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
                {
                  v32 = [a2 data];
                  [v32 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v29 |= (v612[0] & 0x7F) << v27;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                v11 = v28++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_903;
                }
              }

              v26 = (v29 != 0) & ~[a2 hasError];
LABEL_903:
              v602 = 360;
              goto LABEL_1225;
            case 0x55u:
              v20 = 0;
              v21 = 0;
              v22 = 0;
              *(a1 + 388) |= 0x80000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v23 = [a2 position] + 1;
                if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
                {
                  v25 = [a2 data];
                  [v25 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v22 |= (v612[0] & 0x7F) << v20;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v20 += 7;
                v11 = v21++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_901;
                }
              }

              v26 = (v22 != 0) & ~[a2 hasError];
LABEL_901:
              v602 = 367;
              goto LABEL_1225;
            case 0x56u:
              v434 = 0;
              v435 = 0;
              v436 = 0;
              *(a1 + 388) |= 0x800u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v437 = [a2 position] + 1;
                if (v437 >= [a2 position] && (v438 = objc_msgSend(a2, "position") + 1, v438 <= objc_msgSend(a2, "length")))
                {
                  v439 = [a2 data];
                  [v439 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v436 |= (v612[0] & 0x7F) << v434;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v434 += 7;
                v11 = v435++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1141;
                }
              }

              v26 = (v436 != 0) & ~[a2 hasError];
LABEL_1141:
              v602 = 359;
              goto LABEL_1225;
            case 0x57u:
              v446 = 0;
              v447 = 0;
              v448 = 0;
              *(a1 + 380) |= 8uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v449 = [a2 position] + 1;
                if (v449 >= [a2 position] && (v450 = objc_msgSend(a2, "position") + 1, v450 <= objc_msgSend(a2, "length")))
                {
                  v451 = [a2 data];
                  [v451 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v448 |= (v612[0] & 0x7F) << v446;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v446 += 7;
                v11 = v447++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_1147;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v448;
              }

LABEL_1147:
              v604 = 56;
              goto LABEL_1220;
            case 0x58u:
              v548 = 0;
              v549 = 0;
              v550 = 0;
              *(a1 + 388) |= 0x200u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v551 = [a2 position] + 1;
                if (v551 >= [a2 position] && (v552 = objc_msgSend(a2, "position") + 1, v552 <= objc_msgSend(a2, "length")))
                {
                  v553 = [a2 data];
                  [v553 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v550 |= (v612[0] & 0x7F) << v548;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v548 += 7;
                v11 = v549++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1201;
                }
              }

              v26 = (v550 != 0) & ~[a2 hasError];
LABEL_1201:
              v602 = 357;
              goto LABEL_1225;
            case 0x59u:
              if ((v12 & 7) == 2)
              {
                v612[0] = 0;
                v612[1] = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v77 = [a2 position];
                  if (v77 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v78 = 0;
                  v79 = 0;
                  v80 = 0;
                  while (1)
                  {
                    v613 = 0;
                    v81 = [a2 position] + 1;
                    if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
                    {
                      v83 = [a2 data];
                      [v83 getBytes:&v613 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v80 |= (v613 & 0x7F) << v78;
                    if ((v613 & 0x80) == 0)
                    {
                      break;
                    }

                    v78 += 7;
                    v11 = v79++ >= 9;
                    if (v11)
                    {
                      goto LABEL_122;
                    }
                  }

                  [a2 hasError];
LABEL_122:
                  PBRepeatedUInt64Add();
                }

                PBReaderRecallMark();
              }

              else
              {
                v606 = 0;
                v607 = 0;
                v608 = 0;
                while (1)
                {
                  LOBYTE(v612[0]) = 0;
                  v609 = [a2 position] + 1;
                  if (v609 >= [a2 position] && (v610 = objc_msgSend(a2, "position") + 1, v610 <= objc_msgSend(a2, "length")))
                  {
                    v611 = [a2 data];
                    [v611 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v608 |= (v612[0] & 0x7F) << v606;
                  if ((v612[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v606 += 7;
                  v11 = v607++ >= 9;
                  if (v11)
                  {
                    goto LABEL_1244;
                  }
                }

                [a2 hasError];
LABEL_1244:
                PBRepeatedUInt64Add();
              }

LABEL_1231:
              v605 = [a2 position];
              if (v605 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              continue;
            case 0x5Au:
              v590 = 0;
              v591 = 0;
              v592 = 0;
              *(a1 + 388) |= 0x800000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v593 = [a2 position] + 1;
                if (v593 >= [a2 position] && (v594 = objc_msgSend(a2, "position") + 1, v594 <= objc_msgSend(a2, "length")))
                {
                  v595 = [a2 data];
                  [v595 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v592 |= (v612[0] & 0x7F) << v590;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v590 += 7;
                v11 = v591++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1224;
                }
              }

              v26 = (v592 != 0) & ~[a2 hasError];
LABEL_1224:
              v602 = 371;
              goto LABEL_1225;
            case 0x5Bu:
              v584 = 0;
              v585 = 0;
              v586 = 0;
              *(a1 + 388) |= 0x100000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v587 = [a2 position] + 1;
                if (v587 >= [a2 position] && (v588 = objc_msgSend(a2, "position") + 1, v588 <= objc_msgSend(a2, "length")))
                {
                  v589 = [a2 data];
                  [v589 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v586 |= (v612[0] & 0x7F) << v584;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v584 += 7;
                v11 = v585++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_1222;
                }
              }

              v26 = (v586 != 0) & ~[a2 hasError];
LABEL_1222:
              v602 = 368;
              goto LABEL_1225;
            case 0x5Cu:
              v33 = 0;
              v34 = 0;
              v35 = 0;
              *(a1 + 380) |= 0x80000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  v38 = [a2 data];
                  [v38 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v612[0] & 0x7F) << v33;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v11 = v34++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_907;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v35;
              }

LABEL_907:
              v603 = 252;
              goto LABEL_1230;
            case 0x5Du:
              v314 = 0;
              v315 = 0;
              v316 = 0;
              *(a1 + 380) |= 0x100000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v317 = [a2 position] + 1;
                if (v317 >= [a2 position] && (v318 = objc_msgSend(a2, "position") + 1, v318 <= objc_msgSend(a2, "length")))
                {
                  v319 = [a2 data];
                  [v319 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v316 |= (v612[0] & 0x7F) << v314;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v314 += 7;
                v11 = v315++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1063;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v316;
              }

LABEL_1063:
              v603 = 256;
              goto LABEL_1230;
            case 0x5Eu:
              v64 = 0;
              v65 = 0;
              v66 = 0;
              *(a1 + 380) |= 0x400000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v67 = [a2 position] + 1;
                if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
                {
                  v69 = [a2 data];
                  [v69 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v66 |= (v612[0] & 0x7F) << v64;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                v11 = v65++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_919;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v66;
              }

LABEL_919:
              v603 = 264;
              goto LABEL_1230;
            case 0x5Fu:
              v332 = 0;
              v333 = 0;
              v334 = 0;
              *(a1 + 380) |= 0x200000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v335 = [a2 position] + 1;
                if (v335 >= [a2 position] && (v336 = objc_msgSend(a2, "position") + 1, v336 <= objc_msgSend(a2, "length")))
                {
                  v337 = [a2 data];
                  [v337 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v334 |= (v612[0] & 0x7F) << v332;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v332 += 7;
                v11 = v333++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1075;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v334;
              }

LABEL_1075:
              v603 = 260;
              goto LABEL_1230;
            case 0x60u:
              v578 = 0;
              v579 = 0;
              v580 = 0;
              *(a1 + 380) |= 0x80uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v581 = [a2 position] + 1;
                if (v581 >= [a2 position] && (v582 = objc_msgSend(a2, "position") + 1, v582 <= objc_msgSend(a2, "length")))
                {
                  v583 = [a2 data];
                  [v583 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v580 |= (v612[0] & 0x7F) << v578;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v578 += 7;
                v11 = v579++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_1219;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v580;
              }

LABEL_1219:
              v604 = 88;
LABEL_1220:
              *(a1 + v604) = v19;
              goto LABEL_1231;
            case 0x61u:
              v46 = 0;
              v47 = 0;
              v48 = 0;
              *(a1 + 388) |= 0x40000u;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  v51 = [a2 data];
                  [v51 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v612[0] & 0x7F) << v46;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v11 = v47++ >= 9;
                if (v11)
                {
                  LOBYTE(v26) = 0;
                  goto LABEL_911;
                }
              }

              v26 = (v48 != 0) & ~[a2 hasError];
LABEL_911:
              v602 = 366;
LABEL_1225:
              *(a1 + v602) = v26;
              goto LABEL_1231;
            case 0x62u:
              v596 = 0;
              v597 = 0;
              v598 = 0;
              *(a1 + 380) |= 0x40000000000000uLL;
              while (1)
              {
                LOBYTE(v612[0]) = 0;
                v599 = [a2 position] + 1;
                if (v599 >= [a2 position] && (v600 = objc_msgSend(a2, "position") + 1, v600 <= objc_msgSend(a2, "length")))
                {
                  v601 = [a2 data];
                  [v601 getBytes:v612 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v598 |= (v612[0] & 0x7F) << v596;
                if ((v612[0] & 0x80) == 0)
                {
                  break;
                }

                v596 += 7;
                v11 = v597++ >= 9;
                if (v11)
                {
                  v39 = 0;
                  goto LABEL_1229;
                }
              }

              if ([a2 hasError])
              {
                v39 = 0;
              }

              else
              {
                v39 = v598;
              }

LABEL_1229:
              v603 = 296;
LABEL_1230:
              *(a1 + v603) = v39;
              goto LABEL_1231;
            default:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_1231;
          }
        }
      }

      break;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDBiometricKitDailyUpdateReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (1)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v475) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v475 & 0x7F) << v6;
      if ((v475 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if ([a2 hasError])
    {
      break;
    }

    v14 = v13 & 7;
    if (v14 == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 436) |= 2uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v475 & 0x7F) << v15;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
LABEL_766:
            v420 = 232;
            goto LABEL_836;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

        goto LABEL_766;
      case 2u:
        if (v14 != 2)
        {
          v445 = 0;
          v446 = 0;
          v447 = 0;
          while (1)
          {
            LOBYTE(v475) = 0;
            v448 = [a2 position] + 1;
            if (v448 >= [a2 position] && (v449 = objc_msgSend(a2, "position") + 1, v449 <= objc_msgSend(a2, "length")))
            {
              v450 = [a2 data];
              [v450 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v447 |= (v475 & 0x7F) << v445;
            if ((v475 & 0x80) == 0)
            {
              goto LABEL_956;
            }

            v445 += 7;
            v12 = v446++ >= 9;
            if (v12)
            {
              goto LABEL_957;
            }
          }
        }

        v475 = 0;
        v476 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v215 = [a2 position];
          if (v215 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_543;
          }

          v216 = 0;
          v217 = 0;
          v218 = 0;
          while (1)
          {
            v477 = 0;
            v219 = [a2 position] + 1;
            if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 1, v220 <= objc_msgSend(a2, "length")))
            {
              v221 = [a2 data];
              [v221 getBytes:&v477 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v218 |= (v477 & 0x7F) << v216;
            if ((v477 & 0x80) == 0)
            {
              break;
            }

            v216 += 7;
            v12 = v217++ >= 9;
            if (v12)
            {
              goto LABEL_345;
            }
          }

          [a2 hasError];
LABEL_345:
          PBRepeatedUInt32Add();
        }

      case 3u:
        if (v14 != 2)
        {
          v427 = 0;
          v428 = 0;
          v429 = 0;
          while (1)
          {
            LOBYTE(v475) = 0;
            v430 = [a2 position] + 1;
            if (v430 >= [a2 position] && (v431 = objc_msgSend(a2, "position") + 1, v431 <= objc_msgSend(a2, "length")))
            {
              v432 = [a2 data];
              [v432 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v429 |= (v475 & 0x7F) << v427;
            if ((v475 & 0x80) == 0)
            {
              goto LABEL_956;
            }

            v427 += 7;
            v12 = v428++ >= 9;
            if (v12)
            {
              goto LABEL_957;
            }
          }
        }

        v475 = 0;
        v476 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v182 = [a2 position];
          if (v182 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_543;
          }

          v183 = 0;
          v184 = 0;
          v185 = 0;
          while (1)
          {
            v477 = 0;
            v186 = [a2 position] + 1;
            if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 1, v187 <= objc_msgSend(a2, "length")))
            {
              v188 = [a2 data];
              [v188 getBytes:&v477 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v185 |= (v477 & 0x7F) << v183;
            if ((v477 & 0x80) == 0)
            {
              break;
            }

            v183 += 7;
            v12 = v184++ >= 9;
            if (v12)
            {
              goto LABEL_282;
            }
          }

          [a2 hasError];
LABEL_282:
          PBRepeatedUInt32Add();
        }

      case 4u:
        if (v14 != 2)
        {
          v439 = 0;
          v440 = 0;
          v441 = 0;
          while (1)
          {
            LOBYTE(v475) = 0;
            v442 = [a2 position] + 1;
            if (v442 >= [a2 position] && (v443 = objc_msgSend(a2, "position") + 1, v443 <= objc_msgSend(a2, "length")))
            {
              v444 = [a2 data];
              [v444 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v441 |= (v475 & 0x7F) << v439;
            if ((v475 & 0x80) == 0)
            {
              goto LABEL_956;
            }

            v439 += 7;
            v12 = v440++ >= 9;
            if (v12)
            {
              goto LABEL_957;
            }
          }
        }

        v475 = 0;
        v476 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v202 = [a2 position];
          if (v202 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_543;
          }

          v203 = 0;
          v204 = 0;
          v205 = 0;
          while (1)
          {
            v477 = 0;
            v206 = [a2 position] + 1;
            if (v206 >= [a2 position] && (v207 = objc_msgSend(a2, "position") + 1, v207 <= objc_msgSend(a2, "length")))
            {
              v208 = [a2 data];
              [v208 getBytes:&v477 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v205 |= (v477 & 0x7F) << v203;
            if ((v477 & 0x80) == 0)
            {
              break;
            }

            v203 += 7;
            v12 = v204++ >= 9;
            if (v12)
            {
              goto LABEL_321;
            }
          }

          [a2 hasError];
LABEL_321:
          PBRepeatedUInt32Add();
        }

      case 5u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 436) |= 0x80000000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v475 & 0x7F) << v134;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            LOBYTE(v89) = 0;
            goto LABEL_728;
          }
        }

        v89 = (v136 != 0) & ~[a2 hasError];
LABEL_728:
        v419 = 434;
        goto LABEL_823;
      case 6u:
        v253 = 0;
        v254 = 0;
        v255 = 0;
        *(a1 + 436) |= 0x2000000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v256 = [a2 position] + 1;
          if (v256 >= [a2 position] && (v257 = objc_msgSend(a2, "position") + 1, v257 <= objc_msgSend(a2, "length")))
          {
            v258 = [a2 data];
            [v258 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v255 |= (v475 & 0x7F) << v253;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v253 += 7;
          v12 = v254++ >= 9;
          if (v12)
          {
            LOBYTE(v89) = 0;
            goto LABEL_784;
          }
        }

        v89 = (v255 != 0) & ~[a2 hasError];
LABEL_784:
        v419 = 428;
        goto LABEL_823;
      case 7u:
        v278 = 0;
        v279 = 0;
        v280 = 0;
        *(a1 + 436) |= 0x4000000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v281 = [a2 position] + 1;
          if (v281 >= [a2 position] && (v282 = objc_msgSend(a2, "position") + 1, v282 <= objc_msgSend(a2, "length")))
          {
            v283 = [a2 data];
            [v283 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v280 |= (v475 & 0x7F) << v278;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v278 += 7;
          v12 = v279++ >= 9;
          if (v12)
          {
            LOBYTE(v89) = 0;
            goto LABEL_794;
          }
        }

        v89 = (v280 != 0) & ~[a2 hasError];
LABEL_794:
        v419 = 429;
        goto LABEL_823;
      case 8u:
        v209 = 0;
        v210 = 0;
        v211 = 0;
        *(a1 + 436) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v212 = [a2 position] + 1;
          if (v212 >= [a2 position] && (v213 = objc_msgSend(a2, "position") + 1, v213 <= objc_msgSend(a2, "length")))
          {
            v214 = [a2 data];
            [v214 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v211 |= (v475 & 0x7F) << v209;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v209 += 7;
          v12 = v210++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_762;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v211;
        }

LABEL_762:
        v418 = 308;
        goto LABEL_873;
      case 9u:
        v297 = 0;
        v298 = 0;
        v299 = 0;
        *(a1 + 436) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v300 = [a2 position] + 1;
          if (v300 >= [a2 position] && (v301 = objc_msgSend(a2, "position") + 1, v301 <= objc_msgSend(a2, "length")))
          {
            v302 = [a2 data];
            [v302 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v299 |= (v475 & 0x7F) << v297;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v297 += 7;
          v12 = v298++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_802;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v299;
        }

LABEL_802:
        v418 = 312;
        goto LABEL_873;
      case 0xAu:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        *(a1 + 436) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (v475 & 0x7F) << v164;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v12 = v165++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_748;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v166;
        }

LABEL_748:
        v418 = 316;
        goto LABEL_873;
      case 0xBu:
        v291 = 0;
        v292 = 0;
        v293 = 0;
        *(a1 + 436) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v294 = [a2 position] + 1;
          if (v294 >= [a2 position] && (v295 = objc_msgSend(a2, "position") + 1, v295 <= objc_msgSend(a2, "length")))
          {
            v296 = [a2 data];
            [v296 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v293 |= (v475 & 0x7F) << v291;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v291 += 7;
          v12 = v292++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_798;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v293;
        }

LABEL_798:
        v418 = 320;
        goto LABEL_873;
      case 0xCu:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 436) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            v127 = [a2 data];
            [v127 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (v475 & 0x7F) << v122;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v12 = v123++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_722;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v124;
        }

LABEL_722:
        v418 = 396;
        goto LABEL_873;
      case 0xDu:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 436) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v475 & 0x7F) << v158;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v12 = v159++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_744;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v160;
        }

LABEL_744:
        v418 = 340;
        goto LABEL_873;
      case 0xEu:
        v272 = 0;
        v273 = 0;
        v274 = 0;
        *(a1 + 436) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v275 = [a2 position] + 1;
          if (v275 >= [a2 position] && (v276 = objc_msgSend(a2, "position") + 1, v276 <= objc_msgSend(a2, "length")))
          {
            v277 = [a2 data];
            [v277 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v274 |= (v475 & 0x7F) << v272;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v272 += 7;
          v12 = v273++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_792;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v274;
        }

LABEL_792:
        v418 = 384;
        goto LABEL_873;
      case 0xFu:
        if (v14 != 2)
        {
          v421 = 0;
          v422 = 0;
          v423 = 0;
          while (1)
          {
            LOBYTE(v475) = 0;
            v424 = [a2 position] + 1;
            if (v424 >= [a2 position] && (v425 = objc_msgSend(a2, "position") + 1, v425 <= objc_msgSend(a2, "length")))
            {
              v426 = [a2 data];
              [v426 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v423 |= (v475 & 0x7F) << v421;
            if ((v475 & 0x80) == 0)
            {
              goto LABEL_956;
            }

            v421 += 7;
            v12 = v422++ >= 9;
            if (v12)
            {
              goto LABEL_957;
            }
          }
        }

        v475 = 0;
        v476 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v97 = [a2 position];
          if (v97 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_543;
          }

          v98 = 0;
          v99 = 0;
          v100 = 0;
          while (1)
          {
            v477 = 0;
            v101 = [a2 position] + 1;
            if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
            {
              v103 = [a2 data];
              [v103 getBytes:&v477 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v100 |= (v477 & 0x7F) << v98;
            if ((v477 & 0x80) == 0)
            {
              break;
            }

            v98 += 7;
            v12 = v99++ >= 9;
            if (v12)
            {
              goto LABEL_150;
            }
          }

          [a2 hasError];
LABEL_150:
          PBRepeatedUInt32Add();
        }

      case 0x10u:
        if (v14 != 2)
        {
          v433 = 0;
          v434 = 0;
          v435 = 0;
          while (1)
          {
            LOBYTE(v475) = 0;
            v436 = [a2 position] + 1;
            if (v436 >= [a2 position] && (v437 = objc_msgSend(a2, "position") + 1, v437 <= objc_msgSend(a2, "length")))
            {
              v438 = [a2 data];
              [v438 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v435 |= (v475 & 0x7F) << v433;
            if ((v475 & 0x80) == 0)
            {
              goto LABEL_956;
            }

            v433 += 7;
            v12 = v434++ >= 9;
            if (v12)
            {
              goto LABEL_957;
            }
          }
        }

        v475 = 0;
        v476 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v189 = [a2 position];
          if (v189 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_543;
          }

          v190 = 0;
          v191 = 0;
          v192 = 0;
          while (1)
          {
            v477 = 0;
            v193 = [a2 position] + 1;
            if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
            {
              v195 = [a2 data];
              [v195 getBytes:&v477 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v192 |= (v477 & 0x7F) << v190;
            if ((v477 & 0x80) == 0)
            {
              break;
            }

            v190 += 7;
            v12 = v191++ >= 9;
            if (v12)
            {
              goto LABEL_297;
            }
          }

          [a2 hasError];
LABEL_297:
          PBRepeatedUInt32Add();
        }

      case 0x11u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 436) |= 0x10000000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v475 & 0x7F) << v83;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            LOBYTE(v89) = 0;
            goto LABEL_702;
          }
        }

        v89 = (v85 != 0) & ~[a2 hasError];
LABEL_702:
        v419 = 431;
        goto LABEL_823;
      case 0x12u:
        if (v14 != 2)
        {
          v451 = 0;
          v452 = 0;
          v453 = 0;
          while (1)
          {
            LOBYTE(v475) = 0;
            v454 = [a2 position] + 1;
            if (v454 >= [a2 position] && (v455 = objc_msgSend(a2, "position") + 1, v455 <= objc_msgSend(a2, "length")))
            {
              v456 = [a2 data];
              [v456 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v453 |= (v475 & 0x7F) << v451;
            if ((v475 & 0x80) == 0)
            {
              goto LABEL_956;
            }

            v451 += 7;
            v12 = v452++ >= 9;
            if (v12)
            {
              goto LABEL_957;
            }
          }
        }

        v475 = 0;
        v476 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v228 = [a2 position];
          if (v228 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_543;
          }

          v229 = 0;
          v230 = 0;
          v231 = 0;
          while (1)
          {
            v477 = 0;
            v232 = [a2 position] + 1;
            if (v232 >= [a2 position] && (v233 = objc_msgSend(a2, "position") + 1, v233 <= objc_msgSend(a2, "length")))
            {
              v234 = [a2 data];
              [v234 getBytes:&v477 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v231 |= (v477 & 0x7F) << v229;
            if ((v477 & 0x80) == 0)
            {
              break;
            }

            v229 += 7;
            v12 = v230++ >= 9;
            if (v12)
            {
              goto LABEL_369;
            }
          }

          [a2 hasError];
LABEL_369:
          PBRepeatedUInt32Add();
        }

      case 0x13u:
        if (v14 != 2)
        {
          v463 = 0;
          v464 = 0;
          v465 = 0;
          while (1)
          {
            LOBYTE(v475) = 0;
            v466 = [a2 position] + 1;
            if (v466 >= [a2 position] && (v467 = objc_msgSend(a2, "position") + 1, v467 <= objc_msgSend(a2, "length")))
            {
              v468 = [a2 data];
              [v468 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v465 |= (v475 & 0x7F) << v463;
            if ((v475 & 0x80) == 0)
            {
              goto LABEL_956;
            }

            v463 += 7;
            v12 = v464++ >= 9;
            if (v12)
            {
              goto LABEL_957;
            }
          }
        }

        v475 = 0;
        v476 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v284 = [a2 position];
          if (v284 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_543;
          }

          v285 = 0;
          v286 = 0;
          v287 = 0;
          while (1)
          {
            v477 = 0;
            v288 = [a2 position] + 1;
            if (v288 >= [a2 position] && (v289 = objc_msgSend(a2, "position") + 1, v289 <= objc_msgSend(a2, "length")))
            {
              v290 = [a2 data];
              [v290 getBytes:&v477 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v287 |= (v477 & 0x7F) << v285;
            if ((v477 & 0x80) == 0)
            {
              break;
            }

            v285 += 7;
            v12 = v286++ >= 9;
            if (v12)
            {
              goto LABEL_464;
            }
          }

          [a2 hasError];
LABEL_464:
          PBRepeatedUInt32Add();
        }

      case 0x14u:
        if (v14 == 2)
        {
          v475 = 0;
          v476 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v333 = [a2 position];
            if (v333 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v334 = 0;
            v335 = 0;
            v336 = 0;
            while (1)
            {
              v477 = 0;
              v337 = [a2 position] + 1;
              if (v337 >= [a2 position] && (v338 = objc_msgSend(a2, "position") + 1, v338 <= objc_msgSend(a2, "length")))
              {
                v339 = [a2 data];
                [v339 getBytes:&v477 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v336 |= (v477 & 0x7F) << v334;
              if ((v477 & 0x80) == 0)
              {
                break;
              }

              v334 += 7;
              v12 = v335++ >= 9;
              if (v12)
              {
                goto LABEL_542;
              }
            }

            [a2 hasError];
LABEL_542:
            PBRepeatedUInt32Add();
          }

LABEL_543:
          PBReaderRecallMark();
        }

        else
        {
          v469 = 0;
          v470 = 0;
          v471 = 0;
          while (1)
          {
            LOBYTE(v475) = 0;
            v472 = [a2 position] + 1;
            if (v472 >= [a2 position] && (v473 = objc_msgSend(a2, "position") + 1, v473 <= objc_msgSend(a2, "length")))
            {
              v474 = [a2 data];
              [v474 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v471 |= (v475 & 0x7F) << v469;
            if ((v475 & 0x80) == 0)
            {
              break;
            }

            v469 += 7;
            v12 = v470++ >= 9;
            if (v12)
            {
              goto LABEL_957;
            }
          }

LABEL_956:
          [a2 hasError];
LABEL_957:
          PBRepeatedUInt32Add();
        }

LABEL_874:
        v4 = a2;
        break;
      case 0x15u:
        v241 = 0;
        v242 = 0;
        v243 = 0;
        *(a1 + 436) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v244 = [a2 position] + 1;
          if (v244 >= [a2 position] && (v245 = objc_msgSend(a2, "position") + 1, v245 <= objc_msgSend(a2, "length")))
          {
            v246 = [a2 data];
            [v246 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v243 |= (v475 & 0x7F) << v241;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v241 += 7;
          v12 = v242++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_778;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v243;
        }

LABEL_778:
        v418 = 260;
        goto LABEL_873;
      case 0x16u:
        if (v14 != 2)
        {
          v457 = 0;
          v458 = 0;
          v459 = 0;
          while (1)
          {
            LOBYTE(v475) = 0;
            v460 = [a2 position] + 1;
            if (v460 >= [a2 position] && (v461 = objc_msgSend(a2, "position") + 1, v461 <= objc_msgSend(a2, "length")))
            {
              v462 = [a2 data];
              [v462 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v459 |= (v475 & 0x7F) << v457;
            if ((v475 & 0x80) == 0)
            {
              goto LABEL_956;
            }

            v457 += 7;
            v12 = v458++ >= 9;
            if (v12)
            {
              goto LABEL_957;
            }
          }
        }

        v475 = 0;
        v476 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v265 = [a2 position];
          if (v265 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_543;
          }

          v266 = 0;
          v267 = 0;
          v268 = 0;
          while (1)
          {
            v477 = 0;
            v269 = [a2 position] + 1;
            if (v269 >= [a2 position] && (v270 = objc_msgSend(a2, "position") + 1, v270 <= objc_msgSend(a2, "length")))
            {
              v271 = [a2 data];
              [v271 getBytes:&v477 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v268 |= (v477 & 0x7F) << v266;
            if ((v477 & 0x80) == 0)
            {
              break;
            }

            v266 += 7;
            v12 = v267++ >= 9;
            if (v12)
            {
              goto LABEL_431;
            }
          }

          [a2 hasError];
LABEL_431:
          PBRepeatedUInt32Add();
        }

      case 0x17u:
        v321 = 0;
        v322 = 0;
        v323 = 0;
        *(a1 + 436) |= 0x20000000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v324 = [a2 position] + 1;
          if (v324 >= [a2 position] && (v325 = objc_msgSend(a2, "position") + 1, v325 <= objc_msgSend(a2, "length")))
          {
            v326 = [a2 data];
            [v326 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v323 |= (v475 & 0x7F) << v321;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v321 += 7;
          v12 = v322++ >= 9;
          if (v12)
          {
            LOBYTE(v89) = 0;
            goto LABEL_816;
          }
        }

        v89 = (v323 != 0) & ~[a2 hasError];
LABEL_816:
        v419 = 432;
        goto LABEL_823;
      case 0x18u:
        v358 = 0;
        v359 = 0;
        v360 = 0;
        *(a1 + 436) |= 1uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v361 = [a2 position] + 1;
          if (v361 >= [a2 position] && (v362 = objc_msgSend(a2, "position") + 1, v362 <= objc_msgSend(a2, "length")))
          {
            v363 = [a2 data];
            [v363 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v360 |= (v475 & 0x7F) << v358;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v358 += 7;
          v12 = v359++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_835;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v360;
        }

LABEL_835:
        v420 = 224;
LABEL_836:
        *(a1 + v420) = v21;
        goto LABEL_874;
      case 0x19u:
        v176 = 0;
        v177 = 0;
        v178 = 0;
        *(a1 + 436) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v179 = [a2 position] + 1;
          if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
          {
            v181 = [a2 data];
            [v181 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v178 |= (v475 & 0x7F) << v176;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v176 += 7;
          v12 = v177++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_754;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v178;
        }

LABEL_754:
        v418 = 256;
        goto LABEL_873;
      case 0x1Au:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 436) |= 0x8000000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            v175 = [a2 data];
            [v175 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (v475 & 0x7F) << v170;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v12 = v171++ >= 9;
          if (v12)
          {
            LOBYTE(v89) = 0;
            goto LABEL_750;
          }
        }

        v89 = (v172 != 0) & ~[a2 hasError];
LABEL_750:
        v419 = 430;
        goto LABEL_823;
      case 0x1Bu:
        v382 = 0;
        v383 = 0;
        v384 = 0;
        *(a1 + 436) |= 0x1000000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v385 = [a2 position] + 1;
          if (v385 >= [a2 position] && (v386 = objc_msgSend(a2, "position") + 1, v386 <= objc_msgSend(a2, "length")))
          {
            v387 = [a2 data];
            [v387 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v384 |= (v475 & 0x7F) << v382;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v382 += 7;
          v12 = v383++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_852;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v384;
        }

LABEL_852:
        v418 = 424;
        goto LABEL_873;
      case 0x1Cu:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 436) |= 0x100000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (v475 & 0x7F) << v71;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v12 = v72++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_696;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v73;
        }

LABEL_696:
        v418 = 408;
        goto LABEL_873;
      case 0x1Du:
        v364 = 0;
        v365 = 0;
        v366 = 0;
        *(a1 + 436) |= 0x800000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v367 = [a2 position] + 1;
          if (v367 >= [a2 position] && (v368 = objc_msgSend(a2, "position") + 1, v368 <= objc_msgSend(a2, "length")))
          {
            v369 = [a2 data];
            [v369 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v366 |= (v475 & 0x7F) << v364;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v364 += 7;
          v12 = v365++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_840;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v366;
        }

LABEL_840:
        v418 = 420;
        goto LABEL_873;
      case 0x1Eu:
        v370 = 0;
        v371 = 0;
        v372 = 0;
        *(a1 + 436) |= 0x400000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v373 = [a2 position] + 1;
          if (v373 >= [a2 position] && (v374 = objc_msgSend(a2, "position") + 1, v374 <= objc_msgSend(a2, "length")))
          {
            v375 = [a2 data];
            [v375 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v372 |= (v475 & 0x7F) << v370;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v370 += 7;
          v12 = v371++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_844;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v372;
        }

LABEL_844:
        v418 = 416;
        goto LABEL_873;
      case 0x1Fu:
        v303 = 0;
        v304 = 0;
        v305 = 0;
        *(a1 + 436) |= 0x200000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v306 = [a2 position] + 1;
          if (v306 >= [a2 position] && (v307 = objc_msgSend(a2, "position") + 1, v307 <= objc_msgSend(a2, "length")))
          {
            v308 = [a2 data];
            [v308 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v305 |= (v475 & 0x7F) << v303;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v303 += 7;
          v12 = v304++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_806;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v305;
        }

LABEL_806:
        v418 = 412;
        goto LABEL_873;
      case 0x20u:
        v222 = 0;
        v223 = 0;
        v224 = 0;
        *(a1 + 436) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v225 = [a2 position] + 1;
          if (v225 >= [a2 position] && (v226 = objc_msgSend(a2, "position") + 1, v226 <= objc_msgSend(a2, "length")))
          {
            v227 = [a2 data];
            [v227 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v224 |= (v475 & 0x7F) << v222;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v222 += 7;
          v12 = v223++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_770;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v224;
        }

LABEL_770:
        v418 = 300;
        goto LABEL_873;
      case 0x21u:
        v309 = 0;
        v310 = 0;
        v311 = 0;
        *(a1 + 436) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v312 = [a2 position] + 1;
          if (v312 >= [a2 position] && (v313 = objc_msgSend(a2, "position") + 1, v313 <= objc_msgSend(a2, "length")))
          {
            v314 = [a2 data];
            [v314 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v311 |= (v475 & 0x7F) << v309;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v309 += 7;
          v12 = v310++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_810;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v311;
        }

LABEL_810:
        v418 = 292;
        goto LABEL_873;
      case 0x22u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 436) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v475 & 0x7F) << v104;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v12 = v105++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_710;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v106;
        }

LABEL_710:
        v418 = 284;
        goto LABEL_873;
      case 0x23u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 436) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v475 & 0x7F) << v77;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_700;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v79;
        }

LABEL_700:
        v418 = 276;
        goto LABEL_873;
      case 0x24u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 436) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v475 & 0x7F) << v59;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_688;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v61;
        }

LABEL_688:
        v418 = 304;
        goto LABEL_873;
      case 0x25u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 436) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v475 & 0x7F) << v65;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v12 = v66++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_692;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v67;
        }

LABEL_692:
        v418 = 296;
        goto LABEL_873;
      case 0x26u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 436) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v475 & 0x7F) << v35;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_672;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v37;
        }

LABEL_672:
        v418 = 288;
        goto LABEL_873;
      case 0x27u:
        v376 = 0;
        v377 = 0;
        v378 = 0;
        *(a1 + 436) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v379 = [a2 position] + 1;
          if (v379 >= [a2 position] && (v380 = objc_msgSend(a2, "position") + 1, v380 <= objc_msgSend(a2, "length")))
          {
            v381 = [a2 data];
            [v381 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v378 |= (v475 & 0x7F) << v376;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v376 += 7;
          v12 = v377++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_848;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v378;
        }

LABEL_848:
        v418 = 280;
        goto LABEL_873;
      case 0x28u:
        v327 = 0;
        v328 = 0;
        v329 = 0;
        *(a1 + 436) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v330 = [a2 position] + 1;
          if (v330 >= [a2 position] && (v331 = objc_msgSend(a2, "position") + 1, v331 <= objc_msgSend(a2, "length")))
          {
            v332 = [a2 data];
            [v332 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v329 |= (v475 & 0x7F) << v327;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v327 += 7;
          v12 = v328++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_820;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v329;
        }

LABEL_820:
        v418 = 400;
        goto LABEL_873;
      case 0x29u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        *(a1 + 436) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v475 & 0x7F) << v140;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v12 = v141++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_732;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v142;
        }

LABEL_732:
        v418 = 344;
        goto LABEL_873;
      case 0x2Au:
        v235 = 0;
        v236 = 0;
        v237 = 0;
        *(a1 + 436) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v238 = [a2 position] + 1;
          if (v238 >= [a2 position] && (v239 = objc_msgSend(a2, "position") + 1, v239 <= objc_msgSend(a2, "length")))
          {
            v240 = [a2 data];
            [v240 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v237 |= (v475 & 0x7F) << v235;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v235 += 7;
          v12 = v236++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_774;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v237;
        }

LABEL_774:
        v418 = 388;
        goto LABEL_873;
      case 0x2Bu:
        v346 = 0;
        v347 = 0;
        v348 = 0;
        *(a1 + 436) |= 0x80000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v349 = [a2 position] + 1;
          if (v349 >= [a2 position] && (v350 = objc_msgSend(a2, "position") + 1, v350 <= objc_msgSend(a2, "length")))
          {
            v351 = [a2 data];
            [v351 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v348 |= (v475 & 0x7F) << v346;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v346 += 7;
          v12 = v347++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_827;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v348;
        }

LABEL_827:
        v418 = 404;
        goto LABEL_873;
      case 0x2Cu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 436) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v475 & 0x7F) << v29;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_668;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v31;
        }

LABEL_668:
        v418 = 348;
        goto LABEL_873;
      case 0x2Du:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 436) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v475 & 0x7F) << v90;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_706;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v92;
        }

LABEL_706:
        v418 = 392;
        goto LABEL_873;
      case 0x2Eu:
        v315 = 0;
        v316 = 0;
        v317 = 0;
        *(a1 + 436) |= 4uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v318 = [a2 position] + 1;
          if (v318 >= [a2 position] && (v319 = objc_msgSend(a2, "position") + 1, v319 <= objc_msgSend(a2, "length")))
          {
            v320 = [a2 data];
            [v320 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v317 |= (v475 & 0x7F) << v315;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v315 += 7;
          v12 = v316++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_814;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v317;
        }

LABEL_814:
        v418 = 240;
        goto LABEL_873;
      case 0x2Fu:
        v406 = 0;
        v407 = 0;
        v408 = 0;
        *(a1 + 436) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v409 = [a2 position] + 1;
          if (v409 >= [a2 position] && (v410 = objc_msgSend(a2, "position") + 1, v410 <= objc_msgSend(a2, "length")))
          {
            v411 = [a2 data];
            [v411 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v408 |= (v475 & 0x7F) << v406;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v406 += 7;
          v12 = v407++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_868;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v408;
        }

LABEL_868:
        v418 = 352;
        goto LABEL_873;
      case 0x30u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 436) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v475 & 0x7F) << v47;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_680;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v49;
        }

LABEL_680:
        v418 = 368;
        goto LABEL_873;
      case 0x31u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 436) |= 8uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v113 = [a2 position] + 1;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
          {
            v115 = [a2 data];
            [v115 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v112 |= (v475 & 0x7F) << v110;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v12 = v111++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_714;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v112;
        }

LABEL_714:
        v418 = 244;
        goto LABEL_873;
      case 0x32u:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 436) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v131 = [a2 position] + 1;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
          {
            v133 = [a2 data];
            [v133 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v130 |= (v475 & 0x7F) << v128;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v12 = v129++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_726;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v130;
        }

LABEL_726:
        v418 = 356;
        goto LABEL_873;
      case 0x33u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 436) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v475 & 0x7F) << v22;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_664;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_664:
        v418 = 372;
        goto LABEL_873;
      case 0x34u:
        v412 = 0;
        v413 = 0;
        v414 = 0;
        *(a1 + 436) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v415 = [a2 position] + 1;
          if (v415 >= [a2 position] && (v416 = objc_msgSend(a2, "position") + 1, v416 <= objc_msgSend(a2, "length")))
          {
            v417 = [a2 data];
            [v417 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v414 |= (v475 & 0x7F) << v412;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v412 += 7;
          v12 = v413++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_872;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v414;
        }

LABEL_872:
        v418 = 248;
        goto LABEL_873;
      case 0x35u:
        v400 = 0;
        v401 = 0;
        v402 = 0;
        *(a1 + 436) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v403 = [a2 position] + 1;
          if (v403 >= [a2 position] && (v404 = objc_msgSend(a2, "position") + 1, v404 <= objc_msgSend(a2, "length")))
          {
            v405 = [a2 data];
            [v405 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v402 |= (v475 & 0x7F) << v400;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v400 += 7;
          v12 = v401++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_864;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v402;
        }

LABEL_864:
        v418 = 360;
        goto LABEL_873;
      case 0x36u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 436) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v475 & 0x7F) << v41;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v12 = v42++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_676;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v43;
        }

LABEL_676:
        v418 = 376;
        goto LABEL_873;
      case 0x37u:
        v388 = 0;
        v389 = 0;
        v390 = 0;
        *(a1 + 436) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v391 = [a2 position] + 1;
          if (v391 >= [a2 position] && (v392 = objc_msgSend(a2, "position") + 1, v392 <= objc_msgSend(a2, "length")))
          {
            v393 = [a2 data];
            [v393 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v390 |= (v475 & 0x7F) << v388;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v388 += 7;
          v12 = v389++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_856;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v390;
        }

LABEL_856:
        v418 = 252;
        goto LABEL_873;
      case 0x38u:
        v394 = 0;
        v395 = 0;
        v396 = 0;
        *(a1 + 436) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v397 = [a2 position] + 1;
          if (v397 >= [a2 position] && (v398 = objc_msgSend(a2, "position") + 1, v398 <= objc_msgSend(a2, "length")))
          {
            v399 = [a2 data];
            [v399 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v396 |= (v475 & 0x7F) << v394;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v394 += 7;
          v12 = v395++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_860;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v396;
        }

LABEL_860:
        v418 = 364;
        goto LABEL_873;
      case 0x39u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 436) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v475 & 0x7F) << v53;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_684;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v55;
        }

LABEL_684:
        v418 = 380;
        goto LABEL_873;
      case 0x3Au:
        v340 = 0;
        v341 = 0;
        v342 = 0;
        *(a1 + 436) |= 0x40000000000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v343 = [a2 position] + 1;
          if (v343 >= [a2 position] && (v344 = objc_msgSend(a2, "position") + 1, v344 <= objc_msgSend(a2, "length")))
          {
            v345 = [a2 data];
            [v345 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v342 |= (v475 & 0x7F) << v340;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v340 += 7;
          v12 = v341++ >= 9;
          if (v12)
          {
            LOBYTE(v89) = 0;
            goto LABEL_822;
          }
        }

        v89 = (v342 != 0) & ~[a2 hasError];
LABEL_822:
        v419 = 433;
LABEL_823:
        *(a1 + v419) = v89;
        goto LABEL_874;
      case 0x3Bu:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 436) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            v121 = [a2 data];
            [v121 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v475 & 0x7F) << v116;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v12 = v117++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_718;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v118;
        }

LABEL_718:
        v418 = 268;
        goto LABEL_873;
      case 0x3Cu:
        v352 = 0;
        v353 = 0;
        v354 = 0;
        *(a1 + 436) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v355 = [a2 position] + 1;
          if (v355 >= [a2 position] && (v356 = objc_msgSend(a2, "position") + 1, v356 <= objc_msgSend(a2, "length")))
          {
            v357 = [a2 data];
            [v357 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v354 |= (v475 & 0x7F) << v352;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v352 += 7;
          v12 = v353++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_831;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v354;
        }

LABEL_831:
        v418 = 272;
        goto LABEL_873;
      case 0x3Du:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 436) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            v151 = [a2 data];
            [v151 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v475 & 0x7F) << v146;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v12 = v147++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_736;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v148;
        }

LABEL_736:
        v418 = 264;
        goto LABEL_873;
      case 0x3Eu:
        v247 = 0;
        v248 = 0;
        v249 = 0;
        *(a1 + 436) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v250 = [a2 position] + 1;
          if (v250 >= [a2 position] && (v251 = objc_msgSend(a2, "position") + 1, v251 <= objc_msgSend(a2, "length")))
          {
            v252 = [a2 data];
            [v252 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v249 |= (v475 & 0x7F) << v247;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v247 += 7;
          v12 = v248++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_782;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v249;
        }

LABEL_782:
        v418 = 324;
        goto LABEL_873;
      case 0x3Fu:
        v259 = 0;
        v260 = 0;
        v261 = 0;
        *(a1 + 436) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v262 = [a2 position] + 1;
          if (v262 >= [a2 position] && (v263 = objc_msgSend(a2, "position") + 1, v263 <= objc_msgSend(a2, "length")))
          {
            v264 = [a2 data];
            [v264 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v261 |= (v475 & 0x7F) << v259;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v259 += 7;
          v12 = v260++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_788;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v261;
        }

LABEL_788:
        v418 = 328;
        goto LABEL_873;
      case 0x40u:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        *(a1 + 436) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            v201 = [a2 data];
            [v201 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v198 |= (v475 & 0x7F) << v196;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v12 = v197++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_758;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v198;
        }

LABEL_758:
        v418 = 332;
        goto LABEL_873;
      case 0x41u:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 436) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v475) = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v475 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v475 & 0x7F) << v152;
          if ((v475 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v12 = v153++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_740;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v154;
        }

LABEL_740:
        v418 = 336;
LABEL_873:
        *(a1 + v418) = v28;
        goto LABEL_874;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_874;
    }
  }

  return [a2 hasError] ^ 1;
}