@interface MoveSpeakerIntentResponse
- (MoveSpeakerIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation MoveSpeakerIntentResponse

- (MoveSpeakerIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return MoveSpeakerIntentResponse.init(propertiesByName:)(v3);
}

@end