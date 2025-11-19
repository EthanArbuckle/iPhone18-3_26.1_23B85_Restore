@interface SetSharedLocationVisibilityIntentResponse
- (SetSharedLocationVisibilityIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation SetSharedLocationVisibilityIntentResponse

- (SetSharedLocationVisibilityIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = sub_266DAA6AC();
  }

  else
  {
    v3 = 0;
  }

  return SetSharedLocationVisibilityIntentResponse.init(propertiesByName:)(v3);
}

@end