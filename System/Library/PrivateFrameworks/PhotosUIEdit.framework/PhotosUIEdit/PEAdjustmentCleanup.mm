@interface PEAdjustmentCleanup
- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation PEAdjustmentCleanup

- (void)applyToCompositionController:(id)controller valuesCalculator:(id)calculator asset:(id)asset livePortraitBehaviorDelegate:(id)delegate completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([MEMORY[0x277D3A868] status])
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PEAdjustmentCleanupErrorDomain" code:1 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v7);
  }
}

@end