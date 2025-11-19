uint64_t start()
{
  qword_1000084C0 = sub_100000E78;
  *algn_1000084C8 = 0;
  sigaction(15, &qword_1000084C0, 0);
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.DataDetectorsSourceAccess"];
  [v2 setDelegate:v1];
  [v2 resume];
  CFRunLoopRun();

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_100000E78(int a1)
{
  if (a1 == 15)
  {
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}