@interface UIColor(WFDisabledColor)
- (id)wf_desaturatedColorWithMagnitude:()WFDisabledColor;
@end

@implementation UIColor(WFDisabledColor)

- (id)wf_desaturatedColorWithMagnitude:()WFDisabledColor
{
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0;
  v8 = 0.0;
  if ([self getRed:&v10 green:&v9 blue:&v8 alpha:&v7])
  {
    v4 = (v9 * 0.589999974 + v10 * 0.300000012 + v8 * 0.109999999) * 0.6;
    v9 = (1.0 - a2) * v9 + v4 * a2;
    v10 = (1.0 - a2) * v10 + v4 * a2;
    v8 = (1.0 - a2) * v8 + v4 * a2;
    selfCopy = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end