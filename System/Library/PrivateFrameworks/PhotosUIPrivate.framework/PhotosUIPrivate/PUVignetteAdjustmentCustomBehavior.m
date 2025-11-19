@interface PUVignetteAdjustmentCustomBehavior
- (void)dataSource:(id)a3 adjustmentInfo:(id)a4 populateNewAdjustmentController:(id)a5;
@end

@implementation PUVignetteAdjustmentCustomBehavior

- (void)dataSource:(id)a3 adjustmentInfo:(id)a4 populateNewAdjustmentController:(id)a5
{
  v5 = a5;
  [v5 setIntensity:0.4];
  [v5 setRadius:0.4];
}

@end