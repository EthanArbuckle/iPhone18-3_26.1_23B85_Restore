@interface WFWidgetConfigurationOptions
- (CGRect)initialConfigurationCardViewFrame;
- (WFWidgetConfigurationOptions)init;
@end

@implementation WFWidgetConfigurationOptions

- (CGRect)initialConfigurationCardViewFrame
{
  x = self->_initialConfigurationCardViewFrame.origin.x;
  y = self->_initialConfigurationCardViewFrame.origin.y;
  width = self->_initialConfigurationCardViewFrame.size.width;
  height = self->_initialConfigurationCardViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (WFWidgetConfigurationOptions)init
{
  v7.receiver = self;
  v7.super_class = WFWidgetConfigurationOptions;
  v2 = [(WFWidgetConfigurationOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 0;
    v4 = *(MEMORY[0x1E695F050] + 16);
    *(v2 + 88) = *MEMORY[0x1E695F050];
    *(v2 + 104) = v4;
    v5 = v2;
  }

  return v3;
}

@end