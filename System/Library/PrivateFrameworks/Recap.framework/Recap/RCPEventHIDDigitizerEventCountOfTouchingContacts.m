@interface RCPEventHIDDigitizerEventCountOfTouchingContacts
@end

@implementation RCPEventHIDDigitizerEventCountOfTouchingContacts

uint64_t ___RCPEventHIDDigitizerEventCountOfTouchingContacts_block_invoke(uint64_t a1)
{
  result = IOHIDEventGetIntegerValue();
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

@end