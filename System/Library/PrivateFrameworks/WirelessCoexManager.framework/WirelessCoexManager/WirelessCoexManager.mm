void sub_2742D6E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2742D991C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2742DD258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2742DDB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2742E0AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t WirelessRadioManagerSetLogToFile(uint64_t a1)
{
  if (a1)
  {
    v2 = &WirelessRadioManagerSetLogToFile_kWirelessRadioManagerLogInfoValuesEnable;
  }

  else
  {
    v2 = &WirelessRadioManagerSetLogToFile_kWirelessRadioManagerLogInfoValuesDisable;
  }

  v3 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &WirelessRadioManagerSetLogToFile_kWirelessRadioManagerLogInfoKeys, v2, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFPreferencesSetAppValue(@"LogInfo", v3, @"com.apple.WirelessRadioManager.debug");
  CFPreferencesAppSynchronize(@"com.apple.WirelessRadioManager.debug");
  notify_post("com.apple.WirelessRadioManager.PrefChangeNotification");
  NSLog(&cfstr_SLogtofileEnab.isa, "WirelessRadioManagerSetLogToFile", a1);
  CFRelease(v3);
  return 1;
}

uint64_t WirelessRadioManagerDumpLog()
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0;
  posix_spawnattr_init(&v5);
  posix_spawnattr_setflags(&v5, 0);
  *__argv = xmmword_279ED6390;
  *v4 = 0;
  posix_spawn(&v4[1], "/usr/local/bin/WirelessRadioManagerDumpLogs.sh", 0, &v5, __argv, 0);
  posix_spawnattr_destroy(&v5);
  v0 = waitpid(v4[1], v4, 0);
  if (v0 == v4[1] && (v4[0] & 0x7F) == 0)
  {
    v1 = 1;
    NSLog(&cfstr_SuccessInDumpi.isa, *v4);
  }

  else
  {
    v1 = 0;
    NSLog(&cfstr_ErrorInDumping.isa, *v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}