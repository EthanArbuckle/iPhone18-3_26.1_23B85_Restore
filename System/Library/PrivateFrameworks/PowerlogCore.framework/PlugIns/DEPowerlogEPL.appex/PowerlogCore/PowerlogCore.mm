uint64_t sub_100001340(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100001358(uint64_t a1)
{
  v2 = [*(a1 + 32) backend];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 backend];
    [v4 runQuery];

    v5 = [*(a1 + 32) backend];
    [v5 queryResult];
  }

  else
  {
    v5 = [v3 functionName];
    v7 = *(a1 + 40);
    PLBatteryUsageUIQuery();
  }
  v6 = ;
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  v10 = *(a1 + 48);

  return dispatch_semaphore_signal(v10);
}

void sub_1000015A0(id a1)
{
  qword_10000C6F0 = objc_alloc_init(BatteryUsageQueryModule);

  _objc_release_x1();
}

id PLLogDE()
{
  if (qword_10000C708 != -1)
  {
    sub_100002D5C();
  }

  v1 = qword_10000C700;

  return v1;
}

void sub_100001A40(id a1)
{
  qword_10000C700 = os_log_create("com.apple.DiagnosticExtensions", "PowerlogEPL");

  _objc_release_x1();
}

void sub_100002D14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100002D70()
{
  sub_100002D30();
  sub_100002D3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002DE0()
{
  sub_100002D30();
  sub_100002D3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002E50()
{
  sub_100002D30();
  sub_100002D3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002FA8()
{
  sub_100002D30();
  sub_100002D3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}