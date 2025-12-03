@interface SetGeoFenceIntentResponse
- (SetGeoFenceIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SetGeoFenceIntentResponse

- (SetGeoFenceIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_266DAA6AC();
  }

  else
  {
    v3 = 0;
  }

  return SetGeoFenceIntentResponse.init(propertiesByName:)(v3);
}

@end