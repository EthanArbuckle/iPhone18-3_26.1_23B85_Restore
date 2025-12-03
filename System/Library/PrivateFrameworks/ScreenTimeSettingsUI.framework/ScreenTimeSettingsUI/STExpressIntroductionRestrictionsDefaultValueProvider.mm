@interface STExpressIntroductionRestrictionsDefaultValueProvider
- (STExpressIntroductionRestrictionsDefaultValueProvider)initWithIsLocalDevice:(BOOL)device;
- (id)defaultValueForRestrictionIdentifier:(id)identifier;
@end

@implementation STExpressIntroductionRestrictionsDefaultValueProvider

- (STExpressIntroductionRestrictionsDefaultValueProvider)initWithIsLocalDevice:(BOOL)device
{
  v5.receiver = self;
  v5.super_class = STExpressIntroductionRestrictionsDefaultValueProvider;
  result = [(STExpressIntroductionRestrictionsDefaultValueProvider *)&v5 init];
  if (result)
  {
    result->_isLocalDevice = device;
  }

  return result;
}

- (id)defaultValueForRestrictionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [STRootViewModelCoordinator defaultValueForRestrictionIdentifier:identifierCopy forIsLocalDevice:[(STExpressIntroductionRestrictionsDefaultValueProvider *)self isLocalDevice]];

  return v5;
}

@end