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
  v7 = [v5 firstObject];
  v8 = [v6 bundleWithIdentifier:v7];

  v9 = [a1 flowWithBundle:v8];

  return v9;
}

+ (uint64_t)pk_privacyContentVersionForContext:()PKPrivacy
{
  v1 = [a1 pk_privacyFlowForContext:?];
  v2 = [v1 contentVersion];

  return v2;
}

@end