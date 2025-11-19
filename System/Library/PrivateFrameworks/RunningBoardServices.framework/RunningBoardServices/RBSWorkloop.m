@interface RBSWorkloop
+ (dispatch_queue_t)createCalloutQueue:(uint64_t)a1;
+ (id)createBackgroundQueue:(id)a3;
+ (id)createSyncingQueue:(id)a3;
+ (id)sharedBackgroundWorkloop;
+ (id)sharedCalloutWorkloop;
+ (id)sharedInstance;
+ (id)sharedSyncingWorkloop;
+ (void)performBackgroundWork:(id)a3;
+ (void)performBackgroundWorkWithServiceClass:(unsigned int)a3 block:(id)a4;
+ (void)performCallout:(uint64_t)a1;
+ (void)performCalloutWithServiceClass:(void *)a3 block:;
- (dispatch_workloop_t)_init;
@end

@implementation RBSWorkloop

+ (id)sharedBackgroundWorkloop
{
  v2 = +[RBSWorkloop sharedInstance];
  v3 = v2[2];

  return v3;
}

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken != -1)
  {
    +[RBSWorkloop sharedInstance];
  }

  v0 = sharedInstance___sharedInstance;

  return v0;
}

+ (id)sharedCalloutWorkloop
{
  objc_opt_self();
  v0 = +[RBSWorkloop sharedInstance];
  v1 = v0[1];

  return v1;
}

uint64_t __29__RBSWorkloop_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = [[RBSWorkloop alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (dispatch_workloop_t)_init
{
  if (!a1)
  {
    return 0;
  }

  v12.receiver = a1;
  v12.super_class = RBSWorkloop;
  v1 = objc_msgSendSuper2(&v12, sel_init);
  if (v1)
  {
    inactive = dispatch_workloop_create_inactive("com.apple.runningboardservices.callout-workloop");
    v3 = v1[1];
    v1[1] = inactive;

    dispatch_workloop_set_autorelease_frequency(v1[1], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = v1[1];
    dispatch_set_qos_class_fallback();
    v5 = dispatch_workloop_create_inactive("com.apple.runningboardservices.background-workloop");
    v6 = v1[2];
    v1[2] = v5;

    dispatch_workloop_set_autorelease_frequency(v1[2], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = v1[2];
    dispatch_set_qos_class_fallback();
    v8 = dispatch_workloop_create_inactive("com.apple.runningboardservices.syncing-workloop");
    v9 = v1[3];
    v1[3] = v8;

    dispatch_workloop_set_autorelease_frequency(v1[3], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = v1[3];
    dispatch_set_qos_class_fallback();
    dispatch_activate(v1[1]);
    dispatch_activate(v1[2]);
    dispatch_activate(v1[3]);
  }

  return v1;
}

+ (id)sharedSyncingWorkloop
{
  v2 = +[RBSWorkloop sharedInstance];
  v3 = v2[3];

  return v3;
}

+ (dispatch_queue_t)createCalloutQueue:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 UTF8String];

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = +[RBSWorkloop sharedCalloutWorkloop];
  v6 = dispatch_queue_create_with_target_V2(v3, v4, v5);

  return v6;
}

+ (void)performCallout:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = +[RBSWorkloop sharedCalloutWorkloop];
  dispatch_async(v3, v2);
}

+ (void)performCalloutWithServiceClass:(void *)a3 block:
{
  v4 = a3;
  objc_opt_self();
  v5 = +[RBSWorkloop sharedCalloutWorkloop];
  RBSDispatchAsyncWithQoS(v5, a2, v4);
}

+ (id)createBackgroundQueue:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = [a1 sharedBackgroundWorkloop];
  v9 = dispatch_queue_create_with_target_V2(v6, v7, v8);

  return v9;
}

+ (void)performBackgroundWork:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedBackgroundWorkloop];
  dispatch_async(v5, v4);
}

+ (void)performBackgroundWorkWithServiceClass:(unsigned int)a3 block:(id)a4
{
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, a4);
  [a1 performBackgroundWork:v5];
}

+ (id)createSyncingQueue:(id)a3
{
  v3 = a3;
  v4 = +[RBSWorkloop sharedInstance];
  v5 = v4[3];

  v6 = [v3 UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create_with_target_V2(v6, v7, v5);

  return v8;
}

@end