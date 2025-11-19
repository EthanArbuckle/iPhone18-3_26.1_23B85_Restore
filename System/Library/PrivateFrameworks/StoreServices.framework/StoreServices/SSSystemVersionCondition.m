@interface SSSystemVersionCondition
- (BOOL)evaluateWithContext:(id)a3;
@end

@implementation SSSystemVersionCondition

- (BOOL)evaluateWithContext:(id)a3
{
  v4 = [a3 systemVersion];
  if (!v4)
  {
    return 0;
  }

  value = self->super._value;
  if (!value)
  {
    return 0;
  }

  v6 = SSCompareProductVersions(v4, value);
  operator = self->super._operator;

  return ConditionResultForComparisonResult(v6, operator);
}

@end