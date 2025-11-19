@interface InAppSearchCriteriaResolutionResult
+ (id)confirmationRequiredWithInAppSearchCriteriaToConfirm:(id)a3;
+ (id)disambiguationWithInAppSearchCriteriasToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedInAppSearchCriteria:(id)a3;
@end

@implementation InAppSearchCriteriaResolutionResult

+ (id)successWithResolvedInAppSearchCriteria:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static InAppSearchCriteriaResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithInAppSearchCriteriasToDisambiguate:(id)a3
{
  type metadata accessor for InAppSearchCriteria();
  v3 = sub_26618C9B0();
  swift_getObjCClassMetadata();
  v4 = static InAppSearchCriteriaResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithInAppSearchCriteriaToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static InAppSearchCriteriaResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_26618922C();
  sub_26618C9B0();
  static InAppSearchCriteriaResolutionResult.disambiguation(with:)();
}

@end