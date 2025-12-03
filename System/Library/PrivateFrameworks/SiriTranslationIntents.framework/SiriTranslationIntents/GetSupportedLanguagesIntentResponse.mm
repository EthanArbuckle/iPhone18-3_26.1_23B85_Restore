@interface GetSupportedLanguagesIntentResponse
- (GetSupportedLanguagesIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation GetSupportedLanguagesIntentResponse

- (GetSupportedLanguagesIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2694240A8();
  }

  else
  {
    v3 = 0;
  }

  return GetSupportedLanguagesIntentResponse.init(propertiesByName:)(v3);
}

@end