void sub_100000C6C(id a1)
{
  qword_100008788 = objc_alloc_init(UIFoundationBundleHelper);

  _objc_release_x1();
}

void sub_100000CEC(id a1)
{
  qword_100008798 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UIFoundationBundleHelper];

  _objc_release_x1();
}

void sub_100001398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000013B8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 objectForKey:kTCCInfoService];
  v7 = [v6 isEqualToString:kTCCServicePhotos];

  if (v7)
  {
    v8 = [v9 objectForKey:kTCCInfoGranted];
    *(*(*(a1 + 32) + 8) + 24) = [v8 BOOLValue];

    *a4 = 1;
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 1;
}