int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_class();

  return [RMConfigurationSubscriberClient runConfigurationSubscriberClientWithApplicators:&__NSArray0__struct publisherClass:v3];
}

void sub_100000E2C(id a1)
{
  qword_1000084D0 = os_log_create("com.apple.remotemanagementd", "batteryHealthLog");

  _objc_release_x1();
}

void sub_100001374(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Querying status for key paths: %{public}@", &v2, 0xCu);
}

void sub_1000013EC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching battery health state: %d", v2, 8u);
}