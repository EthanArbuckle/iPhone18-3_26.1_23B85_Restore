@interface PlaybackSpeedResolutionResult
+ (id)confirmationRequiredWithPlaybackSpeedToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithPlaybackSpeedsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedPlaybackSpeed:(id)speed;
@end

@implementation PlaybackSpeedResolutionResult

+ (id)successWithResolvedPlaybackSpeed:(id)speed
{
  swift_getObjCClassMetadata();
  speedCopy = speed;
  v5 = sub_268B33438(speedCopy);

  return v5;
}

+ (id)disambiguationWithPlaybackSpeedsToDisambiguate:(id)disambiguate
{
  type metadata accessor for PlaybackSpeed();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B334EC(v3);

  return v4;
}

+ (id)confirmationRequiredWithPlaybackSpeedToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_268B33650(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B33754();
}

@end