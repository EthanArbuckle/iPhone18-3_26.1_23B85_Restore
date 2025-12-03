@interface SSSystemVersionCondition
- (BOOL)evaluateWithContext:(id)context;
@end

@implementation SSSystemVersionCondition

- (BOOL)evaluateWithContext:(id)context
{
  systemVersion = [context systemVersion];
  if (!systemVersion)
  {
    return 0;
  }

  value = self->super._value;
  if (!value)
  {
    return 0;
  }

  v6 = SSCompareProductVersions(systemVersion, value);
  operator = self->super._operator;

  return ConditionResultForComparisonResult(v6, operator);
}

@end