id STKCommonLog()
{
  if (STKCommonLog_onceToken != -1)
  {
    STKCommonLog_cold_1();
  }

  v1 = STKCommonLog___log;

  return v1;
}

void STKAlertSessionManagerStart()
{
  if (STKAlertSessionManagerStartInternal___once != -1)
  {
    STKAlertSessionManagerStart_cold_1();
  }
}

void *STKAlertSessionManagerSetDeviceLanguage(uint64_t a1)
{
  if (STKAlertSessionManagerStartInternal___once != -1)
  {
    STKAlertSessionManagerStart_cold_1();
  }

  NSLog(&cfstr_StkLockScreenN.isa, a1);
  if (__stkSessionManager)
  {
    [__stkSessionManager setDeviceLanguage:a1];
  }

  if (__class0SessionManager)
  {
    [__class0SessionManager setDeviceLanguage:a1];
  }

  result = __ussdSessionManager;
  if (__ussdSessionManager)
  {

    return [result setDeviceLanguage:a1];
  }

  return result;
}

void __STKAlertSessionManagerStartInternal_block_invoke()
{
  NSLog(&cfstr_StkSessionsAre.isa);
  v6 = objc_alloc_init(STKCarrierSubscriptionMonitor);
  v0 = [[STKSIMToolkitAlertSessionManager alloc] initWithSubscriptionMonitor:v6];
  v1 = __stkSessionManager;
  __stkSessionManager = v0;

  v2 = [[STKClass0SMSAlertSessionManager alloc] initWithSubscriptionMonitor:v6];
  v3 = __class0SessionManager;
  __class0SessionManager = v2;

  v4 = [[STKUSSDAlertSessionManager alloc] initWithSubscriptionMonitor:v6];
  v5 = __ussdSessionManager;
  __ussdSessionManager = v4;
}

void sub_262BB6D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _queue_USSDHandler(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    _queue_USSDHandler_cold_1();
  }

  v7 = a4;
  v8 = v7[4];
  BSDispatchQueueAssert();
  v9 = [v7 log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    _queue_USSDHandler_cold_2(a2, a3, v9);
  }

  v10 = MEMORY[0x277CBEC10];
  if (a3)
  {
    v10 = a3;
  }

  v11 = v10;
  if (CFEqual(a2, *MEMORY[0x277CC4318]))
  {
    v12 = 1;
  }

  else if (CFEqual(a2, *MEMORY[0x277CC4358]))
  {
    v12 = 2;
  }

  else if (CFEqual(a2, *MEMORY[0x277CC4320]))
  {
    v12 = 3;
  }

  else if (CFEqual(a2, *MEMORY[0x277CC4330]))
  {
    v12 = 4;
  }

  else
  {
    if (!CFEqual(a2, *MEMORY[0x277CC4360]))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _queue_USSDHandler(CTServerConnectionRef, CFStringRef, CFDictionaryRef, void *)"}];
      [(_STKUSSDResponseProvider *)v17 handleFailureInFunction:v18 file:@"STKUSSDAlertSessionManager.m" lineNumber:417 description:@"Unhandled CT notification: %@", a2];

      goto LABEL_18;
    }

    v12 = 5;
  }

  v13 = [_STKUSSDResponseProvider alloc];
  v14 = v7[4];
  v15 = v7[6];
  v16 = [v7 log];
  v17 = [(_STKUSSDResponseProvider *)v13 initWithQueue:v14 telephonyClient:v15 options:v11 logger:v16];

  [v7 _queue_handleUSSDEvent:v12 responder:v17 userInfo:v11];
LABEL_18:
}

