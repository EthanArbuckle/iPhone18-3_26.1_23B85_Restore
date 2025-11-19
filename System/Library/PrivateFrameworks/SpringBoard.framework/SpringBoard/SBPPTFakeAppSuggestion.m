@interface SBPPTFakeAppSuggestion
- (BOOL)isEqual:(id)a3;
- (SBPPTFakeAppSuggestion)initWithBundleIdentifier:(id)a3;
- (id)bundleIdentifier;
- (unint64_t)hash;
@end

@implementation SBPPTFakeAppSuggestion

- (SBPPTFakeAppSuggestion)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBPPTFakeAppSuggestion;
  v6 = [(SBPPTFakeAppSuggestion *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    uuid = v6->_uuid;
    v6->_uuid = v7;

    objc_storeStrong(&v6->_bundleIdentifier, a3);
  }

  return v6;
}

- (id)bundleIdentifier
{
  v2 = [(NSString *)self->_bundleIdentifier copy];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 uniqueIdentifier];
    v6 = [(SBPPTFakeAppSuggestion *)self uniqueIdentifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(SBPPTFakeAppSuggestion *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

@end