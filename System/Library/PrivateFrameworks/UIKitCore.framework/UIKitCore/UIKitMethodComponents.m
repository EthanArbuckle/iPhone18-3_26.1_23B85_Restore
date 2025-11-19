@interface UIKitMethodComponents
@end

@implementation UIKitMethodComponents

uint64_t ___UIKitMethodComponents_block_invoke(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v4 = [objc_msgSend(*(a1 + 32) "lastObject")];
    [*(a1 + 32) removeLastObject];
    [*(a1 + 32) addObject:v4];
  }

  result = [a2 length];
  if (result)
  {
    result = [*(a1 + 32) addObject:a2];
    v6 = 1;
LABEL_5:
    *(*(*(a1 + 48) + 8) + 24) = v6;
    return result;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    result = [*(a1 + 32) addObject:*(a1 + 40)];
    v6 = 0;
    goto LABEL_5;
  }

  return result;
}

@end