@interface UIStringFromFocusHeading
@end

@implementation UIStringFromFocusHeading

uint64_t ___UIStringFromFocusHeading_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v4 = @" & ";
  }

  else
  {
    v4 = &stru_1EFB14550;
  }

  result = [v3 appendFormat:@"%@%@", v4, a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

@end