@interface CNContactStoreConfiguration(TUConversation)
+ (id)tu_contactStoreConfigurationForConversation:()TUConversation;
@end

@implementation CNContactStoreConfiguration(TUConversation)

+ (id)tu_contactStoreConfigurationForConversation:()TUConversation
{
  v3 = MEMORY[0x1E695CE28];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  provider = [v4 provider];

  assumedIdentity = [provider assumedIdentity];

  if (!assumedIdentity)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    assumedIdentity = [mainBundle tu_assumedIdentity];
  }

  [v5 setAssumedIdentity:assumedIdentity];
  v9 = objc_alloc_init(TUFeatureFlags);
  if ([(TUFeatureFlags *)v9 junkFilteringEnabled])
  {
    [v5 setIncludeAcceptedIntroductions:1];
  }

  return v5;
}

@end