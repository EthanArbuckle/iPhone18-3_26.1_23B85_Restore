@interface SXPlatformConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
- (SXPlatformConditionValidator)initWithPlatform:(id)a3;
@end

@implementation SXPlatformConditionValidator

- (SXPlatformConditionValidator)initWithPlatform:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SXPlatformConditionValidator;
  v5 = [(SXPlatformConditionValidator *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    platform = v5->_platform;
    v5->_platform = v6;
  }

  return v5;
}

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = [a3 platform];
  if (v5)
  {
    v6 = [(SXPlatformConditionValidator *)self platform];
    if ([v6 caseInsensitiveCompare:v5])
    {
      v7 = [v5 caseInsensitiveCompare:@"any"] == 0;
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