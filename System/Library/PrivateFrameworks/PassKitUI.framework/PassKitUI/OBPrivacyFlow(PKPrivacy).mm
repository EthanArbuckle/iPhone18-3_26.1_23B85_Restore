@interface OBPrivacyFlow(PKPrivacy)
+ (id)pk_privacyFlowForContext:()PKPrivacy;
+ (uint64_t)pk_privacyContentVersionForContext:()PKPrivacy;
@end

@implementation OBPrivacyFlow(PKPrivacy)

+ (id)pk_privacyFlowForContext:()PKPrivacy
{
  v5 = PKPrivacyBundleIdentifiersForContext(a3);
  if ([v5 count] != 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"pk_privacyFlowForContext should only be called with a single option, but called with: %lu", a3}];
  }

  v6 = MEMORY[0x1E69B7D10];
  firstObject = [v5 firstObject];
  v8 = [v6 bundleWithIdentifier:firstObject];

  v9 = [self flowWithBundle:v8];

  return v9;
}

+ (uint64_t)pk_privacyContentVersionForContext:()PKPrivacy
{
  v1 = [self pk_privacyFlowForContext:?];
  contentVersion = [v1 contentVersion];

  return contentVersion;
}

@end