@interface SBLiquidGlassLegibilityMetric
- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4;
@end

@implementation SBLiquidGlassLegibilityMetric

- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4
{
  if (a3 == 11)
  {
    AnalyticsSendEventLazy();
  }

  return a3 == 11;
}

id __57__SBLiquidGlassLegibilityMetric_handleEvent_withContext___block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.UIKit");
  FunctionPointerForName = CFBundleGetFunctionPointerForName(BundleWithIdentifier, @"UIViewGlassGetLegibilitySetting");
  if (FunctionPointerForName)
  {
    v5 = @"setting";
    v2 = [MEMORY[0x277CCABB0] numberWithInteger:FunctionPointerForName()];
    v6[0] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end