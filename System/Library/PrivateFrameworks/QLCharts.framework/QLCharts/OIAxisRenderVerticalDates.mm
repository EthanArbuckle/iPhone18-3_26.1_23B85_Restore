@interface OIAxisRenderVerticalDates
@end

@implementation OIAxisRenderVerticalDates

CFStringRef ___OIAxisRenderVerticalDates_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = a2;
  if (*(a1 + 32) <= a2)
  {
    *a3 = 1;
    return 0;
  }

  else
  {
    MinValue = OIAxisGetMinValue(*(a1 + 40));
    v6 = MinValue + v3 * OIAxisGetUnit(*(a1 + 40));
    CustomNumberFormatter = OIAxisGetCustomNumberFormatter(*(a1 + 40));
    if (CustomNumberFormatter)
    {
      v8 = CustomNumberFormatter;
      CustomFormatterCallback = OIChartGetCustomFormatterCallback(*(a1 + 48));

      return OIFormatterCreateStringUsingCustomFormatter(v8, CustomFormatterCallback);
    }

    else
    {
      ICUFormating = OIAxisGetICUFormating(*(a1 + 40));

      return OIFormatterCreateDateStringFromDouble(ICUFormating, v6);
    }
  }
}

double ___OIAxisRenderVerticalDates_block_invoke_2(uint64_t a1, double a2)
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