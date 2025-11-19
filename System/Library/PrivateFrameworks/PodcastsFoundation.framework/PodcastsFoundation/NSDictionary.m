@interface NSDictionary
@end

@implementation NSDictionary

uint64_t __43__NSDictionary_MTAdditions__mt_compactMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

@end