void sub_10000110C(void *a1, char a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = objc_alloc_init(SFStrongPasswordGenerator);
    v6 = [v5 generatedPasswordForAppWithAssociatedDomains:v8 passwordRules:a1[4] confirmPasswordRules:a1[5]];
    (*(a1[6] + 16))();
  }

  else
  {
    v7 = a1[6];
    v5 = [NSError errorWithDomain:SFAutoFillHelperErrorDomain code:2 userInfo:0];
    (*(v7 + 16))(v7, 0, v5);
  }
}

uint64_t sub_1000013FC()
{
  if (qword_100008678 != -1)
  {
    sub_100001624();
  }

  return qword_100008670;
}

void sub_100001434(id a1)
{
  qword_100008670 = os_log_create("com.apple.SafariShared", "Keychain");

  _objc_release_x1();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(ServiceDelegate);
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  objc_autoreleasePoolPop(v3);
  [v5 resume];

  return 0;
}

void sub_10000157C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to read keychain sync status with error: %{public}@", &v5, 0xCu);
}