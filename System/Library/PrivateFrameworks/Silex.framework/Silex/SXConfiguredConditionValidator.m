@interface SXConfiguredConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXConfiguredConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 configurationKey];

  if (v7)
  {
    v8 = [v6 conditionKeys];
    if (v8)
    {
      v9 = [v6 conditionKeys];
      v10 = [v9 count];

      if (v10)
      {
        v11 = [v6 conditionKeys];
        v12 = [v5 configurationKey];
        LOBYTE(v8) = [v11 containsObject:v12];
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

@end