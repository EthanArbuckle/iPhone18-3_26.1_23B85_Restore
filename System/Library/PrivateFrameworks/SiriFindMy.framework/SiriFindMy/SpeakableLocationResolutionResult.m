@interface SpeakableLocationResolutionResult
+ (id)confirmationRequiredWithSpeakableLocationToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithSpeakableLocationsToDisambiguate:(id)a3;
+ (id)successWithResolvedSpeakableLocation:(id)a3;
@end

@implementation SpeakableLocationResolutionResult

+ (id)successWithResolvedSpeakableLocation:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266DA4F44(v4);

  return v5;
}

+ (id)disambiguationWithSpeakableLocationsToDisambiguate:(id)a3
{
  type metadata accessor for SpeakableLocation();
  v3 = sub_266DAA93C();
  swift_getObjCClassMetadata();
  v4 = sub_266DA4FA8(v3);

  return v4;
}

+ (id)confirmationRequiredWithSpeakableLocationToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266DA50A0(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_266DA3968();
  sub_266DAA93C();
  sub_266DA573C();
}

@end