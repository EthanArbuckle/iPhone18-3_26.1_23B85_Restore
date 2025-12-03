@interface WFVariablePillLayoutMetrics
- (WFVariablePillLayoutMetrics)initWithName:(id)name icon:(id)icon font:(id)font height:(double)height;
@end

@implementation WFVariablePillLayoutMetrics

- (WFVariablePillLayoutMetrics)initWithName:(id)name icon:(id)icon font:(id)font height:(double)height
{
  v9 = sub_1C840CDDC();
  v11 = v10;
  iconCopy = icon;
  fontCopy = font;
  return VariablePillLayoutMetrics.init(name:icon:font:height:)(height, v9, v11, icon, font);
}

@end