@interface UIDraggingConnectionXPCQueue
@end

@implementation UIDraggingConnectionXPCQueue

void ___UIDraggingConnectionXPCQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.apple.UIKit.dragQueue", v2);
  v1 = qword_1EA9683C0;
  qword_1EA9683C0 = v0;
}

@end