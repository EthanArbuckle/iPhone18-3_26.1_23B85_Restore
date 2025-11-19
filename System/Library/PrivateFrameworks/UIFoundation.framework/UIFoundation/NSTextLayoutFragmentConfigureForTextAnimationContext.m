@interface NSTextLayoutFragmentConfigureForTextAnimationContext
@end

@implementation NSTextLayoutFragmentConfigureForTextAnimationContext

uint64_t ____NSTextLayoutFragmentConfigureForTextAnimationContext_block_invoke(uint64_t result, void *a2, unint64_t a3, _BYTE *a4)
{
  if (*(result + 72) <= a3)
  {
    *a4 = 1;
    return result;
  }

  v4 = result;
  v5 = [a2 textRangeByIntersectingWithTextRange:*(result + 32)];
  result = [v5 isNotEmpty];
  if (!result)
  {
    return result;
  }

  v6 = *(v4 + 48);
  v7 = [*(v4 + 32) location];
  v8 = *(v4 + 56);
  v9 = [v5 location];
  if (v8)
  {
    result = [v8 rangeForLocation:v9 allowsTrailingEdge:0];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    v10 = result;
    result = [v8 rangeForLocation:objc_msgSend(v5 allowsTrailingEdge:{"endLocation"), 1}];
  }

  else
  {
    result = [v6 offsetFromLocation:v7 toLocation:v9];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    v10 = result;
    result = [v6 offsetFromLocation:v7 toLocation:{objc_msgSend(v5, "endLocation")}];
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL && result != v10)
  {
    v11 = *(*(v4 + 64) + 8);
    v12 = *(v11 + 24);
    *(v11 + 24) = v12 + 2;
    *v12 = v10;
    v12[1] = result - v10;
  }

  return result;
}

@end