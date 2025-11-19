@interface TVPagePerformanceController
@end

@implementation TVPagePerformanceController

uint64_t __54___TVPagePerformanceController_isPerformanceUIEnabled__block_invoke()
{
  result = MGGetBoolAnswer();
  isPerformanceUIEnabled_internalBuild = result;
  if ((result & 1) == 0)
  {
    result = CFPreferencesGetAppBooleanValue(@"PagePerformanceUIEnabled", @"com.apple.TVMLKit", 0);
    isPerformanceUIEnabled_uiEnabled = result != 0;
  }

  return result;
}

void __80___TVPagePerformanceController_postNotificationForImageProxy_withLoadingStatus___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:a1[4] object:a1[5] userInfo:a1[6]];
}

id __39___TVPagePerformanceController_metrics__block_invoke(uint64_t a1, unint64_t a2)
{
  v3 = _TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds(*(*(a1 + 32) + 24), a2);
  if (v3)
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(*(a1 + 40) + v3) / 0x3E8];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v4 = ;

  return v4;
}

void __56___TVPagePerformanceController_buildPagePerformanceView__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = [a3 unsignedLongLongValue];
  if (v5 >= 0x3E9)
  {
    if (v5 >> 4 > 0x270)
    {
      if (v5 > 0x7A11F)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%0.2fs", v5 / 1000000.0];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%lums", v5 / 0x3E8uLL];
      }
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%0.2fms", v5 / 1000.0];
    }
    v6 = ;
    v7 = [v9 stringByAppendingString:v6];

    v8 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
    [v8 setText:v7];
    [*(a1 + 32) addSubview:v8];
    *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 40) + 8) + 40) + 60.0;
  }
}

@end