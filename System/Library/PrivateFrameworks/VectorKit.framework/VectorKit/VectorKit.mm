void sub_100000EF8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didRecieveData:*(a1 + 40)];
}

void sub_100001004(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didCloseConnection:0];
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MIDaemon);
  NSLog(@"mapinspectord is launched!");
  CFRunLoopRun();
  NSLog(@"mapinspectord is done!");

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_100001C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001C74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001C8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    if (lockdown_copy_checkin_info())
    {
      v4 = [[MIXPCConnection alloc] initWithXPCConnection:*(*(*(a1 + 40) + 8) + 40)];
      (*(a1 + 48))(*(a1 + 32), *(a1 + 56), v4);
    }

    else
    {
      v4 = [[MILockdownConnection alloc] initWithLockdownInfo:0];
      (*(a1 + 48))(*(a1 + 32), *(a1 + 56), v4);
      xpc_connection_cancel(*(*(*(a1 + 40) + 8) + 40));
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = 0;

      CFRelease(0);
    }
  }
}