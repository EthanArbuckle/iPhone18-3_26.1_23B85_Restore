@interface AddSpeakerIntentResponse
- (AddSpeakerIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation AddSpeakerIntentResponse

- (AddSpeakerIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return AddSpeakerIntentResponse.init(propertiesByName:)(v3);
}

@end