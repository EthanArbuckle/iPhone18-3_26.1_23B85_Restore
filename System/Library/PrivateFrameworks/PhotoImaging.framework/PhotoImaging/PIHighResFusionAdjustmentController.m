@interface PIHighResFusionAdjustmentController
- (NSDictionary)alignment;
- (PIHighResFusionAdjustmentController)initWithAdjustment:(id)a3;
- (void)setAlignment:(id)a3;
@end

@implementation PIHighResFusionAdjustmentController

- (void)setAlignment:(id)a3
{
  v6 = [a3 copy];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIHighResFusionAdjustmentController alignmentKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (NSDictionary)alignment
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIHighResFusionAdjustmentController alignmentKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (PIHighResFusionAdjustmentController)initWithAdjustment:(id)a3
{
  v4.receiver = self;
  v4.super_class = PIHighResFusionAdjustmentController;
  return [(PIAdjustmentController *)&v4 initWithAdjustment:a3];
}

@end