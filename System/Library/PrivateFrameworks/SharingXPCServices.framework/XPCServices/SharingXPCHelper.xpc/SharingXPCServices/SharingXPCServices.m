void sub_100001414(uint64_t a1)
{
  v2 = sharingXPCHelperLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000055E4(a1, v2);
  }
}

void sub_100001460(uint64_t a1)
{
  v2 = sharingXPCHelperLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ interrupted", &v4, 0xCu);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sharingXPCHelperLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SharingXPCHelper main", v7, 2u);
  }

  v4 = objc_opt_new();
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  return 0;
}

double sub_1000021EC()
{
  v0 = +[UIScreen mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

id sub_100002D10(uint64_t a1)
{
  [*(a1 + 32) drawInRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);

  return [v2 drawInRect:{v3, v4, v5, v6}];
}

void sub_100003308(uint64_t a1)
{
  v1 = [*(a1 + 32) commandBlock];
  v1[2]();
}

SharingXPCHelperImageItem *sub_100003424(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 imageTitle];
  v6 = [v4 _imageTitleData:v5 foregroundColor:*(a1 + 40)];

  if (v6)
  {
    v7 = [SharingXPCHelperImageItem alloc];
    v8 = [v3 imageTitle];
    v9 = [v3 cacheLookupKey];
    v10 = [(SharingXPCHelperImageItem *)v7 initWithImageTitle:v8 imageData:v6 cacheLookupKey:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_10000377C(uint64_t a1)
{
  v1 = [*(a1 + 32) commandBlock];
  v1[2]();
}

void sub_100003A70(uint64_t a1)
{
  v1 = [*(a1 + 32) commandBlock];
  v1[2]();
}

void sub_100003D0C(uint64_t a1)
{
  v1 = [*(a1 + 32) commandBlock];
  v1[2]();
}

void sub_100003FA0(uint64_t a1)
{
  v1 = [*(a1 + 32) commandBlock];
  v1[2]();
}

void sub_10000555C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%@ shouldAcceptNewConnection: %@", &v3, 0x16u);
}

void sub_1000055E4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ invalidated", &v3, 0xCu);
}

void sub_1000056CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "### CallHandoff: Failed to write thumbnail to URL: %@\n", &v2, 0xCu);
}

void sub_100005758(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "CGImgDataForUIActivityTitle: SFDataFromCGImage returned nil for %@", &v2, 0xCu);
}

void sub_1000057D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "CGImgDataForUIActivityTitle: No CGImage on %@", &v2, 0xCu);
}