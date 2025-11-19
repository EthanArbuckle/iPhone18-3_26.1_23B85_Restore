@interface SBNewWindowRequestSwitcherEventResponse
- (SBNewWindowRequestSwitcherEventResponse)initWithBundleIdentifier:(id)a3;
@end

@implementation SBNewWindowRequestSwitcherEventResponse

- (SBNewWindowRequestSwitcherEventResponse)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBNewWindowRequestSwitcherEventResponse;
  v5 = [(SBChainableModifierEventResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

@end