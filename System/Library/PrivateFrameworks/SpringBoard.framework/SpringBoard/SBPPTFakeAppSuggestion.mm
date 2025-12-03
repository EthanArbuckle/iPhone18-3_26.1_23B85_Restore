@interface SBPPTFakeAppSuggestion
- (BOOL)isEqual:(id)equal;
- (SBPPTFakeAppSuggestion)initWithBundleIdentifier:(id)identifier;
- (id)bundleIdentifier;
- (unint64_t)hash;
@end

@implementation SBPPTFakeAppSuggestion

- (SBPPTFakeAppSuggestion)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SBPPTFakeAppSuggestion;
  v6 = [(SBPPTFakeAppSuggestion *)&v10 init];
  if (v6)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v6->_uuid;
    v6->_uuid = uUID;

    objc_storeStrong(&v6->_bundleIdentifier, identifier);
  }

  return v6;
}

- (id)bundleIdentifier
{
  v2 = [(NSString *)self->_bundleIdentifier copy];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uniqueIdentifier = [equalCopy uniqueIdentifier];
    uniqueIdentifier2 = [(SBPPTFakeAppSuggestion *)self uniqueIdentifier];
    v7 = [uniqueIdentifier isEqual:uniqueIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(SBPPTFakeAppSuggestion *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

@end