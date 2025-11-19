int main(int argc, const char **argv, const char **envp)
{
  v6 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [RMConfigurationSubscriberClient runConfigurationSubscriberClientWithApplicators:v3 publisherClass:0];

  return v4;
}

void sub_100000E34(id a1)
{
  qword_100008820 = os_log_create("com.apple.remotemanagementd", "watchEnrollmentAdapter");

  _objc_release_x1();
}

void sub_100000FA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[RMLog watchEnrollmentAdapter];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100001C3C();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v5 && [v5 count] && (objc_msgSend(v5, "anyObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = +[RMStoreDeclarationKey newDeclarationKey:](RMStoreDeclarationKey, "newDeclarationKey:", v8), v8, v9))
    {
      v10 = [NSSet setWithObject:v9];
    }

    else
    {
      v10 = objc_opt_new();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000012A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[RMLog watchEnrollmentAdapter];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100001CA4();
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000013BC;
    v10[3] = &unk_1000041E8;
    v9 = *(a1 + 64);
    v12 = *(a1 + 56);
    v11 = v5;
    [v7 _removeDeclarationKeyIfNeeded:v8 scope:v9 completionHandler:v10];
  }

  else
  {
    [*(a1 + 32) _applyConfiguration:*(a1 + 48) replaceKey:*(a1 + 40) scope:*(a1 + 64) anchorCertificates:a2 completionHandler:*(a1 + 56)];
  }
}

void sub_1000018DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[RMLog watchEnrollmentAdapter];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100001D0C();
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000019F4;
    v8[3] = &unk_1000041E8;
    v7 = *(a1 + 56);
    v10 = *(a1 + 48);
    v9 = v3;
    [v5 _removeDeclarationKeyIfNeeded:v6 scope:v7 completionHandler:v8];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100001AD4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[RMLog watchEnrollmentAdapter];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100001D74();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100001B54(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}