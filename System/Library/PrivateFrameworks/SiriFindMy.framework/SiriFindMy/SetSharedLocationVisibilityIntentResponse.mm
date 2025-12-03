@interface SetSharedLocationVisibilityIntentResponse
- (SetSharedLocationVisibilityIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SetSharedLocationVisibilityIntentResponse

- (SetSharedLocationVisibilityIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
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