@interface UITrackedStateDiffDescription
@end

@implementation UITrackedStateDiffDescription

void ____UITrackedStateDiffDescription_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 40);
  if (([a2 unsignedIntegerValue] & v5) != 0)
  {
    [*(a1 + 32) addObject:v6];
  }
}

@end