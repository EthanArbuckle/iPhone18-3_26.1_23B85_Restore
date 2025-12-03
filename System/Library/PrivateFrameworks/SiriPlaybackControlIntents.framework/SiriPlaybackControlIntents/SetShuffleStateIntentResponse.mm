@interface SetShuffleStateIntentResponse
- (SetShuffleStateIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SetShuffleStateIntentResponse

- (SetShuffleStateIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return SetShuffleStateIntentResponse.init(propertiesByName:)(v3);
}

@end