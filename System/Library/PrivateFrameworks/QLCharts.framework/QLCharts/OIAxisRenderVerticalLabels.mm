@interface OIAxisRenderVerticalLabels
@end

@implementation OIAxisRenderVerticalLabels

CFStringRef ___OIAxisRenderVerticalLabels_block_invoke(uint64_t a1, CFIndex a2, _BYTE *a3)
{
  if (*(a1 + 32) <= a2 || *(a1 + 40) + 1.0 <= a2)
  {
    result = 0;
    *a3 = 1;
  }

  else
  {
    Type = OIAxisGetType(*(a1 + 48));
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), a2);
    if (Type == 2)
    {
      valuePtr = 0.0;
      CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
      v7 = valuePtr;
      ICUFormating = OIAxisGetICUFormating(*(a1 + 48));
      return OIFormatterCreateDateStringFromDouble(ICUFormating, v7);
    }

    else
    {

      return CFRetain(ValueAtIndex);
    }
  }

  return result;
}

double ___OIAxisRenderVerticalLabels_block_invoke_2(uint64_t a1, double a2)
{
  v2 = ceil(a2);
  v3 = 48;
  if (*(a1 + 88))
  {
    v3 = 32;
  }

  return floor(*(a1 + v3) - v2 - *(a1 + 80)) + 0.5;
}

@end