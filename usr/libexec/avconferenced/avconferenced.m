int main(int argc, const char **argv, const char **envp)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "avconferenced started.", buf, 2u);
  }

  v3 = VCFeatureFlagManager_UseAvconferenced();
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "avconferenced started.", v7, 2u);
    }

    AVConferenceServerStartInternal();
    [+[NSRunLoop mainRunLoop](NSRunLoop run];
  }

  else if (v4)
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "avconferenced main() is disabled.", v6, 2u);
  }

  return 0;
}