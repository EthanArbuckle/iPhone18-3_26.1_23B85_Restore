@interface PIHighResFusionAdjustmentController
- (NSDictionary)alignment;
- (PIHighResFusionAdjustmentController)initWithAdjustment:(id)adjustment;
- (void)setAlignment:(id)alignment;
@end

@implementation PIHighResFusionAdjustmentController

- (void)setAlignment:(id)alignment
{
  v6 = [alignment copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIHighResFusionAdjustmentController alignmentKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (NSDictionary)alignment
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIHighResFusionAdjustmentController alignmentKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

  return v4;
}

- (PIHighResFusionAdjustmentController)initWithAdjustment:(id)adjustment
{
  v4.receiver = self;
  v4.super_class = PIHighResFusionAdjustmentController;
  return [(PIAdjustmentController *)&v4 initWithAdjustment:adjustment];
}

@end