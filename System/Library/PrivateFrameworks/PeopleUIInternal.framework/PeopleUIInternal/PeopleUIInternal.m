id PPLPeopleViewServiceLog()
{
  if (PPLPeopleViewServiceLog_onceToken != -1)
  {
    PPLPeopleViewServiceLog_cold_1();
  }

  v1 = PPLPeopleViewServiceLog_log;

  return v1;
}

uint64_t __PPLPeopleViewServiceLog_block_invoke()
{
  PPLPeopleViewServiceLog_log = os_log_create("com.apple.people", "viewservice");

  return MEMORY[0x2821F96F8]();
}

id PPLPeopleEntitySceneSettingValueDescription(uint64_t a1, void *a2)
{
  if (a1 == 9000)
  {
    v4 = [a2 description];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_25E21FB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}