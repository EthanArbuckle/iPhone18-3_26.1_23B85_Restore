@interface SignedDurationResolutionResult
+ (id)confirmationRequiredWithSignedDurationToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithSignedDurationsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedSignedDuration:(id)duration;
@end

@implementation SignedDurationResolutionResult

+ (id)successWithResolvedSignedDuration:(id)duration
{
  swift_getObjCClassMetadata();
  durationCopy = duration;
  v5 = sub_268B2E114(durationCopy);

  return v5;
}

+ (id)disambiguationWithSignedDurationsToDisambiguate:(id)disambiguate
{
  type metadata accessor for SignedDuration();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B2E1C8(v3);

  return v4;
}

+ (id)confirmationRequiredWithSignedDurationToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_268B2E32C(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B2E430();
}

@end