void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(WBSCredentialExtractionHelperDelegate);
  v2 = +[NSXPCListener serviceListener];
  [v2 setDelegate:v1];
  objc_autoreleasePoolPop(v0);
  [v2 resume];
  exit(1);
}

void sub_100001038()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error: failed to consume sandbox extension for CSV credential extraction with errno %d.", v1, 8u);
}