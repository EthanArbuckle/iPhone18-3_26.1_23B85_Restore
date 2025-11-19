@interface RCPVirtualHIDServiceQueue
@end

@implementation RCPVirtualHIDServiceQueue

void ___RCPVirtualHIDServiceQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);

  v1 = dispatch_queue_create("com.apple.recap.virtual", attr);
  v2 = _RCPVirtualHIDServiceQueue_queue;
  _RCPVirtualHIDServiceQueue_queue = v1;
}

@end