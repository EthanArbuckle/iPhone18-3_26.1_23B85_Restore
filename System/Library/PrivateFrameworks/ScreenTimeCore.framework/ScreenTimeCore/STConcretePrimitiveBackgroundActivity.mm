@interface STConcretePrimitiveBackgroundActivity
+ (id)_configuredSchedulerWithIdentifier:(id)a3 specifiedInterval:(id)a4 existingInterval:(id)a5 type:(int64_t)a6 workBlock:(id)a7;
+ (id)_identifierForType:(int64_t)a3;
+ (id)_newIntervalFromSpecifiedInterval:(id)a3 existingInterval:(id)a4;
+ (id)_xpcActivityPropertiesForType:(int64_t)a3;
+ (int64_t)_backgroundActivityResultForResult:(int64_t)a3;
+ (int64_t)_concreteBackgroundActivityResultForResult:(int64_t)a3;
+ (int64_t)_qualityOfServiceForType:(int64_t)a3;
- (BOOL)shouldDefer;
- (STConcretePrimitiveBackgroundActivity)initWithType:(int64_t)a3 interval:(id)a4 willBegin:(id)a5 didEnd:(id)a6;
- (void)cancel;
- (void)endWithResult:(int64_t)a3;
@end

@implementation STConcretePrimitiveBackgroundActivity

- (STConcretePrimitiveBackgroundActivity)initWithType:(int64_t)a3 interval:(id)a4 willBegin:(id)a5 didEnd:(id)a6
{
  v10 = a5;
  v36.receiver = self;
  v36.super_class = STConcretePrimitiveBackgroundActivity;
  v11 = a6;
  v12 = a4;
  v13 = [(STConcretePrimitiveBackgroundActivity *)&v36 init];
  v13->_type = a3;
  v14 = objc_retainBlock(v11);

  activityDidEndBlock = v13->_activityDidEndBlock;
  v13->_activityDidEndBlock = v14;

  v13->_canceled = 0;
  v16 = [STConcretePrimitiveBackgroundActivity _identifierForType:a3];
  v17 = [v16 UTF8String];
  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v19 = dispatch_queue_create(v17, v18);
  activityQueue = v13->_activityQueue;
  v13->_activityQueue = v19;

  v21 = [[STPromise alloc] initPendingOnQueue:v13->_activityQueue];
  v22 = [v16 UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001A734;
  handler[3] = &unk_1001A2AF8;
  v35 = v21;
  v23 = v21;
  xpc_activity_register(v22, XPC_ACTIVITY_CHECK_IN, handler);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10001A828;
  v31[3] = &unk_1001A33A8;
  v24 = v13;
  v32 = v24;
  v33 = v10;
  v25 = v10;
  v26 = [STConcretePrimitiveBackgroundActivity _configuredSchedulerWithIdentifier:v16 specifiedInterval:v12 existingInterval:v23 type:a3 workBlock:v31];

  scheduler = v24->_scheduler;
  v24->_scheduler = v26;

  v28 = v33;
  v29 = v24;

  return v29;
}

+ (id)_configuredSchedulerWithIdentifier:(id)a3 specifiedInterval:(id)a4 existingInterval:(id)a5 type:(int64_t)a6 workBlock:(id)a7
{
  v12 = a4;
  v13 = a7;
  v14 = a5;
  v15 = a3;
  v16 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:v15];

  v17 = [v14 then];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001AB5C;
  v26[3] = &unk_1001A33D0;
  v30 = a1;
  v31 = a6;
  v27 = v12;
  v18 = v16;
  v28 = v18;
  v29 = v13;
  v19 = v17[2];
  v20 = v13;
  v21 = v12;
  v22 = v19(v17, v26);

  v23 = v29;
  v24 = v18;

  return v18;
}

+ (id)_newIntervalFromSpecifiedInterval:(id)a3 existingInterval:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ((v7 = [v5 isEqualToNumber:&off_1001B2410], v8 = v5, !v7) || (objc_msgSend(v6, "floatValue"), v8 = v6, v9 == -1.0) || (v8 = v6, v9 != 0.0)))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldDefer
{
  v2 = [(STConcretePrimitiveBackgroundActivity *)self scheduler];
  v3 = [v2 shouldDefer];

  return v3;
}

- (void)endWithResult:(int64_t)a3
{
  v5 = [(STConcretePrimitiveBackgroundActivity *)self activityQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001AEF4;
  v6[3] = &unk_1001A33F8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)cancel
{
  v3 = [(STConcretePrimitiveBackgroundActivity *)self activityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B0F4;
  block[3] = &unk_1001A3180;
  block[4] = self;
  dispatch_async(v3, block);
}

+ (id)_identifierForType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"com.apple.ScreenTimeAgent.activity.retry-failed-messages";
  }

  else
  {
    return off_1001A3438[a3 - 1];
  }
}

+ (int64_t)_qualityOfServiceForType:(int64_t)a3
{
  if (a3 == 3)
  {
    return 25;
  }

  else
  {
    return 9;
  }
}

+ (id)_xpcActivityPropertiesForType:(int64_t)a3
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v6 = &XPC_ACTIVITY_DISK_INTENSIVE;
  }

  else
  {
    v6 = &XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY;
  }

  xpc_dictionary_set_BOOL(v4, *v6, 1);
LABEL_6:

  return v5;
}

+ (int64_t)_backgroundActivityResultForResult:(int64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)_concreteBackgroundActivityResultForResult:(int64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end