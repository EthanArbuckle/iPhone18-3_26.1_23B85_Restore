@interface OBPrivacyLinkController(PKPrivacy)
+ (id)pk_privacyLinkForContext:()PKPrivacy;
@end

@implementation OBPrivacyLinkController(PKPrivacy)

+ (id)pk_privacyLinkForContext:()PKPrivacy
{
  v4 = PKPrivacyBundleIdentifiersForContext(a3);
  v5 = [a1 linkWithBundleIdentifiers:v4];

  return v5;
}

@end