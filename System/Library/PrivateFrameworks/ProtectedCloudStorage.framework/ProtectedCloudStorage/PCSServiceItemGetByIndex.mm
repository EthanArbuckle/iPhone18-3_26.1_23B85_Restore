@interface PCSServiceItemGetByIndex
@end

@implementation PCSServiceItemGetByIndex

const __CFNumber *__PCSServiceItemGetByIndex_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a3 + 32);
  if (result)
  {
    valuePtr = 0;
    result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    v6 = valuePtr;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return result;
}

@end