@interface RPWorkloop
+ (OS_dispatch_queue)sharedWorkloop;
+ (id)createWorkloopNamed:(id)a3;
+ (id)serialQueueTargetingSharedWorkloop:(id)a3;
+ (id)serialQueueTargetingSharedWorkloop:(id)a3 withQoS:(unsigned int)a4;
@end

@implementation RPWorkloop

+ (OS_dispatch_queue)sharedWorkloop
{
  if (qword_100008150 != -1)
  {
    sub_10000157C();
  }

  v3 = qword_100008148;

  return v3;
}

+ (id)createWorkloopNamed:(id)a3
{
  inactive = dispatch_workloop_create_inactive([a3 UTF8String]);
  dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_workloop_set_qos_class_floor();
  dispatch_activate(inactive);

  return inactive;
}

+ (id)serialQueueTargetingSharedWorkloop:(id)a3
{
  v3 = [a3 UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = +[RPWorkloop sharedWorkloop];
  v6 = dispatch_queue_create_with_target_V2(v3, v4, v5);

  return v6;
}

+ (id)serialQueueTargetingSharedWorkloop:(id)a3 withQoS:(unsigned int)a4
{
  v5 = [a3 UTF8String];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, a4, 0);
  v8 = +[RPWorkloop sharedWorkloop];
  v9 = dispatch_queue_create_with_target_V2(v5, v7, v8);

  return v9;
}

@end