@interface INRecurrenceRule(REMUInt)
+ (id)rem_recurrenceRuleWithInterval:()REMUInt frequency:;
@end

@implementation INRecurrenceRule(REMUInt)

+ (id)rem_recurrenceRuleWithInterval:()REMUInt frequency:
{
  v4 = [[a1 alloc] initWithInterval:a3 frequency:a4];

  return v4;
}

@end