void sub_262BBA88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_262BBC6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _queue_SIMToolkitHandler(uint64_t a1, const void *a2, void *a3, void *a4)
{
  if (!a2)
  {
    _queue_SIMToolkitHandler_cold_1();
  }

  v19 = a4;
  v7 = *(v19 + 4);
  BSDispatchQueueAssert();
  v8 = MEMORY[0x277CBEC10];
  if (a3)
  {
    v8 = a3;
  }

  v9 = v8;
  if (CFEqual(a2, *MEMORY[0x277CC40A0]))
  {
    v10 = 1;
LABEL_33:
    v11 = [v9 valueForKey:*MEMORY[0x277CC40D8]];
    v12 = [v11 intValue];

    v13 = [*(v19 + 18) subscriptionContextForSlot:v12];
    v14 = [_STKSIMToolkitResponseProvider alloc];
    v15 = *(v19 + 4);
    v16 = *(v19 + 5);
    v17 = [v19 log];
    v18 = [(_STKSIMToolkitResponseProvider *)v14 initWithQueue:v15 telephonyClient:v16 context:v13 options:v9 logger:v17];

    [v19 _queue_handleSIMToolkitEvent:v10 responder:v18 userInfo:v9];
    goto LABEL_34;
  }

  if (CFEqual(a2, *MEMORY[0x277CC40A8]))
  {
    v10 = 2;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CC40B8]))
  {
    v10 = 3;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CC4098]))
  {
    v10 = 4;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CC3F38]))
  {
    v10 = 5;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CC3F88]))
  {
    v10 = 6;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CC4060]))
  {
    v10 = 7;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CC3F30]))
  {
    v10 = 8;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CC3F08]))
  {
    v10 = 9;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CC3FB0]))
  {
    v10 = 10;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CC3FC0]))
  {
    v10 = 11;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CC3FB8]))
  {
    v10 = 12;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CC40D0]))
  {
    v10 = 13;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CC4090]))
  {
    v10 = 14;
    goto LABEL_33;
  }

  v13 = [MEMORY[0x277CCA890] currentHandler];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _queue_SIMToolkitHandler(CTServerConnectionRef, CFStringRef, CFDictionaryRef, void *)"}];
  [v13 handleFailureInFunction:v18 file:@"STKSIMToolkitAlertSessionManager.m" lineNumber:775 description:{@"Unhandled CT notification: %@", a2}];
LABEL_34:
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_262BC02D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id STKUSSDSessionCommunicationInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287590C40];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v1 setWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_sessionDidReceiveSupplementaryServicesEvent_ argumentIndex:0 ofReply:0];

  return v0;
}

__CFString *NSStringFromSTKSIMToolkitEvent(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"unknown";
  }

  else
  {
    return off_279B4C8A8[a1 - 1];
  }
}

__CFString *NSStringFromSTKSessionResponseType(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Success";
  }

  else
  {
    return off_279B4C918[a1 - 1];
  }
}

void sub_262BC2244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _STKWithLock(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  os_unfair_lock_lock(a1 + 2);
  v3[2](v3);

  os_unfair_lock_unlock(a1 + 2);
}

void sub_262BC265C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_262BC3398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_262BC41EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_262BC4B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_262BC4F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __STKCommonLog_block_invoke()
{
  STKCommonLog___log = os_log_create("com.apple.telephony.stk", "common");

  return MEMORY[0x2821F96F8]();
}

id STKSIMToolkitLog()
{
  if (STKSIMToolkitLog_onceToken != -1)
  {
    STKSIMToolkitLog_cold_1();
  }

  v1 = STKSIMToolkitLog___log;

  return v1;
}

uint64_t __STKSIMToolkitLog_block_invoke()
{
  STKSIMToolkitLog___log = os_log_create("com.apple.telephony.simtoolkit", "default");

  return MEMORY[0x2821F96F8]();
}

id STKUSSDLog()
{
  if (STKUSSDLog_onceToken != -1)
  {
    STKUSSDLog_cold_1();
  }

  v1 = STKUSSDLog___log;

  return v1;
}

uint64_t __STKUSSDLog_block_invoke()
{
  STKUSSDLog___log = os_log_create("com.apple.telephony.ussd", "default");

  return MEMORY[0x2821F96F8]();
}

id STKClass0SMSLog()
{
  if (STKClass0SMSLog_onceToken != -1)
  {
    STKClass0SMSLog_cold_1();
  }

  v1 = STKClass0SMSLog___log;

  return v1;
}

uint64_t __STKClass0SMSLog_block_invoke()
{
  STKClass0SMSLog___log = os_log_create("com.apple.telephony.class0sms", "default");

  return MEMORY[0x2821F96F8]();
}

void _queue_USSDHandler_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _queue_USSDHandler(CTServerConnectionRef, CFStringRef, CFDictionaryRef, void *)"}];
  [v1 handleFailureInFunction:v0 file:@"STKUSSDAlertSessionManager.m" lineNumber:400 description:@"Received CT notification without name"];
}

void _queue_USSDHandler_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CF0CA8] sharedInstance];
  v7 = [v6 isInternalInstall];
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", a2];
  }

  else
  {
    v8 = &stru_287584798;
  }

  *buf = 138412546;
  v11 = a1;
  v12 = 2112;
  v13 = v8;
  _os_log_debug_impl(&dword_262BB4000, a3, OS_LOG_TYPE_DEBUG, "Received CT USSD notification: %@%@", buf, 0x16u);
  if (v7)
  {
  }

  v9 = *MEMORY[0x277D85DE8];
}

void _queue_SIMToolkitHandler_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _queue_SIMToolkitHandler(CTServerConnectionRef, CFStringRef, CFDictionaryRef, void *)"}];
  [v1 handleFailureInFunction:v0 file:@"STKSIMToolkitAlertSessionManager.m" lineNumber:760 description:@"Received CT notification without name"];
}