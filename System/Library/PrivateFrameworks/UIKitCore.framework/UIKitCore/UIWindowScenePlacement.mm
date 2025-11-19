@interface UIWindowScenePlacement
+ (id)_default;
- (BOOL)isEqual:(id)a3;
- (id)_createConfigurationWithError:(id *)a3;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation UIWindowScenePlacement

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UIWindowScenePlacement;
  return [(UIWindowScenePlacement *)&v3 init];
}

+ (id)_default
{
  v2 = [[a1 alloc] _init];

  return v2;
}

- (id)_createConfigurationWithError:(id *)a3
{
  *a3 = _UISceneErrorWithCode(1);
  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_alloc(objc_opt_class());

  return [v3 _init];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      v6 = objc_opt_class();
      v7 = v6 == objc_opt_class();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)succinctDescription
{
  v2 = [(UIWindowScenePlacement *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(UIWindowScenePlacement *)self succinctDescriptionBuilder];
  [v5 setActiveMultilinePrefix:v4];

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UIWindowScenePlacement *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UIWindowScenePlacement *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end