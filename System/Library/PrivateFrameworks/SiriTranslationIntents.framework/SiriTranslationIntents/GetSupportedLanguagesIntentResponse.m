@interface GetSupportedLanguagesIntentResponse
- (GetSupportedLanguagesIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation GetSupportedLanguagesIntentResponse

- (GetSupportedLanguagesIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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