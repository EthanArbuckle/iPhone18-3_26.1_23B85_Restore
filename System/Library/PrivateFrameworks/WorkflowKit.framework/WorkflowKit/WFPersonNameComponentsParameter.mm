@interface WFPersonNameComponentsParameter
- (WFPersonNameComponentsParameter)initWithDefinition:(id)definition;
@end

@implementation WFPersonNameComponentsParameter

- (WFPersonNameComponentsParameter)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFPersonNameComponentsParameter;
  v3 = [(WFParameter *)&v7 initWithDefinition:definition];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end