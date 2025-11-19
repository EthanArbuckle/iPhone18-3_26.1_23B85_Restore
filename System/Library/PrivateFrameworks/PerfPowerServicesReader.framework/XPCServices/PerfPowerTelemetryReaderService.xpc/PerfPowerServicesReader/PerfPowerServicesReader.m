void sub_10000102C(id a1)
{
  v1 = PPSLogReaderService();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "XPC connection interrupted", v2, 2u);
  }
}

void sub_100001094(uint64_t a1)
{
  v2 = PPSLogReaderService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "XPC connection with client pid: %d invalidated", v4, 8u);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];
  exit(1);
}

id PPSLogReaderService()
{
  if (qword_100008618 != -1)
  {
    sub_1000015F0();
  }

  v1 = qword_100008610;

  return v1;
}

void sub_1000011CC(id a1)
{
  qword_100008610 = os_log_create("com.apple.PerfPowerServicesReaderService", "xpc");

  _objc_release_x1();
}

void sub_100001478(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}@: Connection attempt from %{public}@", &v3, 0x16u);
}

void sub_100001500(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Process %d does not have read entitlement!", v2, 8u);
}

void sub_100001578(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Process %d has read entitlement!", v2, 8u);
}

void sub_100001604(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Executing request: %{public}@", &v2, 0xCu);
}

void sub_10000167C(void *a1, uint64_t a2, void *a3, NSObject **a4)
{
  v6 = objc_begin_catch(a1);
  *a3 = v6;
  v7 = v6;
  v8 = PPSLogReaderService();
  *a4 = v8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138543362;
    v10 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Exception while executing request: %{public}@", &v9, 0xCu);
  }
}