@interface SFRSAKeyPair
- (id)initRandomKeyPairWithSpecifier:(id)specifier privateKeyDomain:(id)domain;
@end

@implementation SFRSAKeyPair

- (id)initRandomKeyPairWithSpecifier:(id)specifier privateKeyDomain:(id)domain
{
  specifierCopy = specifier;
  v6 = objc_opt_new();
  v7 = [(_SFKeyPair *)self initWithData:v6 specifier:specifierCopy error:0];

  return v7;
}

@end