void sub_100000CB4(void *a1)
{
  v1 = [a1 localizedDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to collect logs with error %@", &v2, 0xCu);
}