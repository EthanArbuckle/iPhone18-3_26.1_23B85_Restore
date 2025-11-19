@interface SocialConversationIntentResponse
- (SocialConversationIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation SocialConversationIntentResponse

- (SocialConversationIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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