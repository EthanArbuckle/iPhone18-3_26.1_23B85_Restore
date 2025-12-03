@interface SXConfiguredConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXConfiguredConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  contextCopy = context;
  configurationKey = [conditionCopy configurationKey];

  if (configurationKey)
  {
    conditionKeys = [contextCopy conditionKeys];
    if (conditionKeys)
    {
      conditionKeys2 = [contextCopy conditionKeys];
      v10 = [conditionKeys2 count];

      if (v10)
      {
        conditionKeys3 = [contextCopy conditionKeys];
        configurationKey2 = [conditionCopy configurationKey];
        LOBYTE(conditionKeys) = [conditionKeys3 containsObject:configurationKey2];
      }

      else
      {
        LOBYTE(conditionKeys) = 0;
      }
    }
  }

  else
  {
    LOBYTE(conditionKeys) = 1;
  }

  return conditionKeys;
}

@end