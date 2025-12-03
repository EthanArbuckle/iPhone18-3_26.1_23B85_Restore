@interface SetAudioLanguageIntentResponse
- (SetAudioLanguageIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SetAudioLanguageIntentResponse

- (SetAudioLanguageIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return SetAudioLanguageIntentResponse.init(propertiesByName:)(v3);
}

@end