@interface STExpressIntroductionRestrictionsDefaultValueProvider
- (STExpressIntroductionRestrictionsDefaultValueProvider)initWithIsLocalDevice:(BOOL)a3;
- (id)defaultValueForRestrictionIdentifier:(id)a3;
@end

@implementation STExpressIntroductionRestrictionsDefaultValueProvider

- (STExpressIntroductionRestrictionsDefaultValueProvider)initWithIsLocalDevice:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = STExpressIntroductionRestrictionsDefaultValueProvider;
  result = [(STExpressIntroductionRestrictionsDefaultValueProvider *)&v5 init];
  if (result)
  {
    result->_isLocalDevice = a3;
  }

  return result;
}

- (id)defaultValueForRestrictionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [STRootViewModelCoordinator defaultValueForRestrictionIdentifier:v4 forIsLocalDevice:[(STExpressIntroductionRestrictionsDefaultValueProvider *)self isLocalDevice]];

  return v5;
}

@end