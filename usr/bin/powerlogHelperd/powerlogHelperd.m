uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (+[PLDefaults debugEnabled])
  {
    NSLog(@"*** start powerlogHelperd ***");
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100000AB8, @"com.apple.powerlogHelperd.state_changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v2 = +[PowerlogCore sharedCore];
  [v2 startCore];

  objc_autoreleasePoolPop(v0);
  do
  {
    v3 = +[NSRunLoop currentRunLoop];
    v4 = +[NSDate distantFuture];
    v5 = [v3 runMode:NSDefaultRunLoopMode beforeDate:v4];
  }

  while ((v5 & 1) != 0);
  v6 = +[PowerlogCore sharedCore];
  [v6 stopCore];

  if (+[PLDefaults debugEnabled])
  {
    NSLog(@"*** stop powerlogHelperd ***");
  }

  return 0;
}

void sub_100000AB8()
{
  if (+[PLDefaults debugEnabled])
  {
    NSLog(@"*** PLStateChanged ***");
  }
}