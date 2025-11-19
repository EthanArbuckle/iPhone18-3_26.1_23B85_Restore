@interface WFVariablePillLayoutMetrics
- (WFVariablePillLayoutMetrics)initWithName:(id)a3 icon:(id)a4 font:(id)a5 height:(double)a6;
@end

@implementation WFVariablePillLayoutMetrics

- (WFVariablePillLayoutMetrics)initWithName:(id)a3 icon:(id)a4 font:(id)a5 height:(double)a6
{
  v9 = sub_1C840CDDC();
  v11 = v10;
  v12 = a4;
  v13 = a5;
  return VariablePillLayoutMetrics.init(name:icon:font:height:)(a6, v9, v11, a4, a5);
}

@end