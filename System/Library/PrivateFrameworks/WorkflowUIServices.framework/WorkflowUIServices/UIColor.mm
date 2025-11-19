@interface UIColor
@end

@implementation UIColor

id __82__UIColor_WFWidgetConfiguration__wf_defaultWidgetConfigurationCardBackgroundColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.109803922;
    v3 = 0.117647059;
    v4 = 1.0;
    v5 = 0.109803922;
  }

  else
  {
    v2 = 1.0;
    v5 = 1.0;
    v3 = 1.0;
    v4 = 1.0;
  }

  v6 = [MEMORY[0x1E69DC888] colorWithDisplayP3Red:v2 green:v5 blue:v3 alpha:v4];

  return v6;
}

@end