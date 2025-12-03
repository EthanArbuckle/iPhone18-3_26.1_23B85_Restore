@interface SXAppConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXAppConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  v5 = [conditionCopy app];

  if (v5 && ([conditionCopy app], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"any"), v6, (v7 & 1) == 0))
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v11 = [conditionCopy app];
    v8 = [v11 isEqualToString:bundleIdentifier];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end