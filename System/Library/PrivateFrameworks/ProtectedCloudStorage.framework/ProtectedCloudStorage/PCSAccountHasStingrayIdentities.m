@interface PCSAccountHasStingrayIdentities
@end

@implementation PCSAccountHasStingrayIdentities

intptr_t ____PCSAccountHasStingrayIdentities_block_invoke(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    CFRetain(*(*(*(a1 + 40) + 8) + 24));
    return dispatch_semaphore_signal(*(a1 + 32));
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6994E60]);
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFBooleanGetTypeID())
      {
        v8 = CFBooleanGetValue(v6) == 0;
      }

      else
      {
        v9 = CFGetTypeID(v6);
        if (v9 != CFNumberGetTypeID())
        {
          return dispatch_semaphore_signal(*(a1 + 32));
        }

        valuePtr = 0;
        if (!CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr))
        {
          return dispatch_semaphore_signal(*(a1 + 32));
        }

        v8 = valuePtr == 0;
      }

      v10 = !v8;
      *(*(*(a1 + 48) + 8) + 24) = v10;
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

@end