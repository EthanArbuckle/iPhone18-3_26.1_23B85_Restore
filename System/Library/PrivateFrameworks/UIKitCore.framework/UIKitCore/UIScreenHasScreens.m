@interface UIScreenHasScreens
@end

@implementation UIScreenHasScreens

void ___UIScreenHasScreens_block_invoke(uint64_t a1)
{
  if (qword_1ED49AB80 != -1)
  {
    dispatch_once(&qword_1ED49AB80, &__block_literal_global_926);
  }

  v2 = qword_1ED49AB88;
  *(*(*(a1 + 32) + 8) + 24) = [v2 count] != 0;
}

@end