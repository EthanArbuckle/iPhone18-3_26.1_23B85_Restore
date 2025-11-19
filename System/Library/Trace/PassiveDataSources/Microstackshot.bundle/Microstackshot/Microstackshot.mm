void sub_1104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_112C()
{
  if (qword_82E0 != -1)
  {
    sub_152C();
  }

  v1 = qword_82D8;

  return v1;
}

void sub_1170(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  if (a4 != 54)
  {
    if (a2)
    {
      *(*(*(a1 + 56) + 8) + 24) = a4;
    }

    else if (v7)
    {
      xdata = v7;
      bytes_ptr = xpc_data_get_bytes_ptr(v7);
      v9 = [[NSData alloc] initWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(xdata) freeWhenDone:0];
      v10 = *(a1 + 64);
      v11 = *(a1 + 32);
      [*(a1 + 40) timeIntervalSinceReferenceDate];
      v13 = v12;
      [*(a1 + 48) timeIntervalSinceReferenceDate];
      [v11 addMicrostackshotsFromData:v9 ofTypes:v10 inTimeRangeStart:0xFFFFFFFFLL end:0 onlyPid:v13 onlyTid:v14];

      v7 = xdata;
    }
  }
}

void sub_14E8(id a1)
{
  qword_82D8 = os_log_create("com.apple.AppleTracingSupport", "MicrostackshotPassiveDataSource");

  _objc_release_x1();
}