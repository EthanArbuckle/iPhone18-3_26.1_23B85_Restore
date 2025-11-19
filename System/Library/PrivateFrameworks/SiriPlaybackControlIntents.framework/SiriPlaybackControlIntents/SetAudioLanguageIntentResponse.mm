@interface SetAudioLanguageIntentResponse
- (SetAudioLanguageIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation SetAudioLanguageIntentResponse

- (SetAudioLanguageIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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