id PPSFeatureFlagReaderLog()
{
  if (qword_100008828 != -1)
  {
    sub_100001DE4();
  }

  v1 = qword_100008820;

  return v1;
}

void sub_100000D1C(id a1)
{
  qword_100008820 = os_log_create("com.apple.powerlog", "PPSFeatureFlagReader");

  _objc_release_x1();
}

void sub_100000E10(id a1)
{
  v1 = PPSFeatureFlagReaderLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100001DF8(v1);
  }

  v2 = dispatch_time(0, 60000000000);
  dispatch_after(v2, &_dispatch_main_q, &stru_100004278);
}

void sub_100000E7C(id a1)
{
  v1 = PPSFeatureFlagReaderLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Requesting exit in invalidation handler...", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id logPPSFeatureFlagReader()
{
  if (qword_100008838 != -1)
  {
    sub_100001E78();
  }

  v1 = qword_100008830;

  return v1;
}

void sub_100000F88(id a1)
{
  qword_100008830 = os_log_create("com.apple.powerlog", "PPSFeatureFlagReader");

  _objc_release_x1();
}

void sub_1000010C8(id a1)
{
  v1 = logPPSFeatureFlagReader();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM handler invoked!", v2, 2u);
  }

  exit(0);
}

void sub_10000178C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(a1);
    v3 = logPPSFeatureFlagReader();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100002004(v2, v3);
    }

    objc_end_catch();
    JUMPOUT(0x100001758);
  }

  _Unwind_Resume(a1);
}

id logPPSFeatureFlagReaderHelper()
{
  if (qword_100008848 != -1)
  {
    sub_1000020C4();
  }

  v1 = qword_100008840;

  return v1;
}

void sub_100001898(id a1)
{
  qword_100008840 = os_log_create("com.apple.powerlog", "PPSFeatureFlagReaderHelper");

  _objc_release_x1();
}

void sub_100001B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001B3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001C70(id a1)
{
  v1 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1000021F4();
  }
}

void sub_100001CB4(id a1)
{
  v1 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100002234();
  }
}

void sub_100001CF8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100002274(v2, v3);
  }
}

void sub_100001DC8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100001DF8(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 60;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Exit handler triggered for PPSFeatureFlagReader! Attempting to exit in %d seconds...", v1, 8u);
}

void sub_100001F14(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] Set of Feature Flag Domains: %@", &v2, 0xCu);
}

void sub_100001F8C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[PPSFeatureFlagReader] exception occurred when getting Feature Flags: %@", &v2, 0xCu);
}

void sub_100002004(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Exception occured when doing an Entitlement Check: %@", &v2, 0xCu);
}

void sub_10000207C(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Process %d does not have entitlement to launch XPC!", buf, 8u);
}

void sub_10000210C(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] getFeatureFlags result: %@", &v3, 0xCu);
}

void sub_100002274(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "os_log_debug Connection error happened %@", &v4, 0xCu);
}