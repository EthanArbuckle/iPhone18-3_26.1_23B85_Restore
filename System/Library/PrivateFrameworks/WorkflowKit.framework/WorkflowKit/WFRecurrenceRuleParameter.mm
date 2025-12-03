@interface WFRecurrenceRuleParameter
- (WFRecurrenceRuleParameter)initWithDefinition:(id)definition;
@end

@implementation WFRecurrenceRuleParameter

- (WFRecurrenceRuleParameter)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFRecurrenceRuleParameter;
  v3 = [(WFParameter *)&v7 initWithDefinition:definition];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end