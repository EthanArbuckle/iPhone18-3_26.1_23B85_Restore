@interface SetShuffleStateIntentResponse
- (SetShuffleStateIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation SetShuffleStateIntentResponse

- (SetShuffleStateIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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