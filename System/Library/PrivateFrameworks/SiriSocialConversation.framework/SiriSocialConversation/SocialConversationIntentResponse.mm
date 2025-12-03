@interface SocialConversationIntentResponse
- (SocialConversationIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SocialConversationIntentResponse

- (SocialConversationIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_26907601C();
  }

  else
  {
    v3 = 0;
  }

  return SocialConversationIntentResponse.init(propertiesByName:)(v3);
}

@end