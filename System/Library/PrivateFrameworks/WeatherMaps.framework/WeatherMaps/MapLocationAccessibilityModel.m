@interface MapLocationAccessibilityModel
- (CLLocation)location;
- (NSDate)expiration;
- (NSString)accessibilityDescription;
- (NSString)overlayDescriptionKey;
@end

@implementation MapLocationAccessibilityModel

- (CLLocation)location
{
  v2 = MapLocationAccessibilityModel.location.getter();

  return v2;
}

- (NSString)accessibilityDescription
{
  MapLocationAccessibilityModel.accessibilityDescription.getter();
  if (v2)
  {
    v3 = sub_220FC26C0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)overlayDescriptionKey
{
  MapLocationAccessibilityModel.overlayDescriptionKey.getter();
  v2 = sub_220FC26C0();

  return v2;
}

- (NSDate)expiration
{
  v2 = sub_220FC02B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MapLocationAccessibilityModel.expiration.getter(v6);
  v7 = sub_220FC01D0();
  (*(v3 + 8))(v6, v2);

  return v7;
}

@end