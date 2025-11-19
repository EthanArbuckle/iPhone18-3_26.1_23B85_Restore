@interface REMDispatchQueue
+ (id)storeQueue;
@end

@implementation REMDispatchQueue

+ (id)storeQueue
{
  if (storeQueue_onceToken != -1)
  {
    +[REMDispatchQueue storeQueue];
  }

  v3 = storeQueue___sQueue;

  return v3;
}

void __30__REMDispatchQueue_storeQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_initially_inactive(v0);

  v1 = dispatch_queue_create("com.apple.reminderkit.store", attr);
  v2 = storeQueue___sQueue;
  storeQueue___sQueue = v1;

  dispatch_set_qos_class_fallback();
  dispatch_activate(storeQueue___sQueue);
}

@end