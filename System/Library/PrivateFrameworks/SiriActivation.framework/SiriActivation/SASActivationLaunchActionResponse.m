@interface SASActivationLaunchActionResponse
- (BOOL)shouldActivate;
- (id)bundleIdentifier;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation SASActivationLaunchActionResponse

- (BOOL)shouldActivate
{
  v3 = [(SASActivationLaunchActionResponse *)self error];

  if (v3)
  {
    return 0;
  }

  v5 = [(SASActivationLaunchActionResponse *)self info];
  v6 = [v5 objectForSetting:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v6 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)bundleIdentifier
{
  v3 = [(SASActivationLaunchActionResponse *)self error];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SASActivationLaunchActionResponse *)self info];
    v6 = [v5 objectForSetting:2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v3 = @"Identifier: ";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"Should Activate: ";
  }

  else
  {
    return v3;
  }
}

@end