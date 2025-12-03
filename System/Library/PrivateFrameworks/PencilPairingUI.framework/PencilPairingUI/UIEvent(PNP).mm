@interface UIEvent(PNP)
- (BOOL)pnp_isPencilEvent;
@end

@implementation UIEvent(PNP)

- (BOOL)pnp_isPencilEvent
{
  if (![self _hidEvent])
  {
    return 0;
  }

  v1 = IOHIDEventGetChildren();
  v2 = 0;
  if ([v1 count])
  {
    [v1 objectAtIndex:0];
    if (!IOHIDEventGetIntegerValue())
    {
      v2 = 1;
    }
  }

  return v2;
}

@end