@interface SetRoomDimmingStateIntentResponse
- (SetRoomDimmingStateIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SetRoomDimmingStateIntentResponse

- (SetRoomDimmingStateIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return SetRoomDimmingStateIntentResponse.init(propertiesByName:)(v3);
}

@end