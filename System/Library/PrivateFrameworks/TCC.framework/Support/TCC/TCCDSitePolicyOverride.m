@interface TCCDSitePolicyOverride
- (TCCDSitePolicyOverride)init;
@end

@implementation TCCDSitePolicyOverride

- (TCCDSitePolicyOverride)init
{
  v6.receiver = self;
  v6.super_class = TCCDSitePolicyOverride;
  v2 = [(TCCDPolicyOverride *)&v6 init];
  if (v2)
  {
    v3 = [TCCDPolicyOverride useString:@"/Library/Application Support/com.apple.TCC/SiteOverrides.plist" orReadFromDefaults:@"sitePolicyOverridePath"];
    [(TCCDPolicyOverride *)v2 setPlistFilePath:v3];

    v4 = v2;
  }

  return v2;
}

@end