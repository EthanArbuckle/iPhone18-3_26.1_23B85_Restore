@interface WFDateIntervalParameter
- (WFDateIntervalParameter)initWithDefinition:(id)a3;
@end

@implementation WFDateIntervalParameter

- (WFDateIntervalParameter)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFDateIntervalParameter;
  v3 = [(WFParameter *)&v7 initWithDefinition:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end