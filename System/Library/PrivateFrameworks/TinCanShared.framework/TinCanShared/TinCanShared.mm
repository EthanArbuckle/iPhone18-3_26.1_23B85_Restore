void sub_26F1115A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F11278C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F112F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F114D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_26F116FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F117A18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t currentCallPredicate_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isActive])
  {
    v3 = [v2 isConnected];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL endingCallPredicate_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 status] == 5 || objc_msgSend(v2, "status") == 6;

  return v3;
}

void sub_26F118788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_26F11938C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id TCSLogSafeDescription(void *a1)
{
  v1 = a1;
  if (+[TCSBehavior isAppleInternalInstall])
  {
    [v1 description];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p>", objc_opt_class(), v1];
  }
  v2 = ;

  return v2;
}

void _TCSInitializeLogging()
{
  if (_TCSInitializeLogging_onceToken != -1)
  {
    _TCSInitializeLogging_cold_1();
  }
}

__CFString *NSStringFromTUCallDisconnectedReason(unsigned int a1)
{
  if (a1 < 0x20 && ((0xFFEFFFFF >> a1) & 1) != 0)
  {
    v2 = off_279DC1E60[a1];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown reason [%ld]", a1];
  }

  return v2;
}

__CFString *NSStringFromTUCallStatus(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_279DC1F60[a1];
  }
}

__CFString *NSStringFromTinCanIDSIDStatus(uint64_t a1)
{
  v1 = @"loading";
  v2 = @"unknown";
  if (a1 == 2)
  {
    v2 = @"invalid";
  }

  if (a1 != 17486201)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return @"valid";
  }

  else
  {
    return v1;
  }
}

void sub_26F11C4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F11C900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromTCSessionState(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_279DC2018[a1];
  }
}

uint64_t TCSessionStateFromString(void *a1)
{
  v1 = a1;
  if ([@"idle" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"connecting" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"transmitting" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"receiving" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"disconnected" isEqualToString:v1])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_26F11DD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_26F120580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void TCSGuaranteeMainThread(void *a1)
{
  v1 = MEMORY[0x277CCACC8];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t TCSIsProcessTinCan()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [@"com.apple.tincan" isEqualToString:v1];

  return v2;
}

uint64_t TCSIsProcessCarousel()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 isFrontBoard];

  return v1;
}