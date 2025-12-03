@interface SetPlaybackSpeedIntentResponse
- (SetPlaybackSpeedIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SetPlaybackSpeedIntentResponse

- (SetPlaybackSpeedIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return SetPlaybackSpeedIntentResponse.init(propertiesByName:)(v3);
}

@end