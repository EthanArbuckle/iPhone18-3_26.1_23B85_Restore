@interface TranslatePhraseIntentResponse
- (TranslatePhraseIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation TranslatePhraseIntentResponse

- (TranslatePhraseIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2694240A8();
  }

  else
  {
    v3 = 0;
  }

  return TranslatePhraseIntentResponse.init(propertiesByName:)(v3);
}

@end