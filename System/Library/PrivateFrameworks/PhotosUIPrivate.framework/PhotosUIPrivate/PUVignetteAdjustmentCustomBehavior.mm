@interface PUVignetteAdjustmentCustomBehavior
- (void)dataSource:(id)source adjustmentInfo:(id)info populateNewAdjustmentController:(id)controller;
@end

@implementation PUVignetteAdjustmentCustomBehavior

- (void)dataSource:(id)source adjustmentInfo:(id)info populateNewAdjustmentController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setIntensity:0.4];
  [controllerCopy setRadius:0.4];
}

@end