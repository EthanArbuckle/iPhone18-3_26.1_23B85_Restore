@interface SocialConversationIntent
- (SocialConversationIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (SocialConversationIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation SocialConversationIntent

- (SocialConversationIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = sub_26907606C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  storeCopy = store;
  return SocialConversationIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (SocialConversationIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  sub_26907606C();
  sub_26907606C();
  if (name)
  {
    sub_26907601C();
  }

  return SocialConversationIntent.init(domain:verb:parametersByName:)();
}

@end