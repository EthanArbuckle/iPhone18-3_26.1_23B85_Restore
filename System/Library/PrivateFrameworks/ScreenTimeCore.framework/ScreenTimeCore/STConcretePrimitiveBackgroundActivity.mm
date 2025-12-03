@interface STConcretePrimitiveBackgroundActivity
+ (id)_configuredSchedulerWithIdentifier:(id)identifier specifiedInterval:(id)interval existingInterval:(id)existingInterval type:(int64_t)type workBlock:(id)block;
+ (id)_identifierForType:(int64_t)type;
+ (id)_newIntervalFromSpecifiedInterval:(id)interval existingInterval:(id)existingInterval;
+ (id)_xpcActivityPropertiesForType:(int64_t)type;
+ (int64_t)_backgroundActivityResultForResult:(int64_t)result;
+ (int64_t)_concreteBackgroundActivityResultForResult:(int64_t)result;
+ (int64_t)_qualityOfServiceForType:(int64_t)type;
- (BOOL)shouldDefer;
- (STConcretePrimitiveBackgroundActivity)initWithType:(int64_t)type interval:(id)interval willBegin:(id)begin didEnd:(id)end;
- (void)cancel;
- (void)endWithResult:(int64_t)result;
@end

@implementation STConcretePrimitiveBackgroundActivity

- (STConcretePrimitiveBackgroundActivity)initWithType:(int64_t)type interval:(id)interval willBegin:(id)begin didEnd:(id)end
{
  beginCopy = begin;
  v36.receiver = self;
  v36.super_class = STConcretePrimitiveBackgroundActivity;
  endCopy = end;
  intervalCopy = interval;
  v13 = [(STConcretePrimitiveBackgroundActivity *)&v36 init];
  v13->_type = type;
  v14 = objc_retainBlock(endCopy);

  activityDidEndBlock = v13->_activityDidEndBlock;
  v13->_activityDidEndBlock = v14;

  v13->_canceled = 0;
  v16 = [STConcretePrimitiveBackgroundActivity _identifierForType:type];
  uTF8String = [v16 UTF8String];
  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v19 = dispatch_queue_create(uTF8String, v18);
  activityQueue = v13->_activityQueue;
  v13->_activityQueue = v19;

  v21 = [[STPromise alloc] initPendingOnQueue:v13->_activityQueue];
  uTF8String2 = [v16 UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001A734;
  handler[3] = &unk_1001A2AF8;
  v35 = v21;
  v23 = v21;
  xpc_activity_register(uTF8String2, XPC_ACTIVITY_CHECK_IN, handler);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10001A828;
  v31[3] = &unk_1001A33A8;
  v24 = v13;
  v32 = v24;
  v33 = beginCopy;
  v25 = beginCopy;
  v26 = [STConcretePrimitiveBackgroundActivity _configuredSchedulerWithIdentifier:v16 specifiedInterval:intervalCopy existingInterval:v23 type:type workBlock:v31];

  scheduler = v24->_scheduler;
  v24->_scheduler = v26;

  v28 = v33;
  v29 = v24;

  return v29;
}

+ (id)_configuredSchedulerWithIdentifier:(id)identifier specifiedInterval:(id)interval existingInterval:(id)existingInterval type:(int64_t)type workBlock:(id)block
{
  intervalCopy = interval;
  blockCopy = block;
  existingIntervalCopy = existingInterval;
  identifierCopy = identifier;
  v16 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:identifierCopy];

  then = [existingIntervalCopy then];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001AB5C;
  v26[3] = &unk_1001A33D0;
  selfCopy = self;
  typeCopy = type;
  v27 = intervalCopy;
  v18 = v16;
  v28 = v18;
  v29 = blockCopy;
  v19 = then[2];
  v20 = blockCopy;
  v21 = intervalCopy;
  v22 = v19(then, v26);

  v23 = v29;
  v24 = v18;

  return v18;
}

+ (id)_newIntervalFromSpecifiedInterval:(id)interval existingInterval:(id)existingInterval
{
  intervalCopy = interval;
  existingIntervalCopy = existingInterval;
  if (intervalCopy && ((v7 = [intervalCopy isEqualToNumber:&off_1001B2410], v8 = intervalCopy, !v7) || (objc_msgSend(existingIntervalCopy, "floatValue"), v8 = existingIntervalCopy, v9 == -1.0) || (v8 = existingIntervalCopy, v9 != 0.0)))
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
  scheduler = [(STConcretePrimitiveBackgroundActivity *)self scheduler];
  shouldDefer = [scheduler shouldDefer];

  return shouldDefer;
}

- (void)endWithResult:(int64_t)result
{
  activityQueue = [(STConcretePrimitiveBackgroundActivity *)self activityQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001AEF4;
  v6[3] = &unk_1001A33F8;
  v6[4] = self;
  v6[5] = result;
  dispatch_async(activityQueue, v6);
}

- (void)cancel
{
  activityQueue = [(STConcretePrimitiveBackgroundActivity *)self activityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B0F4;
  block[3] = &unk_1001A3180;
  block[4] = self;
  dispatch_async(activityQueue, block);
}

+ (id)_identifierForType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return @"com.apple.ScreenTimeAgent.activity.retry-failed-messages";
  }

  else
  {
    return off_1001A3438[type - 1];
  }
}

+ (int64_t)_qualityOfServiceForType:(int64_t)type
{
  if (type == 3)
  {
    return 25;
  }

  else
  {
    return 9;
  }
}

+ (id)_xpcActivityPropertiesForType:(int64_t)type
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (type)
  {
    if (type != 1)
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

+ (int64_t)_backgroundActivityResultForResult:(int64_t)result
{
  if (result == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)_concreteBackgroundActivityResultForResult:(int64_t)result
{
  if (result == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end