@interface UserIdentifyIntentResponse
- (UserIdentifyIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation UserIdentifyIntentResponse

- (UserIdentifyIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_266E9CFC4();
  }

  else
  {
    v3 = 0;
  }

  return UserIdentifyIntentResponse.init(propertiesByName:)(v3);
}

@end