@interface FindFriendIntentResponse
- (FindFriendIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation FindFriendIntentResponse

- (FindFriendIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = sub_266DAA6AC();
  }

  else
  {
    v3 = 0;
  }

  return FindFriendIntentResponse.init(propertiesByName:)(v3);
}

@end