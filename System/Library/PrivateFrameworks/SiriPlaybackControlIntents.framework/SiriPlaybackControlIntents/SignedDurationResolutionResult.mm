@interface SignedDurationResolutionResult
+ (id)confirmationRequiredWithSignedDurationToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithSignedDurationsToDisambiguate:(id)a3;
+ (id)successWithResolvedSignedDuration:(id)a3;
@end

@implementation SignedDurationResolutionResult

+ (id)successWithResolvedSignedDuration:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B2E114(v4);

  return v5;
}

+ (id)disambiguationWithSignedDurationsToDisambiguate:(id)a3
{
  type metadata accessor for SignedDuration();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B2E1C8(v3);

  return v4;
}

+ (id)confirmationRequiredWithSignedDurationToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B2E32C(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B2E430();
}

@end