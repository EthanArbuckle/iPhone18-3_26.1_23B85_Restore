@interface UIDatePickerWheelsTimeLabel
@end

@implementation UIDatePickerWheelsTimeLabel

void __49___UIDatePickerWheelsTimeLabel_setContentHidden___block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 40) ^ 1u);
  v2 = [*(a1 + 32) timeSeparatorLabel];
  [v2 setAlpha:v1];
}

@end