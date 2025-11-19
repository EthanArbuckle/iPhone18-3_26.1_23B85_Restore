@interface TranslatePhraseIntentResponse
- (TranslatePhraseIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation TranslatePhraseIntentResponse

- (TranslatePhraseIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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