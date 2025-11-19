@interface UIClippingFaultLog
@end

@implementation UIClippingFaultLog

void ___UIClippingFaultLog_block_invoke()
{
  v0 = os_log_create("com.apple.runtime-issues", "UI Text Layout Clipping");
  v1 = qword_1EA9948F8;
  qword_1EA9948F8 = v0;
}

@end