@interface UISwipeHandler
@end

@implementation UISwipeHandler

uint64_t __48___UISwipeHandler__swipeRecognizerDidRecognize___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (v3)
  {
    return (v3 >> 1) & 1;
  }

  result = [v2 _swipeRecognizerBegan:*(a1 + 40)];
  if (result)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(*(a1 + 32) + 8) = *(*(a1 + 32) + 8) & 0xFD | v5;
  *(*(a1 + 32) + 8) |= 1u;
  return result;
}

@end