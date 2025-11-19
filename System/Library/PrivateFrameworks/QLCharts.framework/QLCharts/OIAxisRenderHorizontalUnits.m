@interface OIAxisRenderHorizontalUnits
@end

@implementation OIAxisRenderHorizontalUnits

CFStringRef ___OIAxisRenderHorizontalUnits_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = 1.0;
  if (*(a1 + 32) / v4 + 1.0 <= a2)
  {
    *a3 = 1;
    return 0;
  }

  else
  {
    v7 = v4 * v3;
    if (((v4 * v3 <= 0.0) & OIAxisIsLogarithmic(*(a1 + 48))) == 0)
    {
      v5 = v7;
    }

    Type = OIAxisGetType(*(a1 + 48));
    v9 = *(a1 + 48);
    if (Type == 3)
    {
      ICUFormating = OIAxisGetICUFormating(v9);

      return OIFormatterCreatePercentStringFromDouble(ICUFormating, v5);
    }

    else
    {
      v12 = OIAxisGetType(v9);
      v13 = *(a1 + 48);
      if (v12 == 2)
      {
        v14 = OIAxisGetICUFormating(v13);

        return OIFormatterCreateDateStringFromDouble(v14, v5);
      }

      else
      {
        CustomNumberFormatter = OIAxisGetCustomNumberFormatter(v13);
        if (CustomNumberFormatter)
        {
          v16 = CustomNumberFormatter;
          CustomFormatterCallback = OIChartGetCustomFormatterCallback(*(a1 + 56));

          return OIFormatterCreateStringUsingCustomFormatter(v16, CustomFormatterCallback);
        }

        else
        {
          v18 = OIAxisGetICUFormating(*(a1 + 48));

          return OIFormatterCreateStringFromDouble(v18, v5);
        }
      }
    }
  }
}

@end