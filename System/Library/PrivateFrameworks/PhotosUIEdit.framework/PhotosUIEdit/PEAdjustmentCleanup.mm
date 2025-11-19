@interface PEAdjustmentCleanup
- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7;
@end

@implementation PEAdjustmentCleanup

- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7
{
  v8 = a7;
  if ([MEMORY[0x277D3A868] status])
  {
    v8[2](v8, 1, 0);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PEAdjustmentCleanupErrorDomain" code:1 userInfo:0];
    (v8)[2](v8, 0, v7);
  }
}

@end