void sub_25EDC17A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25EDC1EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id PPSLogCommon()
{
  if (PPSLogCommon_onceToken != -1)
  {
    PPSLogCommon_cold_1();
  }

  v1 = PPSLogCommon___logObj;

  return v1;
}

uint64_t __PPSLogCommon_block_invoke()
{
  PPSLogCommon___logObj = os_log_create("com.apple.PosterPlatformSupport", "Common");

  return MEMORY[0x2821F96F8]();
}

id PPSLogHostConfiguration()
{
  if (PPSLogHostConfiguration_onceToken != -1)
  {
    PPSLogHostConfiguration_cold_1();
  }

  v1 = PPSLogHostConfiguration___logObj;

  return v1;
}

uint64_t __PPSLogHostConfiguration_block_invoke()
{
  PPSLogHostConfiguration___logObj = os_log_create("com.apple.PosterPlatformSupport", "HostConfiguration");

  return MEMORY[0x2821F96F8]();
}