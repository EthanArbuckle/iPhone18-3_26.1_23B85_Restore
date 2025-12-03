@interface PFWorkloop
+ (OS_dispatch_workloop)sharedWorkloop;
+ (OS_dispatch_workloop)snapshotWorkloop;
+ (id)concurrentQueueTargetingWorkloop:(id)workloop label:(id)label withQoS:(unsigned int)s;
+ (id)serialQueueTargetingSharedWorkloop:(id)workloop;
+ (id)serialQueueTargetingWorkloop:(id)workloop label:(id)label withQoS:(unsigned int)s;
@end

@implementation PFWorkloop

+ (OS_dispatch_workloop)sharedWorkloop
{
  if (sharedWorkloop_onceToken != -1)
  {
    +[PFWorkloop sharedWorkloop];
  }

  v3 = sharedWorkloop_workloop;

  return v3;
}

void __28__PFWorkloop_sharedWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("com.apple.PosterUIFoundation.sharedWorkloop");
  v1 = sharedWorkloop_workloop;
  sharedWorkloop_workloop = inactive;

  dispatch_workloop_set_autorelease_frequency(sharedWorkloop_workloop, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_set_qos_class_fallback();
  v2 = sharedWorkloop_workloop;

  dispatch_activate(v2);
}

+ (OS_dispatch_workloop)snapshotWorkloop
{
  if (snapshotWorkloop_onceToken != -1)
  {
    +[PFWorkloop snapshotWorkloop];
  }

  v3 = snapshotWorkloop_workloop;

  return v3;
}

void __30__PFWorkloop_snapshotWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("com.apple.PosterUIFoundation.snapshotWorkloop");
  v1 = snapshotWorkloop_workloop;
  snapshotWorkloop_workloop = inactive;

  dispatch_workloop_set_autorelease_frequency(snapshotWorkloop_workloop, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_set_qos_class_fallback();
  v2 = snapshotWorkloop_workloop;

  dispatch_activate(v2);
}

+ (id)serialQueueTargetingSharedWorkloop:(id)workloop
{
  uTF8String = [workloop UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = +[PFWorkloop sharedWorkloop];
  v6 = dispatch_queue_create_with_target_V2(uTF8String, v4, v5);

  return v6;
}

+ (id)serialQueueTargetingWorkloop:(id)workloop label:(id)label withQoS:(unsigned int)s
{
  labelCopy = label;
  workloopCopy = workloop;
  uTF8String = [label UTF8String];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_attr_make_with_qos_class(v11, s, 0);
  v13 = dispatch_queue_create_with_target_V2(uTF8String, v12, workloopCopy);

  return v13;
}

+ (id)concurrentQueueTargetingWorkloop:(id)workloop label:(id)label withQoS:(unsigned int)s
{
  labelCopy = label;
  workloopCopy = workloop;
  uTF8String = [label UTF8String];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_attr_make_with_qos_class(v11, s, 0);
  v13 = dispatch_queue_create_with_target_V2(uTF8String, v12, workloopCopy);

  return v13;
}

@end