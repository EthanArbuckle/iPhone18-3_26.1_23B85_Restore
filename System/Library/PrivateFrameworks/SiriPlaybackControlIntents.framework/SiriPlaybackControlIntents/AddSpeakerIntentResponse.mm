@interface AddSpeakerIntentResponse
- (AddSpeakerIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation AddSpeakerIntentResponse

- (AddSpeakerIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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