@interface CNContactStoreConfiguration(TUConversation)
+ (id)tu_contactStoreConfigurationForConversation:()TUConversation;
@end

@implementation CNContactStoreConfiguration(TUConversation)

+ (id)tu_contactStoreConfigurationForConversation:()TUConversation
{
  v3 = MEMORY[0x1E695CE28];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 provider];

  v7 = [v6 assumedIdentity];

  if (!v7)
  {
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v8 tu_assumedIdentity];
  }

  [v5 setAssumedIdentity:v7];
  v9 = objc_alloc_init(TUFeatureFlags);
  if ([(TUFeatureFlags *)v9 junkFilteringEnabled])
  {
    [v5 setIncludeAcceptedIntroductions:1];
  }

  return v5;
}

@end