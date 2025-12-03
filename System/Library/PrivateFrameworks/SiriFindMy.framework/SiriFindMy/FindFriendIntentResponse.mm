@interface FindFriendIntentResponse
- (FindFriendIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation FindFriendIntentResponse

- (FindFriendIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
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