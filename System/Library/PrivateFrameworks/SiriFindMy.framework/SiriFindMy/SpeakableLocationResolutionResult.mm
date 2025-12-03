@interface SpeakableLocationResolutionResult
+ (id)confirmationRequiredWithSpeakableLocationToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithSpeakableLocationsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedSpeakableLocation:(id)location;
@end

@implementation SpeakableLocationResolutionResult

+ (id)successWithResolvedSpeakableLocation:(id)location
{
  swift_getObjCClassMetadata();
  locationCopy = location;
  v5 = sub_266DA4F44(locationCopy);

  return v5;
}

+ (id)disambiguationWithSpeakableLocationsToDisambiguate:(id)disambiguate
{
  type metadata accessor for SpeakableLocation();
  v3 = sub_266DAA93C();
  swift_getObjCClassMetadata();
  v4 = sub_266DA4FA8(v3);

  return v4;
}

+ (id)confirmationRequiredWithSpeakableLocationToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_266DA50A0(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_266DA3968();
  sub_266DAA93C();
  sub_266DA573C();
}

@end