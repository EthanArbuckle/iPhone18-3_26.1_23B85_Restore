uint64_t start()
{
  EnterSandbox();
  v0 = objc_autoreleasePoolPush();
  +[PowerlogCore setupCore];
  objc_autoreleasePoolPop(v0);
  do
  {
    v1 = +[NSRunLoop currentRunLoop];
    v2 = +[NSDate distantFuture];
    v3 = [v1 runMode:NSDefaultRunLoopMode beforeDate:v2];
  }

  while ((v3 & 1) != 0);
  return 0;
}