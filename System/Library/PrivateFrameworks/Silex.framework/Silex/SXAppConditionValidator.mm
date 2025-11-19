@interface SXAppConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXAppConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v4 = a3;
  v5 = [v4 app];

  if (v5 && ([v4 app], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"any"), v6, (v7 & 1) == 0))
  {
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v10 = [v9 bundleIdentifier];

    v11 = [v4 app];
    v8 = [v11 isEqualToString:v10];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end