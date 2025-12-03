@interface SXPreferredColorSchemeConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXPreferredColorSchemeConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  contextCopy = context;
  if ([conditionCopy preferredColorScheme] && objc_msgSend(conditionCopy, "preferredColorScheme") != 4)
  {
    userInterfaceStyle = [contextCopy userInterfaceStyle];
    if (userInterfaceStyle)
    {
      v9 = 1;
      if (userInterfaceStyle == 2)
      {
        v9 = 3;
      }

      if (userInterfaceStyle == 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9;
      }

      v7 = [conditionCopy preferredColorScheme] == v10;
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