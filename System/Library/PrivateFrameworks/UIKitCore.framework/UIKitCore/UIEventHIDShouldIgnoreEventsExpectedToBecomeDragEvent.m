@interface UIEventHIDShouldIgnoreEventsExpectedToBecomeDragEvent
@end

@implementation UIEventHIDShouldIgnoreEventsExpectedToBecomeDragEvent

uint64_t ___UIEventHIDShouldIgnoreEventsExpectedToBecomeDragEvent_block_invoke()
{
  result = [objc_opt_class() _isUIKitSystemProcess];
  if (result)
  {
    result = _UIApplicationProcessIsDruid();
    v1 = result ^ 1;
  }

  else
  {
    v1 = 1;
  }

  byte_1ED4A3141 = v1;
  return result;
}

@end