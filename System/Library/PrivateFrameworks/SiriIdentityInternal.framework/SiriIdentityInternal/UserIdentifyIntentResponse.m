@interface UserIdentifyIntentResponse
- (UserIdentifyIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation UserIdentifyIntentResponse

- (UserIdentifyIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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