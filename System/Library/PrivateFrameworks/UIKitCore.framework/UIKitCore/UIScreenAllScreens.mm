@interface UIScreenAllScreens
@end

@implementation UIScreenAllScreens

void ___UIScreenAllScreens_block_invoke(uint64_t a1)
{
  if (qword_1ED49AB80 != -1)
  {
    dispatch_once(&qword_1ED49AB80, &__block_literal_global_926);
  }

  v5 = qword_1ED49AB88;
  v2 = [v5 copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end