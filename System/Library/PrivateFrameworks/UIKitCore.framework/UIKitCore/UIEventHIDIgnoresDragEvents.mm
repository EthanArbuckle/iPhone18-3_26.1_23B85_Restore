@interface UIEventHIDIgnoresDragEvents
@end

@implementation UIEventHIDIgnoresDragEvents

uint64_t ___UIEventHIDIgnoresDragEvents_block_invoke()
{
  result = [objc_opt_class() _isUIKitSystemProcess];
  if (result)
  {
    result = _UIApplicationProcessIsDruid();
  }

  _MergedGlobals_1407 = result;
  return result;
}

@end