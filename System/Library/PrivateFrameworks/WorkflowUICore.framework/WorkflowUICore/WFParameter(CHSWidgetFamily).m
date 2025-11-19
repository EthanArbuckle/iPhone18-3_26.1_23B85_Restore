@interface WFParameter(CHSWidgetFamily)
- (uint64_t)arrayMaxCountForWidgetFamily:()CHSWidgetFamily;
- (uint64_t)arraySizeRangeForCHSWidgetFamily:()CHSWidgetFamily;
@end

@implementation WFParameter(CHSWidgetFamily)

- (uint64_t)arrayMaxCountForWidgetFamily:()CHSWidgetFamily
{
  v1 = [a1 arraySizeRangeForCHSWidgetFamily:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = v2 + v1 - 1;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)arraySizeRangeForCHSWidgetFamily:()CHSWidgetFamily
{
  v5 = LNActionConfigurationContextWidgetFamilyFromCHSWidgetFamily(a3);
  v6 = v5;
  v7 = *MEMORY[0x277D236E8];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [a1 arraySizeRangeForWidgetFamily:v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = INCodableAttributeArraySizeClassFromCHSWidgetFamily(a3);
    v11 = v10;
    v12 = *MEMORY[0x277CD3810];
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v9 = [a1 arraySizeForWidgetSizeClass:v13];
  }

  return v9;
}

@end