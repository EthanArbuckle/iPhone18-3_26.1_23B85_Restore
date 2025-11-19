@interface SocialConversationIntent
- (SocialConversationIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (SocialConversationIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation SocialConversationIntent

- (SocialConversationIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    v5 = sub_26907606C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SocialConversationIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (SocialConversationIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  sub_26907606C();
  sub_26907606C();
  if (a5)
  {
    sub_26907601C();
  }

  return SocialConversationIntent.init(domain:verb:parametersByName:)();
}

@end