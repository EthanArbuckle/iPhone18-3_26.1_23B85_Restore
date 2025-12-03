@interface UIWindowScenePlacement
+ (id)_default;
- (BOOL)isEqual:(id)equal;
- (id)_createConfigurationWithError:(id *)error;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
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
  _init = [[self alloc] _init];

  return _init;
}

- (id)_createConfigurationWithError:(id *)error
{
  *error = _UISceneErrorWithCode(1);
  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_alloc(objc_opt_class());

  return [v3 _init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
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
  succinctDescriptionBuilder = [(UIWindowScenePlacement *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(UIWindowScenePlacement *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIWindowScenePlacement *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIWindowScenePlacement *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end