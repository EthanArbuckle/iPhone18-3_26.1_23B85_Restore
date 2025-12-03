@interface SBNewWindowRequestSwitcherEventResponse
- (SBNewWindowRequestSwitcherEventResponse)initWithBundleIdentifier:(id)identifier;
@end

@implementation SBNewWindowRequestSwitcherEventResponse

- (SBNewWindowRequestSwitcherEventResponse)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBNewWindowRequestSwitcherEventResponse;
  v5 = [(SBChainableModifierEventResponse *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

@end