@interface UIIndexOfActivityType
@end

@implementation UIIndexOfActivityType

uint64_t ___UIIndexOfActivityType_block_invoke(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = [a2 activityType];
  *a4 = [v6 isEqualToString:*(a1 + 32)];

  return *a4;
}

@end