uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[PowerlogCore sharedCore];
  [v1 startCore];

  objc_autoreleasePoolPop(v0);
  do
  {
    v2 = +[NSRunLoop currentRunLoop];
    v3 = +[NSDate distantFuture];
    v4 = [v2 runMode:NSDefaultRunLoopMode beforeDate:v3];
  }

  while ((v4 & 1) != 0);
  v5 = +[PowerlogCore sharedCore];
  [v5 stopCore];

  return 0;
}