void sub_26C4A6A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ICSystemPaperExtensionLog()
{
  if (ICSystemPaperExtensionLog_onceToken != -1)
  {
    ICSystemPaperExtensionLog_cold_1();
  }

  v1 = ICSystemPaperExtensionLog_log;

  return v1;
}

uint64_t ICIsSystemPaperAvailable()
{
  v0 = MGGetSInt32Answer();
  if (v0 == 3)
  {
    return 1;
  }

  if ((v0 - 1) > 1)
  {
    return 0;
  }

  return MEMORY[0x282203478]("PencilAndPaper", "QNOnPhone");
}

void sub_26C4A758C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __ICSystemPaperExtensionLog_block_invoke()
{
  ICSystemPaperExtensionLog_log = os_log_create("com.apple.SystemPaperPresentation", "Extension");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}