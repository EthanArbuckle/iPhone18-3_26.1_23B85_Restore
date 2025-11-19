@interface CNContactStoreConfiguration(TelephonyUtilities)
+ (id)tu_acceptedContactStoreConfiguration;
+ (id)tu_contactStoreConfigurationForBundleIdentifier:()TelephonyUtilities;
+ (id)tu_contactStoreConfigurationForCall:()TelephonyUtilities;
@end

@implementation CNContactStoreConfiguration(TelephonyUtilities)

+ (id)tu_contactStoreConfigurationForBundleIdentifier:()TelephonyUtilities
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695CE28]);
  if ([v3 length])
  {
    v5 = [MEMORY[0x1E696AAE8] tu_assumedIdentityForBundleIdentifier:v3];
  }

  else
  {
    v5 = 0;
  }

  [v4 setAssumedIdentity:v5];
  v6 = objc_alloc_init(TUFeatureFlags);
  if ([(TUFeatureFlags *)v6 junkFilteringEnabled])
  {
    [v4 setIncludeAcceptedIntroductions:1];
  }

  return v4;
}

+ (id)tu_contactStoreConfigurationForCall:()TelephonyUtilities
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695CE28]);
  v5 = [v3 provider];
  v6 = [v5 isSystemProvider];

  if (v6)
  {
    v7 = [v3 provider];
    [v7 assumedIdentity];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    [v7 tu_assumedIdentity];
  }
  v8 = ;

  [v4 setAssumedIdentity:v8];
  v9 = objc_alloc_init(TUFeatureFlags);
  if ([(TUFeatureFlags *)v9 junkFilteringEnabled])
  {
    [v4 setIncludeAcceptedIntroductions:1];
  }

  return v4;
}

+ (id)tu_acceptedContactStoreConfiguration
{
  v0 = objc_alloc_init(MEMORY[0x1E695CE28]);
  v1 = NSSelectorFromString(&cfstr_Setincludeacce.isa);
  if (objc_opt_respondsToSelector())
  {
    v2 = MEMORY[0x1E695DF50];
    v3 = [v0 methodSignatureForSelector:v1];
    v4 = [v2 invocationWithMethodSignature:v3];

    [v4 setSelector:v1];
    [v4 setTarget:v0];
    v6 = 1;
    [v4 setArgument:&v6 atIndex:2];
    [v4 invoke];
  }

  return v0;
}

@end