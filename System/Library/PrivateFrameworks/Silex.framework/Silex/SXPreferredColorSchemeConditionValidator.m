@interface SXPreferredColorSchemeConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXPreferredColorSchemeConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 preferredColorScheme] && objc_msgSend(v5, "preferredColorScheme") != 4)
  {
    v8 = [v6 userInterfaceStyle];
    if (v8)
    {
      v9 = 1;
      if (v8 == 2)
      {
        v9 = 3;
      }

      if (v8 == 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9;
      }

      v7 = [v5 preferredColorScheme] == v10;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end