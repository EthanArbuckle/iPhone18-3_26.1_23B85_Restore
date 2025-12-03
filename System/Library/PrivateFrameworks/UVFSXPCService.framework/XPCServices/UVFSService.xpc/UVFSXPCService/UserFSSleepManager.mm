@interface UserFSSleepManager
+ (id)getUserFSSleepManager;
- (UserFSSleepManager)init;
- (void)disableSystemSleep;
- (void)disableSystemSleepDelayed:(id)delayed;
- (void)reenableSystemSleep;
@end

@implementation UserFSSleepManager

- (UserFSSleepManager)init
{
  v7.receiver = self;
  v7.super_class = UserFSSleepManager;
  v2 = [(UserFSSleepManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.userfsd.pm", 0);
    sleepCountQueue = v2->sleepCountQueue;
    v2->sleepCountQueue = v3;

    v8[0] = @"AssertName";
    v8[1] = @"AssertType";
    v9[0] = @"External Storage";
    v9[1] = @"PreventUserIdleSystemSleep";
    v8[2] = @"AssertLevel";
    v9[2] = &off_100039A08;
    v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
    if (IOPMAssertionCreateWithProperties(v5, &v2->noSystemIdleSleepAssertion) || !v2->noSystemIdleSleepAssertion)
    {

      v2 = 0;
    }
  }

  return v2;
}

+ (id)getUserFSSleepManager
{
  if (qword_10003FE10 != -1)
  {
    sub_10002340C();
  }

  v3 = qword_10003FE08;

  return v3;
}

- (void)disableSystemSleep
{
  sleepCountQueue = self->sleepCountQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018008;
  block[3] = &unk_100038668;
  block[4] = self;
  dispatch_sync(sleepCountQueue, block);
}

- (void)disableSystemSleepDelayed:(id)delayed
{
  delayedCopy = delayed;
  sleepCountQueue = self->sleepCountQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018110;
  v7[3] = &unk_100038C98;
  v7[4] = self;
  v8 = delayedCopy;
  v6 = delayedCopy;
  dispatch_sync(sleepCountQueue, v7);
}

- (void)reenableSystemSleep
{
  sleepCountQueue = self->sleepCountQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000184D0;
  block[3] = &unk_100038668;
  block[4] = self;
  dispatch_async(sleepCountQueue, block);
}

@end