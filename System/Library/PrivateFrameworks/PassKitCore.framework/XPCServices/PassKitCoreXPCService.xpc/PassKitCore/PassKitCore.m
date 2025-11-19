int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_alloc_init(ServiceDelegate);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100000ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100000F00(uint64_t a1, void *a2)
{
  v3 = [a2 results];
  v10 = [v3 firstObject];

  [v10 boundingBox];
  if (v6 != CGSizeZero.width || v7 != CGSizeZero.height)
  {
    v9 = *(*(a1 + 32) + 8);
    *(v9 + 32) = v4;
    *(v9 + 40) = v5;
    *(v9 + 48) = v6;
    *(v9 + 56) = v7;
  }
}