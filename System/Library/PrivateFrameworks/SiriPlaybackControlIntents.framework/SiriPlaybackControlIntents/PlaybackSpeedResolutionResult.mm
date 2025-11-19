@interface PlaybackSpeedResolutionResult
+ (id)confirmationRequiredWithPlaybackSpeedToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithPlaybackSpeedsToDisambiguate:(id)a3;
+ (id)successWithResolvedPlaybackSpeed:(id)a3;
@end

@implementation PlaybackSpeedResolutionResult

+ (id)successWithResolvedPlaybackSpeed:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B33438(v4);

  return v5;
}

+ (id)disambiguationWithPlaybackSpeedsToDisambiguate:(id)a3
{
  type metadata accessor for PlaybackSpeed();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B334EC(v3);

  return v4;
}

+ (id)confirmationRequiredWithPlaybackSpeedToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B33650(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B33754();
}

@end