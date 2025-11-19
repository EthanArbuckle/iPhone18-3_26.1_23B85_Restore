@interface SetGeoFenceIntentResponse
- (SetGeoFenceIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation SetGeoFenceIntentResponse

- (SetGeoFenceIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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