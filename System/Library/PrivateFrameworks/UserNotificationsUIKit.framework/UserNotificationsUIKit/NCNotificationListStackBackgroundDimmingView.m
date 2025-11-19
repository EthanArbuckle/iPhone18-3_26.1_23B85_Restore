@interface NCNotificationListStackBackgroundDimmingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (void)_updateDimming;
- (void)configureStackDimmingForTransform:(CGAffineTransform *)a3;
- (void)setBackgroundColor:(id)a3;
@end

@implementation NCNotificationListStackBackgroundDimmingView

- (void)configureStackDimmingForTransform:(CGAffineTransform *)a3
{
  v3 = dbl_21E9461C0[a3->a == 0.94];
  if (a3->a > 0.94)
  {
    v3 = 0.0;
  }

  self->_absoluteStackingBrightnessFilterInput = v3;
  [(NCNotificationListStackBackgroundDimmingView *)self _updateDimming];
}

- (void)setBackgroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationListStackBackgroundDimmingView;
  [(NCNotificationListStackBackgroundDimmingView *)&v4 setBackgroundColor:a3];
  [(NCNotificationListStackBackgroundDimmingView *)self _updateDimming];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.colorBrightness.inputAmount"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NCNotificationListStackBackgroundDimmingView;
    v5 = [(NCNotificationListStackBackgroundDimmingView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)_updateDimming
{
  v15[1] = *MEMORY[0x277D85DE8];
  absoluteStackingBrightnessFilterInput = self->_absoluteStackingBrightnessFilterInput;
  v4 = [(NCNotificationListStackBackgroundDimmingView *)self backgroundColor];
  [v4 _luminance];
  v6 = v5;

  v7 = [(NCNotificationListStackBackgroundDimmingView *)self layer];
  v8 = [v7 filters];

  if (!v8)
  {
    v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA290]];
    [v9 setName:@"colorBrightness"];
    v10 = [(NCNotificationListStackBackgroundDimmingView *)self layer];
    v15[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v10 setFilters:v11];
  }

  if (v6 <= 0.5)
  {
    v12 = absoluteStackingBrightnessFilterInput;
  }

  else
  {
    v12 = -absoluteStackingBrightnessFilterInput;
  }

  v13 = [(NCNotificationListStackBackgroundDimmingView *)self layer];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  [v13 setValue:v14 forKeyPath:@"filters.colorBrightness.inputAmount"];
}

@end