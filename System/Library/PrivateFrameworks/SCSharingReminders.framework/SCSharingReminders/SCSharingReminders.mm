void sub_2625570F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __destructor_8_s8_s16_s24(va);
  _Unwind_Resume(a1);
}

id __copy_constructor_8_8_t0w1_s8_s16_s24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

void __destructor_8_s8_s16_s24(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_2625591B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_262559404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26255979C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_262559DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26255A1E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26255B028(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26255B440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26255B710(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26255BB74(_Unwind_Exception *a1)
{
  __destructor_8_s8_s16_s24(v1 + 32);
  __destructor_8_s8_s16_s24(v2 - 112);
  _Unwind_Resume(a1);
}

void sub_26255C0E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v4 - 176));
  objc_destroyWeak((v4 - 120));
  objc_destroyWeak((v4 - 112));
  __destructor_8_s8_s16_s24(v1 + 32);
  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_48n29_8_8_t0w32_S_t32w1_s40_s48_s56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v2;
  return __copy_constructor_8_8_t0w1_s8_s16_s24(a1 + 80, a2 + 80);
}

void sub_26255CA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak((v36 + 48));
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak(&a36);
  objc_destroyWeak((v38 - 112));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

id SCLogger()
{
  if (SCLogger_onceToken != -1)
  {
    SCLogger_cold_1();
  }

  v1 = SCLogger_log;

  return v1;
}

uint64_t __SCLogger_block_invoke()
{
  SCLogger_log = os_log_create("com.apple.safetycheckd", "SCLogger");

  return MEMORY[0x2821F96F8]();
}

double configWithGlobalDefaults@<D0>(_OWORD *a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_262563FE8;
  a1[1] = unk_262563FF8;
  return result;
}

uint64_t sharingRemindersStatusToString(uint64_t a1)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v26[0] = @"Feature flags:";
  v2 = MEMORY[0x277CCACA8];
  if (_os_feature_enabled_impl())
  {
    v3 = "Yes";
  }

  else
  {
    v3 = "No";
  }

  v25 = [v2 stringWithFormat:@"  %-42s %s", "WiFi Sync Feature Flag:", v3];
  v26[1] = v25;
  v4 = MEMORY[0x277CCACA8];
  if (_os_feature_enabled_impl())
  {
    v5 = "Yes";
  }

  else
  {
    v5 = "No";
  }

  v24 = [v4 stringWithFormat:@"  %-42s %s", "General Reminder Feature Flag:", v5];
  v26[2] = v24;
  v26[3] = @"\n";
  v26[4] = @"Sharing Reminders Status:";
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"  %-42s %hhu", "Consecutive notification count:", *(a1 + 32)];
  v26[5] = v23;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"  %-42s %llu", "Maximum notification count before opt out:", *a1];
  v26[6] = v22;
  v6 = MEMORY[0x277CCACA8];
  v21 = [MEMORY[0x277CCA968] localizedStringFromDate:*(a1 + 40) dateStyle:1 timeStyle:1];
  v7 = [v6 stringWithFormat:@"  %-42s %@", "Last fired date:", v21];
  v26[7] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"  %-42s %@", "Scheduled sharing reminders:", *(a1 + 48)];
  v26[8] = v8;
  v9 = MEMORY[0x277CCACA8];
  v10 = [*(a1 + 56) valueForKey:@"com.apple.safetycheckd.wifi"];
  v11 = [v9 stringWithFormat:@"  %-42s %@", "Non-actionable identifiers (Wifi Sync):", v10];
  v26[9] = v11;
  v26[10] = @"\n";
  v26[11] = @"Delays:";
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"  %-42s %llu", "Time interval (backstop):", *(a1 + 8)];
  v26[12] = v12;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"  %-42s %llu", "Time interval (general):", *(a1 + 16)];
  v26[13] = v13;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"  %-42s %llu", "Time interval (short):", *(a1 + 24)];
  v26[14] = v14;
  v26[15] = @"\n";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:16];
  v16 = [v15 componentsJoinedByString:@"\n"];

  v17 = v16;
  v18 = [v16 UTF8String];

  __destructor_8_s8_s16_s24(a1 + 32);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_26255E274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26255E770(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id SCUIBundle()
{
  if (SCUIBundle_onceToken != -1)
  {
    SCUIBundle_cold_1();
  }

  v1 = SCUIBundle__Bundle;

  return v1;
}

uint64_t __SCUIBundle_block_invoke()
{
  SCUIBundle__Bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id SCUILocStringForKey(void *a1)
{
  v1 = a1;
  v2 = SCUIBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"Localizable"];

  return v3;
}

__CFString *storeKeyToString(unint64_t a1)
{
  if (a1 < 4)
  {
    return off_279B39988[a1];
  }

  v3 = SCLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    storeKeyToString_cold_1(a1, v3);
  }

  return 0;
}

void sub_26256009C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void storeKeyToString_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_262556000, a2, OS_LOG_TYPE_ERROR, "Cannot cast to string, unsupported key value: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}