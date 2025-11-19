int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];
  exit(1);
}

void sub_100000F08(id a1)
{
  qword_100008608 = os_log_create("com.apple.PerfPowerServices", "ClientRegistrationService");

  _objc_release_x1();
}

id sub_10000117C()
{
  if (qword_100008640 != -1)
  {
    sub_1000017F8();
  }

  v1 = qword_100008638;

  return v1;
}

void sub_1000012F0(id a1)
{
  qword_100008620 = [[NSUserDefaults alloc] initWithSuiteName:@"PerfPowerServicesDataStream"];

  _objc_release_x1();
}

void sub_1000017A0(id a1)
{
  qword_100008638 = os_log_create("com.apple.PerfPowerServices", "ClientRegistrationService");

  _objc_release_x1();
}

void sub_10000180C(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Process %d does not have write entitlements!", v3, 8u);
}

void sub_1000018AC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Current subCat %@  overridesubCat %@", &v3, 0x16u);
}

void sub_100001948(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not read test allowlist with error: %@", &v2, 0xCu);
}