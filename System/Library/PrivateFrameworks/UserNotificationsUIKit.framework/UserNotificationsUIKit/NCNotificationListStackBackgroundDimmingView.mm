@interface NCNotificationListStackBackgroundDimmingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (void)_updateDimming;
- (void)configureStackDimmingForTransform:(CGAffineTransform *)transform;
- (void)setBackgroundColor:(id)color;
@end

@implementation NCNotificationListStackBackgroundDimmingView

- (void)configureStackDimmingForTransform:(CGAffineTransform *)transform
{
  v3 = dbl_21E9461C0[transform->a == 0.94];
  if (transform->a > 0.94)
  {
    v3 = 0.0;
  }

  self->_absoluteStackingBrightnessFilterInput = v3;
  [(NCNotificationListStackBackgroundDimmingView *)self _updateDimming];
}

- (void)setBackgroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = NCNotificationListStackBackgroundDimmingView;
  [(NCNotificationListStackBackgroundDimmingView *)&v4 setBackgroundColor:color];
  [(NCNotificationListStackBackgroundDimmingView *)self _updateDimming];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.colorBrightness.inputAmount"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NCNotificationListStackBackgroundDimmingView;
    v5 = [(NCNotificationListStackBackgroundDimmingView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)_updateDimming
{
  v15[1] = *MEMORY[0x277D85DE8];
  absoluteStackingBrightnessFilterInput = self->_absoluteStackingBrightnessFilterInput;
  backgroundColor = [(NCNotificationListStackBackgroundDimmingView *)self backgroundColor];
  [backgroundColor _luminance];
  v6 = v5;

  layer = [(NCNotificationListStackBackgroundDimmingView *)self layer];
  filters = [layer filters];

  if (!filters)
  {
    v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA290]];
    [v9 setName:@"colorBrightness"];
    layer2 = [(NCNotificationListStackBackgroundDimmingView *)self layer];
    v15[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [layer2 setFilters:v11];
  }

  if (v6 <= 0.5)
  {
    v12 = absoluteStackingBrightnessFilterInput;
  }

  else
  {
    v12 = -absoluteStackingBrightnessFilterInput;
  }

  layer3 = [(NCNotificationListStackBackgroundDimmingView *)self layer];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  [layer3 setValue:v14 forKeyPath:@"filters.colorBrightness.inputAmount"];
}

@end