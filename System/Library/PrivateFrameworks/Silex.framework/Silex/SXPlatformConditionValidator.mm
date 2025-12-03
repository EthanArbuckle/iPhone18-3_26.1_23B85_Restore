@interface SXPlatformConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
- (SXPlatformConditionValidator)initWithPlatform:(id)platform;
@end

@implementation SXPlatformConditionValidator

- (SXPlatformConditionValidator)initWithPlatform:(id)platform
{
  platformCopy = platform;
  v9.receiver = self;
  v9.super_class = SXPlatformConditionValidator;
  v5 = [(SXPlatformConditionValidator *)&v9 init];
  if (v5)
  {
    v6 = [platformCopy copy];
    platform = v5->_platform;
    v5->_platform = v6;
  }

  return v5;
}

- (BOOL)validateCondition:(id)condition context:(id)context
{
  platform = [condition platform];
  if (platform)
  {
    platform2 = [(SXPlatformConditionValidator *)self platform];
    if ([platform2 caseInsensitiveCompare:platform])
    {
      v7 = [platform caseInsensitiveCompare:@"any"] == 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end