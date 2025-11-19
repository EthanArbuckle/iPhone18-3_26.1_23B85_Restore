@interface NSTextLayoutManagerGetLayoutFragmentForPosition
@end

@implementation NSTextLayoutManagerGetLayoutFragmentForPosition

uint64_t ____NSTextLayoutManagerGetLayoutFragmentForPosition_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 state];
  if (!result)
  {
    return result;
  }

  result = [a2 layoutFragmentFrame];
  v10 = *(a1 + 48);
  if (v10 >= v8 && v10 < v8 + v9)
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
LABEL_10:
    *a4 = 1;
    return result;
  }

  if (v10 > v8 && (*(a1 + 56) & 1) != 0)
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
    return result;
  }

  if (v10 < v8)
  {
    goto LABEL_10;
  }

  return result;
}

@end