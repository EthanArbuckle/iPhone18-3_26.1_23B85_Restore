@interface SASActivationLaunchActionResponse
- (BOOL)shouldActivate;
- (id)bundleIdentifier;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation SASActivationLaunchActionResponse

- (BOOL)shouldActivate
{
  error = [(SASActivationLaunchActionResponse *)self error];

  if (error)
  {
    return 0;
  }

  info = [(SASActivationLaunchActionResponse *)self info];
  v6 = [info objectForSetting:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)bundleIdentifier
{
  error = [(SASActivationLaunchActionResponse *)self error];

  if (error)
  {
    v4 = 0;
  }

  else
  {
    info = [(SASActivationLaunchActionResponse *)self info];
    v6 = [info objectForSetting:2];

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

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"Identifier: ";
  if (setting != 2)
  {
    v3 = 0;
  }

  if (setting == 1)
  {
    return @"Should Activate: ";
  }

  else
  {
    return v3;
  }
}

@end