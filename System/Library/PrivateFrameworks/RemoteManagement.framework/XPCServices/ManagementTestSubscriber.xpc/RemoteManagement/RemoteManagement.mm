int main(int argc, const char **argv, const char **envp)
{
  v6 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [RMConfigurationSubscriberClient runConfigurationSubscriberClientWithApplicators:v3 publisherClass:objc_opt_class()];

  return v4;
}

void sub_100000F58(id a1)
{
  qword_10000CBA8 = os_log_create("com.apple.remotemanagementd", "managementTestAdapter");

  _objc_release_x1();
}

void sub_100001D84(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = [NSString stringWithContentsOfURL:*(a1 + 32) encoding:4 error:0];
  }

  else
  {
    v5 = 0;
  }

  v6 = +[NSFileManager defaultManager];
  [v6 removeItemAtURL:*(a1 + 32) error:0];

  (*(*(a1 + 40) + 16))();
}

void sub_100002410(id a1)
{
  qword_10000CBB8 = os_log_create("com.apple.remotemanagementd", "managementTestStatus");

  _objc_release_x1();
}

void sub_100002B64(char a1, NSObject *a2)
{
  v2 = @"failure";
  if (a1)
  {
    v2 = @"success";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Adapter end: %@", &v3, 0xCu);
}

void sub_100002BF4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Download asset URL: %{public}@", &v2, 0xCu);
}

void sub_100002C80(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Querying management test status for key paths: %{public}@", &v2, 0xCu);
}