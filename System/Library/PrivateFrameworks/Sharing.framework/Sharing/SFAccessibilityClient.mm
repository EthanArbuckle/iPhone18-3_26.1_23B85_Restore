@interface SFAccessibilityClient
@end

@implementation SFAccessibilityClient

void __77__SFAccessibilityClient_requestLabelForActivityWithSlotID_completionHandler___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.sharing.accessibility", v2);
  v1 = requestLabelForActivityWithSlotID_completionHandler____xpc_queue;
  requestLabelForActivityWithSlotID_completionHandler____xpc_queue = v0;
}

uint64_t __77__SFAccessibilityClient_requestLabelForActivityWithSlotID_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_SharingClientS.isa, a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

@end