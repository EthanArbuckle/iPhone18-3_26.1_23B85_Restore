void init_greentea_logging()
{
  if (notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &dword_40A0, &_dispatch_main_q, &stru_4080))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_7FC();
    }

    dword_40A0 = -1;
  }

  v0 = ct_green_tea_logging_enabled();
  sub_700(v0);
}

void sub_69C(id a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Handling mobile config installation", v3, 2u);
  }

  v2 = ct_green_tea_logging_enabled();
  sub_700(v2);
}

void sub_700(int a1)
{
  v3 = a1;
  v1 = sysctlbyname("security.mac.platform_exec_logging", 0, 0, &v3, 4uLL);
  if (v1)
  {
    v2 = v1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_844(&v3, v2);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v5 = "security.mac.platform_exec_logging";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "SET %s to %d", buf, 0x12u);
  }
}

void sub_844(int *a1, int a2)
{
  v3 = *a1;
  v4 = __error();
  v5 = strerror(*v4);
  v6 = 136315906;
  v7 = "security.mac.platform_exec_logging";
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = a2;
  v12 = 2080;
  v13 = v5;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "FAILED to set %s to %d with error: %d  %s", &v6, 0x22u);
}